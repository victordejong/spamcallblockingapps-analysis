package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import androidx.annotation.ColorInt;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.material.circularreveal.CircularRevealHelper;
import com.google.android.material.math.MathUtils;
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealWidget.class */
public interface CircularRevealWidget extends CircularRevealHelper.Delegate {

    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealWidget$CircularRevealEvaluator.class */
    public static class CircularRevealEvaluator implements TypeEvaluator<RevealInfo> {

        /* renamed from: b */
        public static final TypeEvaluator<RevealInfo> f10480b = new CircularRevealEvaluator();

        /* renamed from: a */
        private final RevealInfo f10481a = new RevealInfo();

        @NonNull
        /* renamed from: a */
        public RevealInfo evaluate(float f, @NonNull RevealInfo revealInfo, @NonNull RevealInfo revealInfo2) {
            this.f10481a.m10022b(MathUtils.m9418d(revealInfo.f10484a, revealInfo2.f10484a, f), MathUtils.m9418d(revealInfo.f10485b, revealInfo2.f10485b, f), MathUtils.m9418d(revealInfo.f10486c, revealInfo2.f10486c, f));
            return this.f10481a;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealWidget$CircularRevealProperty.class */
    public static class CircularRevealProperty extends Property<CircularRevealWidget, RevealInfo> {

        /* renamed from: a */
        public static final Property<CircularRevealWidget, RevealInfo> f10482a = new CircularRevealProperty("circularReveal");

        private CircularRevealProperty(String str) {
            super(RevealInfo.class, str);
        }

        @Nullable
        /* renamed from: a */
        public RevealInfo get(@NonNull CircularRevealWidget circularRevealWidget) {
            return circularRevealWidget.getRevealInfo();
        }

        /* renamed from: b */
        public void set(@NonNull CircularRevealWidget circularRevealWidget, @Nullable RevealInfo revealInfo) {
            circularRevealWidget.setRevealInfo(revealInfo);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealWidget$CircularRevealScrimColorProperty.class */
    public static class CircularRevealScrimColorProperty extends Property<CircularRevealWidget, Integer> {

        /* renamed from: a */
        public static final Property<CircularRevealWidget, Integer> f10483a = new CircularRevealScrimColorProperty("circularRevealScrimColor");

        private CircularRevealScrimColorProperty(String str) {
            super(Integer.class, str);
        }

        @NonNull
        /* renamed from: a */
        public Integer get(@NonNull CircularRevealWidget circularRevealWidget) {
            return Integer.valueOf(circularRevealWidget.getCircularRevealScrimColor());
        }

        /* renamed from: b */
        public void set(@NonNull CircularRevealWidget circularRevealWidget, @NonNull Integer num) {
            circularRevealWidget.setCircularRevealScrimColor(num.intValue());
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/CircularRevealWidget$RevealInfo.class */
    public static class RevealInfo {

        /* renamed from: a */
        public float f10484a;

        /* renamed from: b */
        public float f10485b;

        /* renamed from: c */
        public float f10486c;

        private RevealInfo() {
        }

        public RevealInfo(float f, float f2, float f3) {
            this.f10484a = f;
            this.f10485b = f2;
            this.f10486c = f3;
        }

        public RevealInfo(@NonNull RevealInfo revealInfo) {
            this(revealInfo.f10484a, revealInfo.f10485b, revealInfo.f10486c);
        }

        /* renamed from: a */
        public boolean m10023a() {
            return this.f10486c == Float.MAX_VALUE;
        }

        /* renamed from: b */
        public void m10022b(float f, float f2, float f3) {
            this.f10484a = f;
            this.f10485b = f2;
            this.f10486c = f3;
        }

        /* renamed from: c */
        public void m10021c(@NonNull RevealInfo revealInfo) {
            m10022b(revealInfo.f10484a, revealInfo.f10485b, revealInfo.f10486c);
        }
    }

    @ColorInt
    int getCircularRevealScrimColor();

    @Nullable
    RevealInfo getRevealInfo();

    /* renamed from: h */
    void mo10020h();

    /* renamed from: o */
    void mo10019o();

    void setCircularRevealOverlayDrawable(@Nullable Drawable drawable);

    void setCircularRevealScrimColor(@ColorInt int i);

    void setRevealInfo(@Nullable RevealInfo revealInfo);
}
