package com.netqin.p525cm.p528db.model;
/* renamed from: com.netqin.cm.db.model.BlockedCallsModel */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/BlockedCallsModel.class */
public class BlockedCallsModel extends BaseModel {
    public static final int TYPE_CALLLOG_READ = 1;
    public static final int TYPE_CALLLOG_UNREAD = 0;
    public static final int TYPE_INCOMING_CALL = 1;
    public static final int TYPE_OUTGOING_CALL = 2;
    public static final int TYPE_PRANK_CALL = 0;
    public static final long serialVersionUID = 4784131;
    public int blockMode;
    public long date;
    public int durtion;
    public boolean isClick;
    public String location;
    public int read;

    public int getBlockMode() {
        return this.blockMode;
    }

    public long getDate() {
        return this.date;
    }

    public int getDurtion() {
        return this.durtion;
    }

    public String getLocation() {
        return this.location;
    }

    @Override // com.netqin.p525cm.p528db.model.BaseModel
    public int getRead() {
        return this.read;
    }

    public boolean isClick() {
        return this.isClick;
    }

    public void setBlockMode(int i) {
        this.blockMode = i;
    }

    public void setClick(boolean z) {
        this.isClick = z;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setDurtion(int i) {
        this.durtion = i;
    }

    public void setLocation(String str) {
        this.location = str;
    }

    @Override // com.netqin.p525cm.p528db.model.BaseModel
    public void setRead(int i) {
        this.read = i;
    }
}
