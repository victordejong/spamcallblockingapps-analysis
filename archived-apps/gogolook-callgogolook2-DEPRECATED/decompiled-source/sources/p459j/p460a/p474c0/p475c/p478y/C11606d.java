package p459j.p460a.p474c0.p475c.p478y;

import android.app.LoaderManager;
import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.util.SparseIntArray;
import gogolook.callgogolook2.messaging.datamodel.MessagingContentProvider;
import java.util.HashSet;
import p459j.p460a.p474c0.p475c.C11520b;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11587a;
import p459j.p460a.p474c0.p475c.p477x.AbstractC11590d;
import p459j.p460a.p474c0.p475c.p478y.C11613i;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
/* renamed from: j.a.c0.c.y.d */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/d.class */
public class C11606d extends AbstractC11587a implements LoaderManager.LoaderCallbacks<Cursor> {

    /* renamed from: i */
    public static final String[] f25940i = {"_id", "normalized_destination"};

    /* renamed from: j */
    public static final String[] f25941j = {"conversation_id", "COUNT(1) AS unread_count", C11613i.C11615b.f26066h};

    /* renamed from: b */
    public AbstractC11607a f25942b;

    /* renamed from: c */
    public final Context f25943c;

    /* renamed from: d */
    public final int f25944d;

    /* renamed from: e */
    public LoaderManager f25945e;

    /* renamed from: f */
    public Cursor f25946f;

    /* renamed from: g */
    public final HashSet<String> f25947g = new HashSet<>();

    /* renamed from: h */
    public Bundle f25948h;

    /* renamed from: j.a.c0.c.y.d$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/c/y/d$a.class */
    public interface AbstractC11607a {
        /* renamed from: a */
        void mo7636a(SparseIntArray sparseIntArray, SparseIntArray sparseIntArray2);

        /* renamed from: a */
        void mo7635a(C11606d dVar, Cursor cursor);

        /* renamed from: a */
        void mo7631a(boolean z);
    }

    public C11606d(Context context, AbstractC11607a aVar, int i) {
        this.f25942b = aVar;
        this.f25943c = context;
        this.f25944d = i;
    }

    /* renamed from: a */
    public void m8965a(LoaderManager loaderManager, AbstractC11590d<C11606d> dVar) {
        this.f25948h = new Bundle();
        this.f25948h.putString("bindingId", dVar.mo9035a());
        this.f25945e = loaderManager;
        this.f25945e.initLoader(1, this.f25948h, this);
        this.f25945e.initLoader(2, this.f25948h, this);
    }

    /* renamed from: a */
    public void onLoadFinished(Loader<Cursor> loader, Cursor cursor) {
        SparseIntArray sparseIntArray;
        SparseIntArray sparseIntArray2;
        SparseIntArray sparseIntArray3;
        C11520b bVar = (C11520b) loader;
        if (m9045b(bVar.m9394f())) {
            int id = bVar.getId();
            boolean z = true;
            if (id == 1) {
                this.f25946f = cursor;
                this.f25945e.restartLoader(3, this.f25948h, this);
            } else if (id == 2) {
                this.f25947g.clear();
                for (int i = 0; i < cursor.getCount(); i++) {
                    cursor.moveToPosition(i);
                    this.f25947g.add(cursor.getString(1));
                }
                AbstractC11607a aVar = this.f25942b;
                if (cursor == null || cursor.getCount() <= 0) {
                    z = false;
                }
                aVar.mo7631a(z);
            } else if (id != 3) {
                C12151d.m7005a("Unknown loader id");
            } else {
                if (cursor == null || cursor.getCount() <= 0 || !cursor.moveToFirst()) {
                    sparseIntArray2 = null;
                    sparseIntArray = null;
                } else {
                    SparseIntArray sparseIntArray4 = null;
                    SparseIntArray sparseIntArray5 = null;
                    do {
                        sparseIntArray = sparseIntArray4;
                        if (sparseIntArray4 == null) {
                            sparseIntArray = new SparseIntArray();
                        }
                        sparseIntArray3 = sparseIntArray5;
                        if (sparseIntArray5 == null) {
                            sparseIntArray3 = new SparseIntArray();
                        }
                        sparseIntArray.put(cursor.getInt(0), cursor.getInt(1));
                        sparseIntArray3.put(cursor.getInt(0), cursor.getInt(2));
                        sparseIntArray4 = sparseIntArray;
                        sparseIntArray5 = sparseIntArray3;
                    } while (cursor.moveToNext());
                    sparseIntArray2 = sparseIntArray3;
                }
                if (this.f25946f != null) {
                    this.f25942b.mo7636a(sparseIntArray, sparseIntArray2);
                    this.f25942b.mo7635a(this, this.f25946f);
                    this.f25946f = null;
                }
            }
        } else {
            C12153d0.m6981e("MessagingAppDataModel", "Loader finished after unbinding list");
        }
    }

    @Override // p459j.p460a.p474c0.p475c.p477x.AbstractC11587a
    /* renamed from: e */
    public void mo8718e() {
        this.f25942b = null;
        LoaderManager loaderManager = this.f25945e;
        if (loaderManager != null) {
            loaderManager.destroyLoader(1);
            this.f25945e.destroyLoader(2);
            this.f25945e.destroyLoader(3);
            this.f25945e = null;
        }
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public Loader<Cursor> onCreateLoader(int i, Bundle bundle) {
        C11520b bVar;
        String string = bundle.getString("bindingId");
        if (m9045b(string)) {
            if (i == 1) {
                Context context = this.f25943c;
                Uri uri = MessagingContentProvider.f11175c;
                String[] strArr = C11608e.f25949n;
                int i2 = this.f25944d;
                bVar = new C11520b(string, context, uri, strArr, i2 == 1 ? "(archive_status = 1)" : i2 == 2 ? "(archive_status = 2)" : "(archive_status = 0)", null, "sort_timestamp DESC");
            } else if (i == 2) {
                bVar = new C11520b(string, this.f25943c, MessagingContentProvider.f11180h, f25940i, "blocked=1", null, null);
            } else if (i != 3) {
                C12151d.m7005a("Unknown loader id");
            } else {
                bVar = new C11520b(string, this.f25943c, MessagingContentProvider.f11183k, f25941j, null, null, null);
            }
            return bVar;
        }
        C12153d0.m6981e("MessagingAppDataModel", "Creating loader after unbinding list");
        bVar = null;
        return bVar;
    }

    @Override // android.app.LoaderManager.LoaderCallbacks
    public void onLoaderReset(Loader<Cursor> loader) {
        C11520b bVar = (C11520b) loader;
        if (m9045b(bVar.m9394f())) {
            int id = bVar.getId();
            if (id == 1) {
                this.f25942b.mo7635a(this, (Cursor) null);
            } else if (id == 2) {
                this.f25942b.mo7631a(false);
            } else if (id != 3) {
                C12151d.m7005a("Unknown loader id");
            } else {
                this.f25942b.mo7636a((SparseIntArray) null, (SparseIntArray) null);
            }
        } else {
            C12153d0.m6981e("MessagingAppDataModel", "Loader reset after unbinding list");
        }
    }
}
