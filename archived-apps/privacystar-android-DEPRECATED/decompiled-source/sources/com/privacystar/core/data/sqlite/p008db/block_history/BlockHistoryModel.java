package com.privacystar.core.data.sqlite.p008db.block_history;

import com.privacystar.core.data.call.call_event.LogItem;
/* renamed from: com.privacystar.core.data.sqlite.db.block_history.BlockHistoryModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_history/BlockHistoryModel.class */
public class BlockHistoryModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.block_history.BlockHistoryModel$BlockHistory */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_history/BlockHistoryModel$BlockHistory.class */
    public static class BlockHistory {
        public long calledTimestamp;
        public String name;
        public String phone;
        public String type;
        public long uploaded;

        public BlockHistory() {
        }

        public BlockHistory(String str, String str2, String str3) {
            this.type = str;
            this.phone = str2;
            this.name = str3;
            this.calledTimestamp = 0L;
            this.uploaded = 0L;
        }

        public BlockHistory(String str, String str2, String str3, long j, long j2) {
            this.type = str;
            this.phone = str2;
            this.name = str3;
            this.calledTimestamp = j;
            this.uploaded = j2;
        }

        public LogItem toLogItem() {
            LogItem logItem = new LogItem();
            logItem.setPhoneNumber(this.phone);
            logItem.setType(LogItem.LogItemType.CALL);
            logItem.setBlocked(true);
            logItem.setName(this.name);
            return logItem;
        }
    }
}
