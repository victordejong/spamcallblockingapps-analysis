package androidx.transition;

import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/transition/Scene.class */
public class Scene {

    /* renamed from: a */
    private ViewGroup f5186a;

    /* renamed from: b */
    private Runnable f5187b;

    @Nullable
    /* renamed from: b */
    public static Scene m16798b(@NonNull ViewGroup viewGroup) {
        return (Scene) viewGroup.getTag(C0542R.C0545id.transition_current_scene);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static void m16797c(@NonNull ViewGroup viewGroup, @Nullable Scene scene) {
        viewGroup.setTag(C0542R.C0545id.transition_current_scene, scene);
    }

    /* renamed from: a */
    public void m16799a() {
        Runnable runnable;
        if (m16798b(this.f5186a) == this && (runnable = this.f5187b) != null) {
            runnable.run();
        }
    }
}
