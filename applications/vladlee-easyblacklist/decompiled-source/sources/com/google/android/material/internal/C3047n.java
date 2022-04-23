package com.google.android.material.internal;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.util.StateSet;
import java.util.ArrayList;
/* renamed from: com.google.android.material.internal.n */
/* loaded from: classes-dex2jar.jar:com/google/android/material/internal/n.class */
public final class C3047n {

    /* renamed from: b */
    private final ArrayList<C3048a> f18485b = new ArrayList<>();

    /* renamed from: c */
    private C3048a f18486c = null;

    /* renamed from: a */
    ValueAnimator f18484a = null;

    /* renamed from: d */
    private final Animator.AnimatorListener f18487d = new C3049o(this);

    /* renamed from: com.google.android.material.internal.n$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/internal/n$a.class */
    static final class C3048a {

        /* renamed from: a */
        final int[] f18488a;

        /* renamed from: b */
        final ValueAnimator f18489b;

        C3048a(int[] iArr, ValueAnimator valueAnimator) {
            this.f18488a = iArr;
            this.f18489b = valueAnimator;
        }
    }

    /* renamed from: a */
    public final void m970a() {
        ValueAnimator valueAnimator = this.f18484a;
        if (valueAnimator != null) {
            valueAnimator.end();
            this.f18484a = null;
        }
    }

    /* renamed from: a */
    public final void m969a(int[] iArr) {
        C3048a aVar;
        ValueAnimator valueAnimator;
        int size = this.f18485b.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                aVar = null;
                break;
            }
            C3048a aVar2 = this.f18485b.get(i);
            if (StateSet.stateSetMatches(aVar2.f18488a, iArr)) {
                aVar = aVar2;
                break;
            }
            i++;
        }
        C3048a aVar3 = this.f18486c;
        if (aVar != aVar3) {
            if (!(aVar3 == null || (valueAnimator = this.f18484a) == null)) {
                valueAnimator.cancel();
                this.f18484a = null;
            }
            this.f18486c = aVar;
            if (aVar != null) {
                this.f18484a = aVar.f18489b;
                this.f18484a.start();
            }
        }
    }

    /* renamed from: a */
    public final void m968a(int[] iArr, ValueAnimator valueAnimator) {
        C3048a aVar = new C3048a(iArr, valueAnimator);
        valueAnimator.addListener(this.f18487d);
        this.f18485b.add(aVar);
    }
}
