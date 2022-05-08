package com.google.android.material.p060a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
/* renamed from: com.google.android.material.a.i */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/i.class */
public final class C2933i {

    /* renamed from: a */
    private long f17824a;

    /* renamed from: b */
    private long f17825b;

    /* renamed from: c */
    private TimeInterpolator f17826c;

    /* renamed from: d */
    private int f17827d;

    /* renamed from: e */
    private int f17828e;

    public C2933i(long j) {
        this.f17824a = 0L;
        this.f17825b = 300L;
        this.f17826c = null;
        this.f17827d = 0;
        this.f17828e = 1;
        this.f17824a = j;
        this.f17825b = 150L;
    }

    private C2933i(long j, long j2, TimeInterpolator timeInterpolator) {
        this.f17824a = 0L;
        this.f17825b = 300L;
        this.f17826c = null;
        this.f17827d = 0;
        this.f17828e = 1;
        this.f17824a = j;
        this.f17825b = j2;
        this.f17826c = timeInterpolator;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static C2933i m1536a(ValueAnimator valueAnimator) {
        TimeInterpolator timeInterpolator;
        long startDelay = valueAnimator.getStartDelay();
        long duration = valueAnimator.getDuration();
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            timeInterpolator = C2925a.f17811b;
        } else if (interpolator instanceof AccelerateInterpolator) {
            timeInterpolator = C2925a.f17812c;
        } else {
            timeInterpolator = interpolator;
            if (interpolator instanceof DecelerateInterpolator) {
                timeInterpolator = C2925a.f17813d;
            }
        }
        C2933i iVar = new C2933i(startDelay, duration, timeInterpolator);
        iVar.f17827d = valueAnimator.getRepeatCount();
        iVar.f17828e = valueAnimator.getRepeatMode();
        return iVar;
    }

    /* renamed from: a */
    public final long m1538a() {
        return this.f17824a;
    }

    /* renamed from: a */
    public final void m1537a(Animator animator) {
        animator.setStartDelay(this.f17824a);
        animator.setDuration(this.f17825b);
        animator.setInterpolator(m1534c());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(this.f17827d);
            valueAnimator.setRepeatMode(this.f17828e);
        }
    }

    /* renamed from: b */
    public final long m1535b() {
        return this.f17825b;
    }

    /* renamed from: c */
    public final TimeInterpolator m1534c() {
        TimeInterpolator timeInterpolator = this.f17826c;
        return timeInterpolator != null ? timeInterpolator : C2925a.f17811b;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C2933i iVar = (C2933i) obj;
        if (this.f17824a == iVar.f17824a && this.f17825b == iVar.f17825b && this.f17827d == iVar.f17827d && this.f17828e == iVar.f17828e) {
            return m1534c().getClass().equals(iVar.m1534c().getClass());
        }
        return false;
    }

    public final int hashCode() {
        long j = this.f17824a;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.f17825b;
        return (((((((i * 31) + ((int) ((j2 >>> 32) ^ j2))) * 31) + m1534c().getClass().hashCode()) * 31) + this.f17827d) * 31) + this.f17828e;
    }

    public final String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + this.f17824a + " duration: " + this.f17825b + " interpolator: " + m1534c().getClass() + " repeatCount: " + this.f17827d + " repeatMode: " + this.f17828e + "}\n";
    }
}
