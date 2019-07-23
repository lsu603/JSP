package member;

public class MemberDTO {
    private String userid;
    private String passwd;
    private String name;

    //getter,setter,toString(),생성자 2 개
    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Override
    public String toString() {
        return "MemberDTO [userid=" + userid + ", passwd=" + passwd + ", name=" + name + "]";
    }

    public MemberDTO() {
        /*super();*/
        // TODO Auto-generated constructor stub
    }

    public MemberDTO(String userid, String passwd, String name) {
        /*  super();*/
        this.userid = userid;
        this.passwd = passwd;
        this.name = name;
    }
}
