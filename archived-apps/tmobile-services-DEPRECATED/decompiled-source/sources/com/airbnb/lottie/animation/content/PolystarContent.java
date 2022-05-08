package com.airbnb.lottie.animation.content;

import android.graphics.Path;
import android.graphics.PointF;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.content.PolystarShape;
import com.airbnb.lottie.model.content.ShapeTrimPath;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieValueCallback;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/PolystarContent.class */
public class PolystarContent implements PathContent, BaseKeyframeAnimation.AnimationListener, KeyPathElementContent {

    /* renamed from: b */
    private final String f5946b;

    /* renamed from: c */
    private final LottieDrawable f5947c;

    /* renamed from: d */
    private final PolystarShape.Type f5948d;

    /* renamed from: e */
    private final boolean f5949e;

    /* renamed from: f */
    private final BaseKeyframeAnimation<?, Float> f5950f;

    /* renamed from: g */
    private final BaseKeyframeAnimation<?, PointF> f5951g;

    /* renamed from: h */
    private final BaseKeyframeAnimation<?, Float> f5952h;
    @Nullable

    /* renamed from: i */
    private final BaseKeyframeAnimation<?, Float> f5953i;

    /* renamed from: j */
    private final BaseKeyframeAnimation<?, Float> f5954j;
    @Nullable

    /* renamed from: k */
    private final BaseKeyframeAnimation<?, Float> f5955k;

    /* renamed from: l */
    private final BaseKeyframeAnimation<?, Float> f5956l;

    /* renamed from: n */
    private boolean f5958n;

    /* renamed from: a */
    private final Path f5945a = new Path();

    /* renamed from: m */
    private CompoundTrimPathContent f5957m = new CompoundTrimPathContent();

