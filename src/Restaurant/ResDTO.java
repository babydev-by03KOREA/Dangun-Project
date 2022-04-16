package Restaurant;

public class ResDTO {
    private String dangun;
    private String type;
    private String name;
    private String phone;
    private String address;
    private String detail;
    private String open;
    private String closed;
    private String breaktime1;
    private String breaktime2;

    public String getDangun() {
        return dangun;
    }

    public void setDangun(String dangun) {
        this.dangun = dangun;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

    public String getOpen() {
        return open;
    }

    public void setOpen(String open) {
        this.open = open;
    }

    public String getClosed() {
        return closed;
    }

    public void setClosed(String closed) {
        this.closed = closed;
    }

    public String getBreaktime1() {
        return breaktime1;
    }

    public void setBreaktime1(String breaktime1) {
        this.breaktime1 = breaktime1;
    }

    public String getBreaktime2() {
        return breaktime2;
    }

    public void setBreaktime2(String breaktime2) {
        this.breaktime2 = breaktime2;
    }

    @Override
    public String toString(){
        return "DTO [dangun=" + dangun + ", type=" + type + ", name=" + name + ", phone=" + phone + ", " +
                "address=" + address + ", detail=" + detail + ", open=" + open + ", closed=" + closed + ", " +
                "breaktime1= " + breaktime1 +", breaktime2= " + breaktime2 + " ]";

    }
}
