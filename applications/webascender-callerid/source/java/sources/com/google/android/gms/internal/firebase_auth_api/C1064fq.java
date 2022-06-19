package com.google.android.gms.internal.firebase_auth_api;

import com.google.android.gms.internal.firebase-auth-api.fq;
import com.google.android.gms.internal.firebase_auth_api.AbstractC1050eq;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.firebase_auth_api.fq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_auth_api/fq.class */
final class C1064fq<T extends AbstractC1050eq<T>> {

    /* renamed from: d */
    private static final fq f3705d = new C1064fq(true);

    /* renamed from: a */
    final C1026c1<T, Object> f3706a = new u0(16);

    /* renamed from: b */
    private boolean f3707b;

    /* renamed from: c */
    private boolean f3708c;

    private C1064fq() {
    }

    private C1064fq(boolean z) {
        m2865b();
        m2865b();
    }

    /* renamed from: a */
    public static <T extends AbstractC1050eq<T>> C1064fq<T> m2866a() {
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static final void m2863d(T r8, java.lang.Object r9) {
        /*
            r0 = r8
            com.google.android.gms.internal.firebase-auth-api.x1 r0 = r0.m2939a()
            r10 = r0
            r0 = r9
            java.lang.Object r0 = com.google.android.gms.internal.firebase_auth_api.C1117k.m2787a(r0)
            com.google.android.gms.internal.firebase-auth-api.x1 r0 = com.google.android.gms.internal.firebase_auth_api.EnumC1247x1.zza
            r11 = r0
            com.google.android.gms.internal.firebase-auth-api.y1 r0 = com.google.android.gms.internal.firebase_auth_api.EnumC1259y1.zza
            r11 = r0
            r0 = r10
            com.google.android.gms.internal.firebase-auth-api.y1 r0 = r0.zza()
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
            boolean r0 = r0 instanceof com.google.android.gms.internal.firebase_auth_api.f0
            if (r0 != 0) goto Lb3
            goto Lb4
        L59:
            r0 = r9
            boolean r0 = r0 instanceof java.lang.Integer
            if (r0 != 0) goto Lb3
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.firebase_auth_api.AbstractC1065g
            if (r0 == 0) goto Lb4
            goto Lb3
        L6a:
            r0 = r9
            boolean r0 = r0 instanceof com.google.android.gms.internal.firebase_auth_api.AbstractC1151mp
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
            com.google.android.gms.internal.firebase-auth-api.x1 r6 = r6.m2939a()
            com.google.android.gms.internal.firebase-auth-api.y1 r6 = r6.zza()
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth_api.C1064fq.m2863d(com.google.android.gms.internal.firebase-auth-api.eq, java.lang.Object):void");
    }

    /* renamed from: b */
    public final void m2865b() {
        if (this.f3707b) {
            return;
        }
        this.f3706a.m2977a();
        this.f3707b = true;
    }

    /* renamed from: c */
    public final void m2864c(T t, Object obj) {
        if (!t.m2938b()) {
            m2863d(t, obj);
        } else if (!(obj instanceof List)) {
            throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
        } else {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                m2863d(t, arrayList.get(i));
            }
            obj = arrayList;
        }
        this.f3706a.put(t, obj);
    }

    public final /* bridge */ /* synthetic */ Object clone() throws CloneNotSupportedException {
        C1064fq c1064fq = new C1064fq();
        for (int i = 0; i < this.f3706a.m2975c(); i++) {
            Map.Entry<T, Object> m2974e = this.f3706a.m2974e(i);
            c1064fq.m2864c(m2974e.getKey(), m2974e.getValue());
        }
        for (Map.Entry<T, Object> entry : this.f3706a.m2973f()) {
            c1064fq.m2864c(entry.getKey(), entry.getValue());
        }
        c1064fq.f3708c = this.f3708c;
        return c1064fq;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C1064fq) {
            return this.f3706a.equals(((C1064fq) obj).f3706a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3706a.hashCode();
    }
}
