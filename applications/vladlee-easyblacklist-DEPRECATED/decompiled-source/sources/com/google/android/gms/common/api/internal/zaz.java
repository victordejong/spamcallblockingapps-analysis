package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zaz.class */
public final class zaz {

    /* renamed from: a */
    private final Map<BasePendingResult<?>, Boolean> f6570a = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: b */
    private final Map<TaskCompletionSource<?>, Boolean> f6571b = Collections.synchronizedMap(new WeakHashMap());

    /* renamed from: a */
    private final void m5779a(boolean z, Status status) {
        HashMap hashMap;
        HashMap hashMap2;
        synchronized (this.f6570a) {
            hashMap = new HashMap(this.f6570a);
        }
        synchronized (this.f6571b) {
            hashMap2 = new HashMap(this.f6571b);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            if (z || ((Boolean) entry.getValue()).booleanValue()) {
                ((BasePendingResult) entry.getKey()).zab(status);
            }
        }
        for (Map.Entry entry2 : hashMap2.entrySet()) {
            if (z || ((Boolean) entry2.getValue()).booleanValue()) {
                ((TaskCompletionSource) entry2.getKey()).trySetException(new ApiException(status));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m5782a(BasePendingResult<? extends Result> basePendingResult, boolean z) {
        this.f6570a.put(basePendingResult, Boolean.valueOf(z));
        basePendingResult.addStatusListener(new C1610c(this, basePendingResult));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final <TResult> void m5780a(TaskCompletionSource<TResult> taskCompletionSource, boolean z) {
        this.f6571b.put(taskCompletionSource, Boolean.valueOf(z));
        taskCompletionSource.getTask().addOnCompleteListener(new C1604b(this, taskCompletionSource));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m5783a() {
        return !this.f6570a.isEmpty() || !this.f6571b.isEmpty();
    }

    public final void zaaf() {
        m5779a(false, GoogleApiManager.zaib);
    }

    public final void zaag() {
        m5779a(true, zacp.zalb);
    }
}
