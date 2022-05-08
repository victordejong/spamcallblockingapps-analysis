package com.airbnb.lottie;

import android.animation.ValueAnimator;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import android.widget.ImageView;
import androidx.annotation.FloatRange;
import androidx.annotation.IntRange;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.airbnb.lottie.manager.FontAssetManager;
import com.airbnb.lottie.manager.ImageAssetManager;
import com.airbnb.lottie.model.KeyPath;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.CompositionLayer;
import com.airbnb.lottie.parser.LayerParser;
import com.airbnb.lottie.utils.Logger;
import com.airbnb.lottie.utils.LottieValueAnimator;
import com.airbnb.lottie.utils.MiscUtils;
import com.airbnb.lottie.value.LottieFrameInfo;
import com.airbnb.lottie.value.LottieValueCallback;
import com.airbnb.lottie.value.SimpleLottieValueCallback;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieDrawable.class */
public class LottieDrawable extends Drawable implements Drawable.Callback, Animatable {

    /* renamed from: g */
    private LottieComposition f5754g;

    /* renamed from: m */
    private final ValueAnimator.AnimatorUpdateListener f5760m;
    @Nullable

    /* renamed from: n */
    private ImageView.ScaleType f5761n;
    @Nullable

    /* renamed from: o */
    private ImageAssetManager f5762o;
    @Nullable

    /* renamed from: p */
    private String f5763p;
    @Nullable

    /* renamed from: q */
    private ImageAssetDelegate f5764q;
    @Nullable

    /* renamed from: r */
    private FontAssetManager f5765r;
    @Nullable

    /* renamed from: s */
    FontAssetDelegate f5766s;
    @Nullable

    /* renamed from: t */
    TextDelegate f5767t;

    /* renamed from: u */
    private boolean f5768u;
    @Nullable

    /* renamed from: v */
    private CompositionLayer f5769v;

    /* renamed from: x */
    private boolean f5771x;

    /* renamed from: y */
    private boolean f5772y;

    /* renamed from: f */
    private final Matrix f5753f = new Matrix();

    /* renamed from: h */
    private final LottieValueAnimator f5755h = new LottieValueAnimator();

    /* renamed from: i */
    private float f5756i = 1.0f;

    /* renamed from: j */
    private boolean f5757j = true;

    /* renamed from: k */
    private boolean f5758k = false;

    /* renamed from: l */
    private final ArrayList<LazyCompositionTask> f5759l = new ArrayList<>();

    /* renamed from: w */
    private int f5770w = 255;

    /* renamed from: z */
    private boolean f5773z = true;

    /* renamed from: A */
    private boolean f5752A = false;

    /* renamed from: com.airbnb.lottie.LottieDrawable$17 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieDrawable$17.class */
    class C064017 extends LottieValueCallback<T> {

        /* renamed from: c */
        final /* synthetic */ SimpleLottieValueCallback f5795c;

