package p193e.p194a.p997k3.p998j;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Entity;
import com.truecaller.data.entity.RowEntity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p578p.C10480a;
/* renamed from: e.a.k3.j.f */
/* loaded from: classes8-dex2jar.jar:e/a/k3/j/f.class */
public abstract class AbstractC16479f {

    /* renamed from: a */
    public final Context f46337a;

    /* renamed from: b */
    public final ContentResolver f46338b;

    public AbstractC16479f(Context context) {
        Context applicationContext = context.getApplicationContext();
        this.f46337a = applicationContext;
        this.f46338b = applicationContext.getContentResolver();
    }

    /* renamed from: b */
    public static ContentValues m17347b(RowEntity rowEntity, Contact contact) {
        if (rowEntity.getTcId() == null) {
            if (contact == null || contact.getTcId() == null) {
                throw new IllegalArgumentException("Cannot generate child entity content values without a tc_id value, child=" + rowEntity + ", parent=" + contact);
            }
            rowEntity.setTcId(contact.getTcId());
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("tc_id", rowEntity.getTcId());
        contentValues.put("data_is_primary", Integer.valueOf(rowEntity.isPrimary() ? 1 : 0));
        contentValues.put("data_phonebook_id", rowEntity.getDataPhonebookId());
        return contentValues;
    }

    /* renamed from: a */
    public boolean m17348a(ArrayList<ContentProviderOperation> arrayList, List<Entity> list) {
        Throwable e;
        if (arrayList.isEmpty()) {
            return true;
        }
        try {
            ContentResolver contentResolver = this.f46338b;
            Uri uri = C17891a1.f50888a;
            ContentProviderResult[] applyBatch = contentResolver.applyBatch("com.truecaller", arrayList);
            Iterator<Entity> it = list.iterator();
            for (ContentProviderResult contentProviderResult : applyBatch) {
                if (contentProviderResult.uri != null) {
                    it.next().setId(Long.valueOf(ContentUris.parseId(contentProviderResult.uri)));
                }
            }
            return !it.hasNext();
        } catch (OperationApplicationException e2) {
            return false;
        } catch (SQLiteException e3) {
            e = e3;
            C10480a.m26061I1(e);
            return false;
        } catch (RemoteException e4) {
            e = e4;
            C10480a.m26061I1(e);
            return false;
        } catch (IllegalArgumentException e5) {
            e = e5;
            C10480a.m26061I1(e);
            return false;
        }
    }
}
