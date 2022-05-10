package androidx.core.transition;

import android.transition.Transition;
import kotlin.jvm.internal.Lambda;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p592c.C10059q;
/* loaded from: classes-dex2jar.jar:androidx/core/transition/TransitionKt$addListener$4.class */
public final class TransitionKt$addListener$4 extends Lambda implements AbstractC10031l<Transition, C9946p> {
    public static final TransitionKt$addListener$4 INSTANCE = new TransitionKt$addListener$4();

    public TransitionKt$addListener$4() {
        super(1);
    }

    @Override // p573f.p590w.p591b.AbstractC10031l
    public /* bridge */ /* synthetic */ C9946p invoke(Transition transition) {
        invoke2(transition);
        return C9946p.f37137a;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(Transition transition) {
        C10059q.m1637b(transition, "it");
    }
}
