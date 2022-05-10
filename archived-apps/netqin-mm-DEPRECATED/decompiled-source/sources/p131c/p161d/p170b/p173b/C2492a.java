package p131c.p161d.p170b.p173b;

import com.google.android.datatransport.Priority;
/* renamed from: c.d.b.b.a */
/* loaded from: classes-dex2jar.jar:c/d/b/b/a.class */
public final class C2492a<T> extends AbstractC2494c<T> {

    /* renamed from: a */
    public final Integer f9475a;

    /* renamed from: b */
    public final T f9476b;

    /* renamed from: c */
    public final Priority f9477c;

    public C2492a(Integer num, T t, Priority priority) {
        this.f9475a = num;
        if (t != null) {
            this.f9476b = t;
            if (priority != null) {
                this.f9477c = priority;
                return;
            }
            throw new NullPointerException("Null priority");
        }
        throw new NullPointerException("Null payload");
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2494c
    /* renamed from: a */
    public Integer mo29660a() {
        return this.f9475a;
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2494c
    /* renamed from: b */
    public T mo29658b() {
        return this.f9476b;
    }

    @Override // p131c.p161d.p170b.p173b.AbstractC2494c
    /* renamed from: c */
    public Priority mo29656c() {
        return this.f9477c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004c, code lost:
        if (r3.f9477c.equals(r0.mo29656c()) != false) goto L_0x0054;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = 1
            r5 = r0
            r0 = r4
            r1 = r3
            if (r0 != r1) goto L_0x0009
            r0 = 1
            return r0
        L_0x0009:
            r0 = r4
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.AbstractC2494c
            if (r0 == 0) goto L_0x0056
            r0 = r4
            c.d.b.b.c r0 = (p131c.p161d.p170b.p173b.AbstractC2494c) r0
            r4 = r0
            r0 = r3
            java.lang.Integer r0 = r0.f9475a
            r6 = r0
            r0 = r6
            if (r0 != 0) goto L_0x0028
            r0 = r4
            java.lang.Integer r0 = r0.mo29660a()
            if (r0 != 0) goto L_0x0052
            goto L_0x0033
        L_0x0028:
            r0 = r6
            r1 = r4
            java.lang.Integer r1 = r1.mo29660a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
        L_0x0033:
            r0 = r3
            T r0 = r0.f9476b
            r1 = r4
            java.lang.Object r1 = r1.mo29658b()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.f9477c
            r1 = r4
            com.google.android.datatransport.Priority r1 = r1.mo29656c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0052
            goto L_0x0054
        L_0x0052:
            r0 = 0
            r5 = r0
        L_0x0054:
            r0 = r5
            return r0
        L_0x0056:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p173b.C2492a.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Integer num = this.f9475a;
        return (((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.f9476b.hashCode()) * 1000003) ^ this.f9477c.hashCode();
    }

    public String toString() {
        return "Event{code=" + this.f9475a + ", payload=" + this.f9476b + ", priority=" + this.f9477c + "}";
    }
}
