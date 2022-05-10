package com.netqin.p525cm.p528db.model;
/* renamed from: com.netqin.cm.db.model.SystemContacts */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/SystemContacts.class */
public class SystemContacts extends BaseModel {
    public static final long serialVersionUID = 1;
    public char pinyinUpperKey;
    public String sortKey;

    public char getPinyinUpperKey() {
        return this.pinyinUpperKey;
    }

    public String getSortKey() {
        return this.sortKey;
    }

    public void setPinyinUpperKey(char c) {
        this.pinyinUpperKey = c;
    }

    public void setSortKey(String str) {
        this.sortKey = str;
    }
}
