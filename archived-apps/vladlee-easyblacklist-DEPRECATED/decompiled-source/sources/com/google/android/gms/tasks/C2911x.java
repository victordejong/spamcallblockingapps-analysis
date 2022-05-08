package com.google.android.gms.tasks;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
/* renamed from: com.google.android.gms.tasks.x */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tasks/x.class */
final class C2911x implements Continuation<Void, List<TResult>> {

    /* renamed from: a */
    private final /* synthetic */ Collection f17429a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2911x(Collection collection) {
        this.f17429a = collection;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(Task<Void> task) {
        if (this.f17429a.size() == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (Task task2 : this.f17429a) {
            arrayList.add(task2.getResult());
        }
        return arrayList;
    }
}
