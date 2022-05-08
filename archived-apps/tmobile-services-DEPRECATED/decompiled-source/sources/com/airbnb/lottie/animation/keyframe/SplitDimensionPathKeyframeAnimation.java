package com.airbnb.lottie.animation.keyframe;

import android.graphics.PointF;
import com.airbnb.lottie.value.Keyframe;
import java.util.Collections;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/keyframe/SplitDimensionPathKeyframeAnimation.class */
public class SplitDimensionPathKeyframeAnimation extends BaseKeyframeAnimation<PointF, PointF> {

    /* renamed from: i */
    private final PointF f6027i = new PointF();

    /* renamed from: j */
    private final BaseKeyframeAnimation<Float, Float> f6028j;

    /* renamed from: k */
    private final BaseKeyframeAnimation<Float, Float> f6029k;

    public SplitDimensionPathKeyframeAnimation(BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation, BaseKeyframeAnimation<Float, Float> baseKeyframeAnimation2) {
        super(Collections.emptyList());
        this.f6028j = baseKeyframeAnimation;
        this.f6029k = baseKeyframeAnimation2;
        mo16110l(m16157f());
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation
    /* renamed from: l */
    public void mo16110l(float f) {
        this.f6028j.mo16110l(f);
        this.f6029k.mo16110l(f);
        this.f6027i.set(this.f6028j.mo16113h().floatValue(), this.f6029k.mo16113h().floatValue());
        for (int i = 0; i < this.f5999a.size(); i++) {
            this.f5999a.get(i).mo15941a();
        }
    }

    /* renamed from: o */
    public PointF mo16113h() {
        return mo16112i(null, 0.0f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public PointF mo16112i(Keyframe<PointF> keyframe, float f) {
        return this.f6027i;
    }
}
