package p459j.p460a.p530k;

import android.content.Context;
import android.content.Loader;
import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.OperationCanceledException;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
/* renamed from: j.a.k.c */
/* loaded from: classes2-dex2jar.jar:j/a/k/c.class */
public class C12829c extends AbstractC12830d<Cursor> {

    /* renamed from: d */
    public final Loader<Cursor>.ForceLoadContentObserver f28974d = new Loader.ForceLoadContentObserver(this);

    /* renamed from: e */
    public Uri f28975e;

    /* renamed from: f */
    public String[] f28976f;

    /* renamed from: g */
    public String f28977g;

    /* renamed from: h */
    public String[] f28978h;

    /* renamed from: i */
    public String f28979i;

    /* renamed from: j */
    public Cursor f28980j;

    /* renamed from: k */
    public CancellationSignal f28981k;

    public C12829c(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.f28975e = uri;
        this.f28976f = strArr;
        this.f28977g = str;
        this.f28978h = strArr2;
        this.f28979i = str2;
    }

    @Override // p459j.p460a.p530k.AbstractC12830d
    /* renamed from: a */
    public void mo5196a() {
        super.mo5196a();
        synchronized (this) {
            if (this.f28981k != null) {
                this.f28981k.cancel();
            }
        }
    }

    /* renamed from: a */
    public void deliverResult(Cursor cursor) {
        if (!isReset()) {
            this.f28980j = cursor;
            if (isStarted()) {
                super.deliverResult(cursor);
            }
        } else if (cursor != null) {
            cursor.close();
        }
    }

    /* renamed from: a */
    public void m5198a(Uri uri) {
        this.f28975e = uri;
    }

    /* renamed from: b */
    public void mo5191c(Cursor cursor) {
        if (cursor != null && !cursor.isClosed()) {
            cursor.close();
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p459j.p460a.p530k.AbstractC12830d
    /* renamed from: d */
    public Cursor mo5190d() {
        synchronized (this) {
            if (!m5192c()) {
                this.f28981k = new CancellationSignal();
            } else {
                throw new OperationCanceledException();
            }
        }
        try {
            Cursor query = getContext().getContentResolver().query(this.f28975e, this.f28976f, this.f28977g, this.f28978h, this.f28979i, this.f28981k);
            if (query != null) {
                try {
                    query.getCount();
                    query.registerContentObserver(this.f28974d);
                } catch (RuntimeException e) {
                    query.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.f28981k = null;
            }
            return query;
        } catch (Throwable th) {
            synchronized (this) {
                this.f28981k = null;
                throw th;
            }
        }
    }

    @Override // p459j.p460a.p530k.AbstractC12830d, android.content.Loader
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.f28975e);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f28976f));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f28977g);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.f28978h));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f28979i);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.f28980j);
    }

    @Override // android.content.Loader
    public void onReset() {
        super.onReset();
        onStopLoading();
        Cursor cursor = this.f28980j;
        if (cursor != null && !cursor.isClosed()) {
            this.f28980j.close();
        }
        this.f28980j = null;
    }

    @Override // android.content.Loader
    public void onStartLoading() {
        Cursor cursor = this.f28980j;
        if (cursor != null) {
            deliverResult(cursor);
        }
        if (takeContentChanged() || this.f28980j == null) {
            forceLoad();
        }
    }

    @Override // android.content.Loader
    public void onStopLoading() {
        cancelLoad();
    }
}
