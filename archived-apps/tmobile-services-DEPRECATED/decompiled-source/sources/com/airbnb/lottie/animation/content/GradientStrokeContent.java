package com.airbnb.lottie.animation.content;

import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.RadialGradient;
import android.graphics.RectF;
import android.graphics.Shader;
import androidx.annotation.Nullable;
import androidx.collection.LongSparseArray;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.LottieProperty;
import com.airbnb.lottie.animation.keyframe.BaseKeyframeAnimation;
import com.airbnb.lottie.animation.keyframe.ValueCallbackKeyframeAnimation;
import com.airbnb.lottie.model.content.GradientColor;
import com.airbnb.lottie.model.content.GradientStroke;
import com.airbnb.lottie.model.content.GradientType;
import com.airbnb.lottie.model.layer.BaseLayer;
import com.airbnb.lottie.value.LottieValueCallback;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/animation/content/GradientStrokeContent.class */
public class GradientStrokeContent extends BaseStrokeContent {

    /* renamed from: o */
    private final String f5927o;

    /* renamed from: p */
    private final boolean f5928p;

    /* renamed from: q */
    private final LongSparseArray<LinearGradient> f5929q = new LongSparseArray<>();

    /* renamed from: r */
    private final LongSparseArray<RadialGradient> f5930r = new LongSparseArray<>();

    /* renamed from: s */
    private final RectF f5931s = new RectF();

    /* renamed from: t */
    private final GradientType f5932t;

    /* renamed from: u */
    private final int f5933u;

    /* renamed from: v */
    private final BaseKeyframeAnimation<GradientColor, GradientColor> f5934v;

    /* renamed from: w */
    private final BaseKeyframeAnimation<PointF, PointF> f5935w;

    /* renamed from: x */
    private final BaseKeyframeAnimation<PointF, PointF> f5936x;
    @Nullable

    /* renamed from: y */
    private ValueCallbackKeyframeAnimation f5937y;

    public GradientStrokeContent(LottieDrawable lottieDrawable, BaseLayer baseLayer, GradientStroke gradientStroke) {
        super(lottieDrawable, baseLayer, gradientStroke.m16043b().toPaintCap(), gradientStroke.m16038g().toPaintJoin(), gradientStroke.m16036i(), gradientStroke.m16034k(), gradientStroke.m16032m(), gradientStroke.m16037h(), gradientStroke.m16042c());
        this.f5927o = gradientStroke.m16035j();
        this.f5932t = gradientStroke.m16039f();
        this.f5928p = gradientStroke.m16031n();
        this.f5933u = (int) (lottieDrawable.m16239m().m16343d() / 32.0f);
        BaseKeyframeAnimation<GradientColor, GradientColor> a = gradientStroke.m16040e().mo16063a();
        this.f5934v = a;
        a.m16161a(this);
        baseLayer.m15958i(this.f5934v);
        BaseKeyframeAnimation<PointF, PointF> a2 = gradientStroke.m16033l().mo16063a();
        this.f5935w = a2;
        a2.m16161a(this);
        baseLayer.m15958i(this.f5935w);
        BaseKeyframeAnimation<PointF, PointF> a3 = gradientStroke.m16041d().mo16063a();
        this.f5936x = a3;
        a3.m16161a(this);
        baseLayer.m15958i(this.f5936x);
    }

    /* renamed from: i */
    private int[] m16179i(int[] iArr) {
        ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.f5937y;
        int[] iArr2 = iArr;
        if (valueCallbackKeyframeAnimation != null) {
            Integer[] numArr = (Integer[]) valueCallbackKeyframeAnimation.mo16113h();
            int i = 0;
            int i2 = 0;
            if (iArr.length != numArr.length) {
                int[] iArr3 = new int[numArr.length];
                while (true) {
                    iArr2 = iArr3;
                    if (i >= numArr.length) {
                        break;
                    }
                    iArr3[i] = numArr[i].intValue();
                    i++;
                }
            } else {
                while (true) {
                    iArr2 = iArr;
                    if (i2 >= iArr.length) {
                        break;
                    }
                    iArr[i2] = numArr[i2].intValue();
                    i2++;
                }
            }
        }
        return iArr2;
    }

    /* renamed from: j */
    private int m16178j() {
        int round = Math.round(this.f5935w.m16157f() * this.f5933u);
        int round2 = Math.round(this.f5936x.m16157f() * this.f5933u);
        int round3 = Math.round(this.f5934v.m16157f() * this.f5933u);
        int i = round != 0 ? 527 * round : 17;
        int i2 = i;
        if (round2 != 0) {
            i2 = i * 31 * round2;
        }
        int i3 = i2;
        if (round3 != 0) {
            i3 = i2 * 31 * round3;
        }
        return i3;
    }

    /* renamed from: k */
    private LinearGradient m16177k() {
        long j = m16178j();
        LinearGradient g = this.f5929q.m21045g(j);
        if (g != null) {
            return g;
        }
        PointF h = this.f5935w.mo16113h();
        PointF h2 = this.f5936x.mo16113h();
        GradientColor h3 = this.f5934v.mo16113h();
        LinearGradient linearGradient = new LinearGradient(h.x, h.y, h2.x, h2.y, m16179i(h3.m16055a()), h3.m16054b(), Shader.TileMode.CLAMP);
        this.f5929q.m21040n(j, linearGradient);
        return linearGradient;
    }

    /* renamed from: l */
    private RadialGradient m16176l() {
        float f;
        float f2;
        long j = m16178j();
        RadialGradient g = this.f5930r.m21045g(j);
        if (g != null) {
            return g;
        }
        PointF h = this.f5935w.mo16113h();
        PointF h2 = this.f5936x.mo16113h();
        GradientColor h3 = this.f5934v.mo16113h();
        int[] i = m16179i(h3.m16055a());
        float[] b = h3.m16054b();
        RadialGradient radialGradient = new RadialGradient(h.x, h.y, (float) Math.hypot(h2.x - f, h2.y - f2), i, b, Shader.TileMode.CLAMP);
        this.f5930r.m21040n(j, radialGradient);
        return radialGradient;
    }

    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.animation.content.DrawingContent
    /* renamed from: f */
    public void mo15960f(Canvas canvas, Matrix matrix, int i) {
        if (!this.f5928p) {
            mo15900d(this.f5931s, matrix, false);
            Shader k = this.f5932t == GradientType.LINEAR ? m16177k() : m16176l();
            k.setLocalMatrix(matrix);
            this.f5871i.setShader(k);
            super.mo15960f(canvas, matrix, i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.airbnb.lottie.animation.content.BaseStrokeContent, com.airbnb.lottie.model.KeyPathElement
    /* renamed from: g */
    public <T> void mo15899g(T t, @Nullable LottieValueCallback<T> lottieValueCallback) {
        super.mo15899g(t, lottieValueCallback);
        if (t == LottieProperty.f5821D) {
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation = this.f5937y;
            if (valueCallbackKeyframeAnimation != null) {
                this.f5868f.m15968C(valueCallbackKeyframeAnimation);
            }
            if (lottieValueCallback == null) {
                this.f5937y = null;
                return;
            }
            ValueCallbackKeyframeAnimation valueCallbackKeyframeAnimation2 = new ValueCallbackKeyframeAnimation(lottieValueCallback);
            this.f5937y = valueCallbackKeyframeAnimation2;
            valueCallbackKeyframeAnimation2.m16161a(this);
            this.f5868f.m15958i(this.f5937y);
        }
    }

    @Override // com.airbnb.lottie.animation.content.Content
    public String getName() {
        return this.f5927o;
    }
}
