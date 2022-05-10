package p530d.p531a.p532v0;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Queue;
/* renamed from: d.a.v0.r */
/* loaded from: classes2-dex2jar.jar:d/a/v0/r.class */
public class C9486r extends AbstractC9334c {

    /* renamed from: a */
    public int f36309a;

    /* renamed from: b */
    public final Queue<AbstractC9377i1> f36310b = new ArrayDeque();

    /* renamed from: d.a.v0.r$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/r$a.class */
    public class C9487a extends AbstractC9489c {
        public C9487a(C9486r rVar) {
            super(null);
        }

        @Override // p530d.p531a.p532v0.C9486r.AbstractC9489c
        /* renamed from: b */
        public int mo2637b(AbstractC9377i1 i1Var, int i) {
            return i1Var.readUnsignedByte();
        }
    }

    /* renamed from: d.a.v0.r$b */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/r$b.class */
    public class C9488b extends AbstractC9489c {

        /* renamed from: c */
        public int f36311c;

        /* renamed from: d */
        public final /* synthetic */ int f36312d;

        /* renamed from: e */
        public final /* synthetic */ byte[] f36313e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9488b(C9486r rVar, int i, byte[] bArr) {
            super(null);
            this.f36312d = i;
            this.f36313e = bArr;
            this.f36311c = this.f36312d;
        }

        @Override // p530d.p531a.p532v0.C9486r.AbstractC9489c
        /* renamed from: b */
        public int mo2637b(AbstractC9377i1 i1Var, int i) {
            i1Var.mo2357a(this.f36313e, this.f36311c, i);
            this.f36311c += i;
            return 0;
        }
    }

    /* renamed from: d.a.v0.r$c */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/r$c.class */
    public static abstract class AbstractC9489c {

        /* renamed from: a */
        public int f36314a;

        /* renamed from: b */
        public IOException f36315b;

        public AbstractC9489c() {
        }

        public /* synthetic */ AbstractC9489c(C9487a aVar) {
            this();
        }

        /* renamed from: a */
        public final void m2638a(AbstractC9377i1 i1Var, int i) {
            try {
                this.f36314a = mo2637b(i1Var, i);
            } catch (IOException e) {
                this.f36315b = e;
            }
        }

        /* renamed from: a */
        public final boolean m2639a() {
            return this.f36315b != null;
        }

        /* renamed from: b */
        public abstract int mo2637b(AbstractC9377i1 i1Var, int i) throws IOException;
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: Y */
    public int mo2358Y() {
        return this.f36309a;
    }

    /* renamed from: a */
    public final void m2642a() {
        if (this.f36310b.peek().mo2358Y() == 0) {
            this.f36310b.remove().close();
        }
    }

    /* renamed from: a */
    public void m2641a(AbstractC9377i1 i1Var) {
        if (!(i1Var instanceof C9486r)) {
            this.f36310b.add(i1Var);
            this.f36309a += i1Var.mo2358Y();
            return;
        }
        C9486r rVar = (C9486r) i1Var;
        while (!rVar.f36310b.isEmpty()) {
            this.f36310b.add(rVar.f36310b.remove());
        }
        this.f36309a += rVar.f36309a;
        rVar.f36309a = 0;
        rVar.close();
    }

    /* renamed from: a */
    public final void m2640a(AbstractC9489c cVar, int i) {
        m2912a(i);
        int i2 = i;
        if (!this.f36310b.isEmpty()) {
            m2642a();
            i2 = i;
        }
        while (i2 > 0 && !this.f36310b.isEmpty()) {
            AbstractC9377i1 peek = this.f36310b.peek();
            int min = Math.min(i2, peek.mo2358Y());
            cVar.m2638a(peek, min);
            if (!cVar.m2639a()) {
                i2 -= min;
                this.f36309a -= min;
                m2642a();
            } else {
                return;
            }
        }
        if (i2 > 0) {
            throw new AssertionError("Failed executing read operation");
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: a */
    public void mo2357a(byte[] bArr, int i, int i2) {
        m2640a(new C9488b(this, i, bArr), i2);
    }

    @Override // p530d.p531a.p532v0.AbstractC9334c, p530d.p531a.p532v0.AbstractC9377i1, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        while (!this.f36310b.isEmpty()) {
            this.f36310b.remove().close();
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    /* renamed from: f */
    public C9486r mo2356f(int i) {
        m2912a(i);
        this.f36309a -= i;
        C9486r rVar = new C9486r();
        while (i > 0) {
            AbstractC9377i1 peek = this.f36310b.peek();
            if (peek.mo2358Y() > i) {
                rVar.m2641a(peek.mo2356f(i));
                i = 0;
            } else {
                rVar.m2641a(this.f36310b.poll());
                i -= peek.mo2358Y();
            }
        }
        return rVar;
    }

    @Override // p530d.p531a.p532v0.AbstractC9377i1
    public int readUnsignedByte() {
        C9487a aVar = new C9487a(this);
        m2640a(aVar, 1);
        return aVar.f36314a;
    }
}
