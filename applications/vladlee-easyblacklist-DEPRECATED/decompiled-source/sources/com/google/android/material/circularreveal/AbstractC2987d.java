package com.google.android.material.circularreveal;

import android.animation.TypeEvaluator;
import android.graphics.drawable.Drawable;
import android.util.Property;
import com.google.android.material.circularreveal.C2985c;
import com.google.android.material.p063d.C2992a;
/* renamed from: com.google.android.material.circularreveal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/d.class */
public interface AbstractC2987d extends C2985c.AbstractC2986a {

    /* renamed from: com.google.android.material.circularreveal.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/d$a.class */
    public static final class C2988a implements TypeEvaluator<C2991d> {

        /* renamed from: a */
        public static final TypeEvaluator<C2991d> f18186a = new C2988a();

        /* renamed from: b */
        private final C2991d f18187b = new C2991d((byte) 0);

        @Override // android.animation.TypeEvaluator
        public final /* synthetic */ C2991d evaluate(float f, C2991d dVar, C2991d dVar2) {
            C2991d dVar3 = dVar;
            C2991d dVar4 = dVar2;
            this.f18187b.m1199a(C2992a.m1198a(dVar3.f18190a, dVar4.f18190a, f), C2992a.m1198a(dVar3.f18191b, dVar4.f18191b, f), C2992a.m1198a(dVar3.f18192c, dVar4.f18192c, f));
            return this.f18187b;
        }
    }

    /* renamed from: com.google.android.material.circularreveal.d$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/d$b.class */
    public static final class C2989b extends Property<AbstractC2987d, C2991d> {

        /* renamed from: a */
        public static final Property<AbstractC2987d, C2991d> f18188a = new C2989b("circularReveal");

        private C2989b(String str) {
            super(C2991d.class, str);
        }

        @Override // android.util.Property
        public final /* synthetic */ C2991d get(AbstractC2987d dVar) {
            return dVar.mo1201l_();
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(AbstractC2987d dVar, C2991d dVar2) {
            dVar.mo1205a(dVar2);
        }
    }

    /* renamed from: com.google.android.material.circularreveal.d$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/d$c.class */
    public static final class C2990c extends Property<AbstractC2987d, Integer> {

        /* renamed from: a */
        public static final Property<AbstractC2987d, Integer> f18189a = new C2990c("circularRevealScrimColor");

        private C2990c(String str) {
            super(Integer.class, str);
        }

        @Override // android.util.Property
        public final /* synthetic */ Integer get(AbstractC2987d dVar) {
            return Integer.valueOf(dVar.mo1202d());
        }

        @Override // android.util.Property
        public final /* synthetic */ void set(AbstractC2987d dVar, Integer num) {
            dVar.mo1204a_(num.intValue());
        }
    }

    /* renamed from: com.google.android.material.circularreveal.d$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/circularreveal/d$d.class */
    public static class C2991d {

        /* renamed from: a */
        public float f18190a;

        /* renamed from: b */
        public float f18191b;

        /* renamed from: c */
        public float f18192c;

        private C2991d() {
        }

        /* synthetic */ C2991d(byte b) {
            this();
        }

        public C2991d(float f, float f2, float f3) {
            this.f18190a = f;
            this.f18191b = f2;
            this.f18192c = f3;
        }

        public C2991d(C2991d dVar) {
            this(dVar.f18190a, dVar.f18191b, dVar.f18192c);
        }

        /* renamed from: a */
        public final void m1199a(float f, float f2, float f3) {
            this.f18190a = f;
            this.f18191b = f2;
            this.f18192c = f3;
        }

        /* renamed from: a */
        public final boolean m1200a() {
            return this.f18192c == Float.MAX_VALUE;
        }
    }

    /* renamed from: a */
    void mo1207a();

    /* renamed from: a */
    void mo1206a(Drawable drawable);

    /* renamed from: a */
    void mo1205a(C2991d dVar);

    /* renamed from: a_ */
    void mo1204a_(int i);

    /* renamed from: b */
    void mo1203b();

    /* renamed from: d */
    int mo1202d();

    /* renamed from: l_ */
    C2991d mo1201l_();
}
