package p193e.p194a.p997k3.p998j;

import android.content.Context;
import android.database.Cursor;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import p193e.p194a.p1053m0.C17891a1;
/* renamed from: e.a.k3.j.i */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/i.class */
public class C16486i extends AbstractC16479f {

    /* renamed from: c */
    public final C16487j f46355c;

    public C16486i(Context context) {
        super(context);
        this.f46355c = new C16487j(context);
    }

    /* JADX WARN: Type inference failed for: r0v21, types: [long] */
    /* renamed from: c */
    public static Contact m17333c(Contact contact) {
        Contact contact2 = new Contact();
        contact2.setSource(16);
        Long id = contact.getId();
        ((ContactDto.Contact) contact2.mRow).aggregatedRowId = id == null ? (char) 0 : id.longValue();
        for (Number number : contact.m35557M()) {
            Number number2 = new Number(number);
            number2.setId(null);
            number2.setTcId(null);
            contact2.m35525d(number2);
        }
        contact2.m35539X0(System.currentTimeMillis());
        return contact2;
    }

    /* renamed from: d */
    public Contact m17332d(Contact contact, String str) {
        Contact contact2;
        if (!C16461b.m17357o(contact) || contact.getId() == null) {
            return null;
        }
        Cursor query = this.f46337a.getContentResolver().query(C17891a1.C17904m.m15551b(), null, "aggregated_contact_id=? AND contact_source=16", new String[]{String.valueOf(contact.getId())}, null);
        if (query != null) {
            try {
                if (query.moveToFirst()) {
                    C16463d c16463d = new C16463d(query);
                    c16463d.m17353h(false);
                    contact2 = c16463d.m17354g(query);
                    do {
                        c16463d.m17355f(query, contact2);
                    } while (query.moveToNext());
                } else {
                    contact2 = null;
                }
            } finally {
                query.close();
            }
        } else {
            contact2 = null;
        }
        if (contact2 == null) {
            contact2 = m17333c(contact);
        } else {
            contact2.setId(null);
        }
        ((ContactDto.Contact) contact2.mRow).name = str;
        this.f46355c.m17331c(contact2);
        return new C16461b(this.f46337a).m17360l(contact2);
    }
}
