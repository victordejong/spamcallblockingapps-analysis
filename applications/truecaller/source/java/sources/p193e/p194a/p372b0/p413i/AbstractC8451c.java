package p193e.p194a.p372b0.p413i;

import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.ContentObserver;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteTransactionListener;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p194a.p372b0.p413i.p414e.AbstractC8468e;
import w3.c.a.a.a.h;
/* renamed from: e.a.b0.i.c */
/* loaded from: classes7-dex2jar.jar:e/a/b0/i/c.class */
public abstract class AbstractC8451c extends AbstractC8453d implements SQLiteTransactionListener {

    /* renamed from: f */
    public static AtomicBoolean f26158f = new AtomicBoolean(false);

    /* renamed from: b */
    public final ThreadLocal<Boolean> f26159b = new ThreadLocal<>();

    /* renamed from: c */
    public final ThreadLocal<Set<Uri>> f26160c = new C8452a(this);

    /* renamed from: d */
    public volatile boolean f26161d;

    /* renamed from: e */
    public volatile SQLiteDatabase f26162e;

    /* renamed from: e.a.b0.i.c$a */
    /* loaded from: classes7-dex2jar.jar:e/a/b0/i/c$a.class */
    public class C8452a extends ThreadLocal<Set<Uri>> {
        public C8452a(AbstractC8451c abstractC8451c) {
        }

        @Override // java.lang.ThreadLocal
        public Set<Uri> initialValue() {
            return new HashSet();
        }
    }

