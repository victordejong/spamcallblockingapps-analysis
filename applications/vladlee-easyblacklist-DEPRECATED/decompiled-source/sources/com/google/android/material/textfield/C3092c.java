package com.google.android.material.textfield;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.widget.TextView;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.material.textfield.c */
/* loaded from: classes-dex2jar.jar:com/google/android/material/textfield/c.class */
public final class C3092c extends AnimatorListenerAdapter {

    /* renamed from: a */
    final /* synthetic */ int f18713a;

    /* renamed from: b */
    final /* synthetic */ TextView f18714b;

    /* renamed from: c */
    final /* synthetic */ int f18715c;

    /* renamed from: d */
    final /* synthetic */ TextView f18716d;

    /* renamed from: e */
    final /* synthetic */ C3091b f18717e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3092c(C3091b bVar, int i, TextView textView, int i2, TextView textView2) {
        this.f18717e = bVar;
        this.f18713a = i;
        this.f18714b = textView;
        this.f18715c = i2;
        this.f18716d = textView2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        TextView textView;
        TextView textView2;
        this.f18717e.f18702i = this.f18713a;
        this.f18717e.f18700g = null;
        TextView textView3 = this.f18714b;
        if (textView3 != null) {
            textView3.setVisibility(4);
            if (this.f18715c == 1) {
                textView = this.f18717e.f18706m;
                if (textView != null) {
                    textView2 = this.f18717e.f18706m;
                    textView2.setText((CharSequence) null);
                }
            }
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        TextView textView = this.f18716d;
        if (textView != null) {
            textView.setVisibility(0);
        }
    }
}
