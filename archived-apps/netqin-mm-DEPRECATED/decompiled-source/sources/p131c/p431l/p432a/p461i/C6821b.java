package p131c.p431l.p432a.p461i;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.ContactsContract;
import p131c.p431l.p432a.p461i.p462e.C6831e;
/* renamed from: c.l.a.i.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/i/b.class */
public class C6821b {

    /* renamed from: d */
    public static final Uri f20993d = ContactsContract.Contacts.CONTENT_URI;

    /* renamed from: e */
    public static final Uri f20994e = ContactsContract.RawContacts.CONTENT_URI;

    /* renamed from: f */
    public static final Uri f20995f = ContactsContract.Data.CONTENT_URI;

    /* renamed from: g */
    public static final Uri f20996g = ContactsContract.CommonDataKinds.Phone.CONTENT_URI;

    /* renamed from: a */
    public ContentResolver f20997a;

    /* renamed from: b */
    public C6824d f20998b;

    /* renamed from: c */
    public Context f20999c;

    /* renamed from: c.l.a.i.b$a */
    /* loaded from: classes2-dex2jar.jar:c/l/a/i/b$a.class */
    public class RunnableC6822a implements Runnable {
        public RunnableC6822a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            new C6831e(C6821b.this.f20999c).m19632a();
            int a = C6821b.this.m19681a();
            if (a != C6821b.this.f20998b.m19675a()) {
                int a2 = a - C6821b.this.f20998b.m19675a();
                C6824d dVar = C6821b.this.f20998b;
                if (a2 < 0) {
                    a2 *= -1;
                }
                dVar.m19671b(a2);
            }
        }
    }

    public C6821b(Context context) {
        new RunnableC6822a();
        this.f20997a = context.getContentResolver();
        this.f20998b = new C6824d(context);
    }

    /* renamed from: a */
    public int m19681a() {
        ContentResolver contentResolver = this.f20997a;
        Uri uri = ContactsContract.RawContacts.CONTENT_URI;
        Cursor query = contentResolver.query(uri, new String[]{"contact_id"}, "deleted ='0' and (account_type is null or (account_type not like '%sim%' and account_type not in ('DeviceOnly') ))", null, null);
        int count = (query == null || query.getCount() == 0) ? 0 : query.getCount();
        if (query != null) {
            query.close();
        }
        return count;
    }
}
