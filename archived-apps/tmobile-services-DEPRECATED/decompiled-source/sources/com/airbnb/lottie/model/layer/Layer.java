package com.airbnb.lottie.model.layer;

import androidx.annotation.Nullable;
import com.airbnb.lottie.LottieComposition;
import com.airbnb.lottie.model.animatable.AnimatableFloatValue;
import com.airbnb.lottie.model.animatable.AnimatableTextFrame;
import com.airbnb.lottie.model.animatable.AnimatableTextProperties;
import com.airbnb.lottie.model.animatable.AnimatableTransform;
import com.airbnb.lottie.model.content.ContentModel;
import com.airbnb.lottie.model.content.Mask;
import com.airbnb.lottie.value.Keyframe;
import java.util.List;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/Layer.class */
public class Layer {

    /* renamed from: a */
    private final List<ContentModel> f6231a;

    /* renamed from: b */
    private final LottieComposition f6232b;

    /* renamed from: c */
    private final String f6233c;

    /* renamed from: d */
    private final long f6234d;

    /* renamed from: e */
    private final LayerType f6235e;

    /* renamed from: f */
    private final long f6236f;
    @Nullable

    /* renamed from: g */
    private final String f6237g;

    /* renamed from: h */
    private final List<Mask> f6238h;

    /* renamed from: i */
    private final AnimatableTransform f6239i;

    /* renamed from: j */
    private final int f6240j;

    /* renamed from: k */
    private final int f6241k;

    /* renamed from: l */
    private final int f6242l;

    /* renamed from: m */
    private final float f6243m;

    /* renamed from: n */
    private final float f6244n;

    /* renamed from: o */
    private final int f6245o;

    /* renamed from: p */
    private final int f6246p;
    @Nullable

    /* renamed from: q */
    private final AnimatableTextFrame f6247q;
    @Nullable

    /* renamed from: r */
    private final AnimatableTextProperties f6248r;
    @Nullable

    /* renamed from: s */
    private final AnimatableFloatValue f6249s;

    /* renamed from: t */
    private final List<Keyframe<Float>> f6250t;

    /* renamed from: u */
    private final MatteType f6251u;

    /* renamed from: v */
    private final boolean f6252v;

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/Layer$LayerType.class */
    public enum LayerType {
        PRE_COMP,
        SOLID,
        IMAGE,
        NULL,
        SHAPE,
        TEXT,
        UNKNOWN
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/layer/Layer$MatteType.class */
    public enum MatteType {
        NONE,
        ADD,
        INVERT,
        LUMA,
        LUMA_INVERTED,
        UNKNOWN
    }

    public Layer(List<ContentModel> list, LottieComposition lottieComposition, String str, long j, LayerType layerType, long j2, @Nullable String str2, List<Mask> list2, AnimatableTransform animatableTransform, int i, int i2, int i3, float f, float f2, int i4, int i5, @Nullable AnimatableTextFrame animatableTextFrame, @Nullable AnimatableTextProperties animatableTextProperties, List<Keyframe<Float>> list3, MatteType matteType, @Nullable AnimatableFloatValue animatableFloatValue, boolean z) {
        this.f6231a = list;
        this.f6232b = lottieComposition;
        this.f6233c = str;
        this.f6234d = j;
        this.f6235e = layerType;
        this.f6236f = j2;
        this.f6237g = str2;
        this.f6238h = list2;
        this.f6239i = animatableTransform;
        this.f6240j = i;
        this.f6241k = i2;
        this.f6242l = i3;
        this.f6243m = f;
        this.f6244n = f2;
        this.f6245o = i4;
        this.f6246p = i5;
        this.f6247q = animatableTextFrame;
        this.f6248r = animatableTextProperties;
        this.f6250t = list3;
        this.f6251u = matteType;
        this.f6249s = animatableFloatValue;
        this.f6252v = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public LottieComposition m15938a() {
        return this.f6232b;
    }

    /* renamed from: b */
    public long m15937b() {
        return this.f6234d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public List<Keyframe<Float>> m15936c() {
        return this.f6250t;
    }

    /* renamed from: d */
    public LayerType m15935d() {
        return this.f6235e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public List<Mask> m15934e() {
        return this.f6238h;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public MatteType m15933f() {
        return this.f6251u;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public String m15932g() {
        return this.f6233c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public long m15931h() {
        return this.f6236f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public int m15930i() {
        return this.f6246p;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public int m15929j() {
        return this.f6245o;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: k */
    public String m15928k() {
        return this.f6237g;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public List<ContentModel> m15927l() {
        return this.f6231a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public int m15926m() {
        return this.f6242l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public int m15925n() {
        return this.f6241k;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public int m15924o() {
        return this.f6240j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public float m15923p() {
        return this.f6244n / this.f6232b.m16342e();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: q */
    public AnimatableTextFrame m15922q() {
        return this.f6247q;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: r */
    public AnimatableTextProperties m15921r() {
        return this.f6248r;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: s */
    public AnimatableFloatValue m15920s() {
        return this.f6249s;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public float m15919t() {
        return this.f6243m;
    }

    public String toString() {
        return m15916w("");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public AnimatableTransform m15918u() {
        return this.f6239i;
    }

    /* renamed from: v */
    public boolean m15917v() {
        return this.f6252v;
    }

    /* renamed from: w */
    public String m15916w(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append(m15932g());
        sb.append("\n");
        Layer s = this.f6232b.m16328s(m15931h());
        if (s != null) {
            sb.append("\t\tParents: ");
            sb.append(s.m15932g());
            Layer s2 = this.f6232b.m16328s(s.m15931h());
            while (s2 != null) {
                sb.append("->");
                sb.append(s2.m15932g());
                s2 = this.f6232b.m16328s(s2.m15931h());
            }
            sb.append(str);
            sb.append("\n");
        }
        if (!m15934e().isEmpty()) {
            sb.append(str);
            sb.append("\tMasks: ");
            sb.append(m15934e().size());
            sb.append("\n");
        }
        if (!(m15924o() == 0 || m15925n() == 0)) {
            sb.append(str);
            sb.append("\tBackground: ");
            sb.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(m15924o()), Integer.valueOf(m15925n()), Integer.valueOf(m15926m())));
        }
        if (!this.f6231a.isEmpty()) {
            sb.append(str);
            sb.append("\tShapes:\n");
            for (ContentModel contentModel : this.f6231a) {
                sb.append(str);
                sb.append("\t\t");
                sb.append(contentModel);
                sb.append("\n");
            }
        }
        return sb.toString();
    }
}
