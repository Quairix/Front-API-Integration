package tech.senderman.persistence.model;

import javax.persistence.*;

@Entity
@Table(name = "func")
public class Func {

    @Id
    @Column(unique = true, nullable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;
    private String name;
    private String envName;
    private String envName2;
    private String envName3;
    private String envName4;
    private String envName5;
    private Long userIdDev;
    private Long userIdTester;

    public Func() {
        this.name = "";
        this.envName = "";
        this.envName2 = "";
        this.envName3 = "";
        this.envName4 = "";
        this.envName5 = "";
    }

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

    public Long getUserIdDev() {
        return userIdDev;
    }

    public void setUserIdDev(Long userIdDev) {
        this.userIdDev = userIdDev;
    }

    public Long getUserIdTester() {
        return userIdTester;
    }

    public void setUserIdTester(Long userIdTester) {
        this.userIdTester = userIdTester;
    }

    public Long getId() {
        return id;
    }

    public void setId(final Long id) {
        this.id = id;
    }

    @Override
    public boolean equals(final Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        final Func func = (Func) obj;
        return name.equals(func.name);
    }

    @Override
    public String toString() {
        final StringBuilder builder = new StringBuilder();
        builder.append("Func [id=").append(id).append(", name=").append(name).append(", Env1=").append(envName).append(", Env2=").append(envName2).append(", Env3=").append(envName3).append(", Env4=").append(envName4)
                .append(", Env5=").append(envName5).append(", userIdDev=").append(userIdDev).append(", userIdTester=").append(userIdTester).append("]");
        return builder.toString();
    }
}
