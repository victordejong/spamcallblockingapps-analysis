package androidx.work.impl.utils.p016n;
/* renamed from: androidx.work.impl.utils.n.a$d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n/a$d.class */
final class a$d {

    /* renamed from: b */
    static final a$d f2660b = new a$d(new C0535a("Failure occurred while trying to finish a future."));

    /* renamed from: a */
    final Throwable f2661a;

    /* renamed from: androidx.work.impl.utils.n.a$d$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/n/a$d$a.class */
    class C0535a extends Throwable {
        C0535a(String str) {
            super(str);
        }

        @Override // java.lang.Throwable
        public Throwable fillInStackTrace() {
            synchronized (this) {
            }
            return this;
        }
    }

    a$d(Throwable th) {
        a.e(th);
        this.f2661a = th;
    }
}
