package com.privacystar.core.data.sqlite.p008db.block_list;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel;
import java.util.ArrayList;
import java.util.List;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.block_list.BlockListHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_list/BlockListHelper.class */
public class BlockListHelper {
    private static BlockListHelper sInstance;
    private Context mContext;

    private BlockListHelper(Context context) {
        this.mContext = context;
    }

    public static BlockListHelper getInstance() {
        BlockListHelper instance;
        synchronized (BlockListHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static BlockListHelper getInstance(Context context) {
        BlockListHelper blockListHelper;
        synchronized (BlockListHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new BlockListHelper(context.getApplicationContext());
                }
                blockListHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return blockListHelper;
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long addToOrUpdateBlockList(com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel.BlockList r10) {
        /*
            Method dump skipped, instructions count: 296
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.block_list.BlockListHelper.addToOrUpdateBlockList(com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlockList):long");
    }

    public boolean blockedInBlockList(BlockListModel.BlockList blockList) {
        return blockedInBlockList(blockList.phone);
    }

    public boolean blockedInBlockList(String str) {
        BlockListModel.BlockList entry = getEntry(str);
        return entry != null && entry.unblocked == 0;
    }

    public int clearBlockList() {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        Timber.m37d("Deleting all numbers from block list using injection-safe API method.", new Object[0]);
        return writableDatabase.delete("blockList", "1", null);
    }

    public int deleteBlockListEntry(BlockListModel.BlockList blockList) {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        String str = blockList.phone;
        Timber.m37d("Deleting number %s from block list using injection-safe API method.", blockList.phone);
        return writableDatabase.delete("blockList", "phone LIKE ?", new String[]{str});
    }

    public int deleteBlockListEntry(String str) {
        BlockListModel.BlockList blockList = new BlockListModel.BlockList();
        blockList.phone = str;
        return deleteBlockListEntry(blockList);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0084, code lost:
        if (r0.isClosed() == false) goto L_0x0060;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0057 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel.BlockList> getAllBlockListEntries() {
        /*
            r6 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r7 = r0
            java.lang.String r0 = "SELECT * FROM %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "blockList"
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r8 = r0
            java.lang.String r0 = "Preparing to execute SQL: %s"
            r1 = 1
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r8
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
            r0 = r6
            android.content.Context r0 = r0.mContext
            com.privacystar.core.data.sqlite.db.DatabaseHelper r0 = com.privacystar.core.data.sqlite.p008db.DatabaseHelper.getInstance(r0)
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r1 = r8
            r2 = 0
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r8 = r0
            r0 = r8
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0069, Exception -> 0x006d
            if (r0 == 0) goto L_0x0053
        L_0x003d:
            r0 = r7
            r1 = r8
            com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlockList r1 = com.privacystar.core.data.sqlite.p008db.block_list.BlockListContract.BlockListEntry.parseCursor(r1)     // Catch: all -> 0x0069, Exception -> 0x006d
            boolean r0 = r0.add(r1)     // Catch: all -> 0x0069, Exception -> 0x006d
            r0 = r8
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x0069, Exception -> 0x006d
            r9 = r0
            r0 = r9
            if (r0 != 0) goto L_0x003d
        L_0x0053:
            r0 = r8
            if (r0 == 0) goto L_0x008a
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008a
        L_0x0060:
            r0 = r8
            r0.close()
            goto L_0x008a
        L_0x0069:
            r7 = move-exception
            goto L_0x008c
        L_0x006d:
            r10 = move-exception
            r0 = r10
            java.lang.String r1 = "trying to fetch all block list entries."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x0069
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x0069
            r0 = r8
            if (r0 == 0) goto L_0x008a
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x008a
            goto L_0x0060
        L_0x008a:
            r0 = r7
            return r0
        L_0x008c:
            r0 = r8
            if (r0 == 0) goto L_0x009f
            r0 = r8
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x009f
            r0 = r8
            r0.close()
        L_0x009f:
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.block_list.BlockListHelper.getAllBlockListEntries():java.util.List");
    }

    public List<String> getAllBlockListNumbers() {
        List<BlockListModel.BlockList> allBlockListEntries = getAllBlockListEntries();
        ArrayList arrayList = new ArrayList();
        for (BlockListModel.BlockList blockList : allBlockListEntries) {
            arrayList.add(blockList.phone);
        }
        return arrayList;
    }

    public List<BlockListModel.BlockList> getBlockListEntriesIfActive() {
        return getBlockListEntriesIfActive(BlockListModel.BlackListActive.ACTIVE);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x00b1, code lost:
        if (r0.isClosed() == false) goto L_0x0079;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0070 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel.BlockList> getBlockListEntriesIfActive(com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel.BlackListActive r8) {
        /*
            Method dump skipped, instructions count: 206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.block_list.BlockListHelper.getBlockListEntriesIfActive(com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlackListActive):java.util.List");
    }

    public List<String> getBlockListNumbersIfActive() {
        return getBlockListNumbersIfActive(BlockListModel.BlackListActive.ACTIVE);
    }

    public List<String> getBlockListNumbersIfActive(BlockListModel.BlackListActive blackListActive) {
        List<BlockListModel.BlockList> blockListEntriesIfActive = getBlockListEntriesIfActive(blackListActive);
        ArrayList arrayList = new ArrayList();
        for (BlockListModel.BlockList blockList : blockListEntriesIfActive) {
            arrayList.add(blockList.phone);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00a1, code lost:
        if (r0.isClosed() == false) goto L_0x00a4;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel.BlockList getEntry(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.block_list.BlockListHelper.getEntry(java.lang.String):com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlockList");
    }

    public long unblockListEntry(BlockListModel.BlockList blockList) {
        blockList.unblocked = BlockListModel.BlackListActive.INACTIVE.getValue();
        return addToOrUpdateBlockList(blockList);
    }
}
