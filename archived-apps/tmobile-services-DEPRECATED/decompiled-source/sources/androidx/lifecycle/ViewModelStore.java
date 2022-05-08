package androidx.lifecycle;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:androidx/lifecycle/ViewModelStore.class */
public class ViewModelStore {

    /* renamed from: a */
    private final HashMap<String, ViewModel> f4115a = new HashMap<>();

    /* renamed from: a */
    public final void m18138a() {
        for (ViewModel viewModel : this.f4115a.values()) {
            viewModel.m18149a();
        }
        this.f4115a.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final ViewModel m18137b(String str) {
        return this.f4115a.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public Set<String> m18136c() {
        return new HashSet(this.f4115a.keySet());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public final void m18135d(String str, ViewModel viewModel) {
        ViewModel put = this.f4115a.put(str, viewModel);
        if (put != null) {
            put.mo18118d();
        }
    }
}
