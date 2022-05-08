package com.airbnb.lottie.value;

import com.airbnb.lottie.utils.MiscUtils;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/value/LottieRelativeFloatValueCallback.class */
public class LottieRelativeFloatValueCallback extends LottieValueCallback<Float> {
    /* renamed from: d */
    public Float m15662d(LottieFrameInfo<Float> lottieFrameInfo) {
        T t = this.f6430b;
        if (t != 0) {
            return (Float) t;
        }
        throw new IllegalArgumentException("You must provide a static value in the constructor , call setValue, or override getValue.");
    }

    /* renamed from: e */
    public Float mo15656a(LottieFrameInfo<Float> lottieFrameInfo) {
        return Float.valueOf(MiscUtils.m15700k(lottieFrameInfo.m15668d().floatValue(), lottieFrameInfo.m15671a().floatValue(), lottieFrameInfo.m15670b()) + m15662d(lottieFrameInfo).floatValue());
    }
}
