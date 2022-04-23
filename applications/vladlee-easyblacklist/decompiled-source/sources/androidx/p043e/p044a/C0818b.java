package androidx.p043e.p044a;

import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import androidx.core.p036f.C0679a;
import androidx.lifecycle.AbstractC0932i;
import androidx.lifecycle.AbstractC0941q;
import androidx.lifecycle.AbstractC0945t;
import androidx.lifecycle.C0940p;
import androidx.lifecycle.C0946u;
import androidx.lifecycle.C0949v;
import androidx.p026b.C0543j;
import androidx.p043e.p044a.AbstractC0816a;
import androidx.p043e.p045b.C0826c;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.e.a.b */
/* loaded from: classes-dex2jar.jar:androidx/e/a/b.class */
public final class C0818b extends AbstractC0816a {

    /* renamed from: a */
    static boolean f3369a = false;

    /* renamed from: b */
    private final AbstractC0932i f3370b;

    /* renamed from: c */
    private final C0821c f3371c;

    /* renamed from: androidx.e.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$a.class */
    public static final class C0819a<D> extends C0940p<D> implements C0826c.AbstractC0828b<D> {

        /* renamed from: e */
        private final int f3372e;

        /* renamed from: f */
        private final Bundle f3373f = null;

        /* renamed from: g */
        private final C0826c<D> f3374g;

        /* renamed from: h */
        private AbstractC0932i f3375h;

        /* renamed from: i */
        private C0820b<D> f3376i;

        /* renamed from: j */
        private C0826c<D> f3377j;

        C0819a(int i, C0826c<D> cVar, C0826c<D> cVar2) {
            this.f3372e = i;
            this.f3374g = cVar;
            this.f3377j = cVar2;
            this.f3374g.m7973a(i, this);
        }

        /* renamed from: a */
        final C0826c<D> m7999a(AbstractC0932i iVar, AbstractC0816a.AbstractC0817a<D> aVar) {
            C0820b<D> bVar = new C0820b<>(this.f3374g, aVar);
            m7604a(iVar, bVar);
            C0820b<D> bVar2 = this.f3376i;
            if (bVar2 != null) {
                mo7603a((AbstractC0941q) bVar2);
            }
            this.f3375h = iVar;
            this.f3376i = bVar;
            return this.f3374g;
        }

