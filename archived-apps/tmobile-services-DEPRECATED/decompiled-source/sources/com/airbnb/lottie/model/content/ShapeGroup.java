package com.airbnb.lottie.model.content;

import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.ContentGroup;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeGroup.class */
public class ShapeGroup implements ContentModel {

    /* renamed from: a */
    private final String f6170a;

    /* renamed from: b */
    private final List<ContentModel> f6171b;

    /* renamed from: c */
    private final boolean f6172c;

    public ShapeGroup(String str, List<ContentModel> list, boolean z) {
        this.f6170a = str;
        this.f6171b = list;
        this.f6172c = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new ContentGroup(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public List<ContentModel> m15993b() {
        return this.f6171b;
    }

    /* renamed from: c */
    public String m15992c() {
        return this.f6170a;
    }

    /* renamed from: d */
    public boolean m15991d() {
        return this.f6172c;
    }

    public String toString() {
        return "ShapeGroup{name='" + this.f6170a + "' Shapes: " + Arrays.toString(this.f6171b.toArray()) + '}';
    }
}
