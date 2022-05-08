package com.privacystar.core.data.sqlite.p008db.block_list;
/* renamed from: com.privacystar.core.data.sqlite.db.block_list.BlockListModel */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_list/BlockListModel.class */
public class BlockListModel {

    /* renamed from: com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlackListActive */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_list/BlockListModel$BlackListActive.class */
    public enum BlackListActive {
        ACTIVE(0),
        INACTIVE(1);
        
        int value;

        BlackListActive(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* renamed from: com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlockList */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_list/BlockListModel$BlockList.class */
    public static class BlockList {
        public long callLogTimestamp;
        public long calledTimestamp;
        public int cdmNameId;
        public int cdmNameType;
        public String name;
        public int namedBlockFlg;
        public int offline;
        public String phone;
        public String transactionKey;
        public String type;
        public int unblocked;

        public BlockList() {
        }

        public BlockList(String str, String str2, String str3, long j, String str4, int i, int i2, int i3, int i4, int i5, long j2) {
            this.type = str;
            this.phone = str2;
            this.name = str3;
            this.calledTimestamp = j;
            this.transactionKey = str4;
            this.unblocked = i;
            this.offline = i2;
            this.cdmNameId = i3;
            this.namedBlockFlg = i4;
            this.cdmNameType = i5;
            this.callLogTimestamp = j2;
        }
    }
}
