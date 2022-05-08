package com.privacystar.core.data.sqlite.p008db.caller_id;

import android.content.ContentValues;
import android.content.Context;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdContract;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.caller_id.CallerIdHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/caller_id/CallerIdHelper.class */
public class CallerIdHelper {
    private static CallerIdHelper sInstance;
    private Context mContext;

    private CallerIdHelper(Context context) {
        this.mContext = context;
    }

    public static CallerIdHelper getInstance() {
        CallerIdHelper instance;
        synchronized (CallerIdHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static CallerIdHelper getInstance(Context context) {
        CallerIdHelper callerIdHelper;
        synchronized (CallerIdHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new CallerIdHelper(context.getApplicationContext());
                }
                callerIdHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return callerIdHelper;
    }

    public void addToOrUpdateMessage(CallerIdModel.CallerId callerId) {
        addToOrUpdateMessage(callerId, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    public void addToOrUpdateMessage(CallerIdModel.CallerId callerId, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.beginTransaction();
        try {
            try {
                ContentValues contentValues = CallerIdContract.CallerIdEntry.toContentValues(callerId);
                if (sQLiteDatabase.update("callerIdCache", contentValues, "phoneNumber= ?", new String[]{callerId.phoneNumber}) == 1) {
                    Timber.m28v("Updated callerId cache for: %s.", callerId.phoneNumber);
                } else {
                    sQLiteDatabase.insertOrThrow("callerIdCache", null, contentValues);
                    sQLiteDatabase.setTransactionSuccessful();
                    Timber.m28v("Added new callerIdCache entry for: %s [%s].", callerId.phoneNumber, callerId.callerName);
                }
            } catch (Exception e) {
                Timber.m32e(e, "trying to add to callerIdCache.", new Object[0]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    public int countCachedCallerIds() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.mContext).getReadableDatabase(), "callerIdCache", "expires > ?", new String[]{Long.toString(System.currentTimeMillis())});
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x00a0, code lost:
        if (r0.isClosed() == false) goto L_0x007e;
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0075 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.ArrayList<com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel.CallerId> getAllCachedIds() {
        /*
            r7 = this;
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            java.lang.String r0 = "SELECT %s FROM %s WHERE %s > ?"
            r1 = 3
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            java.lang.String r4 = "*"
            r2[r3] = r4
            r2 = r1
            r3 = 1
            java.lang.String r4 = "callerIdCache"
            r2[r3] = r4
            r2 = r1
            r3 = 2
            java.lang.String r4 = "expires"
            r2[r3] = r4
            java.lang.String r0 = java.lang.String.format(r0, r1)
            r9 = r0
            r0 = 1
            java.lang.String[] r0 = new java.lang.String[r0]
            r10 = r0
            r0 = r10
            r1 = 0
            long r2 = java.lang.System.currentTimeMillis()
            java.lang.String r2 = java.lang.Long.toString(r2)
            r0[r1] = r2
            java.lang.String r0 = "Preparing to execute SQL: %s with %s."
            r1 = 2
            java.lang.Object[] r1 = new java.lang.Object[r1]
            r2 = r1
            r3 = 0
            r4 = r9
            r2[r3] = r4
            r2 = r1
            r3 = 1
            r4 = r10
            r5 = 0
            r4 = r4[r5]
            r2[r3] = r4
            timber.log.Timber.m28v(r0, r1)
            r0 = r7
            android.content.Context r0 = r0.mContext
            com.privacystar.core.data.sqlite.db.DatabaseHelper r0 = com.privacystar.core.data.sqlite.p008db.DatabaseHelper.getInstance(r0)
            android.database.sqlite.SQLiteDatabase r0 = r0.getReadableDatabase()
            r1 = r9
            r2 = r10
            android.database.Cursor r0 = r0.rawQuery(r1, r2)
            r9 = r0
            r0 = r9
            boolean r0 = r0.moveToFirst()     // Catch: all -> 0x0087, Exception -> 0x008b
            if (r0 == 0) goto L_0x0071
        L_0x005b:
            r0 = r8
            r1 = r9
            com.privacystar.core.data.sqlite.db.caller_id.CallerIdModel$CallerId r1 = com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdContract.CallerIdEntry.parseCursor(r1)     // Catch: all -> 0x0087, Exception -> 0x008b
            boolean r0 = r0.add(r1)     // Catch: all -> 0x0087, Exception -> 0x008b
            r0 = r9
            boolean r0 = r0.moveToNext()     // Catch: all -> 0x0087, Exception -> 0x008b
            r11 = r0
            r0 = r11
            if (r0 != 0) goto L_0x005b
        L_0x0071:
            r0 = r9
            if (r0 == 0) goto L_0x00a6
            r0 = r9
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x00a6
        L_0x007e:
            r0 = r9
            r0.close()
            goto L_0x00a6
        L_0x0087:
            r8 = move-exception
            goto L_0x00a8
        L_0x008b:
            r10 = move-exception
            r0 = r10
            java.lang.String r1 = "trying to fetch all callerId cache."
            r2 = 0
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: all -> 0x0087
            timber.log.Timber.m32e(r0, r1, r2)     // Catch: all -> 0x0087
            r0 = r9
            if (r0 == 0) goto L_0x00a6
            r0 = r9
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x00a6
            goto L_0x007e
        L_0x00a6:
            r0 = r8
            return r0
        L_0x00a8:
            r0 = r9
            if (r0 == 0) goto L_0x00bb
            r0 = r9
            boolean r0 = r0.isClosed()
            if (r0 != 0) goto L_0x00bb
            r0 = r9
            r0.close()
        L_0x00bb:
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdHelper.getAllCachedIds():java.util.ArrayList");
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x009d, code lost:
        if (r0.isClosed() == false) goto L_0x00a0;
     */
    @android.support.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdModel.CallerId getEntry(java.lang.String r8) {
        /*
            Method dump skipped, instructions count: 287
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdHelper.getEntry(java.lang.String):com.privacystar.core.data.sqlite.db.caller_id.CallerIdModel$CallerId");
    }

    public void initializeDebugCallerIdData(SQLiteDatabase sQLiteDatabase) {
        CallerIdModel.CallerId callerId = new CallerIdModel.CallerId();
        callerId.phoneNumber = "5014755411";
        callerId.callerName = "Asian Express";
        callerId.bitValue = 0;
        callerId.lineType = "Mobile";
        callerId.cityState = "Little Rock, AR";
        callerId.expires = 1498626000000L;
        addToOrUpdateMessage(callerId, sQLiteDatabase);
    }
}
