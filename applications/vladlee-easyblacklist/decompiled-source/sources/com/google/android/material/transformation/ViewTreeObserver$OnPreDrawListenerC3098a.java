package com.google.android.material.transformation;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.material.p062c.AbstractC2972b;
/* renamed from: com.google.android.material.transformation.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/transformation/a.class */
final class ViewTreeObserver$OnPreDrawListenerC3098a implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    final /* synthetic */ View f18732a;

    /* renamed from: b */
    final /* synthetic */ int f18733b;

    /* renamed from: c */
    final /* synthetic */ AbstractC2972b f18734c;

    /* renamed from: d */
    final /* synthetic */ ExpandableBehavior f18735d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ViewTreeObserver$OnPreDrawListenerC3098a(ExpandableBehavior expandableBehavior, View view, int i, AbstractC2972b bVar) {
        this.f18735d = expandableBehavior;
        this.f18732a = view;
        this.f18733b = i;
        this.f18734c = bVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public final boolean onPreDraw() {
        int i;
        this.f18732a.getViewTreeObserver().removeOnPreDrawListener(this);
        i = this.f18735d.f18721a;
        if (i != this.f18733b) {
            return false;
        }
        ExpandableBehavior expandableBehavior = this.f18735d;
        AbstractC2972b bVar = this.f18734c;
        expandableBehavior.mo751a((View) bVar, this.f18732a, bVar.mo1156e(), false);
        return false;
    }
}
