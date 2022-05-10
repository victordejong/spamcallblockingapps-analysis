package p131c.p161d.p367h;

import com.google.protobuf.ByteString;
import com.google.protobuf.InvalidProtocolBufferException;
import com.google.protobuf.WireFormat;
import com.google.protobuf.Writer;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;
import p131c.p161d.p367h.C6277a0;
import p131c.p161d.p367h.C6371u;
/* renamed from: c.d.h.r0 */
/* loaded from: classes2-dex2jar.jar:c/d/h/r0.class */
public final class C6366r0<T> implements AbstractC6287c1<T> {

    /* renamed from: a */
    public final AbstractC6354n0 f20029a;

    /* renamed from: b */
    public final AbstractC6326i1<?, ?> f20030b;

    /* renamed from: c */
    public final boolean f20031c;

    /* renamed from: d */
    public final AbstractC6361q<?> f20032d;

    public C6366r0(AbstractC6326i1<?, ?> i1Var, AbstractC6361q<?> qVar, AbstractC6354n0 n0Var) {
        this.f20030b = i1Var;
        this.f20031c = qVar.mo21097a(n0Var);
        this.f20032d = qVar;
        this.f20029a = n0Var;
    }

    /* renamed from: a */
    public static <T> C6366r0<T> m21087a(AbstractC6326i1<?, ?> i1Var, AbstractC6361q<?> qVar, AbstractC6354n0 n0Var) {
        return new C6366r0<>(i1Var, qVar, n0Var);
    }

    /* renamed from: a */
    public final <UT, UB> int m21085a(AbstractC6326i1<UT, UB> i1Var, T t) {
        return i1Var.mo21278d(i1Var.mo21286b(t));
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public T mo21089a() {
        return (T) this.f20029a.mo6925q().mo6938B();
    }

    /* renamed from: a */
    public final <UT, UB, ET extends C6371u.AbstractC6373b<ET>> void m21086a(AbstractC6326i1<UT, UB> i1Var, AbstractC6361q<ET> qVar, T t, AbstractC6284b1 b1Var, C6358p pVar) throws IOException {
        UB a = i1Var.mo21297a(t);
        C6371u<ET> b = qVar.mo21091b(t);
        do {
            try {
                if (b1Var.mo21322l() == Integer.MAX_VALUE) {
                    i1Var.mo21282b((Object) t, (T) a);
                    return;
                }
            } catch (Throwable th) {
                i1Var.mo21282b((Object) t, (T) a);
                throw th;
            }
        } while (m21088a(b1Var, pVar, qVar, b, i1Var, a));
        i1Var.mo21282b((Object) t, (T) a);
    }

    /* renamed from: a */
    public final <UT, UB> void m21084a(AbstractC6326i1<UT, UB> i1Var, T t, Writer writer) throws IOException {
        i1Var.mo21291a((AbstractC6326i1<UT, UB>) i1Var.mo21286b(t), writer);
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21083a(T t) {
        this.f20030b.mo21277e(t);
        this.f20032d.mo21090c(t);
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21082a(T t, AbstractC6284b1 b1Var, C6358p pVar) throws IOException {
        m21086a(this.f20030b, this.f20032d, (AbstractC6361q) t, b1Var, pVar);
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public void mo21081a(T t, Writer writer) throws IOException {
        Iterator<Map.Entry<?, Object>> g = this.f20032d.mo21093a(t).m21046g();
        while (g.hasNext()) {
            Map.Entry<?, Object> next = g.next();
            C6371u.AbstractC6373b bVar = (C6371u.AbstractC6373b) next.getKey();
            if (bVar.mo6923J() != WireFormat.JavaType.MESSAGE || bVar.mo6919k() || bVar.isPacked()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            } else if (next instanceof C6277a0.C6279b) {
                writer.mo6830a(bVar.getNumber(), (Object) ((C6277a0.C6279b) next).m21688a().m21678b());
            } else {
                writer.mo6830a(bVar.getNumber(), next.getValue());
            }
        }
        m21084a(this.f20030b, (AbstractC6326i1) t, writer);
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0186 A[EDGE_INSN: B:67:0x0186->B:36:0x0186 ?: BREAK  , SYNTHETIC] */
    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo21079a(T r8, byte[] r9, int r10, int r11, p131c.p161d.p367h.C6291e.C6293b r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6366r0.mo21079a(java.lang.Object, byte[], int, int, c.d.h.e$b):void");
    }

    /* renamed from: a */
    public final <UT, UB, ET extends C6371u.AbstractC6373b<ET>> boolean m21088a(AbstractC6284b1 b1Var, C6358p pVar, AbstractC6361q<ET> qVar, C6371u<ET> uVar, AbstractC6326i1<UT, UB> i1Var, UB ub) throws IOException {
        int a = b1Var.mo21360a();
        if (a == WireFormat.f31157a) {
            int i = 0;
            Object obj = null;
            ByteString byteString = null;
            while (b1Var.mo21322l() != Integer.MAX_VALUE) {
                int a2 = b1Var.mo21360a();
                if (a2 == WireFormat.f31159c) {
                    i = b1Var.mo21330h();
                    obj = qVar.mo21096a(pVar, this.f20029a, i);
                } else if (a2 == WireFormat.f31160d) {
                    if (obj != null) {
                        qVar.mo21099a(b1Var, obj, pVar, uVar);
                    } else {
                        byteString = b1Var.mo21320m();
                    }
                } else if (!b1Var.mo21316o()) {
                    break;
                }
            }
            if (b1Var.mo21360a() != WireFormat.f31158b) {
                throw InvalidProtocolBufferException.invalidEndTag();
            } else if (byteString == null) {
                return true;
            } else {
                if (obj != null) {
                    qVar.mo21095a(byteString, obj, pVar, uVar);
                    return true;
                }
                i1Var.mo21294a((AbstractC6326i1<UT, UB>) ub, i, byteString);
                return true;
            }
        } else if (WireFormat.m6839b(a) != 2) {
            return b1Var.mo21316o();
        } else {
            Object a3 = qVar.mo21096a(pVar, this.f20029a, WireFormat.m6841a(a));
            if (a3 == null) {
                return i1Var.m21470b((AbstractC6326i1<UT, UB>) ub, b1Var);
            }
            qVar.mo21099a(b1Var, a3, pVar, uVar);
            return true;
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: a */
    public boolean mo21080a(T t, T t2) {
        if (!this.f20030b.mo21286b(t).equals(this.f20030b.mo21286b(t2))) {
            return false;
        }
        if (this.f20031c) {
            return this.f20032d.mo21093a(t).equals(this.f20032d.mo21093a(t2));
        }
        return true;
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: b */
    public int mo21078b(T t) {
        int hashCode = this.f20030b.mo21286b(t).hashCode();
        int i = hashCode;
        if (this.f20031c) {
            i = (hashCode * 53) + this.f20032d.mo21093a(t).hashCode();
        }
        return i;
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: b */
    public void mo21077b(T t, T t2) {
        C6298e1.m21608a(this.f20030b, t, t2);
        if (this.f20031c) {
            C6298e1.m21607a(this.f20032d, t, t2);
        }
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: c */
    public final boolean mo21076c(T t) {
        return this.f20032d.mo21093a(t).m21047f();
    }

    @Override // p131c.p161d.p367h.AbstractC6287c1
    /* renamed from: d */
    public int mo21075d(T t) {
        int a = m21085a(this.f20030b, (AbstractC6326i1) t) + 0;
        int i = a;
        if (this.f20031c) {
            i = a + this.f20032d.mo21093a(t).m21057b();
        }
        return i;
    }
}
