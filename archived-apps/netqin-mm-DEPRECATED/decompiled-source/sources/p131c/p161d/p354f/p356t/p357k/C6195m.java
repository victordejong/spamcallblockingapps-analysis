package p131c.p161d.p354f.p356t.p357k;

import java.io.IOException;
import java.lang.reflect.Type;
import p131c.p161d.p354f.AbstractC6129q;
import p131c.p161d.p354f.C6111e;
import p131c.p161d.p354f.p356t.p357k.C6184i;
import p131c.p161d.p354f.p360u.C6239a;
import p131c.p161d.p354f.p361v.C6240a;
import p131c.p161d.p354f.p361v.C6242b;
/* renamed from: c.d.f.t.k.m */
/* loaded from: classes2-dex2jar.jar:c/d/f/t/k/m.class */
public final class C6195m<T> extends AbstractC6129q<T> {

    /* renamed from: a */
    public final C6111e f19738a;

    /* renamed from: b */
    public final AbstractC6129q<T> f19739b;

    /* renamed from: c */
    public final Type f19740c;

    public C6195m(C6111e eVar, AbstractC6129q<T> qVar, Type type) {
        this.f19738a = eVar;
        this.f19739b = qVar;
        this.f19740c = type;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0019, code lost:
        if ((r4 instanceof java.lang.Class) != false) goto L_0x001c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.reflect.Type m21879a(java.lang.reflect.Type r4, java.lang.Object r5) {
        /*
            r3 = this;
            r0 = r4
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0021
            r0 = r4
            java.lang.Class<java.lang.Object> r1 = java.lang.Object.class
            if (r0 == r1) goto L_0x001c
            r0 = r4
            boolean r0 = r0 instanceof java.lang.reflect.TypeVariable
            if (r0 != 0) goto L_0x001c
            r0 = r4
            r6 = r0
            r0 = r4
            boolean r0 = r0 instanceof java.lang.Class
            if (r0 == 0) goto L_0x0021
        L_0x001c:
            r0 = r5
            java.lang.Class r0 = r0.getClass()
            r6 = r0
        L_0x0021:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p354f.p356t.p357k.C6195m.m21879a(java.lang.reflect.Type, java.lang.Object):java.lang.reflect.Type");
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public T read(C6240a aVar) throws IOException {
        return this.f19739b.read(aVar);
    }

    @Override // p131c.p161d.p354f.AbstractC6129q
    public void write(C6242b bVar, T t) throws IOException {
        AbstractC6129q<T> qVar = this.f19739b;
        Type a = m21879a(this.f19740c, t);
        if (a != this.f19740c) {
            qVar = this.f19738a.m21992a((C6239a) C6239a.m21834a(a));
            if (qVar instanceof C6184i.C6186b) {
                AbstractC6129q<T> qVar2 = this.f19739b;
                if (!(qVar2 instanceof C6184i.C6186b)) {
                    qVar = qVar2;
                }
            }
        }
        qVar.write(bVar, t);
    }
}
