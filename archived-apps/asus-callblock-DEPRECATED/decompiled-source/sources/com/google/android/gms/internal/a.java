package com.google.android.gms.internal;

import com.google.android.gms.internal.j;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/a.class */
public interface a {

    /* renamed from: com.google.android.gms.internal.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/a$a.class */
    public static final class C0122a extends p<C0122a> {

        /* renamed from: a  reason: collision with root package name */
        public long f4093a = 0;

        /* renamed from: b  reason: collision with root package name */
        public j.f f4094b = null;
        public j.C0127j c = null;

        public C0122a() {
            this.r = null;
            this.s = -1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final int a() {
            int a2 = super.a() + o.b(1, this.f4093a);
            int i = a2;
            if (this.f4094b != null) {
                i = a2 + o.b(2, this.f4094b);
            }
            int i2 = i;
            if (this.c != null) {
                i2 = i + o.b(3, this.c);
            }
            return i2;
        }

        @Override // com.google.android.gms.internal.v
        public final /* synthetic */ v a(n nVar) {
            while (true) {
                int a2 = nVar.a();
                switch (a2) {
                    case 0:
                        break;
                    case 8:
                        this.f4093a = nVar.f();
                        break;
                    case 18:
                        if (this.f4094b == null) {
                            this.f4094b = new j.f();
                        }
                        nVar.a(this.f4094b);
                        break;
                    case 26:
                        if (this.c == null) {
                            this.c = new j.C0127j();
                        }
                        nVar.a(this.c);
                        break;
                    default:
                        if (super.a(nVar, a2)) {
                            break;
                        } else {
                            break;
                        }
                }
            }
            return this;
        }

        @Override // com.google.android.gms.internal.p, com.google.android.gms.internal.v
        public final void a(o oVar) {
            oVar.a(1, this.f4093a);
            if (this.f4094b != null) {
                oVar.a(2, this.f4094b);
            }
            if (this.c != null) {
                oVar.a(3, this.c);
            }
            super.a(oVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0093  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean equals(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = 1
                r7 = r0
                r0 = r6
                r1 = r5
                if (r0 != r1) goto L_0x000b
                r0 = r7
                r8 = r0
            L_0x0009:
                r0 = r8
                return r0
            L_0x000b:
                r0 = r6
                boolean r0 = r0 instanceof com.google.android.gms.internal.a.C0122a
                if (r0 != 0) goto L_0x0017
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0017:
                r0 = r6
                com.google.android.gms.internal.a$a r0 = (com.google.android.gms.internal.a.C0122a) r0
                r6 = r0
                r0 = r5
                long r0 = r0.f4093a
                r1 = r6
                long r1 = r1.f4093a
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 == 0) goto L_0x002d
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x002d:
                r0 = r5
                com.google.android.gms.internal.j$f r0 = r0.f4094b
                if (r0 != 0) goto L_0x0040
                r0 = r6
                com.google.android.gms.internal.j$f r0 = r0.f4094b
                if (r0 == 0) goto L_0x0053
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0040:
                r0 = r5
                com.google.android.gms.internal.j$f r0 = r0.f4094b
                r1 = r6
                com.google.android.gms.internal.j$f r1 = r1.f4094b
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0053
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0053:
                r0 = r5
                com.google.android.gms.internal.j$j r0 = r0.c
                if (r0 != 0) goto L_0x0066
                r0 = r6
                com.google.android.gms.internal.j$j r0 = r0.c
                if (r0 == 0) goto L_0x0079
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0066:
                r0 = r5
                com.google.android.gms.internal.j$j r0 = r0.c
                r1 = r6
                com.google.android.gms.internal.j$j r1 = r1.c
                boolean r0 = r0.equals(r1)
                if (r0 != 0) goto L_0x0079
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x0079:
                r0 = r5
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x008a
                r0 = r5
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 == 0) goto L_0x00a4
            L_0x008a:
                r0 = r7
                r8 = r0
                r0 = r6
                com.google.android.gms.internal.r r0 = r0.r
                if (r0 == 0) goto L_0x0009
                r0 = r7
                r8 = r0
                r0 = r6
                com.google.android.gms.internal.r r0 = r0.r
                boolean r0 = r0.c()
                if (r0 != 0) goto L_0x0009
                r0 = 0
                r8 = r0
                goto L_0x0009
            L_0x00a4:
                r0 = r5
                com.google.android.gms.internal.r r0 = r0.r
                r1 = r6
                com.google.android.gms.internal.r r1 = r1.r
                boolean r0 = r0.equals(r1)
                r8 = r0
                goto L_0x0009
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.a.C0122a.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            int hashCode = getClass().getName().hashCode();
            int i = (int) (this.f4093a ^ (this.f4093a >>> 32));
            int hashCode2 = this.f4094b == null ? 0 : this.f4094b.hashCode();
            int hashCode3 = this.c == null ? 0 : this.c.hashCode();
            int i2 = 0;
            if (this.r != null) {
                i2 = this.r.c() ? 0 : this.r.hashCode();
            }
            return ((hashCode3 + ((hashCode2 + ((((hashCode + 527) * 31) + i) * 31)) * 31)) * 31) + i2;
        }
    }
}
