package p193e.p194a.p798g5;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.truecaller.data.dto.ContactDto;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.data.entity.Tag;
import java.util.ArrayList;
import javax.inject.Inject;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p372b0.p426p.AbstractC8552d;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p997k3.p998j.C16461b;
import p193e.p194a.p997k3.p998j.C16486i;
import p193e.p194a.p997k3.p998j.C16488k;
/* renamed from: e.a.g5.o */
/* loaded from: classes14-dex2jar.jar:e/a/g5/o.class */
public class C14536o implements AbstractC14535n {

    /* renamed from: a */
    public final Context f41816a;

    /* renamed from: b */
    public final AbstractC8552d f41817b;

    @Inject
    public C14536o(Context context, AbstractC8552d abstractC8552d) {
        this.f41816a = context;
        this.f41817b = abstractC8552d;
    }

    @Override // p193e.p194a.p798g5.AbstractC14535n
    /* renamed from: a */
    public AbstractC19891x<Contact> mo20028a(Contact contact, String str, int i) {
        ArrayList arrayList = new ArrayList();
        for (Number number : contact.m35557M()) {
            String m35479e = number.m35479e();
            if (!TextUtils.isEmpty(m35479e)) {
                arrayList.add(m35479e);
            }
        }
        this.f41817b.mo28397g(arrayList, str, i);
        Contact contact2 = contact;
        if (!C16461b.m17357o(contact)) {
            contact2 = new C16461b(this.f41816a).m17358n(contact);
            if (contact2 == null) {
                return AbstractC19891x.m11834h(contact);
            }
        }
        C16486i c16486i = new C16486i(this.f41816a);
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = null;
        }
        return AbstractC19891x.m11834h(c16486i.m17332d(contact2, str2));
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p194a.p798g5.AbstractC14535n
    /* renamed from: b */
    public AbstractC19891x<Void> mo20027b(Contact contact, long j, long j2, int i, int i2) {
        Contact contact2;
        ArrayList arrayList = new ArrayList();
        for (Number number : contact.m35557M()) {
            String m35479e = number.m35479e();
            if (!TextUtils.isEmpty(m35479e)) {
                try {
                    arrayList.add(Long.valueOf(m35479e.replaceFirst("\\+", "")));
                } catch (NumberFormatException e) {
                }
            }
        }
        this.f41817b.mo28394j(arrayList, j, j2, i, i2);
        if (!C16461b.m17357o(contact)) {
            contact2 = new C16461b(this.f41816a).m17358n(contact);
            if (contact2 == null) {
                return AbstractC19891x.m11834h(null);
            }
        } else {
            contact2 = contact;
        }
        C16488k c16488k = new C16488k(this.f41816a);
        int i3 = 0;
        if (C16461b.m17357o(contact2)) {
            try {
                ContentResolver contentResolver = c16488k.f46337a.getContentResolver();
                Cursor query = contentResolver.query(C17891a1.C17904m.m15552a(), new String[]{"_id"}, "aggregated_contact_id=? AND contact_source=16", new String[]{String.valueOf(contact2.getId())}, null);
                if (query != null) {
                    ArrayList<ContentProviderOperation> arrayList2 = new ArrayList<>();
                    while (query.moveToNext()) {
                        try {
                            arrayList2.add(ContentProviderOperation.newDelete(C17891a1.C17899h.m15701a()).withSelection("data_raw_contact_id=? AND data_type=6", new String[]{query.getString(0)}).build());
                        } catch (Throwable th) {
                            query.close();
                            throw th;
                        }
                    }
                    query.close();
                    if (!arrayList2.isEmpty()) {
                        Uri uri = C17891a1.f50888a;
                        ContentProviderResult[] applyBatch = contentResolver.applyBatch("com.truecaller", arrayList2);
                        int length = applyBatch.length;
                        while (true) {
                            if (i3 >= length) {
                                break;
                            } else if (applyBatch[i3].count.intValue() > 0) {
                                contact2.m35561I0();
                                break;
                            } else {
                                i3++;
                            }
                        }
                    }
                }
            } catch (OperationApplicationException | SQLiteException | RemoteException e2) {
                C10480a.m26061I1(e2);
            }
        }
        contact2.f11508c.clear();
        ((ContactDto.Contact) contact2.mRow).tags = null;
        if (j > 0 || j == -1) {
            Tag tag = new Tag();
            tag.setSource(16);
            tag.setValue(String.valueOf(j));
            c16488k.m17320c(contact2, tag);
            contact2.m35517g(tag);
        }
        if (j2 > 0) {
            Tag tag2 = new Tag();
            tag2.setSource(16);
            tag2.setValue(String.valueOf(j2));
            c16488k.m17320c(contact2, tag2);
            contact2.m35517g(tag2);
        }
        return AbstractC19891x.m11834h(null);
    }
}
