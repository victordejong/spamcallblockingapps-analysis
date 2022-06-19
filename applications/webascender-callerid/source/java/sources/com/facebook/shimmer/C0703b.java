package com.facebook.shimmer;

import android.content.res.TypedArray;
import android.graphics.RectF;
/* renamed from: com.facebook.shimmer.b */
/* loaded from: classes-dex2jar.jar:com/facebook/shimmer/b.class */
public class C0703b {

    /* renamed from: a */
    final float[] f3144a = new float[4];

    /* renamed from: b */
    final int[] f3145b = new int[4];

    /* renamed from: c */
    int f3146c = 0;

    /* renamed from: d */
    int f3147d = -1;

    /* renamed from: e */
    int f3148e = 1291845631;

    /* renamed from: f */
    int f3149f = 0;

    /* renamed from: g */
    int f3150g = 0;

    /* renamed from: h */
    int f3151h = 0;

    /* renamed from: i */
    float f3152i = 1.0f;

    /* renamed from: j */
    float f3153j = 1.0f;

    /* renamed from: k */
    float f3154k = 0.0f;

    /* renamed from: l */
    float f3155l = 0.5f;

    /* renamed from: m */
    float f3156m = 20.0f;

    /* renamed from: n */
    boolean f3157n = true;

    /* renamed from: o */
    boolean f3158o = true;

    /* renamed from: p */
    boolean f3159p = true;

    /* renamed from: q */
    int f3160q = -1;

    /* renamed from: r */
    int f3161r = 1;

    /* renamed from: s */
    long f3162s = 1000;

    /* renamed from: t */
    long f3163t;

    /* renamed from: com.facebook.shimmer.b$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/shimmer/b$b.class */
    public static abstract class AbstractC0704b<T extends AbstractC0704b<T>> {

        /* renamed from: a */
        final C0703b f3164a = new C0703b();

        /* renamed from: b */
        private static float m3993b(float f, float f2, float f3) {
            return Math.min(f2, Math.max(f, f3));
        }

        /* renamed from: a */
        public C0703b m3994a() {
            this.f3164a.m3997b();
            this.f3164a.m3996c();
            return this.f3164a;
        }

        /* renamed from: c */
        public T m3992c(TypedArray typedArray) {
            int i = C0702a.f3127e;
            if (typedArray.hasValue(i)) {
                m3988g(typedArray.getBoolean(i, this.f3164a.f3157n));
            }
            int i2 = C0702a.f3124b;
            if (typedArray.hasValue(i2)) {
                m3990e(typedArray.getBoolean(i2, this.f3164a.f3158o));
            }
            int i3 = C0702a.f3125c;
            if (typedArray.hasValue(i3)) {
                m3989f(typedArray.getFloat(i3, 0.3f));
            }
            int i4 = C0702a.f3135m;
            if (typedArray.hasValue(i4)) {
                m3981n(typedArray.getFloat(i4, 1.0f));
            }
            int i5 = C0702a.f3131i;
            if (typedArray.hasValue(i5)) {
                m3985j(typedArray.getInt(i5, (int) this.f3164a.f3162s));
            }
            int i6 = C0702a.f3138p;
            if (typedArray.hasValue(i6)) {
                m3979p(typedArray.getInt(i6, this.f3164a.f3160q));
            }
            int i7 = C0702a.f3139q;
            if (typedArray.hasValue(i7)) {
                m3978q(typedArray.getInt(i7, (int) this.f3164a.f3163t));
            }
            int i8 = C0702a.f3140r;
            if (typedArray.hasValue(i8)) {
                m3977r(typedArray.getInt(i8, this.f3164a.f3161r));
            }
            int i9 = C0702a.f3129g;
            if (typedArray.hasValue(i9)) {
                int i10 = typedArray.getInt(i9, this.f3164a.f3146c);
                if (i10 == 1) {
                    m3987h(1);
                } else if (i10 == 2) {
                    m3987h(2);
                } else if (i10 != 3) {
                    m3987h(0);
                } else {
                    m3987h(3);
                }
            }
            int i11 = C0702a.f3141s;
            if (typedArray.hasValue(i11)) {
                if (typedArray.getInt(i11, this.f3164a.f3149f) != 1) {
                    m3976s(0);
                } else {
                    m3976s(1);
                }
            }
            int i12 = C0702a.f3130h;
            if (typedArray.hasValue(i12)) {
                m3986i(typedArray.getFloat(i12, this.f3164a.f3155l));
            }
            int i13 = C0702a.f3133k;
            if (typedArray.hasValue(i13)) {
                m3983l(typedArray.getDimensionPixelSize(i13, this.f3164a.f3150g));
            }
            int i14 = C0702a.f3132j;
            if (typedArray.hasValue(i14)) {
                m3984k(typedArray.getDimensionPixelSize(i14, this.f3164a.f3151h));
            }
            int i15 = C0702a.f3137o;
            if (typedArray.hasValue(i15)) {
                m3980o(typedArray.getFloat(i15, this.f3164a.f3154k));
            }
            int i16 = C0702a.f3143u;
            if (typedArray.hasValue(i16)) {
                m3974u(typedArray.getFloat(i16, this.f3164a.f3152i));
            }
            int i17 = C0702a.f3134l;
            if (typedArray.hasValue(i17)) {
                m3982m(typedArray.getFloat(i17, this.f3164a.f3153j));
            }
            int i18 = C0702a.f3142t;
            if (typedArray.hasValue(i18)) {
                m3975t(typedArray.getFloat(i18, this.f3164a.f3156m));
            }
            return m3991d();
        }

