package com.airbnb.lottie.animation.content;

import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/TrimPathContent.class */
public class TrimPathContent implements Content, BaseKeyframeAnimation.AnimationListener {

    /* renamed from: a */
    private final String f5992a;

    /* renamed from: b */
    private final boolean f5993b;

    /* renamed from: c */
    private final List<BaseKeyframeAnimation.AnimationListener> f5994c = new ArrayList();

    /* renamed from: d */
    private final ShapeTrimPath.Type f5995d;

    /* renamed from: e */
    private final BaseKeyframeAnimation<?, Float> f5996e;

    /* renamed from: f */
    private final BaseKeyframeAnimation<?, Float> f5997f;

    /* renamed from: g */
    private final BaseKeyframeAnimation<?, Float> f5998g;

    public TrimPathContent(BaseLayer baseLayer, ShapeTrimPath shapeTrimPath) {
        this.f5992a = shapeTrimPath.m15975c();
        this.f5993b = shapeTrimPath.m15971g();
        this.f5995d = shapeTrimPath.m15972f();
        this.f5996e = shapeTrimPath.m15973e().mo16063a();
        this.f5997f = shapeTrimPath.m15976b().mo16063a();
        this.f5998g = shapeTrimPath.m15974d().mo16063a();
        baseLayer.m15958i(this.f5996e);
        baseLayer.m15958i(this.f5997f);
        baseLayer.m15958i(this.f5998g);
        this.f5996e.m16161a(this);
        this.f5997f.m16161a(this);
        this.f5998g.m16161a(this);
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        for (int i = 0; i < this.f5994c.size(); i++) {
            this.f5994c.get(i).mo15941a();
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m16167c(BaseKeyframeAnimation.AnimationListener animationListener) {
        this.f5994c.add(animationListener);
    }

    /* renamed from: e */
    public BaseKeyframeAnimation<?, Float> m16166e() {
        return this.f5997f;
    }

    /* renamed from: g */
    public BaseKeyframeAnimation<?, Float> m16165g() {
        return this.f5998g;
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5992a;
    }

    /* renamed from: h */
    public BaseKeyframeAnimation<?, Float> m16164h() {
        return this.f5996e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public ShapeTrimPath.Type m16163i() {
        return this.f5995d;
    }

    /* renamed from: j */
    public boolean m16162j() {
        return this.f5993b;
    }
}
