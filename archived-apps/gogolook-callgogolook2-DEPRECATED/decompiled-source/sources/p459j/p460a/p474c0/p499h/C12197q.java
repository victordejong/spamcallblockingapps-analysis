package p459j.p460a.p474c0.p499h;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.core.app.NotificationCompatJellybean;
import gogolook.callgogolook2.realm.obj.index.CacheIndexRealmObject;
import p081h.p093b.p099c.p100a.C5607h;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.C11527f;
import p459j.p460a.p474c0.p475c.C11539n;
import p459j.p460a.p474c0.p488f.C11832i;
import p459j.p460a.p582w0.C13878a3;
import p459j.p460a.p582w0.C14017g4;
/* renamed from: j.a.c0.h.q */
/* loaded from: classes3-dex2jar.jar:j/a/c0/h/q.class */
public class C12197q {

    /* renamed from: j.a.c0.h.q$a */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/q$a.class */
    public static class C12198a {

        /* renamed from: a */
        public static final String[] f27358a = {"contact_id", CacheIndexRealmObject.DISPLAY_NAME, "photo_thumb_uri", "data1", "data2", "data3", "lookup", "_id", "sort_key"};
    }

    /* renamed from: j.a.c0.h.q$b */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/q$b.class */
    public static class C12199b {

        /* renamed from: a */
        public static final String[] f27359a = {"_id", CacheIndexRealmObject.DISPLAY_NAME, "photo_uri", "lookup"};
    }

    /* renamed from: j.a.c0.h.q$c */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/q$c.class */
    public static class C12200c {

        /* renamed from: a */
        public static final String[] f27360a = {"_id", CacheIndexRealmObject.DISPLAY_NAME, "photo_thumb_uri", "number", "type", NotificationCompatJellybean.KEY_LABEL, "lookup"};
    }

    /* renamed from: j.a.c0.h.q$d */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/q$d.class */
    public static class C12201d {

        /* renamed from: a */
        public static final String[] f27361a = {"contact_id", CacheIndexRealmObject.DISPLAY_NAME, "photo_thumb_uri", "data1", "data2", "data3", "lookup", "_id", "sort_key"};
    }

    /* renamed from: j.a.c0.h.q$e */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/q$e.class */
    public static class C12202e {

        /* renamed from: a */
        public static final String[] f27362a = {"_id", CacheIndexRealmObject.DISPLAY_NAME, "photo_thumb_uri", "lookup"};
    }

    /* renamed from: j.a.c0.h.q$f */
    /* loaded from: classes3-dex2jar.jar:j/a/c0/h/q$f.class */
    public static class C12203f {

        /* renamed from: a */
        public static final String[] f27363a = {"data1", "data2", "data3", "data4", "data5", "data6"};
    }

    /* renamed from: a */
    public static Uri m6833a() {
        return (!m6818d() || !C14017g4.m2803u()) ? ContactsContract.CommonDataKinds.Email.CONTENT_LOOKUP_URI : ContactsContract.CommonDataKinds.Email.ENTERPRISE_CONTENT_LOOKUP_URI;
    }

    /* renamed from: a */
    public static C5607h m6827a(Cursor cursor, boolean z) {
        long j = cursor.getLong(0);
        return m6825a(cursor.getString(1), 40, cursor.getString(3), cursor.getInt(4), cursor.getString(5), j, cursor.getString(6), j, cursor.getString(2), z);
    }

    /* renamed from: a */
    public static C5607h m6825a(String str, int i, String str2, int i2, String str3, long j, String str4, long j2, String str5, boolean z) {
        return z ? C5607h.m25029b(str, i, str2, i2, str3, j, null, j2, str5, true, str4) : C5607h.m25034a(str, i, str2, i2, str3, j, (Long) null, j2, str5, true, str4);
    }

    /* renamed from: a */
    public static C11527f m6831a(Context context) {
        return !m6821c() ? C11527f.m9266b() : new C11539n(context, C12199b.f27359a, null, null, null);
    }

