package com.netqin.p525cm.p528db.model;
/* renamed from: com.netqin.cm.db.model.BlockedSmsModel */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/db/model/BlockedSmsModel.class */
public class BlockedSmsModel extends BaseModel {
    public static final int STATUS_SMS_READ = 1;
    public static final int STATUS_SMS_UNREAD = 0;
    public static final int TYPE_NORMAL_SMS = 0;
    public static final int TYPE_SPAM_SMS = 1;
    public static final long serialVersionUID = 1;
    public int blockMode;
    public String body;
    public long date;
    public long threadId;

    public int getBlockMode() {
        return this.blockMode;
    }

    public String getBody() {
        return this.body;
    }

    public long getDate() {
        return this.date;
    }

    public long getThreadId() {
        return this.threadId;
    }

    public void setBlockMode(int i) {
        this.blockMode = i;
    }

    public void setBody(String str) {
        this.body = str;
    }

    public void setDate(long j) {
        this.date = j;
    }

    public void setThreadId(long j) {
        this.threadId = j;
    }
}
