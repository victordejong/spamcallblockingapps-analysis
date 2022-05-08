package com.airbnb.lottie.model.animatable;

import android.graphics.PointF;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.SplitDimensionPathKeyframeAnimation;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/animatable/AnimatableSplitDimensionPathValue.class */
public class AnimatableSplitDimensionPathValue implements AnimatableValue<PointF, PointF> {

    /* renamed from: a */
    private final AnimatableFloatValue f6090a;

    /* renamed from: b */
    private final AnimatableFloatValue f6091b;

    public AnimatableSplitDimensionPathValue(AnimatableFloatValue animatableFloatValue, AnimatableFloatValue animatableFloatValue2) {
        this.f6090a = animatableFloatValue;
        this.f6091b = animatableFloatValue2;
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: a */
    public BaseKeyframeAnimation<PointF, PointF> mo16063a() {
        return new SplitDimensionPathKeyframeAnimation(this.f6090a.mo16063a(), this.f6091b.mo16063a());
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: b */
    public List<Keyframe<PointF>> mo16062b() {
        throw new UnsupportedOperationException("Cannot call getKeyframes on AnimatableSplitDimensionPathValue.");
    }

    @Override // com.airbnb.lottie.model.animatable.AnimatableValue
    /* renamed from: c */
    public boolean mo16061c() {
        return this.f6090a.mo16061c() && this.f6091b.mo16061c();
    }
}
