package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.tasks.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/y.class */
public final class C2912y implements Continuation<Void, Task<List<Task<?>>>> {

    /* renamed from: a */
    private final /* synthetic */ Collection f17430a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2912y(Collection collection) {
        this.f17430a = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Task<List<Task<?>>> then(Task<Void> task) {
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(this.f17430a);
        return Tasks.forResult(arrayList);
    }
}
