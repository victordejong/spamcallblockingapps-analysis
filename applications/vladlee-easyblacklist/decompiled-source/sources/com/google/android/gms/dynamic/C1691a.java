package com.google.android.gms.dynamic;

import com.google.android.gms.dynamic.DeferredLifecycleHelper;
import java.util.Iterator;
import java.util.LinkedList;
/* renamed from: com.google.android.gms.dynamic.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a.class */
final class C1691a implements OnDelegateCreatedListener<T> {

    /* renamed from: a */
    private final /* synthetic */ DeferredLifecycleHelper f7032a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1691a(DeferredLifecycleHelper deferredLifecycleHelper) {
        this.f7032a = deferredLifecycleHelper;
    }

    /* JADX WARN: Incorrect types in method signature: (TT;)V */
    @Override // com.google.android.gms.dynamic.OnDelegateCreatedListener
    public final void onDelegateCreated(LifecycleDelegate lifecycleDelegate) {
        LinkedList linkedList;
        LinkedList linkedList2;
        LifecycleDelegate unused;
        this.f7032a.f7023a = lifecycleDelegate;
        linkedList = this.f7032a.f7025c;
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            DeferredLifecycleHelper.AbstractC1690a aVar = (DeferredLifecycleHelper.AbstractC1690a) it.next();
            unused = this.f7032a.f7023a;
            aVar.mo5540b();
        }
        linkedList2 = this.f7032a.f7025c;
        linkedList2.clear();
        this.f7032a.f7024b = null;
    }
}
