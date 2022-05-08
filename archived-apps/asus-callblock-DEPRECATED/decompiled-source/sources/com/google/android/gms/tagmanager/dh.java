package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.h;
import com.google.android.gms.internal.i;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dh.class */
final class dh extends q {

    /* renamed from: b  reason: collision with root package name */
    private static final String f4385b = h.FUNCTION_CALL.toString();
    private static final String c = i.FUNCTION_CALL_NAME.toString();
    private static final String d = i.ADDITIONAL_PARAMS.toString();
    private final a e;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/dh$a.class */
    public interface a {
        Object a(String str);
    }

    public dh(a aVar) {
        super(f4385b, c);
        this.e = aVar;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(6:2|(2:4|(3:6|7|8)(2:9|(2:12|10)))|16|13|7|8) */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008f, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0090, code lost:
        r0 = java.lang.String.valueOf(r6.getMessage());
        com.google.android.gms.tagmanager.an.b(new java.lang.StringBuilder((java.lang.String.valueOf(r0).length() + 34) + java.lang.String.valueOf(r0).length()).append("Custom macro/tag ").append(r0).append(" threw exception ").append(r0).toString());
        r6 = com.google.android.gms.tagmanager.cn.f();
     */
    @Override // com.google.android.gms.tagmanager.q
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.internal.k.a a(java.util.Map<java.lang.String, com.google.android.gms.internal.k.a> r6) {
        /*
            r5 = this;
            r0 = r6
            java.lang.String r1 = com.google.android.gms.tagmanager.dh.c
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.k$a r0 = (com.google.android.gms.internal.k.a) r0
            java.lang.String r0 = com.google.android.gms.tagmanager.cn.a(r0)
            r7 = r0
            java.util.HashMap r0 = new java.util.HashMap
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r6
            java.lang.String r1 = com.google.android.gms.tagmanager.dh.d
            java.lang.Object r0 = r0.get(r1)
            com.google.android.gms.internal.k$a r0 = (com.google.android.gms.internal.k.a) r0
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x007e
            r0 = r6
            java.lang.Object r0 = com.google.android.gms.tagmanager.cn.e(r0)
            r6 = r0
            r0 = r6
            boolean r0 = r0 instanceof java.util.Map
            if (r0 != 0) goto L_0x0040
            java.lang.String r0 = "FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map."
            com.google.android.gms.tagmanager.an.b(r0)
            com.google.android.gms.internal.k$a r0 = com.google.android.gms.tagmanager.cn.f()
            r6 = r0
        L_0x003e:
            r0 = r6
            return r0
        L_0x0040:
            r0 = r6
            java.util.Map r0 = (java.util.Map) r0
            java.util.Set r0 = r0.entrySet()
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L_0x0050:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x007e
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.util.Map$Entry r0 = (java.util.Map.Entry) r0
            r6 = r0
            r0 = r8
            r1 = r6
            java.lang.Object r1 = r1.getKey()
            java.lang.String r1 = r1.toString()
            r2 = r6
            java.lang.Object r2 = r2.getValue()
            java.lang.Object r0 = r0.put(r1, r2)
            goto L_0x0050
        L_0x007e:
            r0 = r5
            com.google.android.gms.tagmanager.dh$a r0 = r0.e     // Catch: Exception -> 0x008f
            r1 = r7
            java.lang.Object r0 = r0.a(r1)     // Catch: Exception -> 0x008f
            com.google.android.gms.internal.k$a r0 = com.google.android.gms.tagmanager.cn.a(r0)     // Catch: Exception -> 0x008f
            r6 = r0
            goto L_0x003e
        L_0x008f:
            r6 = move-exception
            r0 = r6
            java.lang.String r0 = r0.getMessage()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r7
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 34
            int r2 = r2 + r3
            r3 = r6
            java.lang.String r3 = java.lang.String.valueOf(r3)
            int r3 = r3.length()
            int r2 = r2 + r3
            r1.<init>(r2)
            java.lang.String r1 = "Custom macro/tag "
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r1 = " threw exception "
            java.lang.StringBuilder r0 = r0.append(r1)
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = r0.toString()
            com.google.android.gms.tagmanager.an.b(r0)
            com.google.android.gms.internal.k$a r0 = com.google.android.gms.tagmanager.cn.f()
            r6 = r0
            goto L_0x003e
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.tagmanager.dh.a(java.util.Map):com.google.android.gms.internal.k$a");
    }

    @Override // com.google.android.gms.tagmanager.q
    public final boolean a() {
        return false;
    }
}
