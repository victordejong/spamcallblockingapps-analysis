package androidx.lifecycle;

import androidx.annotation.NonNull;
import androidx.lifecycle.Lifecycle;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/SingleGeneratedAdapterObserver.class */
public class SingleGeneratedAdapterObserver implements LifecycleEventObserver {

    /* renamed from: f */
    private final GeneratedAdapter f4099f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingleGeneratedAdapterObserver(GeneratedAdapter generatedAdapter) {
        this.f4099f = generatedAdapter;
    }

    @Override // androidx.lifecycle.LifecycleEventObserver
    /* renamed from: c */
    public void mo16457c(@NonNull LifecycleOwner lifecycleOwner, @NonNull Lifecycle.Event event) {
        this.f4099f.m18240a(lifecycleOwner, event, false, null);
        this.f4099f.m18240a(lifecycleOwner, event, true, null);
    }
}
