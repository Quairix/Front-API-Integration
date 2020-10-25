package tech.senderman.web.dto;

import tech.senderman.validation.ValidEmail;
import tech.senderman.validation.ValidPassword;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

public class FuncDto {
    @NotNull
    @Size(min = 1)
    private String name;

    @NotNull
    @Size(min = 1)
    private String envName;

    @NotNull
    @Size(min = 1)
    private String envName2;

    private String envName3;

    private String envName4;

    private String envName5;

    @NotNull
    @Size(min = 1)
    private String userIdDev;

    @NotNull
    @Size(min = 1)
    private String userIdTester;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEnvName() {
        return envName;
    }

    public void setEnvName(String envName) {
        this.envName = envName;
    }

    public String getEnvName2() {
        return envName2;
    }

    public void setEnvName2(String envName2) {
        this.envName2 = envName2;
    }

    public String getEnvName3() {
        return envName3;
    }

    public void setEnvName3(String envName3) {
        this.envName3 = envName3;
    }

    public String getEnvName4() {
        return envName4;
    }

    public void setEnvName4(String envName4) {
        this.envName4 = envName4;
    }

    public String getEnvName5() {
        return envName5;
    }

    public void setEnvName5(String envName5) {
        this.envName5 = envName5;
    }

    public String getUserIdDev() {
        return userIdDev;
    }

    public void setUserIdDev(String userIdDev) {
        this.userIdDev = userIdDev;
    }

    public String getUserIdTester() {
        return userIdTester;
    }

    public void setUserIdTester(String userIdTester) {
        this.userIdTester = userIdTester;
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("Func [name=").append(name).append(", Env1=").append(envName).append(", Env2=").append(envName2).append(", Env3=").append(envName3).append(", Env4=").append(envName4)
                .append(", Env5=").append(envName5).append(", userIdDev=").append(userIdDev).append(", userIdTester=").append(userIdTester).append("]");
        return builder.toString();
    }

}