        /* renamed from: a */
        final C0826c<D> m7997a(boolean z) {
            if (C0818b.f3369a) {
                Log.v("LoaderManager", "  Destroying: ".concat(String.valueOf(this)));
            }
            this.f3374g.m7963j();
            this.f3374g.m7960m();
            C0820b<D> bVar = this.f3376i;
            if (bVar != null) {
                mo7603a((AbstractC0941q) bVar);
                if (z) {
                    bVar.m7993b();
                }
            }
            this.f3374g.m7972a(this);
            if ((bVar == null || bVar.m7995a()) && !z) {
                return this.f3374g;
            }
            this.f3374g.m7959n();
            return this.f3377j;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.lifecycle.LiveData
        /* renamed from: a */
        public final void mo7603a(AbstractC0941q<? super D> qVar) {
            super.mo7603a((AbstractC0941q) qVar);
            this.f3375h = null;
            this.f3376i = null;
        }

        /* renamed from: a */
        public final void m7998a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            printWriter.print(str);
            printWriter.print("mId=");
            printWriter.print(this.f3372e);
            printWriter.print(" mArgs=");
            printWriter.println(this.f3373f);
            printWriter.print(str);
            printWriter.print("mLoader=");
            printWriter.println(this.f3374g);
            C0826c<D> cVar = this.f3374g;
            cVar.mo7971a(str + "  ", fileDescriptor, printWriter, strArr);
            if (this.f3376i != null) {
                printWriter.print(str);
                printWriter.print("mCallbacks=");
                printWriter.println(this.f3376i);
                C0820b<D> bVar = this.f3376i;
                bVar.m7994a(str + "  ", printWriter);
            }
            printWriter.print(str);
            printWriter.print("mData=");
            printWriter.println(C0826c.m7968c(m7606a()));
            printWriter.print(str);
            printWriter.print("mStarted=");
            printWriter.println(m7598d());
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: b */
        protected final void mo7601b() {
            if (C0818b.f3369a) {
                Log.v("LoaderManager", "  Starting: ".concat(String.valueOf(this)));
            }
            this.f3374g.m7964i();
        }

        @Override // androidx.lifecycle.C0940p, androidx.lifecycle.LiveData
        /* renamed from: b */
        public final void mo7559b(D d) {
            super.mo7559b((C0819a<D>) d);
            C0826c<D> cVar = this.f3377j;
            if (cVar != null) {
                cVar.m7959n();
                this.f3377j = null;
            }
        }

        @Override // androidx.lifecycle.LiveData
        /* renamed from: c */
        protected final void mo7599c() {
            if (C0818b.f3369a) {
                Log.v("LoaderManager", "  Stopping: ".concat(String.valueOf(this)));
            }
            this.f3374g.m7961l();
        }

        @Override // androidx.p043e.p045b.C0826c.AbstractC0828b
        /* renamed from: c */
        public final void mo7957c(D d) {
            if (C0818b.f3369a) {
                Log.v("LoaderManager", "onLoadComplete: ".concat(String.valueOf(this)));
            }
            if (Looper.myLooper() == Looper.getMainLooper()) {
                mo7559b((C0819a<D>) d);
                return;
            }
            if (C0818b.f3369a) {
                Log.w("LoaderManager", "onLoadComplete was incorrectly called on a background thread");
            }
            mo7560a((C0819a<D>) d);
        }

        /* renamed from: e */
        final void m7996e() {
            AbstractC0932i iVar = this.f3375h;
            C0820b<D> bVar = this.f3376i;
            if (iVar != null && bVar != null) {
                super.mo7603a((AbstractC0941q) bVar);
                m7604a(iVar, bVar);
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder(64);
            sb.append("LoaderInfo{");
            sb.append(Integer.toHexString(System.identityHashCode(this)));
            sb.append(" #");
            sb.append(this.f3372e);
            sb.append(" : ");
            C0679a.m8556a(this.f3374g, sb);
            sb.append("}}");
            return sb.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.e.a.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$b.class */
    public static final class C0820b<D> implements AbstractC0941q<D> {

        /* renamed from: a */
        private final C0826c<D> f3378a;

        /* renamed from: b */
        private final AbstractC0816a.AbstractC0817a<D> f3379b;

        /* renamed from: c */
        private boolean f3380c = false;

        C0820b(C0826c<D> cVar, AbstractC0816a.AbstractC0817a<D> aVar) {
            this.f3378a = cVar;
            this.f3379b = aVar;
        }

        @Override // androidx.lifecycle.AbstractC0941q
        /* renamed from: a */
        public final void mo7558a(D d) {
            if (C0818b.f3369a) {
                Log.v("LoaderManager", "  onLoadFinished in " + this.f3378a + ": " + C0826c.m7968c(d));
            }
            this.f3379b.mo20a(d);
            this.f3380c = true;
        }

        /* renamed from: a */
        public final void m7994a(String str, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("mDeliveredData=");
            printWriter.println(this.f3380c);
        }

        /* renamed from: a */
        final boolean m7995a() {
            return this.f3380c;
        }

        /* renamed from: b */
        final void m7993b() {
            if (this.f3380c) {
                if (C0818b.f3369a) {
                    Log.v("LoaderManager", "  Resetting: " + this.f3378a);
                }
                this.f3379b.mo7s_();
            }
        }

        public final String toString() {
            return this.f3379b.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.e.a.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/e/a/b$c.class */
    public static class C0821c extends AbstractC0945t {

        /* renamed from: a */
        private static final C0946u.AbstractC0947a f3381a = new C0822c();

        /* renamed from: b */
        private C0543j<C0819a> f3382b = new C0543j<>();

        /* renamed from: c */
        private boolean f3383c = false;

        /* renamed from: a */
        static C0821c m7990a(C0949v vVar) {
            return (C0821c) new C0946u(vVar, f3381a).m7552a(C0821c.class);
        }

        /* renamed from: a */
        final <D> C0819a<D> m7992a(int i) {
            return this.f3382b.m8899a(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // androidx.lifecycle.AbstractC0945t
        /* renamed from: a */
        public final void mo7554a() {
            super.mo7554a();
            int b = this.f3382b.m8896b();
            for (int i = 0; i < b; i++) {
                this.f3382b.m8889d(i).m7997a(true);
            }
            this.f3382b.m8893c();
        }

        /* renamed from: a */
        final void m7991a(int i, C0819a aVar) {
            this.f3382b.m8894b(i, aVar);
        }

        /* renamed from: a */
        public final void m7989a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
            if (this.f3382b.m8896b() > 0) {
                printWriter.print(str);
                printWriter.println("Loaders:");
                String str2 = str + "    ";
                for (int i = 0; i < this.f3382b.m8896b(); i++) {
                    C0819a d = this.f3382b.m8889d(i);
                    printWriter.print(str);
                    printWriter.print("  #");
                    printWriter.print(this.f3382b.m8892c(i));
                    printWriter.print(": ");
                    printWriter.println(d.toString());
                    d.m7998a(str2, fileDescriptor, printWriter, strArr);
                }
            }
        }

        /* renamed from: b */
        final void m7988b() {
            this.f3383c = true;
        }

        /* renamed from: b */
        final void m7987b(int i) {
            this.f3382b.m8895b(i);
        }

        /* renamed from: c */
        final boolean m7986c() {
            return this.f3383c;
        }

        /* renamed from: e */
        final void m7985e() {
            this.f3383c = false;
        }

        /* renamed from: f */
        final void m7984f() {
            int b = this.f3382b.m8896b();
            for (int i = 0; i < b; i++) {
                this.f3382b.m8889d(i).m7996e();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0818b(AbstractC0932i iVar, C0949v vVar) {
        this.f3370b = iVar;
        this.f3371c = C0821c.m7990a(vVar);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    private <D> C0826c<D> m8002a(int i, AbstractC0816a.AbstractC0817a<D> aVar, C0826c<D> cVar) {
        try {
            this.f3371c.m7988b();
            C0826c<D> r_ = aVar.mo8r_();
            if (r_ != null) {
                if (r_.getClass().isMemberClass() && !Modifier.isStatic(r_.getClass().getModifiers())) {
                    throw new IllegalArgumentException("Object returned from onCreateLoader must not be a non-static inner member class: ".concat(String.valueOf(r_)));
                }
                C0819a aVar2 = new C0819a(i, r_, cVar);
                if (f3369a) {
                    Log.v("LoaderManager", "  Created new loader ".concat(String.valueOf(aVar2)));
                }
                this.f3371c.m7991a(i, aVar2);
                this.f3371c.m7985e();
                return aVar2.m7999a(this.f3370b, aVar);
            }
            throw new IllegalArgumentException("Object returned from onCreateLoader must not be null");
        } catch (Throwable th) {
            this.f3371c.m7985e();
            throw th;
        }
    }

    @Override // androidx.p043e.p044a.AbstractC0816a
    /* renamed from: a */
    public final <D> C0826c<D> mo8003a(int i, AbstractC0816a.AbstractC0817a<D> aVar) {
        if (this.f3371c.m7986c()) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            C0819a<D> a = this.f3371c.m7992a(i);
            if (f3369a) {
                Log.v("LoaderManager", "initLoader in " + this + ": args=" + ((Object) null));
            }
            if (a == null) {
                return m8002a(i, aVar, null);
            }
            if (f3369a) {
                Log.v("LoaderManager", "  Re-using existing loader ".concat(String.valueOf(a)));
            }
            return a.m7999a(this.f3370b, aVar);
        } else {
            throw new IllegalStateException("initLoader must be called on the main thread");
        }
    }

    @Override // androidx.p043e.p044a.AbstractC0816a
    /* renamed from: a */
    public final <D> C0826c<D> mo8001a(AbstractC0816a.AbstractC0817a<D> aVar) {
        if (this.f3371c.m7986c()) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            C0826c<D> cVar = null;
            if (f3369a) {
                Log.v("LoaderManager", "restartLoader in " + this + ": args=" + ((Object) null));
            }
            C0819a<D> a = this.f3371c.m7992a(0);
            if (a != null) {
                cVar = a.m7997a(false);
            }
            return m8002a(0, aVar, cVar);
        } else {
            throw new IllegalStateException("restartLoader must be called on the main thread");
        }
    }

    @Override // androidx.p043e.p044a.AbstractC0816a
    /* renamed from: a */
    public final void mo8005a() {
        this.f3371c.m7984f();
    }

    @Override // androidx.p043e.p044a.AbstractC0816a
    /* renamed from: a */
    public final void mo8004a(int i) {
        if (this.f3371c.m7986c()) {
            throw new IllegalStateException("Called while creating a loader");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            if (f3369a) {
                Log.v("LoaderManager", "destroyLoader in " + this + " of " + i);
            }
            C0819a a = this.f3371c.m7992a(i);
            if (a != null) {
                a.m7997a(true);
                this.f3371c.m7987b(i);
            }
        } else {
            throw new IllegalStateException("destroyLoader must be called on the main thread");
        }
    }

    @Override // androidx.p043e.p044a.AbstractC0816a
    @Deprecated
    /* renamed from: a */
    public final void mo8000a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        this.f3371c.m7989a(str, fileDescriptor, printWriter, strArr);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("LoaderManager{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" in ");
        C0679a.m8556a(this.f3370b, sb);
        sb.append("}}");
        return sb.toString();
    }
}
