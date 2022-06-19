package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.AbstractC0823i;
import com.google.android.gms.common.api.Status;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.google.android.gms.common.api.internal.z1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/z1.class */
public final class C0882z1 {

    /* renamed from: c */
    public static final Status f3467c = new Status(8, "The connection to Google Play services was lost");

    /* renamed from: a */
    final Set<BasePendingResult<?>> f3468a = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));

    /* renamed from: b */
    private final AbstractC0824a2 f3469b = new y1(this);

    /* renamed from: a */
    public final void m3495a() {
        BasePendingResult[] basePendingResultArr;
        for (BasePendingResult basePendingResult : (BasePendingResult[]) this.f3468a.toArray(new BasePendingResult[0])) {
            basePendingResult.m((AbstractC0824a2) null);
            if (basePendingResult.n()) {
                this.f3468a.remove(basePendingResult);
            }
        }
    }

    /* renamed from: b */
    final void m3494b(BasePendingResult<? extends AbstractC0823i> basePendingResult) {
        this.f3468a.add(basePendingResult);
        basePendingResult.m(this.f3469b);
    }
}
