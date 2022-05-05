package androidx.p043e.p045b;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import androidx.core.content.C0630a;
import androidx.core.p032c.C0624a;
import androidx.core.p032c.C0625b;
import androidx.p043e.p045b.C0826c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Arrays;
/* renamed from: androidx.e.b.b */
/* loaded from: classes-dex2jar.jar:androidx/e/b/b.class */
public final class C0825b extends AbstractC0823a<Cursor> {

    /* renamed from: f */
    final C0826c<Cursor>.C0827a f3393f = new C0826c.C0827a();

    /* renamed from: g */
    Uri f3394g;

    /* renamed from: h */
    String[] f3395h;

    /* renamed from: i */
    String f3396i;

    /* renamed from: j */
    String[] f3397j;

    /* renamed from: k */
    String f3398k;

    /* renamed from: l */
    Cursor f3399l;

    /* renamed from: m */
    C0624a f3400m;

    public C0825b(Context context, Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        super(context);
        this.f3394g = uri;
        this.f3395h = strArr;
        this.f3396i = str;
        this.f3397j = strArr2;
        this.f3398k = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public void mo7969b(Cursor cursor) {
        if (!this.f3406s) {
            Cursor cursor2 = this.f3399l;
            this.f3399l = cursor;
            if (this.f3404q) {
                super.mo7969b(cursor);
            }
            if (cursor2 != null && cursor2 != cursor && !cursor2.isClosed()) {
                cursor2.close();
            }
        } else if (cursor != null) {
            cursor.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p */
    public Cursor mo7977d() {
        synchronized (this) {
            if (!(this.f3385b != null)) {
                this.f3400m = new C0624a();
            } else {
                throw new C0625b();
            }
        }
        try {
            Cursor a = C0630a.m8681a(this.f3403p.getContentResolver(), this.f3394g, this.f3395h, this.f3396i, this.f3397j, this.f3398k, this.f3400m);
            if (a != null) {
                try {
                    a.getCount();
                    a.registerContentObserver(this.f3393f);
                } catch (RuntimeException e) {
                    a.close();
                    throw e;
                }
            }
            synchronized (this) {
                this.f3400m = null;
            }
            return a;
        } catch (Throwable th) {
            synchronized (this) {
                this.f3400m = null;
                throw th;
            }
        }
    }

    @Override // androidx.p043e.p045b.AbstractC0823a
    /* renamed from: a */
    public final /* synthetic */ void mo7978a(Cursor cursor) {
        Cursor cursor2 = cursor;
        if (cursor2 != null && !cursor2.isClosed()) {
            cursor2.close();
        }
    }

    @Override // androidx.p043e.p045b.AbstractC0823a, androidx.p043e.p045b.C0826c
    @Deprecated
    /* renamed from: a */
    public final void mo7971a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.mo7971a(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("mUri=");
        printWriter.println(this.f3394g);
        printWriter.print(str);
        printWriter.print("mProjection=");
        printWriter.println(Arrays.toString(this.f3395h));
        printWriter.print(str);
        printWriter.print("mSelection=");
        printWriter.println(this.f3396i);
        printWriter.print(str);
        printWriter.print("mSelectionArgs=");
        printWriter.println(Arrays.toString(this.f3397j));
        printWriter.print(str);
        printWriter.print("mSortOrder=");
        printWriter.println(this.f3398k);
        printWriter.print(str);
        printWriter.print("mCursor=");
        printWriter.println(this.f3399l);
        printWriter.print(str);
        printWriter.print("mContentChanged=");
        printWriter.println(this.f3407t);
    }

    @Override // androidx.p043e.p045b.AbstractC0823a
    /* renamed from: e */
    public final void mo7976e() {
        super.mo7976e();
        synchronized (this) {
            if (this.f3400m != null) {
                this.f3400m.m8690b();
            }
        }
    }

    @Override // androidx.p043e.p045b.C0826c
    /* renamed from: f */
    protected final void mo7967f() {
        Cursor cursor = this.f3399l;
        if (cursor != null) {
            mo7969b(cursor);
        }
        boolean z = this.f3407t;
        this.f3407t = false;
        this.f3408u |= z;
        if (z || this.f3399l == null) {
            m7962k();
        }
    }

    @Override // androidx.p043e.p045b.C0826c
    /* renamed from: g */
    protected final void mo7966g() {
        m7963j();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.p043e.p045b.C0826c
    /* renamed from: h */
    public final void mo7965h() {
        super.mo7965h();
        m7963j();
        Cursor cursor = this.f3399l;
        if (cursor != null && !cursor.isClosed()) {
            this.f3399l.close();
        }
        this.f3399l = null;
    }
}
