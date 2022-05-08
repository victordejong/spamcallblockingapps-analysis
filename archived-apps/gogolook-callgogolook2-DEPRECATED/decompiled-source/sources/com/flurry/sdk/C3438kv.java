package com.flurry.sdk;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.kv */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kv.class */
public class C3438kv {

    /* renamed from: a */
    public Map<String, Object> f5911a = new HashMap();

    /* renamed from: b */
    public Map<String, List<AbstractC3439a>> f5912b = new HashMap();

    /* renamed from: com.flurry.sdk.kv$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/kv$a.class */
    public interface AbstractC3439a {
        /* renamed from: a */
        void mo32423a(String str, Object obj);
    }

    /* renamed from: a */
    public final Object m32493a(String str) {
        Object obj;
        synchronized (this) {
            obj = this.f5911a.get(str);
        }
        return obj;
    }

    /* renamed from: a */
    public final void m32492a(String str, AbstractC3439a aVar) {
        synchronized (this) {
            if (!TextUtils.isEmpty(str)) {
                if (aVar != null) {
                    List<AbstractC3439a> list = this.f5912b.get(str);
                    List<AbstractC3439a> list2 = list;
                    if (list == null) {
                        list2 = new LinkedList<>();
                    }
                    list2.add(aVar);
                    this.f5912b.put(str, list2);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m32491a(java.lang.String r5, java.lang.Object r6) {
        /*
            r4 = this;
            r0 = r4
            monitor-enter(r0)
            r0 = r5
            boolean r0 = android.text.TextUtils.isEmpty(r0)     // Catch: all -> 0x009e
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x000e
            r0 = r4
            monitor-exit(r0)
            return
        L_0x000e:
            r0 = r4
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f5911a     // Catch: all -> 0x009e
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x009e
            r8 = r0
            r0 = r6
            r1 = r8
            if (r0 == r1) goto L_0x0036
            r0 = r6
            if (r0 == 0) goto L_0x0030
            r0 = r6
            r1 = r8
            boolean r0 = r0.equals(r1)     // Catch: all -> 0x009e
            if (r0 == 0) goto L_0x0030
            goto L_0x0036
        L_0x0030:
            r0 = 0
            r9 = r0
            goto L_0x0039
        L_0x0036:
            r0 = 1
            r9 = r0
        L_0x0039:
            r0 = r9
            if (r0 != 0) goto L_0x009b
            r0 = r6
            if (r0 != 0) goto L_0x0050
            r0 = r4
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f5911a     // Catch: all -> 0x009e
            r1 = r5
            java.lang.Object r0 = r0.remove(r1)     // Catch: all -> 0x009e
            goto L_0x005c
        L_0x0050:
            r0 = r4
            java.util.Map<java.lang.String, java.lang.Object> r0 = r0.f5911a     // Catch: all -> 0x009e
            r1 = r5
            r2 = r6
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: all -> 0x009e
        L_0x005c:
            r0 = r4
            java.util.Map<java.lang.String, java.util.List<com.flurry.sdk.kv$a>> r0 = r0.f5912b     // Catch: all -> 0x009e
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x009e
            if (r0 == 0) goto L_0x009b
            r0 = r4
            java.util.Map<java.lang.String, java.util.List<com.flurry.sdk.kv$a>> r0 = r0.f5912b     // Catch: all -> 0x009e
            r1 = r5
            java.lang.Object r0 = r0.get(r1)     // Catch: all -> 0x009e
            java.util.List r0 = (java.util.List) r0     // Catch: all -> 0x009e
            java.util.Iterator r0 = r0.iterator()     // Catch: all -> 0x009e
            r8 = r0
        L_0x007d:
            r0 = r8
            boolean r0 = r0.hasNext()     // Catch: all -> 0x009e
            if (r0 == 0) goto L_0x009b
            r0 = r8
            java.lang.Object r0 = r0.next()     // Catch: all -> 0x009e
            com.flurry.sdk.kv$a r0 = (com.flurry.sdk.C3438kv.AbstractC3439a) r0     // Catch: all -> 0x009e
            r1 = r5
            r2 = r6
            r0.mo32423a(r1, r2)     // Catch: all -> 0x009e
            goto L_0x007d
        L_0x009b:
            r0 = r4
            monitor-exit(r0)
            return
        L_0x009e:
            r5 = move-exception
            r0 = r4
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C3438kv.m32491a(java.lang.String, java.lang.Object):void");
    }

    /* renamed from: b */
    public final boolean m32490b(String str, AbstractC3439a aVar) {
        synchronized (this) {
            if (TextUtils.isEmpty(str)) {
                return false;
            }
            if (aVar == null) {
                return false;
            }
            List<AbstractC3439a> list = this.f5912b.get(str);
            if (list == null) {
                return false;
            }
            return list.remove(aVar);
        }
    }
}
