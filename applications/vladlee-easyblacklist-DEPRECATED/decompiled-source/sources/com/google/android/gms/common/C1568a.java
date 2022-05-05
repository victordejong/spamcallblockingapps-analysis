package com.google.android.gms.common;

import com.google.android.gms.common.api.internal.ApiKey;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Map;
/* renamed from: com.google.android.gms.common.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/a.class */
final class C1568a implements Continuation<Map<ApiKey<?>, String>, Void> {
    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Void then(Task<Map<ApiKey<?>, String>> task) {
        task.getResult();
        return null;
    }
}
