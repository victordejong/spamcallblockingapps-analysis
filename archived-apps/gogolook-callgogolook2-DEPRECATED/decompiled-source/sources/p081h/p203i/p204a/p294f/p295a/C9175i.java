package p081h.p203i.p204a.p294f.p295a;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* renamed from: h.i.a.f.a.i */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/a/i.class */
public class C9175i {

    /* renamed from: a */
    public long f20893a;

    /* renamed from: b */
    public long f20894b;
    @Nullable

    /* renamed from: c */
    public TimeInterpolator f20895c;

    /* renamed from: d */
    public int f20896d;

    /* renamed from: e */
    public int f20897e;

    public C9175i(long j, long j2) {
        this.f20893a = 0L;
        this.f20894b = 300L;
        this.f20895c = null;
        this.f20896d = 0;
        this.f20897e = 1;
        this.f20893a = j;
        this.f20894b = j2;
    }

    public C9175i(long j, long j2, @NonNull TimeInterpolator timeInterpolator) {
        this.f20893a = 0L;
        this.f20894b = 300L;
        this.f20895c = null;
        this.f20896d = 0;
        this.f20897e = 1;
        this.f20893a = j;
        this.f20894b = j2;
        this.f20895c = timeInterpolator;
    }

    /* renamed from: a */
    public static C9175i m15952a(ValueAnimator valueAnimator) {
        C9175i iVar = new C9175i(valueAnimator.getStartDelay(), valueAnimator.getDuration(), m15950b(valueAnimator));
        iVar.f20896d = valueAnimator.getRepeatCount();
        iVar.f20897e = valueAnimator.getRepeatMode();
        return iVar;
    }

    /* renamed from: b */
    public static TimeInterpolator m15950b(ValueAnimator valueAnimator) {
        TimeInterpolator interpolator = valueAnimator.getInterpolator();
        if ((interpolator instanceof AccelerateDecelerateInterpolator) || interpolator == null) {
            return C9167a.f20880b;
        }
        if (interpolator instanceof AccelerateInterpolator) {
            return C9167a.f20881c;
        }
        TimeInterpolator timeInterpolator = interpolator;
        if (interpolator instanceof DecelerateInterpolator) {
            timeInterpolator = C9167a.f20882d;
        }
        return timeInterpolator;
    }

    /* renamed from: a */
    public long m15954a() {
        return this.f20893a;
    }

    /* renamed from: a */
    public void m15953a(Animator animator) {
        animator.setStartDelay(m15954a());
        animator.setDuration(m15951b());
        animator.setInterpolator(m15949c());
        if (animator instanceof ValueAnimator) {
            ValueAnimator valueAnimator = (ValueAnimator) animator;
            valueAnimator.setRepeatCount(m15948d());
            valueAnimator.setRepeatMode(m15947e());
        }
    }

    /* renamed from: b */
    public long m15951b() {
        return this.f20894b;
    }

    /* renamed from: c */
    public TimeInterpolator m15949c() {
        TimeInterpolator timeInterpolator = this.f20895c;
        if (timeInterpolator == null) {
            timeInterpolator = C9167a.f20880b;
        }
        return timeInterpolator;
    }

    /* renamed from: d */
    public int m15948d() {
        return this.f20896d;
    }

    /* renamed from: e */
    public int m15947e() {
        return this.f20897e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C9175i.class != obj.getClass()) {
            return false;
        }
        C9175i iVar = (C9175i) obj;
        if (m15954a() == iVar.m15954a() && m15951b() == iVar.m15951b() && m15948d() == iVar.m15948d() && m15947e() == iVar.m15947e()) {
            return m15949c().getClass().equals(iVar.m15949c().getClass());
        }
        return false;
    }

    public int hashCode() {
        return (((((((((int) (m15954a() ^ (m15954a() >>> 32))) * 31) + ((int) (m15951b() ^ (m15951b() >>> 32)))) * 31) + m15949c().getClass().hashCode()) * 31) + m15948d()) * 31) + m15947e();
    }

    public String toString() {
        return '\n' + C9175i.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " delay: " + m15954a() + " duration: " + m15951b() + " interpolator: " + m15949c().getClass() + " repeatCount: " + m15948d() + " repeatMode: " + m15947e() + "}\n";
    }
}