    /* renamed from: com.airbnb.lottie.animation.content.PolystarContent$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/PolystarContent$1.class */
    static /* synthetic */ class C06571 {

        /* renamed from: a */
        static final /* synthetic */ int[] f5959a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[PolystarShape.Type.values().length];
            f5959a = iArr;
            try {
                iArr[PolystarShape.Type.STAR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5959a[PolystarShape.Type.POLYGON.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public PolystarContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, PolystarShape polystarShape) {
        this.f5947c = lottieDrawable;
        this.f5946b = polystarShape.m16021d();
        this.f5948d = polystarShape.m16015j();
        this.f5949e = polystarShape.m16014k();
        this.f5950f = polystarShape.m16018g().mo16063a();
        this.f5951g = polystarShape.m16017h().mo16063a();
        this.f5952h = polystarShape.m16016i().mo16063a();
        this.f5954j = polystarShape.m16020e().mo16063a();
        this.f5956l = polystarShape.m16019f().mo16063a();
        if (this.f5948d == PolystarShape.Type.STAR) {
            this.f5953i = polystarShape.m16023b().mo16063a();
            this.f5955k = polystarShape.m16022c().mo16063a();
        } else {
            this.f5953i = null;
            this.f5955k = null;
        }
        baseLayer.m15958i(this.f5950f);
        baseLayer.m15958i(this.f5951g);
        baseLayer.m15958i(this.f5952h);
        baseLayer.m15958i(this.f5954j);
        baseLayer.m15958i(this.f5956l);
        if (this.f5948d == PolystarShape.Type.STAR) {
            baseLayer.m15958i(this.f5953i);
            baseLayer.m15958i(this.f5955k);
        }
        this.f5950f.m16161a(this);
        this.f5951g.m16161a(this);
        this.f5952h.m16161a(this);
        this.f5954j.m16161a(this);
        this.f5956l.m16161a(this);
        if (this.f5948d == PolystarShape.Type.STAR) {
            this.f5953i.m16161a(this);
            this.f5955k.m16161a(this);
        }
    }

    /* renamed from: e */
    private void m16173e() {
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation;
        int floor = (int) Math.floor(this.f5950f.mo16113h().floatValue());
        double radians = Math.toRadians((this.f5952h == null ? 0.0d : baseKeyframeAnimation.mo16113h().floatValue()) - 90.0d);
        double d = floor;
        float f = (float) (6.283185307179586d / d);
        float floatValue = this.f5956l.mo16113h().floatValue() / 100.0f;
        float floatValue2 = this.f5954j.mo16113h().floatValue();
        double d2 = floatValue2;
        float cos = (float) (Math.cos(radians) * d2);
        float sin = (float) (Math.sin(radians) * d2);
        this.f5945a.moveTo(cos, sin);
        double d3 = f;
        double d4 = radians + d3;
        double ceil = Math.ceil(d);
        int i = 0;
        while (i < ceil) {
            float cos2 = (float) (Math.cos(d4) * d2);
            float sin2 = (float) (d2 * Math.sin(d4));
            if (floatValue != 0.0f) {
                double atan2 = (float) (Math.atan2(sin, cos) - 1.5707963267948966d);
                float cos3 = (float) Math.cos(atan2);
                float sin3 = (float) Math.sin(atan2);
                double atan22 = (float) (Math.atan2(sin2, cos2) - 1.5707963267948966d);
                float cos4 = (float) Math.cos(atan22);
                float sin4 = (float) Math.sin(atan22);
                float f2 = floatValue2 * floatValue * 0.25f;
                this.f5945a.cubicTo(cos - (cos3 * f2), sin - (sin3 * f2), cos2 + (cos4 * f2), sin2 + (f2 * sin4), cos2, sin2);
            } else {
                this.f5945a.lineTo(cos2, sin2);
            }
            d4 += d3;
            i++;
            sin = sin2;
            cos = cos2;
        }
        PointF h = this.f5951g.mo16113h();
        this.f5945a.offset(h.x, h.y);
        this.f5945a.close();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [double] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v2, types: [double] */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m16172h() {
        /*
            Method dump skipped, instructions count: 844
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.airbnb.lottie.animation.content.PolystarContent.m16172h():void");
    }

    /* renamed from: i */
    private void m16171i() {
        this.f5958n = false;
        this.f5947c.invalidateSelf();
    }

    @Override // com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation.AnimationListener
    /* renamed from: a */
    public void mo15941a() {
        m16171i();
    }

    @Override // com.airbnb.lottie.animation.content.Content
    /* renamed from: b */
    public void mo15963b(List<Content> list, List<Content> list2) {
        for (int i = 0; i < list.size(); i++) {
            Content content = list.get(i);
            if (content instanceof TrimPathContent) {
                TrimPathContent trimPathContent = (TrimPathContent) content;
                if (trimPathContent.m16163i() == ShapeTrimPath.Type.SIMULTANEOUSLY) {
                    this.f5957m.m16191a(trimPathContent);
                    trimPathContent.m16167c(this);
                }
            }
        }
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: c */
    public void mo15962c(KeyPath keyPath, int i, List<KeyPath> list, KeyPath keyPath2) {
        MiscUtils.m15698m(keyPath, i, list, keyPath2, this);
    }

    @Override // com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation;
        BaseKeyframeAnimation<?, Float> baseKeyframeAnimation2;
        if (t == LottieProperty.f5840s) {
            this.f5950f.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5841t) {
            this.f5952h.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5831j) {
            this.f5951g.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5842u && (baseKeyframeAnimation2 = this.f5953i) != null) {
            baseKeyframeAnimation2.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5843v) {
            this.f5954j.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5844w && (baseKeyframeAnimation = this.f5955k) != null) {
            baseKeyframeAnimation.m16154m(lottieValueCallback);
        } else if (t == LottieProperty.f5845x) {
            this.f5956l.m16154m(lottieValueCallback);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5946b;
    }

    @Override // com.airbnb.lottie.animation.content.PathContent
    public Path getPath() {
        if (this.f5958n) {
            return this.f5945a;
        }
        this.f5945a.reset();
        if (this.f5949e) {
            this.f5958n = true;
            return this.f5945a;
        }
        int i = C06571.f5959a[this.f5948d.ordinal()];
        if (i == 1) {
            m16172h();
        } else if (i == 2) {
            m16173e();
        }
        this.f5945a.close();
        this.f5957m.m16190b(this.f5945a);
        this.f5958n = true;
        return this.f5945a;
    }
}
