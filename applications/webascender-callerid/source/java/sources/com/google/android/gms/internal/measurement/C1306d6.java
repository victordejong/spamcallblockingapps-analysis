package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.AbstractC1300c6;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.d6 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/d6.class */
final class C1306d6<T extends AbstractC1300c6<T>> {

    /* renamed from: d */
    private static final C1306d6 f3896d = new C1306d6(true);

    /* renamed from: a */
    final C1345k8<T, Object> f3897a = new d8(16);

    /* renamed from: b */
    private boolean f3898b;

    /* renamed from: c */
    private boolean f3899c;

    private C1306d6() {
    }

    private C1306d6(boolean z) {
        m2154b();
        m2154b();
    }

    /* renamed from: a */
    public static <T extends AbstractC1300c6<T>> C1306d6<T> m2155a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m2152d(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.measurement.g9 r0 = r0.m2215a()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.measurement.C1396u6.m1908a(r0)
            com.google.android.gms.internal.measurement.g9 r0 = com.google.android.gms.internal.measurement.EnumC1321g9.DOUBLE
            r11 = r0
            com.google.android.gms.internal.measurement.h9 r0 = com.google.android.gms.internal.measurement.EnumC1328h9.INT
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.measurement.h9 r0 = r0.zza()
            int r0 = r0.ordinal()
            switch(r0) {
                case 0: goto La8;
                case 1: goto L9f;
                case 2: goto L96;
                case 3: goto L8d;
                case 4: goto L84;
                case 5: goto L7b;
                case 6: goto L6a;
                case 7: goto L59;
                case 8: goto L4f;
                default: goto L4c;
            }
        L4c:
            goto Lb4
        L4f:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.o7
            if (r0 != 0) goto Lb3
            goto Lb4
        L59:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC1359n6
            if (r0 == 0) goto Lb4
            goto Lb3
        L6a:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.measurement.AbstractC1351m5
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof byte[]
            if (r0 == 0) goto Lb4
            goto Lb3
        L7b:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.String
            r12 = r0
            goto Lae
        L84:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Boolean
            r12 = r0
            goto Lae
        L8d:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Double
            r12 = r0
            goto Lae
        L96:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Float
            r12 = r0
            goto Lae
        L9f:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Long
            r12 = r0
            goto Lae
        La8:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            r12 = r0
        Lae:
            r0 = r12
            if (r0 == 0) goto Lb4
        Lb3:
            return
        Lb4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            r1 = r0
            java.lang.String r2 = "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            r6 = r8
            int r6 = r6.zza()
            java.lang.Integer r6 = java.lang.Integer.valueOf(r6)
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r8
            com.google.android.gms.internal.measurement.g9 r6 = r6.m2215a()
            com.google.android.gms.internal.measurement.h9 r6 = r6.zza()
            r4[r5] = r6
            r4 = r3
            r5 = 2
            r6 = r9
            java.lang.Class r6 = r6.getClass()
            java.lang.String r6 = r6.getName()
            r4[r5] = r6
            java.lang.String r2 = java.lang.String.format(r2, r3)
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C1306d6.m2152d(com.google.android.gms.internal.measurement.c6, java.lang.Object):void");
    }

    /* renamed from: b */
    public final void m2154b() {
        if (this.f3898b) {
            return;
        }
        this.f3897a.m2068a();
        this.f3898b = true;
    }

    /* renamed from: c */
    public final void m2153c(T t, Object obj) {
        if (!t.m2214b()) {
            m2152d(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m2152d(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.f3897a.put(t, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        C1306d6 c1306d6 = new C1306d6();
        for (int i = 0; i < this.f3897a.m2066c(); i++) {
            Map.Entry<T, Object> m2065e = this.f3897a.m2065e(i);
            c1306d6.m2153c(m2065e.getKey(), m2065e.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f3897a.m2064f()) {
            c1306d6.m2153c(entry.getKey(), entry.getValue());
        }
        c1306d6.f3899c = this.f3899c;
        return c1306d6;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1306d6) {
            return this.f3897a.equals(((C1306d6) obj).f3897a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3897a.hashCode();
    }
}
