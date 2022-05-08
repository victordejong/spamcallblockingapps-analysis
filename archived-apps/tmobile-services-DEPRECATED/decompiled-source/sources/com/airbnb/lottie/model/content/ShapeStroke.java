package com.airbnb.lottie.model.content;

import android.graphics.Paint;
import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieDrawable;
import com.airbnb.lottie.animation.content.Content;
import com.airbnb.lottie.animation.content.StrokeContent;
import com.airbnb.lottie.model.animatable.AnimatableColorValue;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableIntegerValue;
import com.airbnb.lottie.model.layer.BaseLayer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeStroke.class */
public class ShapeStroke implements ContentModel {

    /* renamed from: a */
    private final String f6177a;
    @Nullable

    /* renamed from: b */
    private final AnimatableFloatValue f6178b;

    /* renamed from: c */
    private final List<AnimatableFloatValue> f6179c;

    /* renamed from: d */
    private final AnimatableColorValue f6180d;

    /* renamed from: e */
    private final AnimatableIntegerValue f6181e;

    /* renamed from: f */
    private final AnimatableFloatValue f6182f;

    /* renamed from: g */
    private final LineCapType f6183g;

    /* renamed from: h */
    private final LineJoinType f6184h;

    /* renamed from: i */
    private final float f6185i;

    /* renamed from: j */
    private final boolean f6186j;

    /* renamed from: com.airbnb.lottie.model.content.ShapeStroke$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeStroke$1.class */
    static /* synthetic */ class C06591 {

        /* renamed from: a */
        static final /* synthetic */ int[] f6187a;

        /* renamed from: b */
        static final /* synthetic */ int[] f6188b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[LineJoinType.values().length];
            f6188b = iArr;
            try {
                iArr[LineJoinType.BEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f6188b[LineJoinType.MITER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f6188b[LineJoinType.ROUND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[LineCapType.values().length];
            f6187a = iArr2;
            try {
                iArr2[LineCapType.BUTT.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f6187a[LineCapType.ROUND.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f6187a[LineCapType.UNKNOWN.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeStroke$LineCapType.class */
    public enum LineCapType {
        BUTT,
        ROUND,
        UNKNOWN;

        public Paint.Cap toPaintCap() {
            int i = C06591.f6187a[ordinal()];
            return i != 1 ? i != 2 ? Paint.Cap.SQUARE : Paint.Cap.ROUND : Paint.Cap.BUTT;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/content/ShapeStroke$LineJoinType.class */
    public enum LineJoinType {
        MITER,
        ROUND,
        BEVEL;

        public Paint.Join toPaintJoin() {
            int i = C06591.f6188b[ordinal()];
            if (i == 1) {
                return Paint.Join.BEVEL;
            }
            if (i == 2) {
                return Paint.Join.MITER;
            }
            if (i != 3) {
                return null;
            }
            return Paint.Join.ROUND;
        }
    }

    public ShapeStroke(String str, @Nullable AnimatableFloatValue animatableFloatValue, List<AnimatableFloatValue> list, AnimatableColorValue animatableColorValue, AnimatableIntegerValue animatableIntegerValue, AnimatableFloatValue animatableFloatValue2, LineCapType lineCapType, LineJoinType lineJoinType, float f, boolean z) {
        this.f6177a = str;
        this.f6178b = animatableFloatValue;
        this.f6179c = list;
        this.f6180d = animatableColorValue;
        this.f6181e = animatableIntegerValue;
        this.f6182f = animatableFloatValue2;
        this.f6183g = lineCapType;
        this.f6184h = lineJoinType;
        this.f6185i = f;
        this.f6186j = z;
    }

    @Override // com.airbnb.lottie.model.content.ContentModel
    /* renamed from: a */
    public Content mo15977a(LottieDrawable lottieDrawable, BaseLayer baseLayer) {
        return new StrokeContent(lottieDrawable, baseLayer, this);
    }

    /* renamed from: b */
    public LineCapType m15987b() {
        return this.f6183g;
    }

    /* renamed from: c */
    public AnimatableColorValue m15986c() {
        return this.f6180d;
    }

    /* renamed from: d */
    public AnimatableFloatValue m15985d() {
        return this.f6178b;
    }

    /* renamed from: e */
    public LineJoinType m15984e() {
        return this.f6184h;
    }

    /* renamed from: f */
    public List<AnimatableFloatValue> m15983f() {
        return this.f6179c;
    }

    /* renamed from: g */
    public float m15982g() {
        return this.f6185i;
    }

    /* renamed from: h */
    public String m15981h() {
        return this.f6177a;
    }

    /* renamed from: i */
    public AnimatableIntegerValue m15980i() {
        return this.f6181e;
    }

    /* renamed from: j */
    public AnimatableFloatValue m15979j() {
        return this.f6182f;
    }

    /* renamed from: k */
    public boolean m15978k() {
        return this.f6186j;
    }
}
