package p530d.p541c.p562g0;

import java.util.concurrent.Callable;
import p530d.p541c.AbstractC9845s;
import p530d.p541c.p543b0.p555g.C9773a;
import p530d.p541c.p543b0.p555g.C9778c;
import p530d.p541c.p543b0.p555g.C9782d;
import p530d.p541c.p543b0.p555g.C9788h;
import p530d.p541c.p543b0.p555g.C9790i;
import p530d.p541c.p560e0.C9815a;
/* renamed from: d.c.g0.a */
/* loaded from: classes2-dex2jar.jar:d/c/g0/a.class */
public final class C9819a {

    /* renamed from: a */
    public static final AbstractC9845s f37036a = C9815a.m1922b(new CallableC9821b());

    /* renamed from: b */
    public static final AbstractC9845s f37037b = C9815a.m1920c(new CallableC9822c());

    /* renamed from: d.c.g0.a$a */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$a.class */
    public static final class C9820a {

        /* renamed from: a */
        public static final AbstractC9845s f37038a = new C9773a();
    }

    /* renamed from: d.c.g0.a$b */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$b.class */
    public static final class CallableC9821b implements Callable<AbstractC9845s> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9845s call() throws Exception {
            return C9820a.f37038a;
        }
    }

    /* renamed from: d.c.g0.a$c */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$c.class */
    public static final class CallableC9822c implements Callable<AbstractC9845s> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9845s call() throws Exception {
            return C9823d.f37039a;
        }
    }

    /* renamed from: d.c.g0.a$d */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$d.class */
    public static final class C9823d {

        /* renamed from: a */
        public static final AbstractC9845s f37039a = new C9778c();
    }

    /* renamed from: d.c.g0.a$e */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$e.class */
    public static final class C9824e {

        /* renamed from: a */
        public static final AbstractC9845s f37040a = new C9782d();
    }

    /* renamed from: d.c.g0.a$f */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$f.class */
    public static final class CallableC9825f implements Callable<AbstractC9845s> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9845s call() throws Exception {
            return C9824e.f37040a;
        }
    }

    /* renamed from: d.c.g0.a$g */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$g.class */
    public static final class C9826g {

        /* renamed from: a */
        public static final AbstractC9845s f37041a = new C9788h();
    }

    /* renamed from: d.c.g0.a$h */
    /* loaded from: classes2-dex2jar.jar:d/c/g0/a$h.class */
    public static final class CallableC9827h implements Callable<AbstractC9845s> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public AbstractC9845s call() throws Exception {
            return C9826g.f37041a;
        }
    }

    static {
        C9815a.m1918e(new CallableC9827h());
        C9790i.m2026b();
        C9815a.m1919d(new CallableC9825f());
    }

    /* renamed from: a */
    public static AbstractC9845s m1916a() {
        return C9815a.m1932a(f37036a);
    }

    /* renamed from: b */
    public static AbstractC9845s m1915b() {
        return C9815a.m1924b(f37037b);
    }
}
