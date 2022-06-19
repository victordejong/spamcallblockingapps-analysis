package p193e.p194a.p997k3.p998j;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
import android.text.TextUtils;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Tag;
import java.util.ArrayList;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.k3.j.k */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/k.class */
public class C16488k extends AbstractC16479f {

    /* renamed from: c */
    public final C16487j f46357c;

    public C16488k(Context context) {
        super(context);
        this.f46357c = new C16487j(context);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: c */
    public boolean m17320c(Contact contact, Tag tag) {
        ContentResolver contentResolver;
        Cursor query;
        boolean z = false;
        if (!C16461b.m17357o(contact) || contact.getId() == null || TextUtils.isEmpty(tag.getValue())) {
            return false;
        }
        try {
            if (((contact.getSource() & 16) == 16) && (query = (contentResolver = this.f46337a.getContentResolver()).query(C17891a1.C17904m.m15552a(), new String[]{"_id", "tc_id"}, "aggregated_contact_id=? AND contact_source=16", new String[]{String.valueOf(contact.getId())}, null)) != null) {
                try {
                    if (query.moveToFirst()) {
                        long j = query.getLong(0);
                        String string = query.getString(1);
                        ArrayList<ContentProviderOperation> arrayList = new ArrayList<>();
                        arrayList.add(ContentProviderOperation.newAssertQuery(C17891a1.C17899h.m15701a()).withSelection("data_raw_contact_id=? AND data_type=6 AND data1=?", new String[]{String.valueOf(j), tag.getValue()}).withExpectedCount(0).build());
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("data_type", (Integer) 6);
                        contentValues.put("tc_id", string);
                        contentValues.put("data_raw_contact_id", Long.valueOf(j));
                        contentValues.put("data1", tag.getValue());
                        arrayList.add(ContentProviderOperation.newInsert(C17891a1.C17899h.m15701a()).withValues(contentValues).build());
                        try {
                            Uri uri = C17891a1.f50888a;
                            ContentProviderResult[] applyBatch = contentResolver.applyBatch("com.truecaller", arrayList);
                            if (applyBatch.length == 2 && applyBatch[1].uri != null) {
                                tag.setTcId(string);
                                tag.setId(Long.valueOf(ContentUris.parseId(applyBatch[1].uri)));
                                query.close();
                                return true;
                            }
                        } catch (OperationApplicationException e) {
                            query.close();
                            return false;
                        }
                    }
                    query.close();
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            Contact m17333c = C16486i.m17333c(contact);
            tag.setId(null);
            tag.setTcId(null);
            m17333c.m35517g(tag);
            this.f46357c.m17331c(m17333c);
            if (m17333c.getId() == null) {
                return false;
            }
            contact.setSource(contact.getSource() | 16);
            if (tag.getId() != null) {
                z = true;
            }
            return z;
        } catch (SQLiteException | RemoteException e2) {
            C10480a.m26061I1(e2);
            return false;
        }
    }
}
