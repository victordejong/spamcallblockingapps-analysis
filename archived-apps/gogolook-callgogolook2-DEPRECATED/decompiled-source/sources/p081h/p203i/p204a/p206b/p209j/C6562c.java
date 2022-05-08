package p081h.p203i.p204a.p206b.p209j;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Arrays;
import p081h.p203i.p204a.p206b.EnumC6495d;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
/* renamed from: h.i.a.b.j.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/c.class */
public final class C6562c extends AbstractC6580m {

    /* renamed from: a */
    public final String f16353a;

    /* renamed from: b */
    public final byte[] f16354b;

    /* renamed from: c */
    public final EnumC6495d f16355c;

    /* renamed from: h.i.a.b.j.c$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/c$b.class */
    public static final class C6564b extends AbstractC6580m.AbstractC6581a {

        /* renamed from: a */
        public String f16356a;

        /* renamed from: b */
        public byte[] f16357b;

        /* renamed from: c */
        public EnumC6495d f16358c;

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m.AbstractC6581a
        /* renamed from: a */
        public AbstractC6580m.AbstractC6581a mo22290a(EnumC6495d dVar) {
            if (dVar != null) {
                this.f16358c = dVar;
                return this;
            }
            throw new NullPointerException("Null priority");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m.AbstractC6581a
        /* renamed from: a */
        public AbstractC6580m.AbstractC6581a mo22289a(String str) {
            if (str != null) {
                this.f16356a = str;
                return this;
            }
            throw new NullPointerException("Null backendName");
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m.AbstractC6581a
        /* renamed from: a */
        public AbstractC6580m.AbstractC6581a mo22288a(@Nullable byte[] bArr) {
            this.f16357b = bArr;
            return this;
        }

        @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m.AbstractC6581a
        /* renamed from: a */
        public AbstractC6580m mo22291a() {
            String str = "";
            if (this.f16356a == null) {
                str = " backendName";
            }
            String str2 = str;
            if (this.f16358c == null) {
                str2 = str + " priority";
            }
            if (str2.isEmpty()) {
                return new C6562c(this.f16356a, this.f16357b, this.f16358c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }
    }

    public C6562c(String str, @Nullable byte[] bArr, EnumC6495d dVar) {
        this.f16353a = str;
        this.f16354b = bArr;
        this.f16355c = dVar;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m
    /* renamed from: a */
    public String mo22296a() {
        return this.f16353a;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m
    @Nullable
    /* renamed from: b */
    public byte[] mo22294b() {
        return this.f16354b;
    }

    @Override // p081h.p203i.p204a.p206b.p209j.AbstractC6580m
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    /* renamed from: c */
    public EnumC6495d mo22293c() {
        return this.f16355c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
        if (r3.f16355c.equals(r0.mo22293c()) != false) goto L_0x005c;
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
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.p209j.AbstractC6580m
            if (r0 == 0) goto L_0x005e
            r0 = r4
            h.i.a.b.j.m r0 = (p081h.p203i.p204a.p206b.p209j.AbstractC6580m) r0
            r6 = r0
            r0 = r3
            java.lang.String r0 = r0.f16353a
            r1 = r6
            java.lang.String r1 = r1.mo22296a()
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            byte[] r0 = r0.f16354b
            r7 = r0
            r0 = r6
            boolean r0 = r0 instanceof p081h.p203i.p204a.p206b.p209j.C6562c
            if (r0 == 0) goto L_0x003b
            r0 = r6
            h.i.a.b.j.c r0 = (p081h.p203i.p204a.p206b.p209j.C6562c) r0
            byte[] r0 = r0.f16354b
            r4 = r0
            goto L_0x0040
        L_0x003b:
            r0 = r6
            byte[] r0 = r0.mo22294b()
            r4 = r0
        L_0x0040:
            r0 = r7
            r1 = r4
            boolean r0 = java.util.Arrays.equals(r0, r1)
            if (r0 == 0) goto L_0x005a
            r0 = r3
            h.i.a.b.d r0 = r0.f16355c
            r1 = r6
            h.i.a.b.d r1 = r1.mo22293c()
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
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p206b.p209j.C6562c.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return ((((this.f16353a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f16354b)) * 1000003) ^ this.f16355c.hashCode();
    }
}