        /* renamed from: d */
        protected abstract T m3991d();

        /* renamed from: e */
        public T m3990e(boolean z) {
            this.f3164a.f3158o = z;
            return m3991d();
        }

        /* renamed from: f */
        public T m3989f(float f) {
            int m3993b = (int) (m3993b(0.0f, 1.0f, f) * 255.0f);
            C0703b c0703b = this.f3164a;
            c0703b.f3148e = (m3993b << 24) | (c0703b.f3148e & 16777215);
            return m3991d();
        }

        /* renamed from: g */
        public T m3988g(boolean z) {
            this.f3164a.f3157n = z;
            return m3991d();
        }

        /* renamed from: h */
        public T m3987h(int i) {
            this.f3164a.f3146c = i;
            return m3991d();
        }

        /* renamed from: i */
        public T m3986i(float f) {
            if (f >= 0.0f) {
                this.f3164a.f3155l = f;
                return m3991d();
            }
            throw new IllegalArgumentException("Given invalid dropoff value: " + f);
        }

        /* renamed from: j */
        public T m3985j(long j) {
            if (j >= 0) {
                this.f3164a.f3162s = j;
                return m3991d();
            }
            throw new IllegalArgumentException("Given a negative duration: " + j);
        }

        /* renamed from: k */
        public T m3984k(int i) {
            if (i >= 0) {
                this.f3164a.f3151h = i;
                return m3991d();
            }
            throw new IllegalArgumentException("Given invalid height: " + i);
        }

        /* renamed from: l */
        public T m3983l(int i) {
            if (i >= 0) {
                this.f3164a.f3150g = i;
                return m3991d();
            }
            throw new IllegalArgumentException("Given invalid width: " + i);
        }

        /* renamed from: m */
        public T m3982m(float f) {
            if (f >= 0.0f) {
                this.f3164a.f3153j = f;
                return m3991d();
            }
            throw new IllegalArgumentException("Given invalid height ratio: " + f);
        }

        /* renamed from: n */
        public T m3981n(float f) {
            int m3993b = (int) (m3993b(0.0f, 1.0f, f) * 255.0f);
            C0703b c0703b = this.f3164a;
            c0703b.f3147d = (m3993b << 24) | (c0703b.f3147d & 16777215);
            return m3991d();
        }

        /* renamed from: o */
        public T m3980o(float f) {
            if (f >= 0.0f) {
                this.f3164a.f3154k = f;
                return m3991d();
            }
            throw new IllegalArgumentException("Given invalid intensity value: " + f);
        }

        /* renamed from: p */
        public T m3979p(int i) {
            this.f3164a.f3160q = i;
            return m3991d();
        }

        /* renamed from: q */
        public T m3978q(long j) {
            if (j >= 0) {
                this.f3164a.f3163t = j;
                return m3991d();
            }
            throw new IllegalArgumentException("Given a negative repeat delay: " + j);
        }

        /* renamed from: r */
        public T m3977r(int i) {
            this.f3164a.f3161r = i;
            return m3991d();
        }

        /* renamed from: s */
        public T m3976s(int i) {
            this.f3164a.f3149f = i;
            return m3991d();
        }

        /* renamed from: t */
        public T m3975t(float f) {
            this.f3164a.f3156m = f;
            return m3991d();
        }

        /* renamed from: u */
        public T m3974u(float f) {
            if (f >= 0.0f) {
                this.f3164a.f3152i = f;
                return m3991d();
            }
            throw new IllegalArgumentException("Given invalid width ratio: " + f);
        }
    }

    C0703b() {
        new RectF();
    }

    /* renamed from: a */
    public int m3998a(int i) {
        int i2 = this.f3151h;
        return i2 > 0 ? i2 : Math.round(this.f3153j * i);
    }

    /* renamed from: b */
    void m3997b() {
        if (this.f3149f != 1) {
            int[] iArr = this.f3145b;
            int i = this.f3148e;
            iArr[0] = i;
            int i2 = this.f3147d;
            iArr[1] = i2;
            iArr[2] = i2;
            iArr[3] = i;
            return;
        }
        int[] iArr2 = this.f3145b;
        int i3 = this.f3147d;
        iArr2[0] = i3;
        iArr2[1] = i3;
        int i4 = this.f3148e;
        iArr2[2] = i4;
        iArr2[3] = i4;
    }

    /* renamed from: c */
    void m3996c() {
        if (this.f3149f != 1) {
            this.f3144a[0] = Math.max(((1.0f - this.f3154k) - this.f3155l) / 2.0f, 0.0f);
            this.f3144a[1] = Math.max(((1.0f - this.f3154k) - 0.001f) / 2.0f, 0.0f);
            this.f3144a[2] = Math.min(((this.f3154k + 1.0f) + 0.001f) / 2.0f, 1.0f);
            this.f3144a[3] = Math.min(((this.f3154k + 1.0f) + this.f3155l) / 2.0f, 1.0f);
            return;
        }
        float[] fArr = this.f3144a;
        fArr[0] = 0.0f;
        fArr[1] = Math.min(this.f3154k, 1.0f);
        this.f3144a[2] = Math.min(this.f3154k + this.f3155l, 1.0f);
        this.f3144a[3] = 1.0f;
    }

    /* renamed from: d */
    public int m3995d(int i) {
        int i2 = this.f3150g;
        return i2 > 0 ? i2 : Math.round(this.f3152i * i);
    }
}
