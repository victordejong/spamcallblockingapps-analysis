package com.google.android.gms.common.api.internal;

import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.common.api.internal.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/b.class */
public final class C1604b implements OnCompleteListener<TResult> {

    /* renamed from: a */
    private final /* synthetic */ TaskCompletionSource f6379a;

    /* renamed from: b */
    private final /* synthetic */ zaz f6380b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1604b(zaz zazVar, TaskCompletionSource taskCompletionSource) {
        this.f6380b = zazVar;
        this.f6379a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<TResult> task) {
        Map map;
        map = this.f6380b.f6571b;
        map.remove(this.f6379a);
    }
}
