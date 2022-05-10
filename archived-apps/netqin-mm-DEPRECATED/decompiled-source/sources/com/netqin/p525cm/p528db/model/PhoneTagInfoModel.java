package com.netqin.p525cm.p528db.model;
/* renamed from: com.netqin.cm.db.model.PhoneTagInfoModel */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/PhoneTagInfoModel.class */
public class PhoneTagInfoModel extends BaseModel {
    public static final long serialVersionUID = 46546412;

    /* renamed from: id */
    public long f35624id;
    public boolean isRead;
    public String phonenum;
    public String tagCount;
    public String tagName;
    public long updateTime;

    public boolean equals(Object obj) {
        PhoneTagInfoModel phoneTagInfoModel = (PhoneTagInfoModel) obj;
        if (phoneTagInfoModel != null) {
            return phoneTagInfoModel.phonenum.equals(this.phonenum);
        }
        return false;
    }

    public int hashCode() {
        return super.hashCode();
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(" phonenum : ");
        stringBuffer.append(this.phonenum);
        stringBuffer.append(" tagName : ");
        stringBuffer.append(this.tagName);
        stringBuffer.append(" tagCount : ");
        stringBuffer.append(this.tagCount);
        stringBuffer.append("updateTime:");
        stringBuffer.append(this.updateTime);
        stringBuffer.append("isRead:");
        stringBuffer.append(this.isRead);
        return stringBuffer.toString();
    }
}
