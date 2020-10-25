package tech.senderman.web.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationEventPublisher;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import tech.senderman.persistence.dao.FuncRepository;
import tech.senderman.persistence.model.Func;
import tech.senderman.web.dto.FuncDto;
import tech.senderman.web.error.UserAlreadyExistException;
import tech.senderman.web.util.GenericResponse;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.util.Locale;
import java.util.Optional;

@Controller
public class FuncController {
    private final static Logger LOGGER = LoggerFactory.getLogger(Func.class);

    @Autowired
    FuncRepository funcRepository;

    @RequestMapping(value = "/func/add", method = RequestMethod.POST)
    @ResponseBody
    public GenericResponse registerFunc(@Valid final FuncDto funcDto, final HttpServletRequest request) {
        LOGGER.debug("Registering user account with information: {}", funcDto);
        if (nameExists(funcDto.getName())) {
            throw new UserAlreadyExistException("There is an account with that email address: " + funcDto.getName());
        }
        final Func func = new Func();

        func.setName(funcDto.getName());
        func.setEnvName(funcDto.getEnvName());
        func.setEnvName2(funcDto.getEnvName2());
        func.setEnvName3(funcDto.getEnvName3());
        func.setEnvName4(funcDto.getEnvName4());
        func.setEnvName5(funcDto.getEnvName5());
        func.setUserIdTester(Long.parseLong(funcDto.getUserIdTester()));
        func.setUserIdDev(Long.parseLong(funcDto.getUserIdDev()));

        funcRepository.save(func);
        return new GenericResponse("success");
    }

    @RequestMapping(value = "/funcs", method = RequestMethod.GET)
    public String getFuncs(final Locale locale, final Model model) {
        model.addAttribute("funcs", funcRepository.findAll());
        return "funcs";
    }

    @RequestMapping(value = "/deleteFunc", method = RequestMethod.GET)
    public String delUser(final Locale locale, final Model model, @RequestParam(value = "id", required = true) Long id) {
        if (getFuncByName(id).isPresent())
            funcRepository.delete(getFuncByName(id).get());
        LOGGER.info("Attempting to delete func with id {}", id);

        model.addAttribute("funcs", funcRepository.findAll());
        return "funcs";
    }

    private boolean nameExists(final String name) {
        return funcRepository.findByName(name) != null;
    }

    public Optional<Func> getFuncByName(final Long Id) {
        return funcRepository.findById(Id);
    }
}