        /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
        @Override // com.airbnb.lottie.value.LottieValueCallback
        /* renamed from: a */
        public T mo15656a(LottieFrameInfo<T> lottieFrameInfo) {
            return this.f5795c.m15649a(lottieFrameInfo);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieDrawable$ColorFilterData.class */
    private static class ColorFilterData {

        /* renamed from: a */
        final String f5810a;
        @Nullable

        /* renamed from: b */
        final String f5811b;
        @Nullable

        /* renamed from: c */
        final ColorFilter f5812c;

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ColorFilterData)) {
                return false;
            }
            ColorFilterData colorFilterData = (ColorFilterData) obj;
            if (!(hashCode() == colorFilterData.hashCode() && this.f5812c == colorFilterData.f5812c)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            String str = this.f5810a;
            int hashCode = str != null ? 527 * str.hashCode() : 17;
            String str2 = this.f5811b;
            int i = hashCode;
            if (str2 != null) {
                i = hashCode * 31 * str2.hashCode();
            }
            return i;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieDrawable$LazyCompositionTask.class */
    public interface LazyCompositionTask {
        /* renamed from: a */
        void mo16225a(LottieComposition lottieComposition);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieDrawable$RepeatMode.class */
    public @interface RepeatMode {
    }

    public LottieDrawable() {
        new HashSet();
        ValueAnimator.AnimatorUpdateListener animatorUpdateListener = new ValueAnimator.AnimatorUpdateListener() { // from class: com.airbnb.lottie.LottieDrawable.1
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                if (LottieDrawable.this.f5769v != null) {
                    LottieDrawable.this.f5769v.mo15940G(LottieDrawable.this.f5755h.m15727j());
                }
            }
        };
        this.f5760m = animatorUpdateListener;
        this.f5755h.addUpdateListener(animatorUpdateListener);
    }

    /* renamed from: d */
    private void m16257d() {
        this.f5769v = new CompositionLayer(this, LayerParser.m15834a(this.f5754g), this.f5754g.m16337j(), this.f5754g);
    }

    /* renamed from: g */
    private void m16251g(@NonNull Canvas canvas) {
        if (ImageView.ScaleType.FIT_XY == this.f5761n) {
            m16249h(canvas);
        } else {
            m16247i(canvas);
        }
    }

    /* renamed from: h */
    private void m16249h(Canvas canvas) {
        float f;
        if (this.f5769v != null) {
            Rect bounds = getBounds();
            float width = bounds.width() / this.f5754g.m16345b().width();
            float height = bounds.height() / this.f5754g.m16345b().height();
            int i = -1;
            float f2 = width;
            float f3 = height;
            if (this.f5773z) {
                float min = Math.min(width, height);
                if (min < 1.0f) {
                    f = 1.0f / min;
                    width /= f;
                    height /= f;
                } else {
                    f = 1.0f;
                }
                i = -1;
                f2 = width;
                f3 = height;
                if (f > 1.0f) {
                    i = canvas.save();
                    float width2 = bounds.width() / 2.0f;
                    float height2 = bounds.height() / 2.0f;
                    float f4 = width2 * min;
                    float f5 = min * height2;
                    canvas.translate(width2 - f4, height2 - f5);
                    canvas.scale(f, f, f4, f5);
                    f3 = height;
                    f2 = width;
                }
            }
            this.f5753f.reset();
            this.f5753f.preScale(f2, f3);
            this.f5769v.mo15960f(canvas, this.f5753f, this.f5770w);
            if (i > 0) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: i */
    private void m16247i(Canvas canvas) {
        float f;
        if (this.f5769v != null) {
            float f2 = this.f5756i;
            float u = m16231u(canvas);
            if (f2 > u) {
                f = this.f5756i / u;
            } else {
                u = f2;
                f = 1.0f;
            }
            int i = -1;
            if (f > 1.0f) {
                i = canvas.save();
                float width = this.f5754g.m16345b().width() / 2.0f;
                float height = this.f5754g.m16345b().height() / 2.0f;
                float f3 = width * u;
                float f4 = height * u;
                canvas.translate((m16289A() * width) - f3, (m16289A() * height) - f4);
                canvas.scale(f, f, f3, f4);
            }
            this.f5753f.reset();
            this.f5753f.preScale(u, u);
            this.f5769v.mo15960f(canvas, this.f5753f, this.f5770w);
            if (i > 0) {
                canvas.restoreToCount(i);
            }
        }
    }

    /* renamed from: k0 */
    private void m16242k0() {
        if (this.f5754g != null) {
            float A = m16289A();
            setBounds(0, 0, (int) (this.f5754g.m16345b().width() * A), (int) (this.f5754g.m16345b().height() * A));
        }
    }

    @Nullable
    /* renamed from: n */
    private Context m16238n() {
        Drawable.Callback callback = getCallback();
        if (callback != null && (callback instanceof View)) {
            return ((View) callback).getContext();
        }
        return null;
    }

    /* renamed from: o */
    private FontAssetManager m16237o() {
        if (getCallback() == null) {
            return null;
        }
        if (this.f5765r == null) {
            this.f5765r = new FontAssetManager(getCallback(), this.f5766s);
        }
        return this.f5765r;
    }

    /* renamed from: r */
    private ImageAssetManager m16234r() {
        if (getCallback() == null) {
            return null;
        }
        ImageAssetManager imageAssetManager = this.f5762o;
        if (imageAssetManager != null && !imageAssetManager.m16104b(m16238n())) {
            this.f5762o = null;
        }
        if (this.f5762o == null) {
            this.f5762o = new ImageAssetManager(getCallback(), this.f5763p, this.f5764q, this.f5754g.m16338i());
        }
        return this.f5762o;
    }

    /* renamed from: u */
    private float m16231u(@NonNull Canvas canvas) {
        return Math.min(canvas.getWidth() / this.f5754g.m16345b().width(), canvas.getHeight() / this.f5754g.m16345b().height());
    }

    /* renamed from: A */
    public float m16289A() {
        return this.f5756i;
    }

    /* renamed from: B */
    public float m16288B() {
        return this.f5755h.m15722p();
    }

    @Nullable
    /* renamed from: C */
    public TextDelegate m16287C() {
        return this.f5767t;
    }

    @Nullable
    /* renamed from: D */
    public Typeface m16286D(String str, String str2) {
        FontAssetManager o = m16237o();
        if (o != null) {
            return o.m16108b(str, str2);
        }
        return null;
    }

    /* renamed from: E */
    public boolean m16285E() {
        LottieValueAnimator lottieValueAnimator = this.f5755h;
        if (lottieValueAnimator == null) {
            return false;
        }
        return lottieValueAnimator.isRunning();
    }

    /* renamed from: F */
    public boolean m16284F() {
        return this.f5772y;
    }

    /* renamed from: G */
    public void m16283G() {
        this.f5759l.clear();
        this.f5755h.m15720r();
    }

    @MainThread
    /* renamed from: H */
    public void m16282H() {
        if (this.f5769v == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.2
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16282H();
                }
            });
            return;
        }
        if (this.f5757j || m16227y() == 0) {
            this.f5755h.m15719s();
        }
        if (!this.f5757j) {
            m16276N((int) (m16288B() < 0.0f ? m16230v() : m16232t()));
            this.f5755h.m15728i();
        }
    }

