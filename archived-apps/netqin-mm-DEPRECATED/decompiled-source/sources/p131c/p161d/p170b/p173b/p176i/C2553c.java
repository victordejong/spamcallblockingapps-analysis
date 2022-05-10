package p131c.p161d.p170b.p173b.p176i;

import com.google.android.datatransport.Priority;
import java.util.Arrays;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
/* renamed from: c.d.b.b.i.c */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/c.class */
public final class C2553c extends AbstractC2571m {

    /* renamed from: a */
    public final String f9596a;

    /* renamed from: b */
    public final byte[] f9597b;

    /* renamed from: c */
    public final Priority f9598c;

    /* renamed from: c.d.b.b.i.c$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/c$b.class */
    public static final class C2555b extends AbstractC2571m.AbstractC2572a {

        /* renamed from: a */
        public String f9599a;

        /* renamed from: b */
        public byte[] f9600b;

        /* renamed from: c */
        public Priority f9601c;

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m.AbstractC2572a
        /* renamed from: a */
        public AbstractC2571m.AbstractC2572a mo29500a(Priority priority) {
            if (priority != null) {
                this.f9601c = priority;
                return this;
            }
            throw new NullPointerException("Null priority");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m.AbstractC2572a
        /* renamed from: a */
        public AbstractC2571m.AbstractC2572a mo29499a(String str) {
            if (str != null) {
                this.f9599a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m.AbstractC2572a
        /* renamed from: a */
        public AbstractC2571m.AbstractC2572a mo29498a(byte[] bArr) {
            this.f9600b = bArr;
            return this;
        }

        @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m.AbstractC2572a
        /* renamed from: a */
        public AbstractC2571m mo29501a() {
            String str = "";
            if (this.f9599a == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.f9601c == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new C2553c(this.f9599a, this.f9600b, this.f9601c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }
    }

    public C2553c(String str, byte[] bArr, Priority priority) {
        this.f9596a = str;
        this.f9597b = bArr;
        this.f9598c = priority;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m
    /* renamed from: a */
    public String mo29506a() {
        return this.f9596a;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m
    /* renamed from: b */
    public byte[] mo29504b() {
        return this.f9597b;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.AbstractC2571m
    /* renamed from: c */
    public Priority mo29503c() {
        return this.f9598c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.f9598c.equals(r0.mo29503c()) != false) goto L_0x005c;
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
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.p176i.AbstractC2571m
            if (r0 == 0) goto L_0x005e
            r0 = r4
            c.d.b.b.i.m r0 = (p131c.p161d.p170b.p173b.p176i.AbstractC2571m) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f9596a
            r1 = r6
            java.lang.String r1 = r1.mo29506a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            byte[] r0 = r0.f9597b
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p131c.p161d.p170b.p173b.p176i.C2553c
            if (r0 == 0) goto L_0x003b
            r0 = r6
            c.d.b.b.i.c r0 = (p131c.p161d.p170b.p173b.p176i.C2553c) r0
            byte[] r0 = r0.f9597b
            r4 = r0
            goto L_0x0040
        L_0x003b:
            r0 = r6
            byte[] r0 = r0.mo29504b()
            r4 = r0
        L_0x0040:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            com.google.android.datatransport.Priority r0 = r0.f9598c
            r1 = r6
            com.google.android.datatransport.Priority r1 = r1.mo29503c()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005a
            goto L_0x005c
        L_0x005a:
            r0 = 0
            r5 = r0
        L_0x005c:
            r0 = r5
            return r0
        L_0x005e:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p170b.p173b.p176i.C2553c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((((this.f9596a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f9597b)) * 1000003) ^ this.f9598c.hashCode();
    }
}
