package com.airbnb.lottie.model.content;

import android.graphics.PointF;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.RectangleContent;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatablePointValue;
import com.airbnb.lottie.model.animatable.AnimatableValue;
import com.airbnb.lottie.model.layer.BaseLayer;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/RectangleShape.class */
public class RectangleShape implements ContentModel {

    /* renamed from: a */
    private final String f6151a;

    /* renamed from: b */
    private final AnimatableValue<PointF, PointF> f6152b;

    /* renamed from: c */
    private final AnimatablePointValue f6153c;

    /* renamed from: d */
    private final AnimatableFloatValue f6154d;

    /* renamed from: e */
    private final boolean f6155e;

    public RectangleShape(String str, AnimatableValue<PointF, PointF> animatableValue, AnimatablePointValue animatablePointValue, AnimatableFloatValue animatableFloatValue, boolean z) {
        this.f6151a = str;
        this.f6152b = animatableValue;
        this.f6153c = animatablePointValue;
        this.f6154d = animatableFloatValue;
        this.f6155e = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new RectangleContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public AnimatableFloatValue m16013b() {
        return this.f6154d;
    }

    /* renamed from: c */
    public String m16012c() {
        return this.f6151a;
    }

    /* renamed from: d */
    public AnimatableValue<PointF, PointF> m16011d() {
        return this.f6152b;
    }

    /* renamed from: e */
    public AnimatablePointValue m16010e() {
        return this.f6153c;
    }

    /* renamed from: f */
    public boolean m16009f() {
        return this.f6155e;
    }

    public String toString() {
        return "RectangleShape{position=" + this.f6152b + ", size=" + this.f6153c + '}';
    }
}
