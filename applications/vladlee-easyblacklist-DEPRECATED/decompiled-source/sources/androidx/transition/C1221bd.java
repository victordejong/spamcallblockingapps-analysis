package androidx.transition;
/* renamed from: androidx.transition.bd */
/* loaded from: classes-dex2jar.jar:androidx/transition/bd.class */
final class C1221bd extends C1215az {

    /* renamed from: a */
    final /* synthetic */ Transition f5237a;

    /* renamed from: b */
    final /* synthetic */ TransitionSet f5238b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1221bd(TransitionSet transitionSet, Transition transition) {
        this.f5238b = transitionSet;
        this.f5237a = transition;
    }

    @Override // androidx.transition.C1215az, androidx.transition.Transition.AbstractC1183c
    /* renamed from: a */
    public final void mo6478a(Transition transition) {
        this.f5237a.mo6575d();
        transition.mo6579b(this);
    }
}
