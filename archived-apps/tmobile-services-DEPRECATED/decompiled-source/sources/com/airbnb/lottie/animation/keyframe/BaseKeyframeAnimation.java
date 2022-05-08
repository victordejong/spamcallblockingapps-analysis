package com.airbnb.lottie.animation.keyframe;

import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.C0611L;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation.class */
public abstract class BaseKeyframeAnimation<K, A> {

    /* renamed from: c */
    private final KeyframesWrapper<K> f6001c;
    @Nullable

    /* renamed from: e */
    protected LottieValueCallback<A> f6003e;

    /* renamed from: a */
    final List<AnimationListener> f5999a = new ArrayList(1);

    /* renamed from: b */
    private boolean f6000b = false;

    /* renamed from: d */
    protected float f6002d = 0.0f;
    @Nullable

    /* renamed from: f */
    private A f6004f = null;

    /* renamed from: g */
    private float f6005g = -1.0f;

    /* renamed from: h */
    private float f6006h = -1.0f;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$AnimationListener.class */
    public interface AnimationListener {
        /* renamed from: a */
        void mo15941a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$EmptyKeyframeWrapper.class */
    public static final class EmptyKeyframeWrapper<T> implements KeyframesWrapper<T> {
        private EmptyKeyframeWrapper() {
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: a */
        public boolean mo16151a(float f) {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: b */
        public Keyframe<T> mo16150b() {
            throw new IllegalStateException("not implemented");
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: c */
        public boolean mo16149c(float f) {
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: d */
        public float mo16148d() {
            return 1.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: e */
        public float mo16147e() {
            return 0.0f;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapper.class */
    public interface KeyframesWrapper<T> {
        /* renamed from: a */
        boolean mo16151a(float f);

        /* renamed from: b */
        Keyframe<T> mo16150b();

        /* renamed from: c */
        boolean mo16149c(float f);

        @FloatRange
        /* renamed from: d */
        float mo16148d();

        @FloatRange
        /* renamed from: e */
        float mo16147e();

        boolean isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$KeyframesWrapperImpl.class */
    public static final class KeyframesWrapperImpl<T> implements KeyframesWrapper<T> {

        /* renamed from: a */
        private final List<? extends Keyframe<T>> f6007a;

        /* renamed from: c */
        private Keyframe<T> f6009c = null;

        /* renamed from: d */
        private float f6010d = -1.0f;
        @NonNull

        /* renamed from: b */
        private Keyframe<T> f6008b = m16152f(0.0f);

        KeyframesWrapperImpl(List<? extends Keyframe<T>> list) {
            this.f6007a = list;
        }

        /* renamed from: f */
        private Keyframe<T> m16152f(float f) {
            List<? extends Keyframe<T>> list = this.f6007a;
            Keyframe<T> keyframe = (Keyframe) list.get(list.size() - 1);
            if (f >= keyframe.m15675e()) {
                return keyframe;
            }
            for (int size = this.f6007a.size() - 2; size >= 1; size--) {
                Keyframe<T> keyframe2 = (Keyframe) this.f6007a.get(size);
                if (this.f6008b != keyframe2 && keyframe2.m15679a(f)) {
                    return keyframe2;
                }
            }
            return (Keyframe) this.f6007a.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: a */
        public boolean mo16151a(float f) {
            if (this.f6009c == this.f6008b && this.f6010d == f) {
                return true;
            }
            this.f6009c = this.f6008b;
            this.f6010d = f;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        @NonNull
        /* renamed from: b */
        public Keyframe<T> mo16150b() {
            return this.f6008b;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: c */
        public boolean mo16149c(float f) {
            if (this.f6008b.m15679a(f)) {
                return !this.f6008b.m15672h();
            }
            this.f6008b = m16152f(f);
            return true;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: d */
        public float mo16148d() {
            List<? extends Keyframe<T>> list = this.f6007a;
            return ((Keyframe) list.get(list.size() - 1)).m15678b();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: e */
        public float mo16147e() {
            return ((Keyframe) this.f6007a.get(0)).m15675e();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/BaseKeyframeAnimation$SingleKeyframeWrapper.class */
    public static final class SingleKeyframeWrapper<T> implements KeyframesWrapper<T> {
        @NonNull

        /* renamed from: a */
        private final Keyframe<T> f6011a;

        /* renamed from: b */
        private float f6012b = -1.0f;

        SingleKeyframeWrapper(List<? extends Keyframe<T>> list) {
            this.f6011a = (Keyframe) list.get(0);
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: a */
        public boolean mo16151a(float f) {
            if (this.f6012b == f) {
                return true;
            }
            this.f6012b = f;
            return false;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: b */
        public Keyframe<T> mo16150b() {
            return this.f6011a;
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: c */
        public boolean mo16149c(float f) {
            return !this.f6011a.m15672h();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: d */
        public float mo16148d() {
            return this.f6011a.m15678b();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        /* renamed from: e */
        public float mo16147e() {
            return this.f6011a.m15675e();
        }

        @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.KeyframesWrapper
        public boolean isEmpty() {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BaseKeyframeAnimation(List<? extends Keyframe<K>> list) {
        this.f6001c = m16153n(list);
    }

    @FloatRange
    /* renamed from: g */
    private float m16156g() {
        if (this.f6005g == -1.0f) {
            this.f6005g = this.f6001c.mo16147e();
        }
        return this.f6005g;
    }

    /* renamed from: n */
    private static <T> KeyframesWrapper<T> m16153n(List<? extends Keyframe<T>> list) {
        return list.isEmpty() ? new EmptyKeyframeWrapper() : list.size() == 1 ? new SingleKeyframeWrapper(list) : new KeyframesWrapperImpl(list);
    }

    /* renamed from: a */
    public void m16161a(AnimationListener animationListener) {
        this.f5999a.add(animationListener);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: b */
    public Keyframe<K> m16160b() {
        C0611L.m16372a("BaseKeyframeAnimation#getCurrentKeyframe");
        Keyframe<K> b = this.f6001c.mo16150b();
        C0611L.m16371b("BaseKeyframeAnimation#getCurrentKeyframe");
        return b;
    }

    @FloatRange
    /* renamed from: c */
    float mo16114c() {
        if (this.f6006h == -1.0f) {
            this.f6006h = this.f6001c.mo16148d();
        }
        return this.f6006h;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: d */
    public float m16159d() {
        Keyframe<K> b = m16160b();
        if (b.m15672h()) {
            return 0.0f;
        }
        return b.f6409d.getInterpolation(m16158e());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public float m16158e() {
        if (this.f6000b) {
            return 0.0f;
        }
        Keyframe<K> b = m16160b();
        if (b.m15672h()) {
            return 0.0f;
        }
        return (this.f6002d - b.m15675e()) / (b.m15678b() - b.m15675e());
    }

    /* renamed from: f */
    public float m16157f() {
        return this.f6002d;
    }

    /* renamed from: h */
    public A mo16113h() {
        float d = m16159d();
        if (this.f6003e == null && this.f6001c.mo16151a(d)) {
            return this.f6004f;
        }
        A i = mo16112i(m16160b(), d);
        this.f6004f = i;
        return i;
    }

    /* renamed from: i */
    abstract A mo16112i(Keyframe<K> keyframe, float f);

    /* renamed from: j */
    public void mo16111j() {
        for (int i = 0; i < this.f5999a.size(); i++) {
            this.f5999a.get(i).mo15941a();
        }
    }

    /* renamed from: k */
    public void m16155k() {
        this.f6000b = true;
    }

    /* renamed from: l */
    public void mo16110l(@FloatRange(from = 0.0d, to = 1.0d) float f) {
        float f2;
        if (!this.f6001c.isEmpty()) {
            if (f < m16156g()) {
                f2 = m16156g();
            } else {
                f2 = f;
                if (f > mo16114c()) {
                    f2 = mo16114c();
                }
            }
            if (f2 != this.f6002d) {
                this.f6002d = f2;
                if (this.f6001c.mo16149c(f2)) {
                    mo16111j();
                }
            }
        }
    }

    /* renamed from: m */
    public void m16154m(@Nullable LottieValueCallback<A> lottieValueCallback) {
        LottieValueCallback<A> lottieValueCallback2 = this.f6003e;
        if (lottieValueCallback2 != null) {
            lottieValueCallback2.m15654c(null);
        }
        this.f6003e = lottieValueCallback;
        if (lottieValueCallback != null) {
            lottieValueCallback.m15654c(this);
        }
    }
}
