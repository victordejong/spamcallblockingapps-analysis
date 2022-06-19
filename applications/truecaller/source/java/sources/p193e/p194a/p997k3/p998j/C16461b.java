package p193e.p194a.p997k3.p998j;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.tenor.android.core.constant.StringConstant;
import com.truecaller.data.entity.Contact;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1053m0.C17891a1;
/* renamed from: e.a.k3.j.b */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/b.class */
public class C16461b extends AbstractC16479f {

    /* renamed from: c */
    public static UriMatcher f46214c;

    public C16461b(Context context) {
        super(context);
    }

    /* renamed from: c */
    public static void m17369c(UriMatcher uriMatcher, Uri uri, int i) {
        String authority = uri.getAuthority();
        uriMatcher.addURI(authority, TextUtils.join(StringConstant.SLASH, uri.getPathSegments()) + "/#", i);
    }

    /* renamed from: m */
    public static UriMatcher m17359m() {
        if (f46214c == null) {
            synchronized (C16461b.class) {
                try {
                    if (f46214c == null) {
                        UriMatcher uriMatcher = new UriMatcher(-1);
                        f46214c = uriMatcher;
                        m17369c(uriMatcher, C17891a1.C17904m.m15552a(), 1);
                        m17369c(f46214c, C17891a1.C17892a.m15709b(), 2);
                        m17369c(f46214c, C17891a1.C17904m.m15551b(), 1);
                        m17369c(f46214c, C17891a1.C17892a.m15707d(), 2);
                        m17369c(f46214c, C17891a1.C17901j.m15699b(), 3);
                        m17369c(f46214c, Uri.withAppendedPath(C17891a1.f50888a, "history_with_raw_contact"), 3);
                        m17369c(f46214c, C17891a1.C17901j.m15697d(), 3);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f46214c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002e, code lost:
        if (r0 == 3) goto L12;
     */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m17357o(com.truecaller.data.entity.Contact r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            if (r0 == 0) goto L33
            r0 = r4
            r5 = r0
            r0 = r3
            android.net.Uri r0 = r0.f11514i
            if (r0 == 0) goto L33
            r0 = r4
            r5 = r0
            r0 = r3
            boolean r0 = r0.f11515j
            if (r0 == 0) goto L33
            android.content.UriMatcher r0 = m17359m()
            r1 = r3
            android.net.Uri r1 = r1.f11514i
            int r0 = r0.match(r1)
            r6 = r0
            r0 = r6
            r1 = 2
            if (r0 == r1) goto L31
            r0 = r4
            r5 = r0
            r0 = r6
            r1 = 3
            if (r0 != r1) goto L33
        L31:
            r0 = 1
            r5 = r0
        L33:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p997k3.p998j.C16461b.m17357o(com.truecaller.data.entity.Contact):boolean");
    }

    /* renamed from: d */
    public final Contact m17368d(Uri uri, String str, String... strArr) {
        ContentResolver contentResolver = this.f46338b;
        if (strArr.length == 0) {
            strArr = null;
        }
        Cursor query = contentResolver.query(uri, null, str, strArr, null);
        Contact contact = null;
        if (query != null) {
            contact = null;
            try {
                if (query.moveToFirst()) {
                    C16463d c16463d = new C16463d(query);
                    c16463d.m17353h(true);
                    contact = c16463d.m17354g(query);
                    do {
                        c16463d.m17355f(query, contact);
                    } while (query.moveToNext());
                    contact.m35529b1();
                }
            } finally {
                query.close();
            }
        }
        return contact;
    }

    /* renamed from: e */
    public Contact m17367e(long j) {
        if (j < 1) {
            return null;
        }
        return m17368d(C17891a1.C17892a.m15707d(), "_id=?", String.valueOf(j));
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* renamed from: f */
    public Contact m17366f(long j) {
        Cursor query = this.f46338b.query(C17891a1.C17901j.m15697d(), new String[]{"history_aggregated_contact_id"}, "_id=?", new String[]{String.valueOf(j)}, null);
        ?? r11 = true;
        ?? r14 = true;
        if (query != null) {
            try {
                if (query.moveToNext()) {
                    r11 = query.getLong(0);
                }
                query.close();
                r14 = r11;
            } catch (Throwable th) {
                query.close();
                throw th;
            }
        }
        return m17367e(r14 == true ? 1L : 0L);
    }

    /* renamed from: g */
    public Contact m17365g(String str) {
        return m17368d(C17891a1.C17892a.m15708c(), "contact_im_id=?", str);
    }

    /* renamed from: h */
    public Contact m17364h(String str) {
        if (str == null) {
            return null;
        }
        return m17368d(C17891a1.C17892a.m15708c(), "data1=? AND data_type=4", str);
    }

    /* renamed from: i */
    public Contact m17363i(long j) {
        return m17368d(C17891a1.C17892a.m15708c(), C22128a.m8583p2("contact_phonebook_id=", j), new String[0]);
    }

    /* renamed from: j */
    public Contact m17362j(String str) {
        if (str == null) {
            return null;
        }
        return m17368d(C17891a1.C17892a.m15708c(), "tc_id=?", str);
    }

    /* renamed from: k */
    public Contact m17361k(Uri uri) {
        int match;
        if (uri == null || (match = m17359m().match(uri)) == -1) {
            return null;
        }
        long parseId = ContentUris.parseId(uri);
        if (match == 1) {
            return m17368d(C17891a1.C17892a.m15708c(), "_id=?", String.valueOf(parseId));
        }
        if (match == 2) {
            return m17367e(parseId);
        }
        if (match == 3) {
            return m17366f(parseId);
        }
        return null;
    }

    /* renamed from: l */
    public Contact m17360l(Contact contact) {
        Contact m17363i;
        Contact m17361k;
        Contact m17367e;
        Contact m17362j;
        if (contact == null) {
            return null;
        }
        String tcId = contact.getTcId();
        if (tcId != null && (m17362j = m17362j(tcId)) != null) {
            return m17362j;
        }
        Long m35509l = contact.m35509l();
        if (m35509l != null && (m17367e = m17367e(m35509l.longValue())) != null) {
            return m17367e;
        }
        Uri uri = contact.f11514i;
        if (uri != null && (m17361k = m17361k(uri)) != null) {
            return m17361k;
        }
        Long m35548R = contact.m35548R();
        if (m35548R != null && (m17363i = m17363i(m35548R.longValue())) != null) {
            return m17363i;
        }
        return null;
    }

    /* renamed from: n */
    public Contact m17358n(Contact contact) {
        Contact m17360l = m17360l(contact);
        if (m17360l != null) {
            return m17360l;
        }
        if (contact.f11515j || Integer.bitCount(contact.getSource()) != 1 || TextUtils.isEmpty(contact.getTcId())) {
            return null;
        }
        new C16487j(this.f46337a).m17331c(contact);
        return m17360l(contact);
    }
}
