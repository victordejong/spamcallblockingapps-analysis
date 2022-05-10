package p131c.p431l.p432a.p456f.p457c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.provider.CallLog;
import android.text.TextUtils;
import com.netqin.p525cm.p528db.model.BlackWhiteListModel;
import p131c.p431l.p432a.p456f.C6801a;
import p131c.p431l.p432a.p456f.C6802b;
import p131c.p431l.p432a.p468n.p469s.p472c.C6864a;
/* renamed from: c.l.a.f.c.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/f/c/b.class */
public class C6804b extends AbstractC6803a {

    /* renamed from: c */
    public static C6804b f20945c;

    /* renamed from: b */
    public Context f20946b;

    public C6804b(Context context) {
        this.f20946b = context;
        this.f20944a = new C6802b(C6801a.m19763a(context), "nq_black_white");
    }

    /* renamed from: a */
    public static C6804b m19749a(Context context) {
        C6804b bVar;
        synchronized (C6804b.class) {
            try {
                if (f20945c == null) {
                    f20945c = new C6804b(context);
                }
                bVar = f20945c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return bVar;
    }

    /* renamed from: a */
    public int m19750a(long j, String str, int i, String str2) throws Exception {
        if (TextUtils.isEmpty(str2)) {
            throw new NullPointerException(" address Parameter is null");
        } else if (j >= 1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("_id", Long.valueOf(j));
            contentValues.put("address", str2);
            contentValues.put("name", str);
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put("reverse", C6864a.m19518c(str2));
            return this.f20944a.m19760a(contentValues, "_id = ?", new String[]{String.valueOf(j)});
        } else {
            throw new NumberFormatException(" id Parameter Less than 1");
        }
    }

    /* renamed from: a */
    public int m19747a(String str) throws Exception {
        if (!TextUtils.isEmpty(str)) {
            return this.f20944a.m19759a("reverse= ?", new String[]{C6864a.m19518c(str)});
        }
        throw new NullPointerException(" address Parameter is null");
    }

    /* renamed from: a */
    public long m19748a(BlackWhiteListModel blackWhiteListModel) throws Exception {
        if (blackWhiteListModel != null) {
            String address = blackWhiteListModel.getAddress();
            if (!TextUtils.isEmpty(address)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("address", address);
                contentValues.put("name", blackWhiteListModel.getName());
                contentValues.put("type", Integer.valueOf(blackWhiteListModel.getType()));
                contentValues.put("reverse", C6864a.m19518c(address));
                return this.f20944a.m19761a(contentValues);
            }
            throw new NullPointerException(" address Parameter is null");
        }
        throw new NullPointerException(" blackWhiteParam Parameter is null");
    }

    /* renamed from: a */
    public long m19746a(String str, String str2, int i) throws Exception {
        if (!TextUtils.isEmpty(str2)) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("address", str2);
            contentValues.put("name", str);
            contentValues.put("type", Integer.valueOf(i));
            contentValues.put("reverse", C6864a.m19518c(str2));
            return this.f20944a.m19761a(contentValues);
        }
        throw new NullPointerException(" address Parameter is null");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ff, code lost:
        if (r8 == null) goto L_0x0108;
     */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00ea  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<com.netqin.p525cm.p528db.model.BlackWhiteListModel> m19751a(int r6) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p456f.p457c.C6804b.m19751a(int):java.util.List");
    }

    /* renamed from: b */
    public Cursor m19745b(int i) throws Exception {
        return this.f20944a.m19758a(null, "type= ?", new String[]{String.valueOf(i)}, null, null, " _id desc");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
        if (r10 != null) goto L_0x005e;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x009d  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m19744b(java.lang.String r9) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 184
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p456f.p457c.C6804b.m19744b(java.lang.String):java.lang.String");
    }

    /* renamed from: c */
    public int m19743c(int i) throws Exception {
        Cursor a;
        r9 = 0;
        int i2 = 0;
        i2 = 0;
        Cursor cursor = null;
        Cursor cursor2 = null;
        try {
            try {
                a = this.f20944a.m19758a(new String[]{" count(1) "}, "type= ?", new String[]{String.valueOf(i)}, null, null, null);
            } catch (Exception e) {
                cursor2 = cursor;
                e.printStackTrace();
                if (cursor != null) {
                }
            }
            if (a != null) {
                if (a.moveToFirst()) {
                    cursor2 = a;
                    cursor = a;
                    i2 = a.getInt(0);
                }
                i2 = i2;
                if (a != null) {
                    cursor = a;
                    cursor.close();
                }
                return i2;
            } else if (a == null) {
                return 0;
            } else {
                a.close();
                return 0;
            }
        } catch (Throwable th) {
            if (cursor2 != null) {
                cursor2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* renamed from: c */
    public long m19742c(String str) throws Exception {
        boolean z;
        boolean z2;
        Cursor a;
        if (!TextUtils.isEmpty(str)) {
            String c = C6864a.m19518c(str);
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    a = this.f20944a.m19758a(null, "reverse= ?", new String[]{c}, null, null, null);
                } catch (Exception e) {
                    cursor2 = cursor;
                    e.printStackTrace();
                    z = true;
                    if (cursor != null) {
                        z2 = true;
                    }
                }
                if (a != null) {
                    boolean z3 = true;
                    if (a.moveToFirst()) {
                        cursor2 = a;
                        cursor = a;
                        z3 = a.getLong(a.getColumnIndex("_id"));
                    }
                    boolean z4 = z3 ? 1 : 0;
                    boolean z5 = z3 ? 1 : 0;
                    z = z4;
                    if (a != null) {
                        cursor = a;
                        z2 = z3;
                        cursor.close();
                        z = z2;
                    }
                    long j = z ? 1L : 0L;
                    long j2 = z ? 1L : 0L;
                    long j3 = z ? 1L : 0L;
                    long j4 = z ? 1L : 0L;
                    return j;
                } else if (a == null) {
                    return -1L;
                } else {
                    a.close();
                    return -1L;
                }
            } catch (Throwable th) {
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } else {
            throw new NullPointerException(" address Parameter is null");
        }
    }

    /* renamed from: d */
    public int m19741d() {
        Cursor cursor;
        int i;
        try {
            cursor = this.f20946b.getContentResolver().query(CallLog.Calls.CONTENT_URI, new String[]{"number", "date", "type"}, "number is not null", null, null);
        } catch (Exception e) {
            cursor = null;
        }
        if (cursor != null) {
            i = cursor.getCount();
            cursor.close();
        } else {
            i = 0;
        }
        return i;
    }

    /* renamed from: d */
    public int m19740d(String str) throws Exception {
        int i;
        Cursor a;
        if (!TextUtils.isEmpty(str)) {
            String c = C6864a.m19518c(str);
            Cursor cursor = null;
            Cursor cursor2 = null;
            try {
                try {
                    a = this.f20944a.m19758a(new String[]{"type"}, "reverse= ?", new String[]{c}, null, null, null);
                } catch (Exception e) {
                    e.printStackTrace();
                    i = -1;
                    if (cursor != null) {
                        i = -1;
                    }
                }
                if (a != null) {
                    i = -1;
                    if (a.moveToFirst()) {
                        cursor2 = a;
                        cursor = a;
                        i = a.getInt(a.getColumnIndex("type"));
                    }
                    i = i;
                    if (a != null) {
                        cursor = a;
                        cursor.close();
                    }
                    return i;
                } else if (a == null) {
                    return -1;
                } else {
                    a.close();
                    return -1;
                }
            } catch (Throwable th) {
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } else {
            throw new NullPointerException(" address Parameter is null");
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        this.f20944a = null;
    }
}