    /* renamed from: a */
    public static C11527f m6829a(Context context, long j, boolean z) {
        if (!m6821c()) {
            return C11527f.m9266b();
        }
        Uri build = ContactsContract.Contacts.CONTENT_URI.buildUpon().appendPath(String.valueOf(j)).appendPath("data").build();
        String str = "mimetype=?";
        if (z) {
            str = "mimetype=? AND display_name=data1";
        }
        return new C11527f(context, build, C12203f.f27363a, str, new String[]{"vnd.android.cursor.item/name"}, null);
    }

    /* renamed from: a */
    public static C11527f m6828a(Context context, String str) {
        return m6826a(str) ? m6822b(context, str) : m6819c(context, str);
    }

    /* renamed from: a */
    public static String m6830a(Context context, long j) {
        Throwable th;
        Cursor cursor;
        if (m6832a(j)) {
            return null;
        }
        try {
            Cursor a = m6829a(context, j, true).m9267a();
            String str = null;
            if (a != null) {
                str = null;
                try {
                    if (a.moveToFirst()) {
                        str = a.getString(1);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = a;
                    if (cursor != null) {
                        cursor.close();
                    }
                    throw th;
                }
            }
            if (a != null) {
                a.close();
            }
            return str;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public static boolean m6832a(long j) {
        return m6818d() && ContactsContract.Contacts.isEnterpriseContactId(j);
    }

    /* renamed from: a */
    public static boolean m6826a(String str) {
        return str != null && str.contains("@");
    }

    /* renamed from: b */
    public static Uri m6824b() {
        return (!m6818d() || !C14017g4.m2803u()) ? ContactsContract.PhoneLookup.CONTENT_FILTER_URI : ContactsContract.PhoneLookup.ENTERPRISE_CONTENT_FILTER_URI;
    }

    /* renamed from: b */
    public static C11527f m6823b(Context context) {
        return !m6821c() ? C11527f.m9266b() : new C11527f(context, ContactsContract.CommonDataKinds.Phone.CONTENT_URI.buildUpon().appendQueryParameter("directory", String.valueOf(0L)).appendQueryParameter("android.provider.extra.ADDRESS_BOOK_INDEX", "true").build(), C12201d.f27361a, null, null, "sort_key");
    }

    /* renamed from: b */
    public static C11527f m6822b(Context context, String str) {
        return !m6821c() ? C11527f.m9266b() : new C11527f(context, ContactsContract.CommonDataKinds.Email.CONTENT_FILTER_URI.buildUpon().appendPath(str).appendQueryParameter("directory", String.valueOf(0L)).build(), C12198a.f27358a, null, null, "sort_key");
    }

    /* renamed from: c */
    public static C11527f m6820c(Context context) {
        return !m6821c() ? C11527f.m9266b() : new C11527f(context, ContactsContract.Profile.CONTENT_URI, C12202e.f27362a, null, null, null);
    }

    /* renamed from: c */
    public static C11527f m6819c(Context context, String str) {
        return !m6821c() ? C11527f.m9266b() : new C11527f(context, ContactsContract.CommonDataKinds.Phone.CONTENT_FILTER_URI.buildUpon().appendPath(str).appendQueryParameter("directory", String.valueOf(0L)).build(), C12201d.f27361a, null, null, "sort_key");
    }

    /* renamed from: c */
    public static boolean m6821c() {
        return C13878a3.m3217d("android.permission.READ_CONTACTS");
    }

    /* renamed from: d */
    public static C11527f m6817d(Context context, String str) {
        return C11832i.m8158b(str) ? m6816e(context, str) : m6815f(context, str);
    }

    /* renamed from: d */
    public static boolean m6818d() {
        return AbstractC11516a.m9413n().mo9412a().getPackageManager().hasSystemFeature("android.software.managed_users");
    }

    /* renamed from: e */
    public static C11527f m6816e(Context context, String str) {
        return !m6821c() ? C11527f.m9266b() : new C11527f(context, m6833a().buildUpon().appendPath(str).appendQueryParameter("directory", String.valueOf(0L)).build(), C12198a.f27358a, null, null, "sort_key");
    }

    /* renamed from: f */
    public static C11527f m6815f(Context context, String str) {
        return !m6821c() ? C11527f.m9266b() : new C11527f(context, m6824b().buildUpon().appendPath(str).build(), C12200c.f27360a, null, null, null);
    }
}
