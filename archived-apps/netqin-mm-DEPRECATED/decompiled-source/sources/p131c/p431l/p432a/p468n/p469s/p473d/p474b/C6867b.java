package p131c.p431l.p432a.p468n.p469s.p473d.p474b;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import android.text.TextUtils;
import java.util.HashMap;
import p131c.p431l.p432a.p468n.p469s.p473d.C6865a;
/* renamed from: c.l.a.n.s.d.b.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/n/s/d/b/b.class */
public class C6867b {

    /* renamed from: b */
    public static String f21057b = "sort_key";

    /* renamed from: c */
    public static final Uri f21058c = ContactsContract.Contacts.CONTENT_URI;

    /* renamed from: d */
    public static final Uri f21059d = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;

    /* renamed from: a */
    public ContentResolver f21060a;

    public C6867b(Context context) {
        new HashMap();
        this.f21060a = context.getContentResolver();
    }

    /* renamed from: a */
    public Cursor m19512a() {
        String[] strArr = {"_id", "data1", "display_name", f21057b};
        if (!C6865a.m19515b()) {
            strArr[3] = "display_name AS sort_key";
        }
        return this.f21060a.query(f21059d, strArr, null, null, "display_name COLLATE LOCALIZED ASC");
    }

    /* renamed from: a */
    public String m19511a(String str) {
        boolean isEmpty = TextUtils.isEmpty(str);
        String str2 = null;
        str2 = null;
        if (isEmpty) {
            return null;
        }
        str2 = null;
        try {
            Cursor query = this.f21060a.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"_id", "display_name"}, null, null, null);
            if (query != null) {
                if (query.moveToFirst()) {
                    str2 = query.getString(query.getColumnIndex("display_name"));
                }
                str2 = str2;
                query.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return str2;
    }

    /* renamed from: b */
    public boolean m19510b(String str) {
        boolean z = false;
        z = false;
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        Cursor query = this.f21060a.query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(str)), new String[]{"_id"}, null, null, null);
        if (query != null) {
            if (query.getCount() > 0) {
                z = true;
            }
            query.close();
        }
        return z;
    }
}