    /* renamed from: I */
    public List<KeyPath> m16281I(KeyPath keyPath) {
        if (this.f5769v == null) {
            Logger.m15736c("Cannot resolve KeyPath. Composition is not set yet.");
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        this.f5769v.mo15962c(keyPath, 0, arrayList, new KeyPath(new String[0]));
        return arrayList;
    }

    @MainThread
    /* renamed from: J */
    public void m16280J() {
        if (this.f5769v == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.3
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16280J();
                }
            });
            return;
        }
        if (this.f5757j || m16227y() == 0) {
            this.f5755h.m15715w();
        }
        if (!this.f5757j) {
            m16276N((int) (m16288B() < 0.0f ? m16230v() : m16232t()));
            this.f5755h.m15728i();
        }
    }

    /* renamed from: K */
    public void m16279K(boolean z) {
        this.f5772y = z;
    }

    /* renamed from: L */
    public boolean m16278L(LottieComposition lottieComposition) {
        if (this.f5754g == lottieComposition) {
            return false;
        }
        this.f5752A = false;
        m16253f();
        this.f5754g = lottieComposition;
        m16257d();
        this.f5755h.m15713y(lottieComposition);
        m16260b0(this.f5755h.getAnimatedFraction());
        m16252f0(this.f5756i);
        m16242k0();
        Iterator it = new ArrayList(this.f5759l).iterator();
        while (it.hasNext()) {
            ((LazyCompositionTask) it.next()).mo16225a(lottieComposition);
            it.remove();
        }
        this.f5759l.clear();
        lottieComposition.m16326u(this.f5771x);
        Drawable.Callback callback = getCallback();
        if (!(callback instanceof ImageView)) {
            return true;
        }
        ImageView imageView = (ImageView) callback;
        imageView.setImageDrawable(null);
        imageView.setImageDrawable(this);
        return true;
    }

    /* renamed from: M */
    public void m16277M(FontAssetDelegate fontAssetDelegate) {
        this.f5766s = fontAssetDelegate;
        FontAssetManager fontAssetManager = this.f5765r;
        if (fontAssetManager != null) {
            fontAssetManager.m16107c(fontAssetDelegate);
        }
    }

    /* renamed from: N */
    public void m16276N(final int i) {
        if (this.f5754g == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.14
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16276N(i);
                }
            });
        } else {
            this.f5755h.m15712z(i);
        }
    }

    /* renamed from: O */
    public void m16275O(ImageAssetDelegate imageAssetDelegate) {
        this.f5764q = imageAssetDelegate;
        ImageAssetManager imageAssetManager = this.f5762o;
        if (imageAssetManager != null) {
            imageAssetManager.m16102d(imageAssetDelegate);
        }
    }

    /* renamed from: P */
    public void m16274P(@Nullable String str) {
        this.f5763p = str;
    }

    /* renamed from: Q */
    public void m16273Q(final int i) {
        if (this.f5754g == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.6
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16273Q(i);
                }
            });
        } else {
            this.f5755h.m15734A(i + 0.99f);
        }
    }

    /* renamed from: R */
    public void m16272R(final String str) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.9
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16272R(str);
                }
            });
            return;
        }
        Marker k = lottieComposition.m16336k(str);
        if (k != null) {
            m16273Q((int) (k.f6085b + k.f6086c));
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    /* renamed from: S */
    public void m16271S(@FloatRange(from = 0.0d, to = 1.0d) final float f) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.7
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16271S(f);
                }
            });
        } else {
            m16273Q((int) MiscUtils.m15700k(lottieComposition.m16332o(), this.f5754g.m16341f(), f));
        }
    }

    /* renamed from: T */
    public void m16270T(final int i, final int i2) {
        if (this.f5754g == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.12
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16270T(i, i2);
                }
            });
        } else {
            this.f5755h.m15733C(i, i2 + 0.99f);
        }
    }

    /* renamed from: U */
    public void m16269U(final String str) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.10
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16269U(str);
                }
            });
            return;
        }
        Marker k = lottieComposition.m16336k(str);
        if (k != null) {
            int i = (int) k.f6085b;
            m16270T(i, ((int) k.f6086c) + i);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    /* renamed from: V */
    public void m16268V(final String str, final String str2, final boolean z) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.11
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16268V(str, str2, z);
                }
            });
            return;
        }
        Marker k = lottieComposition.m16336k(str);
        if (k != null) {
            int i = (int) k.f6085b;
            Marker k2 = this.f5754g.m16336k(str2);
            if (str2 != null) {
                m16270T(i, (int) (k2.f6085b + (z ? 1.0f : 0.0f)));
                return;
            }
            throw new IllegalArgumentException("Cannot find marker with name " + str2 + ".");
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    /* renamed from: W */
    public void m16267W(@FloatRange(from = 0.0d, to = 1.0d) final float f, @FloatRange(from = 0.0d, to = 1.0d) final float f2) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.13
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16267W(f, f2);
                }
            });
        } else {
            m16270T((int) MiscUtils.m15700k(lottieComposition.m16332o(), this.f5754g.m16341f(), f), (int) MiscUtils.m15700k(this.f5754g.m16332o(), this.f5754g.m16341f(), f2));
        }
    }

    /* renamed from: X */
    public void m16266X(final int i) {
        if (this.f5754g == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.4
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16266X(i);
                }
            });
        } else {
            this.f5755h.m15732D(i);
        }
    }

    /* renamed from: Y */
    public void m16265Y(final String str) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.8
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16265Y(str);
                }
            });
            return;
        }
        Marker k = lottieComposition.m16336k(str);
        if (k != null) {
            m16266X((int) k.f6085b);
            return;
        }
        throw new IllegalArgumentException("Cannot find marker with name " + str + ".");
    }

    /* renamed from: Z */
    public void m16264Z(final float f) {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.5
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition2) {
                    LottieDrawable.this.m16264Z(f);
                }
            });
        } else {
            m16266X((int) MiscUtils.m15700k(lottieComposition.m16332o(), this.f5754g.m16341f(), f));
        }
    }

    /* renamed from: a0 */
    public void m16262a0(boolean z) {
        this.f5771x = z;
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition != null) {
            lottieComposition.m16326u(z);
        }
    }

    /* renamed from: b0 */
    public void m16260b0(@FloatRange(from = 0.0d, to = 1.0d) final float f) {
        if (this.f5754g == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.15
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16260b0(f);
                }
            });
            return;
        }
        C0611L.m16372a("Drawable#setProgress");
        this.f5755h.m15712z(MiscUtils.m15700k(this.f5754g.m16332o(), this.f5754g.m16341f(), f));
        C0611L.m16371b("Drawable#setProgress");
    }

    /* renamed from: c */
    public <T> void m16259c(final KeyPath keyPath, final T t, final LottieValueCallback<T> lottieValueCallback) {
        CompositionLayer compositionLayer = this.f5769v;
        if (compositionLayer == null) {
            this.f5759l.add(new LazyCompositionTask() { // from class: com.airbnb.lottie.LottieDrawable.16
                @Override // com.airbnb.lottie.LottieDrawable.LazyCompositionTask
                /* renamed from: a */
                public void mo16225a(LottieComposition lottieComposition) {
                    LottieDrawable.this.m16259c(keyPath, t, lottieValueCallback);
                }
            });
            return;
        }
        boolean z = true;
        if (keyPath == KeyPath.f6078c) {
            compositionLayer.mo15899g(t, lottieValueCallback);
        } else if (keyPath.m16086d() != null) {
            keyPath.m16086d().mo15899g(t, lottieValueCallback);
        } else {
            List<KeyPath> I = m16281I(keyPath);
            for (int i = 0; i < I.size(); i++) {
                I.get(i).m16086d().mo15899g(t, lottieValueCallback);
            }
            z = true ^ I.isEmpty();
        }
        if (z) {
            invalidateSelf();
            if (t == LottieProperty.f5818A) {
                m16260b0(m16228x());
            }
        }
    }

    /* renamed from: c0 */
    public void m16258c0(int i) {
        this.f5755h.setRepeatCount(i);
    }

    /* renamed from: d0 */
    public void m16256d0(int i) {
        this.f5755h.setRepeatMode(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        this.f5752A = false;
        C0611L.m16372a("Drawable#draw");
        if (this.f5758k) {
            try {
                m16251g(canvas);
            } catch (Throwable th) {
                Logger.m15737b("Lottie crashed in draw!", th);
            }
        } else {
            m16251g(canvas);
        }
        C0611L.m16371b("Drawable#draw");
    }

    /* renamed from: e */
    public void m16255e() {
        this.f5759l.clear();
        this.f5755h.cancel();
    }

    /* renamed from: e0 */
    public void m16254e0(boolean z) {
        this.f5758k = z;
    }

    /* renamed from: f */
    public void m16253f() {
        if (this.f5755h.isRunning()) {
            this.f5755h.cancel();
        }
        this.f5754g = null;
        this.f5769v = null;
        this.f5762o = null;
        this.f5755h.m15729g();
        invalidateSelf();
    }

    /* renamed from: f0 */
    public void m16252f0(float f) {
        this.f5756i = f;
        m16242k0();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g0 */
    public void m16250g0(ImageView.ScaleType scaleType) {
        this.f5761n = scaleType;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f5770w;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        LottieComposition lottieComposition = this.f5754g;
        return lottieComposition == null ? -1 : (int) (lottieComposition.m16345b().height() * m16289A());
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        LottieComposition lottieComposition = this.f5754g;
        return lottieComposition == null ? -1 : (int) (lottieComposition.m16345b().width() * m16289A());
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h0 */
    public void m16248h0(float f) {
        this.f5755h.m15731E(f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i0 */
    public void m16246i0(Boolean bool) {
        this.f5757j = bool.booleanValue();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(@NonNull Drawable drawable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.invalidateDrawable(this);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        if (!this.f5752A) {
            this.f5752A = true;
            Drawable.Callback callback = getCallback();
            if (callback != null) {
                callback.invalidateDrawable(this);
            }
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return m16285E();
    }

    /* renamed from: j */
    public void m16245j(boolean z) {
        if (this.f5768u != z) {
            if (Build.VERSION.SDK_INT < 19) {
                Logger.m15736c("Merge paths are not supported pre-Kit Kat.");
                return;
            }
            this.f5768u = z;
            if (this.f5754g != null) {
                m16257d();
            }
        }
    }

    /* renamed from: j0 */
    public void m16244j0(TextDelegate textDelegate) {
        this.f5767t = textDelegate;
    }

    /* renamed from: k */
    public boolean m16243k() {
        return this.f5768u;
    }

    @MainThread
    /* renamed from: l */
    public void m16241l() {
        this.f5759l.clear();
        this.f5755h.m15728i();
    }

    /* renamed from: l0 */
    public boolean m16240l0() {
        return this.f5767t == null && this.f5754g.m16344c().m20993o() > 0;
    }

    /* renamed from: m */
    public LottieComposition m16239m() {
        return this.f5754g;
    }

    /* renamed from: p */
    public int m16236p() {
        return (int) this.f5755h.m15726l();
    }

    @Nullable
    /* renamed from: q */
    public Bitmap m16235q(String str) {
        ImageAssetManager r = m16234r();
        if (r != null) {
            return r.m16105a(str);
        }
        return null;
    }

    @Nullable
    /* renamed from: s */
    public String m16233s() {
        return this.f5763p;
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable, long j) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.scheduleDrawable(this, runnable, j);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(@IntRange(from = 0, to = 255) int i) {
        this.f5770w = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(@Nullable ColorFilter colorFilter) {
        Logger.m15736c("Use addColorFilter instead.");
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void start() {
        Drawable.Callback callback = getCallback();
        if ((callback instanceof View) && !((View) callback).isInEditMode()) {
            m16282H();
        }
    }

    @Override // android.graphics.drawable.Animatable
    @MainThread
    public void stop() {
        m16241l();
    }

    /* renamed from: t */
    public float m16232t() {
        return this.f5755h.m15724n();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(@NonNull Drawable drawable, @NonNull Runnable runnable) {
        Drawable.Callback callback = getCallback();
        if (callback != null) {
            callback.unscheduleDrawable(this, runnable);
        }
    }

    /* renamed from: v */
    public float m16230v() {
        return this.f5755h.m15723o();
    }

    @Nullable
    /* renamed from: w */
    public PerformanceTracker m16229w() {
        LottieComposition lottieComposition = this.f5754g;
        if (lottieComposition != null) {
            return lottieComposition.m16334m();
        }
        return null;
    }

    @FloatRange
    /* renamed from: x */
    public float m16228x() {
        return this.f5755h.m15727j();
    }

    /* renamed from: y */
    public int m16227y() {
        return this.f5755h.getRepeatCount();
    }

    /* renamed from: z */
    public int m16226z() {
        return this.f5755h.getRepeatMode();
    }
}
