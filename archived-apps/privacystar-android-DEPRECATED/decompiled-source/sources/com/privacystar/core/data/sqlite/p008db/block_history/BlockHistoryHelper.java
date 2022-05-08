package com.privacystar.core.data.sqlite.p008db.block_history;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.support.p001v4.app.NotificationCompat;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryContract;
import com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryModel;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel;
import com.privacystar.core.util.CallLogUtil;
import com.privacystar.core.util.ContactUtil;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.block_history.BlockHistoryHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/block_history/BlockHistoryHelper.class */
public class BlockHistoryHelper {
    private static BlockHistoryHelper sInstance;
    private Context mContext;

    public BlockHistoryHelper(Context context) {
        this.mContext = context;
    }

    public static BlockHistoryHelper getInstance() {
        BlockHistoryHelper instance;
        synchronized (BlockHistoryHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static BlockHistoryHelper getInstance(Context context) {
        BlockHistoryHelper blockHistoryHelper;
        synchronized (BlockHistoryHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new BlockHistoryHelper(context.getApplicationContext());
                }
                blockHistoryHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return blockHistoryHelper;
    }

    public void addNewBlockEvent(BlockHistoryModel.BlockHistory blockHistory) {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        writableDatabase.beginTransaction();
        blockHistory.uploaded = 0L;
        blockHistory.calledTimestamp = System.currentTimeMillis();
        try {
            try {
                writableDatabase.insertOrThrow(BlockHistoryContract.BlockHistoryEntry.TABLE_NAME, null, BlockHistoryContract.BlockHistoryEntry.toContentValues(blockHistory));
                Timber.m37d("Added new BlockHistory entry for: phone: %s with timestamp: %d", blockHistory.phone, Long.valueOf(blockHistory.calledTimestamp));
                writableDatabase.setTransactionSuccessful();
            } catch (Exception e) {
                Timber.m32e(e, "trying to add to BlockHistory.", new Object[0]);
            }
        } finally {
            writableDatabase.endTransaction();
        }
    }

    public void addNewBlockEvent(String str, String str2, String str3) {
        BlockHistoryModel.BlockHistory blockHistory = new BlockHistoryModel.BlockHistory();
        blockHistory.name = str;
        blockHistory.type = str2;
        blockHistory.phone = str3;
        addNewBlockEvent(blockHistory);
    }

    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r18v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long addToOrUpdateBlockHistory(com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryModel.BlockHistory r10) {
        /*
            Method dump skipped, instructions count: 339
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryHelper.addToOrUpdateBlockHistory(com.privacystar.core.data.sqlite.db.block_history.BlockHistoryModel$BlockHistory):long");
    }

    public int clearBlockHistory() {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        Timber.m37d("Deleting all entries from block history using injection-safe API method.", new Object[0]);
        return writableDatabase.delete(BlockHistoryContract.BlockHistoryEntry.TABLE_NAME, "1", null);
    }

    public int deleteBlockHistoryEntry(BlockHistoryModel.BlockHistory blockHistory) {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        String str = blockHistory.phone;
        String l = Long.toString(blockHistory.calledTimestamp);
        Timber.m37d("Deleting event from number %s at %s from block history using injection-safe API method.", blockHistory.phone, new SimpleDateFormat("MM/dd/yyyy HH:mm:ss", Locale.US).format(new Date(blockHistory.calledTimestamp)));
        return writableDatabase.delete(BlockHistoryContract.BlockHistoryEntry.TABLE_NAME, "phone LIKE ? AND calledTimestamp = ?", new String[]{str, l});
    }

    public int deleteBlockHistoryEntry(String str, long j) {
        BlockHistoryModel.BlockHistory blockHistory = new BlockHistoryModel.BlockHistory();
        blockHistory.phone = str;
        blockHistory.calledTimestamp = j;
        return deleteBlockHistoryEntry(blockHistory);
    }

    public List<BlockHistoryModel.BlockHistory> getAllBlockHistoryEntries() {
        Timber.m37d("Fetching block history for all numbers. (Including numbers no longer blocked.)", new Object[0]);
        return getAllBlockHistoryEntries((BlockListModel.BlockList) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x008b, code lost:
        if (r0.isClosed() == false) goto L_0x008e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x008e, code lost:
        r0.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b3, code lost:
        if (r0.isClosed() == false) goto L_0x008e;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0085  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryModel.BlockHistory> getAllBlockHistoryEntries(@android.support.annotation.Nullable com.privacystar.core.data.sqlite.p008db.block_list.BlockListModel.BlockList r8) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryHelper.getAllBlockHistoryEntries(com.privacystar.core.data.sqlite.db.block_list.BlockListModel$BlockList):java.util.List");
    }

    public List<BlockHistoryModel.BlockHistory> getAllBlockHistoryEntries(String str) {
        BlockListModel.BlockList blockList = new BlockListModel.BlockList();
        blockList.phone = str;
        Timber.m37d("Fetching block history for the number %s.", str);
        return getAllBlockHistoryEntries(blockList);
    }

    public CallLogUtil.BasicLogInfo getBasicLogInfoFromBlockHistory(BlockHistoryModel.BlockHistory blockHistory) {
        boolean equalsIgnoreCase = NotificationCompat.CATEGORY_CALL.equalsIgnoreCase(blockHistory.type);
        CallLogUtil.BasicLogInfo basicLogInfo = new CallLogUtil.BasicLogInfo(blockHistory.phone, blockHistory.name, null, Long.valueOf(blockHistory.calledTimestamp), 0, 0, ContactUtil.isNumberInContacts(blockHistory.phone), equalsIgnoreCase, true);
        basicLogInfo.setBlocked(true);
        return basicLogInfo;
    }

    public ArrayList<CallLogUtil.BasicLogInfo> getBasicLogInfoListFromBlockHistory(List<BlockHistoryModel.BlockHistory> list) {
        ArrayList<CallLogUtil.BasicLogInfo> arrayList = new ArrayList<>();
        for (BlockHistoryModel.BlockHistory blockHistory : list) {
            arrayList.add(getBasicLogInfoFromBlockHistory(blockHistory));
        }
        return arrayList;
    }
}