    public AbstractC8451c() {
        getClass().getSimpleName();
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: a */
    public ContentProviderResult[] mo28523a(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
        Boolean bool = Boolean.FALSE;
        int size = arrayList.size();
        if (size == 0) {
            return new ContentProviderResult[0];
        }
        SQLiteDatabase m28528m = m28528m();
        m28528m.beginTransactionWithListener(this);
        try {
            try {
                this.f26159b.set(Boolean.TRUE);
                this.f26160c.remove();
                ContentProviderResult[] contentProviderResultArr = new ContentProviderResult[size];
                for (int i = 0; i < size; i++) {
                    ContentProviderOperation contentProviderOperation = arrayList.get(i);
                    if (i > 0 && contentProviderOperation.isYieldAllowed()) {
                        m28528m.yieldIfContendedSafely(2000L);
                    }
                    contentProviderResultArr[i] = contentProviderOperation.apply(this, contentProviderResultArr, i);
                }
                mo28526o();
                m28528m.setTransactionSuccessful();
                this.f26159b.set(bool);
                m28528m.endTransaction();
                mo28525p(true);
                return contentProviderResultArr;
            } catch (RuntimeException e) {
                throw e;
            }
        } catch (Throwable th) {
            this.f26159b.set(bool);
            m28528m.endTransaction();
            mo28525p(false);
            throw th;
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: c */
    public int mo28522c(Uri uri, ContentValues[] contentValuesArr) {
        int length = contentValuesArr.length;
        this.f26160c.remove();
        SQLiteDatabase m28528m = m28528m();
        m28528m.beginTransactionWithListener(this);
        try {
            try {
                for (ContentValues contentValues : contentValuesArr) {
                    if (mo28527n(uri, contentValues) != null) {
                        this.f26161d = true;
                    }
                    m28528m.yieldIfContendedSafely();
                }
                mo28526o();
                m28528m.setTransactionSuccessful();
                m28528m.endTransaction();
                mo28525p(true);
                return length;
            } catch (RuntimeException e) {
                throw e;
            }
        } catch (Throwable th) {
            m28528m.endTransaction();
            mo28525p(false);
            throw th;
        }
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: e */
    public int mo28520e(Uri uri, String str, String[] strArr) {
        int i;
        boolean m28530k = m28530k();
        SQLiteDatabase m28528m = m28528m();
        if (!m28530k) {
            this.f26160c.remove();
            m28528m.beginTransactionWithListener(this);
            try {
                try {
                    i = mo28529l(uri, str, strArr);
                    if (i > 0) {
                        this.f26161d = true;
                    }
                    mo28526o();
                    m28528m.setTransactionSuccessful();
                    m28528m.endTransaction();
                    mo28525p(true);
                } catch (RuntimeException e) {
                    throw e;
                }
            } catch (Throwable th) {
                m28528m.endTransaction();
                mo28525p(false);
                throw th;
            }
        } else {
            int mo28529l = mo28529l(uri, str, strArr);
            i = mo28529l;
            if (mo28529l > 0) {
                this.f26161d = true;
                i = mo28529l;
            }
        }
        return i;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: f */
    public Uri mo28519f(Uri uri, ContentValues contentValues) {
        Uri uri2;
        SQLiteDatabase m28528m = m28528m();
        if (!m28530k()) {
            this.f26160c.remove();
            m28528m.beginTransactionWithListener(this);
            try {
                try {
                    uri2 = mo28527n(uri, contentValues);
                    if (uri2 != null) {
                        this.f26161d = true;
                    }
                    mo28526o();
                    m28528m.setTransactionSuccessful();
                    m28528m.endTransaction();
                    mo28525p(true);
                } catch (RuntimeException e) {
                    throw e;
                }
            } catch (Throwable th) {
                m28528m.endTransaction();
                mo28525p(false);
                throw th;
            }
        } else {
            Uri mo28527n = mo28527n(uri, contentValues);
            uri2 = mo28527n;
            if (mo28527n != null) {
                this.f26161d = true;
                uri2 = mo28527n;
            }
        }
        return uri2;
    }

    @Override // p193e.p194a.p372b0.p413i.AbstractC8453d
    /* renamed from: h */
    public int mo28517h(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        boolean m28530k = m28530k();
        SQLiteDatabase m28528m = m28528m();
        if (!m28530k) {
            this.f26160c.remove();
            m28528m.beginTransactionWithListener(this);
            try {
                try {
                    i = mo28524q(uri, contentValues, str, strArr);
                    if (i > 0) {
                        this.f26161d = true;
                    }
                    mo28526o();
                    m28528m.setTransactionSuccessful();
                    m28528m.endTransaction();
                    mo28525p(true);
                } catch (RuntimeException e) {
                    throw e;
                }
            } catch (Throwable th) {
                m28528m.endTransaction();
                mo28525p(false);
                throw th;
            }
        } else {
            int mo28524q = mo28524q(uri, contentValues, str, strArr);
            i = mo28524q;
            if (mo28524q > 0) {
                this.f26161d = true;
                i = mo28524q;
            }
        }
        return i;
    }

    /* renamed from: i */
    public void m28532i(Uri uri) {
        if (uri != null) {
            Set<Uri> set = this.f26160c.get();
            if (h.n(uri.getLastPathSegment())) {
                String path = uri.getPath();
                uri = uri.buildUpon().path(path.substring(0, path.lastIndexOf(47))).build();
            }
            set.add(uri);
        }
    }

    /* renamed from: j */
    public void m28531j(Collection<Uri> collection) {
        if (collection != null) {
            for (Uri uri : collection) {
                m28532i(uri);
            }
        }
    }

    /* renamed from: k */
    public boolean m28530k() {
        return this.f26159b.get() == Boolean.TRUE;
    }

    /* renamed from: l */
    public abstract int mo28529l(Uri uri, String str, String[] strArr);

    /* renamed from: m */
    public SQLiteDatabase m28528m() {
        if (f26158f.compareAndSet(true, false)) {
            AbstractC8448a abstractC8448a = (AbstractC8448a) this;
            abstractC8448a.f26162e = null;
            synchronized (abstractC8448a) {
                abstractC8448a.f26153g = null;
            }
        }
        SQLiteDatabase sQLiteDatabase = this.f26162e;
        SQLiteDatabase sQLiteDatabase2 = sQLiteDatabase;
        if (sQLiteDatabase == null) {
            synchronized (this) {
                SQLiteDatabase sQLiteDatabase3 = this.f26162e;
                sQLiteDatabase2 = sQLiteDatabase3;
                if (sQLiteDatabase3 == null) {
                    Context context = getContext();
                    AbstractC8468e abstractC8468e = ((AbstractC8448a) this).m28535r().f26206d;
                    if (abstractC8468e == null) {
                        throw new IllegalStateException("No SQLiteDatabaseFactory defined");
                    }
                    sQLiteDatabase2 = abstractC8468e.mo28505b(context);
                    this.f26162e = sQLiteDatabase2;
                }
            }
        }
        return sQLiteDatabase2;
    }

    /* renamed from: n */
    public abstract Uri mo28527n(Uri uri, ContentValues contentValues);

    /* renamed from: o */
    public void mo28526o() {
    }

    public void onBegin() {
    }

    @Override // android.database.sqlite.SQLiteTransactionListener
    public void onCommit() {
    }

    @Override // android.database.sqlite.SQLiteTransactionListener
    public void onRollback() {
    }

    /* renamed from: p */
    public void mo28525p(boolean z) {
        if (this.f26161d && z) {
            this.f26161d = false;
            Set<Uri> set = this.f26160c.get();
            if (set != null && !set.isEmpty()) {
                for (Uri uri : set) {
                    Context context = getContext();
                    if (context != null) {
                        context.getContentResolver().notifyChange(uri, (ContentObserver) null, false);
                    }
                }
            }
        }
        this.f26160c.remove();
    }

    /* renamed from: q */
    public abstract int mo28524q(Uri uri, ContentValues contentValues, String str, String[] strArr);
}
