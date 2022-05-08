package com.privacystar.core.data.sqlite.p008db.offenders;

import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.sqlite.SQLiteDatabase;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.DatabaseHelper;
import com.privacystar.core.data.sqlite.p008db.offenders.OffendersContract;
import com.privacystar.core.data.sqlite.p008db.offenders.OffendersModel;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.NumbersUtil;
import com.privacystar.core.util.Text;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.offenders.OffendersHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/offenders/OffendersHelper.class */
public class OffendersHelper {
    private static OffendersHelper sInstance;
    private Context mContext;

    private OffendersHelper(Context context) {
        this.mContext = context;
    }

    public static OffendersHelper getInstance() {
        OffendersHelper instance;
        synchronized (OffendersHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static OffendersHelper getInstance(Context context) {
        OffendersHelper offendersHelper;
        synchronized (OffendersHelper.class) {
            try {
                if (sInstance == null) {
                    sInstance = new OffendersHelper(context.getApplicationContext());
                }
                offendersHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return offendersHelper;
    }

    private String populateScamHashMaps(Cursor cursor, int i) throws Exception {
        BlockingManager instance = BlockingManager.getInstance();
        try {
            cursor.moveToFirst();
            int matchTrimLength = PreferenceUtil.getMatchTrimLength();
            String str = null;
            if (cursor.getCount() <= 0) {
                return str;
            }
            try {
                int columnIndex = cursor.getColumnIndex("phoneNumber");
                str = null;
                int i2 = 0;
                do {
                    i2++;
                    String string = cursor.getString(columnIndex);
                    try {
                        instance.getScammersCallBlocklistMap().put(Long.valueOf(Long.parseLong(NumbersUtil.getLast10Digits(Text.stripNonNumericCharacters(string), matchTrimLength))), 1);
                    } catch (Exception e) {
                        Timber.wtf(e, "Unhandled 2.0 legacy block - claimed to not be an issue.", new Object[0]);
                    }
                    if (i2 == i) {
                        str = string;
                    }
                    str = str;
                } while (cursor.moveToNext());
                return str;
            } catch (Exception e2) {
                Timber.m32e(e2, "unhandled error, thrown up the chain.", new Object[0]);
                throw e2;
            }
        } finally {
            cursor.close();
        }
    }

    public long addToOrUpdateOffender(OffendersModel.Offender offender) {
        return addToOrUpdateOffender(offender, DatabaseHelper.getInstance(this.mContext).getWritableDatabase());
    }

    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* JADX WARN: Type inference failed for: r17v3, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long addToOrUpdateOffender(com.privacystar.core.data.sqlite.p008db.offenders.OffendersModel.Offender r10, android.database.sqlite.SQLiteDatabase r11) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.data.sqlite.p008db.offenders.OffendersHelper.addToOrUpdateOffender(com.privacystar.core.data.sqlite.db.offenders.OffendersModel$Offender, android.database.sqlite.SQLiteDatabase):long");
    }

    public int clearOffenders() {
        SQLiteDatabase writableDatabase = DatabaseHelper.getInstance(this.mContext).getWritableDatabase();
        Timber.m37d("Deleting all messages from offenders table using injection-safe API method.", new Object[0]);
        return writableDatabase.delete(OffendersContract.OffendersEntry.TABLE_NAME, "1", null);
    }

    public int countOffenders() {
        return (int) DatabaseUtils.queryNumEntries(DatabaseHelper.getInstance(this.mContext).getReadableDatabase(), OffendersContract.OffendersEntry.TABLE_NAME);
    }

    public String manageScamHashMaps(String str, int i) {
        String str2;
        try {
            StringBuilder sb = new StringBuilder();
            sb.append("SELECT ");
            sb.append("phoneNumber");
            sb.append(" FROM ");
            sb.append(OffendersContract.OffendersEntry.TABLE_NAME);
            sb.append(" WHERE ");
            if (!Text.isBlank(str)) {
                sb.append("phoneNumber");
                sb.append(">\"");
                sb.append(str);
                sb.append("\" AND ");
            }
            sb.append("bitValue");
            sb.append(" = 1 ");
            sb.append(" ORDER BY ");
            sb.append("phoneNumber");
            sb.append(" LIMIT ");
            sb.append(i);
            sb.append(';');
            str2 = populateScamHashMaps(DatabaseHelper.getInstance(this.mContext).getWritableDatabase().rawQuery(sb.toString(), new String[0]), i);
        } catch (Exception e) {
            Timber.m32e(e, "while populating scam blocking managers", new Object[0]);
            str2 = null;
        }
        return str2;
    }
}
