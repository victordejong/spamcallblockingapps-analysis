package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC0823i;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C1647h;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.t2 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/t2.class */
public final class C0873t2 {

    /* renamed from: a */
    private final Map<BasePendingResult<?>, Boolean> f3451a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    private final Map<C1647h<?>, Boolean> f3452b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: e */
    private final void m3501e(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f3451a) {
            hashMap = new HashMap(this.f3451a);
        }
        synchronized (this.f3452b) {
            hashMap2 = new HashMap(this.f3452b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).g(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((C1647h) entry2.getKey()).m1446d(new ApiException(status));
            }
        }
    }

    /* renamed from: b */
    final void m3504b(int i, String str) {
        StringBuilder sb = new StringBuilder("The connection to Google Play services was lost");
        if (i == 1) {
            sb.append(" due to service disconnection.");
        } else if (i == 3) {
            sb.append(" due to dead object exception.");
        }
        if (str != null) {
            sb.append(" Last reason for disconnect: ");
            sb.append(str);
        }
        m3501e(true, new Status(20, sb.toString()));
    }

    /* renamed from: c */
    final void m3503c(BasePendingResult<? extends AbstractC0823i> basePendingResult, boolean z) {
        this.f3451a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.m3650a(new v2(this, basePendingResult));
    }

    /* renamed from: d */
    final <TResult> void m3502d(C1647h<TResult> c1647h, boolean z) {
        this.f3452b.put(c1647h, Boolean.valueOf(z));
        c1647h.m1449a().m1467d(new u2(this, c1647h));
    }

    /* renamed from: f */
    final boolean m3500f() {
        return !this.f3451a.isEmpty() || !this.f3452b.isEmpty();
    }

    /* renamed from: h */
    public final void m3498h() {
        m3501e(false, C0834f.f3381o);
    }
}
