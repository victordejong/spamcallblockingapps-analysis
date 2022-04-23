package androidx.p043e.p045b;

import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import androidx.core.p036f.C0679a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* renamed from: androidx.e.b.c */
/* loaded from: classes-dex2jar.jar:androidx/e/b/c.class */
public class C0826c<D> {

    /* renamed from: n */
    int f3401n;

    /* renamed from: o */
    AbstractC0828b<D> f3402o;

    /* renamed from: p */
    Context f3403p;

    /* renamed from: q */
    boolean f3404q = false;

    /* renamed from: r */
    boolean f3405r = false;

    /* renamed from: s */
    boolean f3406s = true;

    /* renamed from: t */
    boolean f3407t = false;

    /* renamed from: u */
    boolean f3408u = false;

    /* renamed from: androidx.e.b.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/c$a.class */
    public final class C0827a extends ContentObserver {
        public C0827a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public final boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public final void onChange(boolean z) {
            C0826c.this.m7958o();
        }
    }

    /* renamed from: androidx.e.b.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/b/c$b.class */
    public interface AbstractC0828b<D> {
        /* renamed from: c */
        void mo7957c(D d);
    }

    public C0826c(Context context) {
        this.f3403p = context.getApplicationContext();
    }

    /* renamed from: c */
    public static String m7968c(D d) {
        StringBuilder sb = new StringBuilder(64);
        C0679a.m8556a(d, sb);
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void mo7974a() {
    }

    /* renamed from: a */
    public final void m7973a(int i, AbstractC0828b<D> bVar) {
        if (this.f3402o == null) {
            this.f3402o = bVar;
            this.f3401n = i;
            return;
        }
        throw new IllegalStateException("There is already a listener registered");
    }

    /* renamed from: a */
    public final void m7972a(AbstractC0828b<D> bVar) {
        AbstractC0828b<D> bVar2 = this.f3402o;
        if (bVar2 == null) {
            throw new IllegalStateException("No listener register");
        } else if (bVar2 == bVar) {
            this.f3402o = null;
        } else {
            throw new IllegalArgumentException("Attempting to unregister the wrong listener");
        }
    }

    @Deprecated
    /* renamed from: a */
    public void mo7971a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.print(str);
        printWriter.print("mId=");
        printWriter.print(this.f3401n);
        printWriter.print(" mListener=");
        printWriter.println(this.f3402o);
        if (this.f3404q || this.f3407t || this.f3408u) {
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.print(this.f3404q);
            printWriter.print(" mContentChanged=");
            printWriter.print(this.f3407t);
            printWriter.print(" mProcessingChange=");
            printWriter.println(this.f3408u);
        }
        if (this.f3405r || this.f3406s) {
            printWriter.print(str);
            printWriter.print("mAbandoned=");
            printWriter.print(this.f3405r);
            printWriter.print(" mReset=");
            printWriter.println(this.f3406s);
        }
    }

    /* renamed from: b */
    public void mo7969b(D d) {
        AbstractC0828b<D> bVar = this.f3402o;
        if (bVar != null) {
            bVar.mo7957c(d);
        }
    }

    /* renamed from: b */
    protected boolean mo7970b() {
        return false;
    }

    /* renamed from: f */
    protected void mo7967f() {
    }

    /* renamed from: g */
    protected void mo7966g() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h */
    public void mo7965h() {
    }

    /* renamed from: i */
    public final void m7964i() {
        this.f3404q = true;
        this.f3406s = false;
        this.f3405r = false;
        mo7967f();
    }

    /* renamed from: j */
    public final boolean m7963j() {
        return mo7970b();
    }

    /* renamed from: k */
    public final void m7962k() {
        mo7974a();
    }

    /* renamed from: l */
    public final void m7961l() {
        this.f3404q = false;
        mo7966g();
    }

    /* renamed from: m */
    public final void m7960m() {
        this.f3405r = true;
    }

    /* renamed from: n */
    public final void m7959n() {
        mo7965h();
        this.f3406s = true;
        this.f3404q = false;
        this.f3405r = false;
        this.f3407t = false;
        this.f3408u = false;
    }

    /* renamed from: o */
    public final void m7958o() {
        if (this.f3404q) {
            mo7974a();
        } else {
            this.f3407t = true;
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(64);
        C0679a.m8556a(this, sb);
        sb.append(" id=");
        sb.append(this.f3401n);
        sb.append("}");
        return sb.toString();
    }
}
