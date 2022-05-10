package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import java.util.HashMap;
import p012b.p036g.p037a.C0801f;
import p012b.p036g.p037a.p038i.C0804a;
import p012b.p036g.p037a.p038i.C0808e;
import p012b.p036g.p037a.p038i.C0810g;
import p012b.p036g.p039b.C0821a;
import p012b.p036g.p039b.C0825c;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: a */
    public SparseArray<View> f956a = new SparseArray<>();

    /* renamed from: b */
    public ArrayList<ConstraintHelper> f957b = new ArrayList<>(4);

    /* renamed from: c */
    public final ArrayList<ConstraintWidget> f958c = new ArrayList<>(100);

    /* renamed from: d */
    public C0808e f959d = new C0808e();

    /* renamed from: e */
    public int f960e = 0;

    /* renamed from: f */
    public int f961f = 0;

    /* renamed from: g */
    public int f962g = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;

    /* renamed from: h */
    public int f963h = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;

    /* renamed from: i */
    public boolean f964i = true;

    /* renamed from: j */
    public int f965j = 7;

    /* renamed from: k */
    public C0821a f966k = null;

    /* renamed from: l */
    public int f967l = -1;

    /* renamed from: m */
    public HashMap<String, Integer> f968m = new HashMap<>();

    /* renamed from: n */
    public int f969n = -1;

    /* renamed from: o */
    public int f970o = -1;

    /* renamed from: p */
    public C0801f f971p;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f972A;

        /* renamed from: B */
        public String f973B;

        /* renamed from: C */
        public int f974C;

        /* renamed from: D */
        public float f975D;

        /* renamed from: E */
        public float f976E;

        /* renamed from: F */
        public int f977F;

        /* renamed from: G */
        public int f978G;

        /* renamed from: H */
        public int f979H;

        /* renamed from: I */
        public int f980I;

        /* renamed from: J */
        public int f981J;

        /* renamed from: K */
        public int f982K;

        /* renamed from: L */
        public int f983L;

        /* renamed from: M */
        public int f984M;

        /* renamed from: N */
        public float f985N;

        /* renamed from: O */
        public float f986O;

        /* renamed from: P */
        public int f987P;

        /* renamed from: Q */
        public int f988Q;

        /* renamed from: R */
        public int f989R;

        /* renamed from: S */
        public boolean f990S;

        /* renamed from: T */
        public boolean f991T;

        /* renamed from: U */
        public boolean f992U;

        /* renamed from: V */
        public boolean f993V;

        /* renamed from: W */
        public boolean f994W;

        /* renamed from: X */
        public boolean f995X;

        /* renamed from: Y */
        public boolean f996Y;

        /* renamed from: Z */
        public boolean f997Z;

        /* renamed from: a */
        public int f998a;

        /* renamed from: a0 */
        public int f999a0;

        /* renamed from: b */
        public int f1000b;

        /* renamed from: b0 */
        public int f1001b0;

        /* renamed from: c */
        public float f1002c;

        /* renamed from: c0 */
        public int f1003c0;

        /* renamed from: d */
        public int f1004d;

        /* renamed from: d0 */
        public int f1005d0;

        /* renamed from: e */
        public int f1006e;

        /* renamed from: e0 */
        public int f1007e0;

        /* renamed from: f */
        public int f1008f;

        /* renamed from: f0 */
        public int f1009f0;

        /* renamed from: g */
        public int f1010g;

        /* renamed from: g0 */
        public float f1011g0;

        /* renamed from: h */
        public int f1012h;

        /* renamed from: h0 */
        public int f1013h0;

        /* renamed from: i */
        public int f1014i;

        /* renamed from: i0 */
        public int f1015i0;

        /* renamed from: j */
        public int f1016j;

        /* renamed from: j0 */
        public float f1017j0;

        /* renamed from: k */
        public int f1018k;

        /* renamed from: k0 */
        public ConstraintWidget f1019k0;

        /* renamed from: l */
        public int f1020l;

        /* renamed from: l0 */
        public boolean f1021l0;

        /* renamed from: m */
        public int f1022m;

        /* renamed from: n */
        public int f1023n;

        /* renamed from: o */
        public float f1024o;

        /* renamed from: p */
        public int f1025p;

        /* renamed from: q */
        public int f1026q;

        /* renamed from: r */
        public int f1027r;

        /* renamed from: s */
        public int f1028s;

        /* renamed from: t */
        public int f1029t;

        /* renamed from: u */
        public int f1030u;

        /* renamed from: v */
        public int f1031v;

        /* renamed from: w */
        public int f1032w;

        /* renamed from: x */
        public int f1033x;

        /* renamed from: y */
        public int f1034y;

        /* renamed from: z */
        public float f1035z;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$LayoutParams$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$LayoutParams$a.class */
        public static class C0182a {

            /* renamed from: a */
            public static final SparseIntArray f1036a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1036a = sparseIntArray;
                sparseIntArray.append(C0825c.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintCircle, 2);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                f1036a.append(C0825c.ConstraintLayout_Layout_android_orientation, 1);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                f1036a.append(C0825c.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
            }
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f998a = -1;
            this.f1000b = -1;
            this.f1002c = -1.0f;
            this.f1004d = -1;
            this.f1006e = -1;
            this.f1008f = -1;
            this.f1010g = -1;
            this.f1012h = -1;
            this.f1014i = -1;
            this.f1016j = -1;
            this.f1018k = -1;
            this.f1020l = -1;
            this.f1022m = -1;
            this.f1023n = 0;
            this.f1024o = 0.0f;
            this.f1025p = -1;
            this.f1026q = -1;
            this.f1027r = -1;
            this.f1028s = -1;
            this.f1029t = -1;
            this.f1030u = -1;
            this.f1031v = -1;
            this.f1032w = -1;
            this.f1033x = -1;
            this.f1034y = -1;
            this.f1035z = 0.5f;
            this.f972A = 0.5f;
            this.f973B = null;
            this.f974C = 1;
            this.f975D = -1.0f;
            this.f976E = -1.0f;
            this.f977F = 0;
            this.f978G = 0;
            this.f979H = 0;
            this.f980I = 0;
            this.f981J = 0;
            this.f982K = 0;
            this.f983L = 0;
            this.f984M = 0;
            this.f985N = 1.0f;
            this.f986O = 1.0f;
            this.f987P = -1;
            this.f988Q = -1;
            this.f989R = -1;
            this.f990S = false;
            this.f991T = false;
            this.f992U = true;
            this.f993V = true;
            this.f994W = false;
            this.f995X = false;
            this.f996Y = false;
            this.f997Z = false;
            this.f999a0 = -1;
            this.f1001b0 = -1;
            this.f1003c0 = -1;
            this.f1005d0 = -1;
            this.f1007e0 = -1;
            this.f1009f0 = -1;
            this.f1011g0 = 0.5f;
            this.f1019k0 = new ConstraintWidget();
            this.f1021l0 = false;
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f998a = -1;
            this.f1000b = -1;
            this.f1002c = -1.0f;
            this.f1004d = -1;
            this.f1006e = -1;
            this.f1008f = -1;
            this.f1010g = -1;
            this.f1012h = -1;
            this.f1014i = -1;
            this.f1016j = -1;
            this.f1018k = -1;
            this.f1020l = -1;
            this.f1022m = -1;
            this.f1023n = 0;
            this.f1024o = 0.0f;
            this.f1025p = -1;
            this.f1026q = -1;
            this.f1027r = -1;
            this.f1028s = -1;
            this.f1029t = -1;
            this.f1030u = -1;
            this.f1031v = -1;
            this.f1032w = -1;
            this.f1033x = -1;
            this.f1034y = -1;
            this.f1035z = 0.5f;
            this.f972A = 0.5f;
            this.f973B = null;
            this.f974C = 1;
            this.f975D = -1.0f;
            this.f976E = -1.0f;
            this.f977F = 0;
            this.f978G = 0;
            this.f979H = 0;
            this.f980I = 0;
            this.f981J = 0;
            this.f982K = 0;
            this.f983L = 0;
            this.f984M = 0;
            this.f985N = 1.0f;
            this.f986O = 1.0f;
            this.f987P = -1;
            this.f988Q = -1;
            this.f989R = -1;
            this.f990S = false;
            this.f991T = false;
            this.f992U = true;
            this.f993V = true;
            this.f994W = false;
            this.f995X = false;
            this.f996Y = false;
            this.f997Z = false;
            this.f999a0 = -1;
            this.f1001b0 = -1;
            this.f1003c0 = -1;
            this.f1005d0 = -1;
            this.f1007e0 = -1;
            this.f1009f0 = -1;
            this.f1011g0 = 0.5f;
            this.f1019k0 = new ConstraintWidget();
            this.f1021l0 = false;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0825c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0182a.f1036a.get(index);
                switch (i3) {
                    case 1:
                        this.f989R = obtainStyledAttributes.getInt(index, this.f989R);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f1022m);
                        this.f1022m = resourceId;
                        if (resourceId == -1) {
                            this.f1022m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f1023n = obtainStyledAttributes.getDimensionPixelSize(index, this.f1023n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f1024o) % 360.0f;
                        this.f1024o = f;
                        if (f < 0.0f) {
                            this.f1024o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f998a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f998a);
                        break;
                    case 6:
                        this.f1000b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1000b);
                        break;
                    case 7:
                        this.f1002c = obtainStyledAttributes.getFloat(index, this.f1002c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f1004d);
                        this.f1004d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1004d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f1006e);
                        this.f1006e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1006e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f1008f);
                        this.f1008f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1008f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f1010g);
                        this.f1010g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1010g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f1012h);
                        this.f1012h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1012h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f1014i);
                        this.f1014i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1014i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f1016j);
                        this.f1016j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1016j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f1018k);
                        this.f1018k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1018k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f1020l);
                        this.f1020l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1020l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f1025p);
                        this.f1025p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1025p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f1026q);
                        this.f1026q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1026q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f1027r);
                        this.f1027r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1027r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f1028s);
                        this.f1028s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1028s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f1029t = obtainStyledAttributes.getDimensionPixelSize(index, this.f1029t);
                        break;
                    case 22:
                        this.f1030u = obtainStyledAttributes.getDimensionPixelSize(index, this.f1030u);
                        break;
                    case 23:
                        this.f1031v = obtainStyledAttributes.getDimensionPixelSize(index, this.f1031v);
                        break;
                    case 24:
                        this.f1032w = obtainStyledAttributes.getDimensionPixelSize(index, this.f1032w);
                        break;
                    case 25:
                        this.f1033x = obtainStyledAttributes.getDimensionPixelSize(index, this.f1033x);
                        break;
                    case 26:
                        this.f1034y = obtainStyledAttributes.getDimensionPixelSize(index, this.f1034y);
                        break;
                    case 27:
                        this.f990S = obtainStyledAttributes.getBoolean(index, this.f990S);
                        break;
                    case 28:
                        this.f991T = obtainStyledAttributes.getBoolean(index, this.f991T);
                        break;
                    case 29:
                        this.f1035z = obtainStyledAttributes.getFloat(index, this.f1035z);
                        break;
                    case 30:
                        this.f972A = obtainStyledAttributes.getFloat(index, this.f972A);
                        break;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f979H = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f980I = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.f981J = obtainStyledAttributes.getDimensionPixelSize(index, this.f981J);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f981J) == -2) {
                                this.f981J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f983L = obtainStyledAttributes.getDimensionPixelSize(index, this.f983L);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f983L) == -2) {
                                this.f983L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f985N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f985N));
                        break;
                    case 36:
                        try {
                            this.f982K = obtainStyledAttributes.getDimensionPixelSize(index, this.f982K);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f982K) == -2) {
                                this.f982K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f984M = obtainStyledAttributes.getDimensionPixelSize(index, this.f984M);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f984M) == -2) {
                                this.f984M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f986O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f986O));
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f973B = string;
                                this.f974C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f973B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f973B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f974C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f974C = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f973B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f973B.substring(i);
                                        if (substring2.length() > 0) {
                                            Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f973B.substring(i, indexOf2);
                                        String substring4 = this.f973B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f974C == 1) {
                                                        Math.abs(parseFloat2 / parseFloat);
                                                        break;
                                                    } else {
                                                        Math.abs(parseFloat / parseFloat2);
                                                        break;
                                                    }
                                                }
                                            } catch (NumberFormatException e5) {
                                                break;
                                            }
                                        }
                                    }
                                } else {
                                    continue;
                                }
                                break;
                            case 45:
                                this.f975D = obtainStyledAttributes.getFloat(index, this.f975D);
                                continue;
                            case 46:
                                this.f976E = obtainStyledAttributes.getFloat(index, this.f976E);
                                continue;
                            case 47:
                                this.f977F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f978G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f987P = obtainStyledAttributes.getDimensionPixelOffset(index, this.f987P);
                                continue;
                            case 50:
                                this.f988Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f988Q);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m38704a();
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f998a = -1;
            this.f1000b = -1;
            this.f1002c = -1.0f;
            this.f1004d = -1;
            this.f1006e = -1;
            this.f1008f = -1;
            this.f1010g = -1;
            this.f1012h = -1;
            this.f1014i = -1;
            this.f1016j = -1;
            this.f1018k = -1;
            this.f1020l = -1;
            this.f1022m = -1;
            this.f1023n = 0;
            this.f1024o = 0.0f;
            this.f1025p = -1;
            this.f1026q = -1;
            this.f1027r = -1;
            this.f1028s = -1;
            this.f1029t = -1;
            this.f1030u = -1;
            this.f1031v = -1;
            this.f1032w = -1;
            this.f1033x = -1;
            this.f1034y = -1;
            this.f1035z = 0.5f;
            this.f972A = 0.5f;
            this.f973B = null;
            this.f974C = 1;
            this.f975D = -1.0f;
            this.f976E = -1.0f;
            this.f977F = 0;
            this.f978G = 0;
            this.f979H = 0;
            this.f980I = 0;
            this.f981J = 0;
            this.f982K = 0;
            this.f983L = 0;
            this.f984M = 0;
            this.f985N = 1.0f;
            this.f986O = 1.0f;
            this.f987P = -1;
            this.f988Q = -1;
            this.f989R = -1;
            this.f990S = false;
            this.f991T = false;
            this.f992U = true;
            this.f993V = true;
            this.f994W = false;
            this.f995X = false;
            this.f996Y = false;
            this.f997Z = false;
            this.f999a0 = -1;
            this.f1001b0 = -1;
            this.f1003c0 = -1;
            this.f1005d0 = -1;
            this.f1007e0 = -1;
            this.f1009f0 = -1;
            this.f1011g0 = 0.5f;
            this.f1019k0 = new ConstraintWidget();
            this.f1021l0 = false;
        }

        /* renamed from: a */
        public void m38704a() {
            this.f995X = false;
            this.f992U = true;
            this.f993V = true;
            if (((ViewGroup.MarginLayoutParams) this).width == -2 && this.f990S) {
                this.f992U = false;
                this.f979H = 1;
            }
            if (((ViewGroup.MarginLayoutParams) this).height == -2 && this.f991T) {
                this.f993V = false;
                this.f980I = 1;
            }
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == 0 || i == -1) {
                this.f992U = false;
                if (((ViewGroup.MarginLayoutParams) this).width == 0 && this.f979H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f990S = true;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == 0 || i2 == -1) {
                this.f993V = false;
                if (((ViewGroup.MarginLayoutParams) this).height == 0 && this.f980I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f991T = true;
                }
            }
            if (this.f1002c != -1.0f || this.f998a != -1 || this.f1000b != -1) {
                this.f995X = true;
                this.f992U = true;
                this.f993V = true;
                if (!(this.f1019k0 instanceof C0810g)) {
                    this.f1019k0 = new C0810g();
                }
                ((C0810g) this.f1019k0).m35868w(this.f989R);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00ad  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00c1  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00d5  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00e7  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x00f1  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x012d  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 612
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.LayoutParams.resolveLayoutDirection(int):void");
        }
    }

    public ConstraintLayout(Context context) {
        super(context);
        m38712a((AttributeSet) null);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m38712a(attributeSet);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m38712a(attributeSet);
    }

    /* renamed from: a */
    public final ConstraintWidget m38716a(int i) {
        if (i == 0) {
            return this.f959d;
        }
        View view = this.f956a.get(i);
        View view2 = view;
        if (view == null) {
            View findViewById = findViewById(i);
            view2 = findViewById;
            if (findViewById != null) {
                view2 = findViewById;
                if (findViewById != this) {
                    view2 = findViewById;
                    if (findViewById.getParent() == this) {
                        onViewAdded(findViewById);
                        view2 = findViewById;
                    }
                }
            }
        }
        if (view2 == this) {
            return this.f959d;
        }
        return view2 == null ? null : ((LayoutParams) view2.getLayoutParams()).f1019k0;
    }

    /* renamed from: a */
    public final ConstraintWidget m38711a(View view) {
        if (view == this) {
            return this.f959d;
        }
        return view == null ? null : ((LayoutParams) view.getLayoutParams()).f1019k0;
    }

    /* renamed from: a */
    public Object m38714a(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f968m;
        if (hashMap == null || !hashMap.containsKey(str)) {
            return null;
        }
        return this.f968m.get(str);
    }

    /* renamed from: a */
    public final void m38717a() {
        ConstraintWidget a;
        ConstraintWidget a2;
        ConstraintWidget a3;
        ConstraintWidget a4;
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        boolean z = false;
        if (isInEditMode) {
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    m38713a(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    String str = resourceName;
                    if (indexOf != -1) {
                        str = resourceName.substring(indexOf + 1);
                    }
                    m38716a(childAt.getId()).m38776a(str);
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        for (int i2 = 0; i2 < childCount; i2++) {
            ConstraintWidget a5 = m38711a(getChildAt(i2));
            if (a5 != null) {
                a5.mo35837E();
            }
        }
        if (this.f967l != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f967l && (childAt2 instanceof Constraints)) {
                    this.f966k = ((Constraints) childAt2).getConstraintSet();
                }
            }
        }
        C0821a aVar = this.f966k;
        if (aVar != null) {
            aVar.m35824a(this);
        }
        this.f959d.m35833M();
        int size = this.f957b.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f957b.get(i4).mo38700c(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof Placeholder) {
                ((Placeholder) childAt3).m38697b(this);
            }
        }
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            ConstraintWidget a6 = m38711a(childAt4);
            if (a6 == null) {
                boolean z2 = z ? 1 : 0;
                Object[] objArr = z ? 1 : 0;
                Object[] objArr2 = z ? 1 : 0;
                Object[] objArr3 = z ? 1 : 0;
                Object[] objArr4 = z ? 1 : 0;
                Object[] objArr5 = z ? 1 : 0;
                Object[] objArr6 = z ? 1 : 0;
                Object[] objArr7 = z ? 1 : 0;
                Object[] objArr8 = z ? 1 : 0;
                z = z2;
            } else {
                LayoutParams layoutParams = (LayoutParams) childAt4.getLayoutParams();
                layoutParams.m38704a();
                if (layoutParams.f1021l0) {
                    layoutParams.f1021l0 = z;
                } else if (isInEditMode) {
                    try {
                        String resourceName2 = getResources().getResourceName(childAt4.getId());
                        Object valueOf = Integer.valueOf(childAt4.getId());
                        int i7 = z ? 1 : 0;
                        int i8 = z ? 1 : 0;
                        int i9 = z ? 1 : 0;
                        int i10 = z ? 1 : 0;
                        int i11 = z ? 1 : 0;
                        int i12 = z ? 1 : 0;
                        int i13 = z ? 1 : 0;
                        int i14 = z ? 1 : 0;
                        int i15 = z ? 1 : 0;
                        m38713a(i7, resourceName2, valueOf);
                        m38716a(childAt4.getId()).m38776a(resourceName2.substring(resourceName2.indexOf("id/") + 3));
                    } catch (Resources.NotFoundException e2) {
                    }
                }
                a6.m38737o(childAt4.getVisibility());
                if (layoutParams.f997Z) {
                    a6.m38737o(8);
                }
                a6.m38777a(childAt4);
                this.f959d.m35830b(a6);
                if (!layoutParams.f993V || !layoutParams.f992U) {
                    this.f958c.add(a6);
                }
                if (layoutParams.f995X) {
                    C0810g gVar = (C0810g) a6;
                    int i16 = layoutParams.f1013h0;
                    int i17 = layoutParams.f1015i0;
                    float f = layoutParams.f1017j0;
                    if (Build.VERSION.SDK_INT < 17) {
                        i16 = layoutParams.f998a;
                        i17 = layoutParams.f1000b;
                        f = layoutParams.f1002c;
                    }
                    if (f != -1.0f) {
                        gVar.m35871e(f);
                        z = z;
                    } else if (i16 != -1) {
                        gVar.m35870u(i16);
                        z = z;
                    } else {
                        z = z;
                        if (i17 != -1) {
                            gVar.m35869v(i17);
                            z = z;
                        }
                    }
                } else {
                    if (layoutParams.f1004d == -1 && layoutParams.f1006e == -1 && layoutParams.f1008f == -1 && layoutParams.f1010g == -1 && layoutParams.f1026q == -1 && layoutParams.f1025p == -1 && layoutParams.f1027r == -1 && layoutParams.f1028s == -1 && layoutParams.f1012h == -1 && layoutParams.f1014i == -1 && layoutParams.f1016j == -1 && layoutParams.f1018k == -1 && layoutParams.f1020l == -1 && layoutParams.f987P == -1 && layoutParams.f988Q == -1 && layoutParams.f1022m == -1 && ((ViewGroup.MarginLayoutParams) layoutParams).width != -1) {
                        z = z;
                        if (((ViewGroup.MarginLayoutParams) layoutParams).height != -1) {
                        }
                    }
                    int i18 = layoutParams.f999a0;
                    int i19 = layoutParams.f1001b0;
                    int i20 = layoutParams.f1003c0;
                    int i21 = layoutParams.f1005d0;
                    int i22 = layoutParams.f1007e0;
                    int i23 = layoutParams.f1009f0;
                    float f2 = layoutParams.f1011g0;
                    if (Build.VERSION.SDK_INT < 17) {
                        i18 = layoutParams.f1004d;
                        int i24 = layoutParams.f1006e;
                        i20 = layoutParams.f1008f;
                        int i25 = layoutParams.f1010g;
                        i22 = layoutParams.f1029t;
                        i23 = layoutParams.f1031v;
                        f2 = layoutParams.f1035z;
                        if (i18 == -1 && i24 == -1) {
                            int i26 = layoutParams.f1026q;
                            if (i26 != -1) {
                                i18 = i26;
                            } else {
                                int i27 = layoutParams.f1025p;
                                if (i27 != -1) {
                                    i24 = i27;
                                }
                            }
                        }
                        if (i20 == -1 && i25 == -1) {
                            int i28 = layoutParams.f1027r;
                            if (i28 != -1) {
                                i20 = i28;
                            } else {
                                i21 = layoutParams.f1028s;
                                if (i21 != -1) {
                                    i20 = i20;
                                    i19 = i24;
                                }
                            }
                        }
                        i19 = i24;
                        i21 = i25;
                    }
                    int i29 = layoutParams.f1022m;
                    if (i29 != -1) {
                        ConstraintWidget a7 = m38716a(i29);
                        if (a7 != null) {
                            a6.m38779a(a7, layoutParams.f1024o, layoutParams.f1023n);
                        }
                    } else {
                        if (i18 != -1) {
                            ConstraintWidget a8 = m38716a(i18);
                            if (a8 != null) {
                                ConstraintAnchor.Type type = ConstraintAnchor.Type.LEFT;
                                a6.m38782a(type, a8, type, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i22);
                            }
                        } else if (!(i19 == -1 || (a4 = m38716a(i19)) == null)) {
                            a6.m38782a(ConstraintAnchor.Type.LEFT, a4, ConstraintAnchor.Type.RIGHT, ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin, i22);
                        }
                        if (i20 != -1) {
                            ConstraintWidget a9 = m38716a(i20);
                            if (a9 != null) {
                                a6.m38782a(ConstraintAnchor.Type.RIGHT, a9, ConstraintAnchor.Type.LEFT, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i23);
                            }
                        } else if (!(i21 == -1 || (a3 = m38716a(i21)) == null)) {
                            ConstraintAnchor.Type type2 = ConstraintAnchor.Type.RIGHT;
                            a6.m38782a(type2, a3, type2, ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin, i23);
                        }
                        int i30 = layoutParams.f1012h;
                        if (i30 != -1) {
                            ConstraintWidget a10 = m38716a(i30);
                            if (a10 != null) {
                                ConstraintAnchor.Type type3 = ConstraintAnchor.Type.TOP;
                                a6.m38782a(type3, a10, type3, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.f1030u);
                            }
                        } else {
                            int i31 = layoutParams.f1014i;
                            if (!(i31 == -1 || (a2 = m38716a(i31)) == null)) {
                                a6.m38782a(ConstraintAnchor.Type.TOP, a2, ConstraintAnchor.Type.BOTTOM, ((ViewGroup.MarginLayoutParams) layoutParams).topMargin, layoutParams.f1030u);
                            }
                        }
                        int i32 = layoutParams.f1016j;
                        if (i32 != -1) {
                            ConstraintWidget a11 = m38716a(i32);
                            if (a11 != null) {
                                a6.m38782a(ConstraintAnchor.Type.BOTTOM, a11, ConstraintAnchor.Type.TOP, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.f1032w);
                            }
                        } else {
                            int i33 = layoutParams.f1018k;
                            if (!(i33 == -1 || (a = m38716a(i33)) == null)) {
                                ConstraintAnchor.Type type4 = ConstraintAnchor.Type.BOTTOM;
                                a6.m38782a(type4, a, type4, ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin, layoutParams.f1032w);
                            }
                        }
                        int i34 = layoutParams.f1020l;
                        if (i34 != -1) {
                            View view = this.f956a.get(i34);
                            ConstraintWidget a12 = m38716a(layoutParams.f1020l);
                            if (!(a12 == null || view == null || !(view.getLayoutParams() instanceof LayoutParams))) {
                                layoutParams.f994W = true;
                                ((LayoutParams) view.getLayoutParams()).f994W = true;
                                a6.mo35876a(ConstraintAnchor.Type.BASELINE).m38806a(a12.mo35876a(ConstraintAnchor.Type.BASELINE), 0, -1, ConstraintAnchor.Strength.STRONG, 0, true);
                                a6.mo35876a(ConstraintAnchor.Type.TOP).m38795j();
                                a6.mo35876a(ConstraintAnchor.Type.BOTTOM).m38795j();
                            }
                        }
                        if (f2 >= 0.0f && f2 != 0.5f) {
                            a6.m38787a(f2);
                        }
                        float f3 = layoutParams.f972A;
                        if (f3 >= 0.0f && f3 != 0.5f) {
                            a6.m38766c(f3);
                        }
                    }
                    if (isInEditMode && !(layoutParams.f987P == -1 && layoutParams.f988Q == -1)) {
                        a6.m38764c(layoutParams.f987P, layoutParams.f988Q);
                    }
                    if (layoutParams.f992U) {
                        a6.m38781a(ConstraintWidget.DimensionBehaviour.FIXED);
                        a6.m38735p(((ViewGroup.MarginLayoutParams) layoutParams).width);
                    } else if (((ViewGroup.MarginLayoutParams) layoutParams).width == -1) {
                        a6.m38781a(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                        a6.mo35876a(ConstraintAnchor.Type.LEFT).f877e = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
                        a6.mo35876a(ConstraintAnchor.Type.RIGHT).f877e = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
                    } else {
                        a6.m38781a(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                        a6.m38735p(0);
                    }
                    if (layoutParams.f993V) {
                        a6.m38770b(ConstraintWidget.DimensionBehaviour.FIXED);
                        a6.m38751h(((ViewGroup.MarginLayoutParams) layoutParams).height);
                    } else if (((ViewGroup.MarginLayoutParams) layoutParams).height == -1) {
                        a6.m38770b(ConstraintWidget.DimensionBehaviour.MATCH_PARENT);
                        a6.mo35876a(ConstraintAnchor.Type.TOP).f877e = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
                        a6.mo35876a(ConstraintAnchor.Type.BOTTOM).f877e = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
                    } else {
                        a6.m38770b(ConstraintWidget.DimensionBehaviour.MATCH_CONSTRAINT);
                        a6.m38751h(0);
                    }
                    z = false;
                    String str2 = layoutParams.f973B;
                    if (str2 != null) {
                        a6.m38768b(str2);
                    }
                    a6.m38773b(layoutParams.f975D);
                    a6.m38762d(layoutParams.f976E);
                    a6.m38749i(layoutParams.f977F);
                    a6.m38739n(layoutParams.f978G);
                    a6.m38784a(layoutParams.f979H, layoutParams.f981J, layoutParams.f983L, layoutParams.f985N);
                    a6.m38771b(layoutParams.f980I, layoutParams.f982K, layoutParams.f984M, layoutParams.f986O);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m38715a(int i, int i2) {
        boolean z;
        int i3;
        int i4;
        boolean z2;
        int baseline;
        int i5;
        int i6;
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                ConstraintWidget constraintWidget = layoutParams.f1019k0;
                if (!layoutParams.f995X && !layoutParams.f996Y) {
                    constraintWidget.m38737o(childAt.getVisibility());
                    int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                    int i9 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                    boolean z3 = layoutParams.f992U;
                    if (z3 || layoutParams.f993V || (!z3 && layoutParams.f979H == 1) || ((ViewGroup.MarginLayoutParams) layoutParams).width == -1 || (!layoutParams.f993V && (layoutParams.f980I == 1 || ((ViewGroup.MarginLayoutParams) layoutParams).height == -1))) {
                        if (i8 == 0) {
                            i5 = ViewGroup.getChildMeasureSpec(i, paddingLeft, -2);
                            z2 = true;
                        } else if (i8 == -1) {
                            i5 = ViewGroup.getChildMeasureSpec(i, paddingLeft, -1);
                            z2 = false;
                        } else {
                            z2 = i8 == -2;
                            i5 = ViewGroup.getChildMeasureSpec(i, paddingLeft, i8);
                        }
                        if (i9 == 0) {
                            i6 = ViewGroup.getChildMeasureSpec(i2, paddingTop, -2);
                            z = true;
                        } else if (i9 == -1) {
                            i6 = ViewGroup.getChildMeasureSpec(i2, paddingTop, -1);
                            z = false;
                        } else {
                            z = i9 == -2;
                            i6 = ViewGroup.getChildMeasureSpec(i2, paddingTop, i9);
                        }
                        childAt.measure(i5, i6);
                        C0801f fVar = this.f971p;
                        if (fVar != null) {
                            fVar.f3752a++;
                        }
                        constraintWidget.m38767b(i8 == -2);
                        constraintWidget.m38775a(i9 == -2);
                        i3 = childAt.getMeasuredWidth();
                        i4 = childAt.getMeasuredHeight();
                    } else {
                        z2 = false;
                        z = false;
                        i4 = i9;
                        i3 = i8;
                    }
                    constraintWidget.m38735p(i3);
                    constraintWidget.m38751h(i4);
                    if (z2) {
                        constraintWidget.m38731r(i3);
                    }
                    if (z) {
                        constraintWidget.m38733q(i4);
                    }
                    if (layoutParams.f994W && (baseline = childAt.getBaseline()) != -1) {
                        constraintWidget.m38753g(baseline);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public void m38713a(int i, Object obj, Object obj2) {
        if (i == 0 && (obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.f968m == null) {
                this.f968m = new HashMap<>();
            }
            String str = (String) obj;
            int indexOf = str.indexOf("/");
            String str2 = str;
            if (indexOf != -1) {
                str2 = str.substring(indexOf + 1);
            }
            this.f968m.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    /* renamed from: a */
    public final void m38712a(AttributeSet attributeSet) {
        this.f959d.m38777a(this);
        this.f956a.put(getId(), this);
        this.f966k = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0825c.ConstraintLayout_Layout);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0825c.ConstraintLayout_Layout_android_minWidth) {
                    this.f960e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f960e);
                } else if (index == C0825c.ConstraintLayout_Layout_android_minHeight) {
                    this.f961f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f961f);
                } else if (index == C0825c.ConstraintLayout_Layout_android_maxWidth) {
                    this.f962g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f962g);
                } else if (index == C0825c.ConstraintLayout_Layout_android_maxHeight) {
                    this.f963h = obtainStyledAttributes.getDimensionPixelOffset(index, this.f963h);
                } else if (index == C0825c.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f965j = obtainStyledAttributes.getInt(index, this.f965j);
                } else if (index == C0825c.ConstraintLayout_Layout_constraintSet) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0821a aVar = new C0821a();
                        this.f966k = aVar;
                        aVar.m35828a(getContext(), resourceId);
                    } catch (Resources.NotFoundException e) {
                        this.f966k = null;
                    }
                    this.f967l = resourceId;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f959d.m35886v(this.f965j);
    }

    /* renamed from: a */
    public void m38710a(String str) {
        this.f959d.mo35834L();
        C0801f fVar = this.f971p;
        if (fVar != null) {
            fVar.f3754c++;
        }
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    /* renamed from: b */
    public View m38708b(int i) {
        return this.f956a.get(i);
    }

    /* renamed from: b */
    public final void m38709b() {
        int childCount = getChildCount();
        boolean z = false;
        int i = 0;
        while (true) {
            if (i >= childCount) {
                break;
            } else if (getChildAt(i).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i++;
            }
        }
        if (z) {
            this.f958c.clear();
            m38717a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x038b  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x03e5  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x042a  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0441  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0447  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x0458  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0489  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0495  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x04ae  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x04bb  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x04c8  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x04d8  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x04fd  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38707b(int r7, int r8) {
        /*
            Method dump skipped, instructions count: 1294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.m38707b(int, int):void");
    }

    /* renamed from: c */
    public final void m38706c() {
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = getChildAt(i);
            if (childAt instanceof Placeholder) {
                ((Placeholder) childAt).m38698a(this);
            }
        }
        int size = this.f957b.size();
        if (size > 0) {
            for (int i2 = 0; i2 < size; i2++) {
                this.f957b.get(i2).m38718b(this);
            }
        }
    }

    /* renamed from: c */
    public final void m38705c(int i, int i2) {
        ConstraintWidget.DimensionBehaviour dimensionBehaviour;
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        ConstraintWidget.DimensionBehaviour dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.FIXED;
        getLayoutParams();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode != 1073741824) {
                dimensionBehaviour = dimensionBehaviour2;
            } else {
                size = Math.min(this.f962g, size) - (paddingLeft + paddingRight);
                dimensionBehaviour = dimensionBehaviour2;
            }
            size = 0;
        } else {
            dimensionBehaviour = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        if (mode2 != Integer.MIN_VALUE) {
            if (mode2 == 0) {
                dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            } else if (mode2 == 1073741824) {
                size2 = Math.min(this.f963h, size2) - (paddingTop + paddingBottom);
            }
            size2 = 0;
        } else {
            dimensionBehaviour2 = ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
        }
        this.f959d.m38741m(0);
        this.f959d.m38743l(0);
        this.f959d.m38781a(dimensionBehaviour);
        this.f959d.m38735p(size);
        this.f959d.m38770b(dimensionBehaviour2);
        this.f959d.m38751h(size2);
        this.f959d.m38741m((this.f960e - getPaddingLeft()) - getPaddingRight());
        this.f959d.m38743l((this.f961f - getPaddingTop()) - getPaddingBottom());
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (!(childAt.getVisibility() == 8 || (tag = childAt.getTag()) == null || !(tag instanceof String))) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int parseInt4 = Integer.parseInt(split[3]);
                        int i2 = (int) ((parseInt / 1080.0f) * width);
                        int i3 = (int) ((parseInt2 / 1920.0f) * height);
                        int i4 = (int) ((parseInt3 / 1080.0f) * width);
                        int i5 = (int) ((parseInt4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i2;
                        float f2 = i3;
                        float f3 = i2 + i4;
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i3 + i5;
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.f963h;
    }

    public int getMaxWidth() {
        return this.f962g;
    }

    public int getMinHeight() {
        return this.f961f;
    }

    public int getMinWidth() {
        return this.f960e;
    }

    public int getOptimizationLevel() {
        return this.f959d.m35904N();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            ConstraintWidget constraintWidget = layoutParams.f1019k0;
            if ((childAt.getVisibility() != 8 || layoutParams.f995X || layoutParams.f996Y || isInEditMode) && !layoutParams.f997Z) {
                int h = constraintWidget.m38752h();
                int i6 = constraintWidget.m38750i();
                int t = constraintWidget.m38728t() + h;
                int j = constraintWidget.m38748j() + i6;
                childAt.layout(h, i6, t, j);
                if ((childAt instanceof Placeholder) && (content = ((Placeholder) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(h, i6, t, j);
                }
            }
        }
        int size = this.f957b.size();
        if (size > 0) {
            for (int i7 = 0; i7 < size; i7++) {
                this.f957b.get(i7).mo38701a(this);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        boolean z;
        int i3;
        boolean z2;
        System.currentTimeMillis();
        int mode = View.MeasureSpec.getMode(i);
        int size = View.MeasureSpec.getSize(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size2 = View.MeasureSpec.getSize(i2);
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        this.f959d.m38729s(paddingLeft);
        this.f959d.m38727t(paddingTop);
        this.f959d.m38745k(this.f962g);
        this.f959d.m38747j(this.f963h);
        if (Build.VERSION.SDK_INT >= 17) {
            this.f959d.m35892c(getLayoutDirection() == 1);
        }
        m38705c(i, i2);
        int t = this.f959d.m38728t();
        int j = this.f959d.m38748j();
        if (this.f964i) {
            this.f964i = false;
            m38709b();
            z = true;
        } else {
            z = false;
        }
        boolean z3 = (this.f965j & 8) == 8;
        if (z3) {
            this.f959d.m35897U();
            this.f959d.m35888f(t, j);
            m38707b(i, i2);
        } else {
            m38715a(i, i2);
        }
        m38706c();
        if (getChildCount() > 0 && z) {
            C0804a.m35918a(this.f959d);
        }
        C0808e eVar = this.f959d;
        if (eVar.f3818x0) {
            if (eVar.f3819y0 && mode == Integer.MIN_VALUE) {
                int i4 = eVar.f3800A0;
                if (i4 < size) {
                    eVar.m38735p(i4);
                }
                this.f959d.m38781a(ConstraintWidget.DimensionBehaviour.FIXED);
            }
            C0808e eVar2 = this.f959d;
            if (eVar2.f3820z0 && mode2 == Integer.MIN_VALUE) {
                int i5 = eVar2.f3801B0;
                if (i5 < size2) {
                    eVar2.m38751h(i5);
                }
                this.f959d.m38770b(ConstraintWidget.DimensionBehaviour.FIXED);
            }
        }
        if ((this.f965j & 32) == 32) {
            int t2 = this.f959d.m38728t();
            int j2 = this.f959d.m38748j();
            if (this.f969n != t2 && mode == 1073741824) {
                C0804a.m35915a(this.f959d.f3817w0, 0, t2);
            }
            if (this.f970o != j2 && mode2 == 1073741824) {
                C0804a.m35915a(this.f959d.f3817w0, 1, j2);
            }
            C0808e eVar3 = this.f959d;
            if (eVar3.f3819y0 && eVar3.f3800A0 > size) {
                C0804a.m35915a(eVar3.f3817w0, 0, size);
            }
            C0808e eVar4 = this.f959d;
            if (eVar4.f3820z0 && eVar4.f3801B0 > size2) {
                C0804a.m35915a(eVar4.f3817w0, 1, size2);
            }
        }
        if (getChildCount() > 0) {
            m38710a("First pass");
        }
        int size3 = this.f958c.size();
        int paddingBottom = paddingTop + getPaddingBottom();
        int paddingRight = paddingLeft + getPaddingRight();
        if (size3 > 0) {
            boolean z4 = this.f959d.m38746k() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            boolean z5 = this.f959d.m38732r() == ConstraintWidget.DimensionBehaviour.WRAP_CONTENT;
            int max = Math.max(this.f959d.m38728t(), this.f960e);
            int max2 = Math.max(this.f959d.m38748j(), this.f961f);
            boolean z6 = false;
            i3 = 0;
            for (int i6 = 0; i6 < size3; i6++) {
                ConstraintWidget constraintWidget = this.f958c.get(i6);
                View view = (View) constraintWidget.m38756f();
                if (view != null) {
                    LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
                    if (!layoutParams.f996Y && !layoutParams.f995X) {
                        boolean z7 = z6;
                        if (view.getVisibility() != 8 && (!z3 || !constraintWidget.m38740n().m35844c() || !constraintWidget.m38742m().m35844c())) {
                            int i7 = ((ViewGroup.MarginLayoutParams) layoutParams).width;
                            int makeMeasureSpec = (i7 != -2 || !layoutParams.f992U) ? View.MeasureSpec.makeMeasureSpec(constraintWidget.m38728t(), 1073741824) : ViewGroup.getChildMeasureSpec(i, paddingRight, i7);
                            int i8 = ((ViewGroup.MarginLayoutParams) layoutParams).height;
                            view.measure(makeMeasureSpec, (i8 != -2 || !layoutParams.f993V) ? View.MeasureSpec.makeMeasureSpec(constraintWidget.m38748j(), 1073741824) : ViewGroup.getChildMeasureSpec(i2, paddingBottom, i8));
                            C0801f fVar = this.f971p;
                            if (fVar != null) {
                                fVar.f3753b++;
                            }
                            int measuredWidth = view.getMeasuredWidth();
                            int measuredHeight = view.getMeasuredHeight();
                            max = max;
                            if (measuredWidth != constraintWidget.m38728t()) {
                                constraintWidget.m38735p(measuredWidth);
                                if (z3) {
                                    constraintWidget.m38740n().m35849a(measuredWidth);
                                }
                                max = max;
                                if (z4) {
                                    max = max;
                                    if (constraintWidget.m38738o() > max) {
                                        max = Math.max(max, constraintWidget.m38738o() + constraintWidget.mo35876a(ConstraintAnchor.Type.RIGHT).m38803b());
                                    }
                                }
                                z7 = true;
                            }
                            if (measuredHeight != constraintWidget.m38748j()) {
                                constraintWidget.m38751h(measuredHeight);
                                if (z3) {
                                    constraintWidget.m38742m().m35849a(measuredHeight);
                                }
                                max2 = max2;
                                if (z5) {
                                    max2 = max2;
                                    if (constraintWidget.m38759e() > max2) {
                                        max2 = Math.max(max2, constraintWidget.m38759e() + constraintWidget.mo35876a(ConstraintAnchor.Type.BOTTOM).m38803b());
                                    }
                                }
                                z7 = true;
                            }
                            z6 = z7;
                            if (layoutParams.f994W) {
                                int baseline = view.getBaseline();
                                z6 = z7;
                                if (baseline != -1) {
                                    z6 = z7;
                                    if (baseline != constraintWidget.m38763d()) {
                                        constraintWidget.m38753g(baseline);
                                        z6 = true;
                                    }
                                }
                            }
                            if (Build.VERSION.SDK_INT >= 11) {
                                i3 = ViewGroup.combineMeasuredStates(i3, view.getMeasuredState());
                            }
                        }
                    }
                }
            }
            if (z6) {
                this.f959d.m38735p(t);
                this.f959d.m38751h(j);
                if (z3) {
                    this.f959d.m35895W();
                }
                m38710a("2nd pass");
                if (this.f959d.m38728t() < max) {
                    this.f959d.m38735p(max);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.f959d.m38748j() < max2) {
                    this.f959d.m38751h(max2);
                    z2 = true;
                }
                if (z2) {
                    m38710a("3rd pass");
                }
            }
            for (int i9 = 0; i9 < size3; i9++) {
                ConstraintWidget constraintWidget2 = this.f958c.get(i9);
                View view2 = (View) constraintWidget2.m38756f();
                if (!(view2 == null || ((view2.getMeasuredWidth() == constraintWidget2.m38728t() && view2.getMeasuredHeight() == constraintWidget2.m38748j()) || constraintWidget2.m38730s() == 8))) {
                    view2.measure(View.MeasureSpec.makeMeasureSpec(constraintWidget2.m38728t(), 1073741824), View.MeasureSpec.makeMeasureSpec(constraintWidget2.m38748j(), 1073741824));
                    C0801f fVar2 = this.f971p;
                    if (fVar2 != null) {
                        fVar2.f3753b++;
                    }
                }
            }
        } else {
            i3 = 0;
        }
        int t3 = this.f959d.m38728t() + paddingRight;
        int j3 = this.f959d.m38748j() + paddingBottom;
        if (Build.VERSION.SDK_INT >= 11) {
            int resolveSizeAndState = ViewGroup.resolveSizeAndState(t3, i, i3);
            int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(j3, i2, i3 << 16);
            int min = Math.min(this.f962g, resolveSizeAndState & 16777215);
            int min2 = Math.min(this.f963h, resolveSizeAndState2 & 16777215);
            int i10 = min;
            if (this.f959d.m35900R()) {
                i10 = min | 16777216;
            }
            int i11 = min2;
            if (this.f959d.m35902P()) {
                i11 = min2 | 16777216;
            }
            setMeasuredDimension(i10, i11);
            this.f969n = i10;
            this.f970o = i11;
            return;
        }
        setMeasuredDimension(t3, j3);
        this.f969n = t3;
        this.f970o = j3;
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        ConstraintWidget a = m38711a(view);
        if ((view instanceof Guideline) && !(a instanceof C0810g)) {
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            C0810g gVar = new C0810g();
            layoutParams.f1019k0 = gVar;
            layoutParams.f995X = true;
            gVar.m35868w(layoutParams.f989R);
        }
        if (view instanceof ConstraintHelper) {
            ConstraintHelper constraintHelper = (ConstraintHelper) view;
            constraintHelper.m38720a();
            ((LayoutParams) view.getLayoutParams()).f996Y = true;
            if (!this.f957b.contains(constraintHelper)) {
                this.f957b.add(constraintHelper);
            }
        }
        this.f956a.put(view.getId(), view);
        this.f964i = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f956a.remove(view.getId());
        ConstraintWidget a = m38711a(view);
        this.f959d.m35829c(a);
        this.f957b.remove(view);
        this.f958c.remove(a);
        this.f964i = true;
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        super.removeView(view);
        if (Build.VERSION.SDK_INT < 14) {
            onViewRemoved(view);
        }
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        super.requestLayout();
        this.f964i = true;
        this.f969n = -1;
        this.f970o = -1;
    }

    public void setConstraintSet(C0821a aVar) {
        this.f966k = aVar;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f956a.remove(getId());
        super.setId(i);
        this.f956a.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i != this.f963h) {
            this.f963h = i;
            requestLayout();
        }
    }

    public void setMaxWidth(int i) {
        if (i != this.f962g) {
            this.f962g = i;
            requestLayout();
        }
    }

    public void setMinHeight(int i) {
        if (i != this.f961f) {
            this.f961f = i;
            requestLayout();
        }
    }

    public void setMinWidth(int i) {
        if (i != this.f960e) {
            this.f960e = i;
            requestLayout();
        }
    }

    public void setOptimizationLevel(int i) {
        this.f959d.m35886v(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
