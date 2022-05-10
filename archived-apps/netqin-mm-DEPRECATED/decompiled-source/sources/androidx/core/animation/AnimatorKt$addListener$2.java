package androidx.core.animation;

import android.animation.Animator;
import kotlin.jvm.internal.Lambda;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes-dex2jar.jar:androidx/core/animation/AnimatorKt$addListener$2.class */
public final class AnimatorKt$addListener$2 extends Lambda implements AbstractC10031l<Animator, C9946p> {
    public static final AnimatorKt$addListener$2 INSTANCE = new AnimatorKt$addListener$2();

    public AnimatorKt$addListener$2() {
        super(1);
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ C9946p invoke(Animator animator) {
        invoke2(animator);
        return C9946p.f37137a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Animator animator) {
        C10059q.m1637b(animator, "it");
    }
}
