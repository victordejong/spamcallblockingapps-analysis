package com.airbnb.lottie.animation.keyframe;

import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.Keyframe;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/FloatKeyframeAnimation.class */
public class FloatKeyframeAnimation extends KeyframeAnimation<Float> {
    public FloatKeyframeAnimation(List<Keyframe<Float>> list) {
        super(list);
    }

    /* renamed from: o */
    public float m16143o() {
        return m16142p(m16160b(), m16159d());
    }

    /* renamed from: p */
    float m16142p(Keyframe<Float> keyframe, float f) {
        Float f2;
        if (keyframe.f6407b == null || keyframe.f6408c == null) {
            throw new IllegalStateException("Missing values for keyframe.");
        }
        LottieValueCallback<A> lottieValueCallback = this.f6003e;
        return (lottieValueCallback == 0 || (f2 = (Float) lottieValueCallback.m15655b(keyframe.f6410e, keyframe.f6411f.floatValue(), keyframe.f6407b, keyframe.f6408c, f, m16158e(), m16157f())) == null) ? MiscUtils.m15700k(keyframe.m15674f(), keyframe.m15677c(), f) : f2.floatValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public Float mo16112i(Keyframe<Float> keyframe, float f) {
        return Float.valueOf(m16142p(keyframe, f));
    }
}
