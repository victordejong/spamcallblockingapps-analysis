package p131c.p431l.p432a.p461i.p462e;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.ContactsContract;
import java.util.HashMap;
import p131c.p431l.p432a.p461i.C6823c;
/* renamed from: c.l.a.i.e.e */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/e/e.class */
public class C6831e {

    /* renamed from: e */
    public static HashMap<String, C6832a> f21024e = new HashMap<>();

    /* renamed from: a */
    public Context f21025a;

    /* renamed from: b */
    public ContentResolver f21026b;

    /* renamed from: c */
    public final String f21027c;

    /* renamed from: d */
    public final String f21028d;

    /* renamed from: c.l.a.i.e.e$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/i/e/e$a.class */
    public class C6832a {
        public C6832a(C6831e eVar, int i, String str, String str2) {
        }
    }

    public C6831e(Context context) {
        this.f21025a = context;
        this.f21026b = context.getContentResolver();
        this.f21027c = this.f21025a.getResources().getString(2131558686);
        this.f21028d = this.f21025a.getResources().getString(2131558661);
    }

    /* renamed from: a */
    public void m19632a() {
        synchronized (this) {
            f21024e.clear();
            f21024e.put("-1", new C6832a(this, -1, this.f21027c, this.f21027c));
            f21024e.put("-2", new C6832a(this, -2, this.f21028d, this.f21028d));
            Cursor query = this.f21026b.query(ContactsContract.CommonDataKinds.Phone.CONTENT_URI, new String[]{"contact_id", "data1", "display_name"}, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    int i = query.getInt(query.getColumnIndex("contact_id"));
                    String replace = query.getString(query.getColumnIndex("data1")).replace("-", "").replace(" ", "");
                    String string = query.getString(query.getColumnIndex("display_name"));
                    if (replace != null) {
                        f21024e.put(C6823c.m19677a(replace, 8), new C6832a(this, i, replace, string));
                    }
                }
            }
            if (query != null) {
                query.close();
            }
        }
    }
}
