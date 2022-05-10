package p131c.p431l.p432a.p456f.p457c;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import com.mopub.mobileads.VastIconXmlManager;
import com.netqin.p525cm.p528db.model.BlockedCallsModel;
import java.util.List;
import p131c.p431l.p432a.p456f.C6801a;
import p131c.p431l.p432a.p456f.C6802b;
/* renamed from: c.l.a.f.c.c */
/* loaded from: classes2-dex2jar.jar:c/l/a/f/c/c.class */
public class C6805c extends AbstractC6803a {

    /* renamed from: b */
    public static C6805c f20947b;

    public C6805c(Context context) {
        this.f20944a = new C6802b(C6801a.m19763a(context), "nq_calllog");
    }

    /* renamed from: a */
    public static C6805c m19736a(Context context) {
        C6805c cVar;
        synchronized (C6805c.class) {
            try {
                if (f20947b == null) {
                    f20947b = new C6805c(context);
                }
                cVar = f20947b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return cVar;
    }

    /* renamed from: a */
    public int m19739a(int i) throws Exception {
        int i2 = 0;
        Cursor cursor = null;
        try {
            cursor = this.f20944a.m19758a(new String[]{" count(1) "}, "read= ?", new String[]{String.valueOf(i)}, null, null, null);
            if (cursor != null) {
                if (cursor.moveToFirst()) {
                    cursor = cursor;
                    i2 = cursor.getInt(0);
                }
                return i2;
            } else if (cursor == null) {
                return 0;
            } else {
                cursor.close();
                return 0;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: a */
    public int m19738a(int i, long j) throws Exception {
        if (j >= 1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("read", Integer.valueOf(i));
            return this.f20944a.m19760a(contentValues, "_id= ?", new String[]{String.valueOf(j)});
        }
        throw new NumberFormatException(" id Parameter Less than 1");
    }

    /* renamed from: a */
    public int m19737a(long j) throws Exception {
        if (j >= 1) {
            return this.f20944a.m19759a("_id= ?", new String[]{String.valueOf(j)});
        }
        throw new NumberFormatException(" id Parameter Less than 1");
    }

    /* renamed from: a */
    public long m19734a(BlockedCallsModel blockedCallsModel) throws Exception {
        if (blockedCallsModel != null) {
            String address = blockedCallsModel.getAddress();
            if (!TextUtils.isEmpty(address)) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("address", address);
                contentValues.put("name", blockedCallsModel.getName());
                contentValues.put("location", blockedCallsModel.getLocation());
                contentValues.put("date", Long.valueOf(blockedCallsModel.getDate()));
                contentValues.put(VastIconXmlManager.DURATION, Integer.valueOf(blockedCallsModel.getDurtion()));
                contentValues.put("type", Integer.valueOf(blockedCallsModel.getType()));
                contentValues.put("read", Integer.valueOf(blockedCallsModel.getRead()));
                contentValues.put("block_mode", Integer.valueOf(blockedCallsModel.getBlockMode()));
                return this.f20944a.m19761a(contentValues);
            }
            throw new NullPointerException(" address Parameter is null");
        }
        throw new NullPointerException(" calllogParam Parameter is null");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x00dc A[DONT_GENERATE] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.netqin.p525cm.p528db.model.BlockedCallsModel> m19735a(android.database.Cursor r6) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p431l.p432a.p456f.p457c.C6805c.m19735a(android.database.Cursor):java.util.List");
    }

    /* renamed from: a */
    public boolean m19733a(String str, long j) {
        Cursor cursor;
        Cursor cursor2 = null;
        Cursor cursor3 = null;
        try {
            try {
                cursor = this.f20944a.m19758a(null, "address= ? and  abs ( date- ? ) <1000", new String[]{str, String.valueOf(j)}, null, null, null);
            } catch (Exception e) {
                cursor3 = cursor2;
                e.printStackTrace();
                if (cursor2 == null) {
                    return false;
                }
                cursor = cursor2;
            }
            if (cursor == null) {
                if (cursor == null) {
                    return false;
                }
                cursor.close();
                return false;
            } else if (cursor.getCount() <= 0) {
                if (cursor.moveToFirst()) {
                    cursor3 = cursor;
                    cursor2 = cursor;
                    if (cursor.getLong(cursor.getColumnIndex("_id")) > 0) {
                        if (cursor == null) {
                            return true;
                        }
                        cursor.close();
                        return true;
                    }
                }
                if (cursor == null) {
                    return false;
                }
                cursor.close();
                return false;
            } else if (cursor == null) {
                return true;
            } else {
                cursor.close();
                return true;
            }
        } catch (Throwable th) {
            if (cursor3 != null) {
                cursor3.close();
            }
            throw th;
        }
    }

    /* renamed from: d */
    public int m19732d() throws Exception {
        return this.f20944a.m19759a(null, null);
    }

    /* renamed from: e */
    public List<BlockedCallsModel> m19731e() throws Exception {
        System.gc();
        try {
            try {
                m19754a();
                List<BlockedCallsModel> a = m19735a(m19730f());
                m19752c();
                m19753b();
                return a;
            } catch (Exception e) {
                e.printStackTrace();
                throw e;
            }
        } catch (Throwable th) {
            m19753b();
            throw th;
        }
    }

    /* renamed from: f */
    public Cursor m19730f() throws Exception {
        return this.f20944a.m19758a(null, null, null, null, null, "date DESC ");
    }

    public void finalize() throws Throwable {
        super.finalize();
        this.f20944a = null;
    }

    /* renamed from: g */
    public int m19729g() throws Exception {
        Cursor cursor = null;
        try {
            cursor = this.f20944a.m19758a(new String[]{" count(1) "}, null, null, null, null, null);
            int i = 0;
            if (cursor != null) {
                if (cursor.moveToFirst()) {
                    cursor = cursor;
                    i = cursor.getInt(0);
                }
                return i;
            } else if (cursor == null) {
                return 0;
            } else {
                cursor.close();
                return 0;
            }
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    /* renamed from: h */
    public int m19728h() throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put("read", (Integer) 1);
        return this.f20944a.m19760a(contentValues, null, null);
    }
}
