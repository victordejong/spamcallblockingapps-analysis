package com.google.android.gms.tagmanager;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.tagmanager.DataLayer;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdContract;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzat.class */
public final class zzat implements DataLayer.zzc {
    private static final String zzbaz = String.format("CREATE TABLE IF NOT EXISTS %s ( '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, '%s' STRING NOT NULL, '%s' BLOB NOT NULL, '%s' INTEGER NOT NULL);", "datalayer", "ID", "key", FirebaseAnalytics.Param.VALUE, CallerIdContract.CallerIdEntry.COLUMN_EXPIRES);
    private final Executor zzbba;
    private zzax zzbbb;
    private int zzbbc;
    private final Context zzri;
    private Clock zzrz;

    public zzat(Context context) {
        this(context, DefaultClock.getInstance(), "google_tagmanager.db", 2000, Executors.newSingleThreadExecutor());
    }

    @VisibleForTesting
    private zzat(Context context, Clock clock, String str, int i, Executor executor) {
        this.zzri = context;
        this.zzrz = clock;
        this.zzbbc = 2000;
        this.zzbba = executor;
        this.zzbbb = new zzax(this, this.zzri, str);
    }

    private final void zzaq(long j) {
        SQLiteDatabase zzdh = zzdh("Error opening database for deleteOlderThan.");
        if (zzdh != null) {
            try {
                int delete = zzdh.delete("datalayer", "expires <= ?", new String[]{Long.toString(j)});
                StringBuilder sb = new StringBuilder(33);
                sb.append("Deleted ");
                sb.append(delete);
                sb.append(" expired items");
                zzdi.m328v(sb.toString());
            } catch (SQLiteException e) {
                zzdi.zzab("Error deleting old entries.");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzb(List<zzay> list, long j) {
        SQLiteDatabase zzdh;
        synchronized (this) {
            long currentTimeMillis = this.zzrz.currentTimeMillis();
            zzaq(currentTimeMillis);
            int zzoa = (zzoa() - this.zzbbc) + list.size();
            if (zzoa > 0) {
                List<String> zzv = zzv(zzoa);
                int size = zzv.size();
                StringBuilder sb = new StringBuilder(64);
                sb.append("DataLayer store full, deleting ");
                sb.append(size);
                sb.append(" entries to make room.");
                zzdi.zzdi(sb.toString());
                String[] strArr = (String[]) zzv.toArray(new String[0]);
                if (!(strArr == null || strArr.length == 0 || (zzdh = zzdh("Error opening database for deleteEntries.")) == null)) {
                    try {
                        zzdh.delete("datalayer", String.format("%s in (%s)", "ID", TextUtils.join(",", Collections.nCopies(strArr.length, "?"))), strArr);
                    } catch (SQLiteException e) {
                        String valueOf = String.valueOf(Arrays.toString(strArr));
                        zzdi.zzab(valueOf.length() != 0 ? "Error deleting entries ".concat(valueOf) : new String("Error deleting entries "));
                    }
                }
            }
            SQLiteDatabase zzdh2 = zzdh("Error opening database for writeEntryToDatabase.");
            if (zzdh2 != null) {
                for (zzay zzayVar : list) {
                    ContentValues contentValues = new ContentValues();
                    contentValues.put(CallerIdContract.CallerIdEntry.COLUMN_EXPIRES, Long.valueOf(currentTimeMillis + j));
                    contentValues.put("key", zzayVar.zzoj);
                    contentValues.put(FirebaseAnalytics.Param.VALUE, zzayVar.zzbbi);
                    zzdh2.insert("datalayer", null, contentValues);
                }
            }
            zzob();
        }
    }

    private static Object zzd(byte[] bArr) {
        ObjectInputStream objectInputStream;
        Throwable th;
        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(bArr);
        ObjectInputStream objectInputStream2 = null;
        try {
            objectInputStream = new ObjectInputStream(byteArrayInputStream);
            try {
                Object readObject = objectInputStream.readObject();
                try {
                    objectInputStream.close();
                    byteArrayInputStream.close();
                } catch (IOException e) {
                }
                return readObject;
            } catch (IOException e2) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e3) {
                        return null;
                    }
                }
                byteArrayInputStream.close();
                return null;
            } catch (ClassNotFoundException e4) {
                if (objectInputStream != null) {
                    try {
                        objectInputStream.close();
                    } catch (IOException e5) {
                        return null;
                    }
                }
                byteArrayInputStream.close();
                return null;
            } catch (Throwable th2) {
                th = th2;
                objectInputStream2 = objectInputStream;
                if (objectInputStream2 != null) {
                    try {
                        objectInputStream2.close();
                    } catch (IOException e6) {
                        throw th;
                    }
                }
                byteArrayInputStream.close();
                throw th;
            }
        } catch (IOException e7) {
            objectInputStream = null;
        } catch (ClassNotFoundException e8) {
            objectInputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void zzdg(String str) {
        SQLiteDatabase zzdh = zzdh("Error opening database for clearKeysWithPrefix.");
        try {
            if (zzdh != null) {
                int delete = zzdh.delete("datalayer", "key = ? OR key LIKE ?", new String[]{str, String.valueOf(str).concat(".%")});
                StringBuilder sb = new StringBuilder(25);
                sb.append("Cleared ");
                sb.append(delete);
                sb.append(" items");
                zzdi.m328v(sb.toString());
            }
        } catch (SQLiteException e) {
            String valueOf = String.valueOf(e);
            StringBuilder sb2 = new StringBuilder(String.valueOf(str).length() + 44 + String.valueOf(valueOf).length());
            sb2.append("Error deleting entries with key prefix: ");
            sb2.append(str);
            sb2.append(" (");
            sb2.append(valueOf);
            sb2.append(").");
            zzdi.zzab(sb2.toString());
        } finally {
            zzob();
        }
    }

    private final SQLiteDatabase zzdh(String str) {
        try {
            return this.zzbbb.getWritableDatabase();
        } catch (SQLiteException e) {
            zzdi.zzab(str);
            return null;
        }
    }

    private static byte[] zzg(Object obj) {
        Throwable th;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        ObjectOutputStream objectOutputStream = null;
        try {
            objectOutputStream = new ObjectOutputStream(byteArrayOutputStream);
            try {
                objectOutputStream.writeObject(obj);
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                try {
                    objectOutputStream.close();
                    byteArrayOutputStream.close();
                } catch (IOException e) {
                }
                return byteArray;
            } catch (IOException e2) {
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e3) {
                        return null;
                    }
                }
                byteArrayOutputStream.close();
                return null;
            } catch (Throwable th2) {
                th = th2;
                if (objectOutputStream != null) {
                    try {
                        objectOutputStream.close();
                    } catch (IOException e4) {
                        throw th;
                    }
                }
                byteArrayOutputStream.close();
                throw th;
            }
        } catch (IOException e5) {
            objectOutputStream = null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<DataLayer.zza> zzny() {
        try {
            zzaq(this.zzrz.currentTimeMillis());
            List<zzay> zznz = zznz();
            ArrayList arrayList = new ArrayList();
            for (zzay zzayVar : zznz) {
                arrayList.add(new DataLayer.zza(zzayVar.zzoj, zzd(zzayVar.zzbbi)));
            }
            return arrayList;
        } finally {
            zzob();
        }
    }

    private final List<zzay> zznz() {
        SQLiteDatabase zzdh = zzdh("Error opening database for loadSerialized.");
        ArrayList arrayList = new ArrayList();
        if (zzdh == null) {
            return arrayList;
        }
        Cursor query = zzdh.query("datalayer", new String[]{"key", FirebaseAnalytics.Param.VALUE}, null, null, null, null, "ID", null);
        while (query.moveToNext()) {
            try {
                arrayList.add(new zzay(query.getString(0), query.getBlob(1)));
            } finally {
                query.close();
            }
        }
        return arrayList;
    }

    private final int zzoa() {
        Throwable th;
        int i;
        SQLiteDatabase zzdh = zzdh("Error opening database for getNumStoredEntries.");
        int i2 = 0;
        if (zzdh == null) {
            return 0;
        }
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                cursor = zzdh.rawQuery("SELECT COUNT(*) from datalayer", null);
            } catch (SQLiteException e) {
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            if (cursor.moveToFirst()) {
                i2 = (int) cursor.getLong(0);
            }
            i = i2;
            if (cursor != null) {
                cursor.close();
                i = i2;
            }
        } catch (SQLiteException e2) {
            cursor2 = cursor;
            zzdi.zzab("Error getting numStoredEntries");
            i = 0;
            if (cursor != null) {
                cursor.close();
                i = 0;
            }
            return i;
        } catch (Throwable th3) {
            th = th3;
            cursor2 = cursor;
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
        return i;
    }

    private final void zzob() {
        try {
            this.zzbbb.close();
        } catch (SQLiteException e) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0093  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.util.List<java.lang.String> zzv(int r11) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.zzat.zzv(int):java.util.List");
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zza(zzaq zzaqVar) {
        this.zzbba.execute(new zzav(this, zzaqVar));
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zza(List<DataLayer.zza> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (DataLayer.zza zzaVar : list) {
            arrayList.add(new zzay(zzaVar.mKey, zzg(zzaVar.mValue)));
        }
        this.zzbba.execute(new zzau(this, arrayList, j));
    }

    @Override // com.google.android.gms.tagmanager.DataLayer.zzc
    public final void zzdf(String str) {
        this.zzbba.execute(new zzaw(this, str));
    }
}
