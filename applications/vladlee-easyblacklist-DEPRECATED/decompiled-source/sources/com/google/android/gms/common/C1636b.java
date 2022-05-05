package com.google.android.gms.common;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* renamed from: com.google.android.gms.common.b */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/b.class */
final /* synthetic */ class C1636b implements SuccessContinuation {

    /* renamed from: a */
    static final SuccessContinuation f6582a = new C1636b();

    private C1636b() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        Task forResult;
        forResult = Tasks.forResult(null);
        return forResult;
    }
}
