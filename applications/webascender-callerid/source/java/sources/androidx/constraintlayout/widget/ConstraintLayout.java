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
import f.f.b.k.d;
import f.f.b.k.e;
import f.f.b.k.f;
import f.f.b.k.g;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: f */
    SparseArray<View> f686f = new SparseArray<>();

    /* renamed from: g */
    private ArrayList<AbstractC0156b> f687g = new ArrayList<>(4);

    /* renamed from: h */
    protected f f688h = new f();

    /* renamed from: i */
    private int f689i = 0;

    /* renamed from: j */
    private int f690j = 0;

    /* renamed from: k */
    private int f691k = Integer.MAX_VALUE;

    /* renamed from: l */
    private int f692l = Integer.MAX_VALUE;

    /* renamed from: m */
    protected boolean f693m = true;

    /* renamed from: n */
    private int f694n = 257;

    /* renamed from: o */
    private C0160d f695o = null;

    /* renamed from: p */
    protected C0157c f696p = null;

    /* renamed from: q */
    private int f697q = -1;

    /* renamed from: r */
    private HashMap<String, Integer> f698r = new HashMap<>();

    /* renamed from: s */
    private int f699s = -1;

    /* renamed from: t */
    private int f700t = -1;

    /* renamed from: u */
    private SparseArray<e> f701u = new SparseArray<>();

    /* renamed from: v */
    c f702v = new c(this, this);

    /* renamed from: w */
    private int f703w = 0;

    /* renamed from: x */
    private int f704x = 0;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    static /* synthetic */ class C0150a {

        /* renamed from: a */
        static final /* synthetic */ int[] f705a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[e.b.values().length];
            f705a = iArr;
            try {
                iArr[e.b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f705a[e.b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f705a[e.b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f705a[e.b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$b.class */
    public static class C0151b extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public float f706A;

        /* renamed from: B */
        public String f707B;

        /* renamed from: C */
        int f708C;

        /* renamed from: D */
        public float f709D;

        /* renamed from: E */
        public float f710E;

        /* renamed from: F */
        public int f711F;

        /* renamed from: G */
        public int f712G;

        /* renamed from: H */
        public int f713H;

        /* renamed from: I */
        public int f714I;

        /* renamed from: J */
        public int f715J;

        /* renamed from: K */
        public int f716K;

        /* renamed from: L */
        public int f717L;

        /* renamed from: M */
        public int f718M;

        /* renamed from: N */
        public float f719N;

        /* renamed from: O */
        public float f720O;

        /* renamed from: P */
        public int f721P;

        /* renamed from: Q */
        public int f722Q;

        /* renamed from: R */
        public int f723R;

        /* renamed from: S */
        public boolean f724S;

        /* renamed from: T */
        public boolean f725T;

        /* renamed from: U */
        public String f726U;

        /* renamed from: V */
        boolean f727V;

        /* renamed from: W */
        boolean f728W;

        /* renamed from: X */
        boolean f729X;

        /* renamed from: Y */
        boolean f730Y;

        /* renamed from: Z */
        boolean f731Z;

        /* renamed from: a */
        public int f732a;

        /* renamed from: a0 */
        boolean f733a0;

        /* renamed from: b */
        public int f734b;

        /* renamed from: b0 */
        boolean f735b0;

        /* renamed from: c */
        public float f736c;

        /* renamed from: c0 */
        int f737c0;

        /* renamed from: d */
        public int f738d;

        /* renamed from: d0 */
        int f739d0;

        /* renamed from: e */
        public int f740e;

        /* renamed from: e0 */
        int f741e0;

        /* renamed from: f */
        public int f742f;

        /* renamed from: f0 */
        int f743f0;

        /* renamed from: g */
        public int f744g;

        /* renamed from: g0 */
        int f745g0;

        /* renamed from: h */
        public int f746h;

        /* renamed from: h0 */
        int f747h0;

        /* renamed from: i */
        public int f748i;

        /* renamed from: i0 */
        float f749i0;

        /* renamed from: j */
        public int f750j;

        /* renamed from: j0 */
        int f751j0;

        /* renamed from: k */
        public int f752k;

        /* renamed from: k0 */
        int f753k0;

        /* renamed from: l */
        public int f754l;

        /* renamed from: l0 */
        float f755l0;

        /* renamed from: m */
        public int f756m;

        /* renamed from: m0 */
        e f757m0;

        /* renamed from: n */
        public int f758n;

        /* renamed from: n0 */
        public boolean f759n0;

        /* renamed from: o */
        public float f760o;

        /* renamed from: p */
        public int f761p;

        /* renamed from: q */
        public int f762q;

        /* renamed from: r */
        public int f763r;

        /* renamed from: s */
        public int f764s;

        /* renamed from: t */
        public int f765t;

        /* renamed from: u */
        public int f766u;

        /* renamed from: v */
        public int f767v;

        /* renamed from: w */
        public int f768w;

        /* renamed from: x */
        public int f769x;

        /* renamed from: y */
        public int f770y;

        /* renamed from: z */
        public float f771z;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$b$a.class */
        public static class C0152a {

            /* renamed from: a */
            public static final SparseIntArray f772a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f772a = sparseIntArray;
                sparseIntArray.append(C0170i.f1153w1, 8);
                sparseIntArray.append(C0170i.f1158x1, 9);
                sparseIntArray.append(C0170i.f1168z1, 10);
                sparseIntArray.append(C0170i.f908A1, 11);
                sparseIntArray.append(C0170i.f938G1, 12);
                sparseIntArray.append(C0170i.f933F1, 13);
                sparseIntArray.append(C0170i.f1062e1, 14);
                sparseIntArray.append(C0170i.f1056d1, 15);
                sparseIntArray.append(C0170i.f1044b1, 16);
                sparseIntArray.append(C0170i.f1068f1, 2);
                sparseIntArray.append(C0170i.f1078h1, 3);
                sparseIntArray.append(C0170i.f1073g1, 4);
                sparseIntArray.append(C0170i.f978O1, 49);
                sparseIntArray.append(C0170i.f983P1, 50);
                sparseIntArray.append(C0170i.f1098l1, 5);
                sparseIntArray.append(C0170i.f1103m1, 6);
                sparseIntArray.append(C0170i.f1108n1, 7);
                sparseIntArray.append(C0170i.f957K0, 1);
                sparseIntArray.append(C0170i.f913B1, 17);
                sparseIntArray.append(C0170i.f918C1, 18);
                sparseIntArray.append(C0170i.f1093k1, 19);
                sparseIntArray.append(C0170i.f1088j1, 20);
                sparseIntArray.append(C0170i.f998S1, 21);
                sparseIntArray.append(C0170i.f1013V1, 22);
                sparseIntArray.append(C0170i.f1003T1, 23);
                sparseIntArray.append(C0170i.f988Q1, 24);
                sparseIntArray.append(C0170i.f1008U1, 25);
                sparseIntArray.append(C0170i.f993R1, 26);
                sparseIntArray.append(C0170i.f1133s1, 29);
                sparseIntArray.append(C0170i.f943H1, 30);
                sparseIntArray.append(C0170i.f1083i1, 44);
                sparseIntArray.append(C0170i.f1143u1, 45);
                sparseIntArray.append(C0170i.f953J1, 46);
                sparseIntArray.append(C0170i.f1138t1, 47);
                sparseIntArray.append(C0170i.f948I1, 48);
                sparseIntArray.append(C0170i.f1032Z0, 27);
                sparseIntArray.append(C0170i.f1027Y0, 28);
                sparseIntArray.append(C0170i.f958K1, 31);
                sparseIntArray.append(C0170i.f1113o1, 32);
                sparseIntArray.append(C0170i.f968M1, 33);
                sparseIntArray.append(C0170i.f963L1, 34);
                sparseIntArray.append(C0170i.f973N1, 35);
                sparseIntArray.append(C0170i.f1123q1, 36);
                sparseIntArray.append(C0170i.f1118p1, 37);
                sparseIntArray.append(C0170i.f1128r1, 38);
                sparseIntArray.append(C0170i.f1148v1, 39);
                sparseIntArray.append(C0170i.f928E1, 40);
                sparseIntArray.append(C0170i.f1163y1, 41);
                sparseIntArray.append(C0170i.f1050c1, 42);
                sparseIntArray.append(C0170i.f1038a1, 43);
                f772a.append(C0170i.f923D1, 51);
            }
        }

        public C0151b(int i, int i2) {
            super(i, i2);
            this.f732a = -1;
            this.f734b = -1;
            this.f736c = -1.0f;
            this.f738d = -1;
            this.f740e = -1;
            this.f742f = -1;
            this.f744g = -1;
            this.f746h = -1;
            this.f748i = -1;
            this.f750j = -1;
            this.f752k = -1;
            this.f754l = -1;
            this.f756m = -1;
            this.f758n = 0;
            this.f760o = 0.0f;
            this.f761p = -1;
            this.f762q = -1;
            this.f763r = -1;
            this.f764s = -1;
            this.f765t = -1;
            this.f766u = -1;
            this.f767v = -1;
            this.f768w = -1;
            this.f769x = -1;
            this.f770y = -1;
            this.f771z = 0.5f;
            this.f706A = 0.5f;
            this.f707B = null;
            this.f708C = 1;
            this.f709D = -1.0f;
            this.f710E = -1.0f;
            this.f711F = 0;
            this.f712G = 0;
            this.f713H = 0;
            this.f714I = 0;
            this.f715J = 0;
            this.f716K = 0;
            this.f717L = 0;
            this.f718M = 0;
            this.f719N = 1.0f;
            this.f720O = 1.0f;
            this.f721P = -1;
            this.f722Q = -1;
            this.f723R = -1;
            this.f724S = false;
            this.f725T = false;
            this.f726U = null;
            this.f727V = true;
            this.f728W = true;
            this.f729X = false;
            this.f730Y = false;
            this.f731Z = false;
            this.f733a0 = false;
            this.f735b0 = false;
            this.f737c0 = -1;
            this.f739d0 = -1;
            this.f741e0 = -1;
            this.f743f0 = -1;
            this.f745g0 = -1;
            this.f747h0 = -1;
            this.f749i0 = 0.5f;
            this.f757m0 = new e();
        }

        public C0151b(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            int i;
            this.f732a = -1;
            this.f734b = -1;
            this.f736c = -1.0f;
            this.f738d = -1;
            this.f740e = -1;
            this.f742f = -1;
            this.f744g = -1;
            this.f746h = -1;
            this.f748i = -1;
            this.f750j = -1;
            this.f752k = -1;
            this.f754l = -1;
            this.f756m = -1;
            this.f758n = 0;
            this.f760o = 0.0f;
            this.f761p = -1;
            this.f762q = -1;
            this.f763r = -1;
            this.f764s = -1;
            this.f765t = -1;
            this.f766u = -1;
            this.f767v = -1;
            this.f768w = -1;
            this.f769x = -1;
            this.f770y = -1;
            this.f771z = 0.5f;
            this.f706A = 0.5f;
            this.f707B = null;
            this.f708C = 1;
            this.f709D = -1.0f;
            this.f710E = -1.0f;
            this.f711F = 0;
            this.f712G = 0;
            this.f713H = 0;
            this.f714I = 0;
            this.f715J = 0;
            this.f716K = 0;
            this.f717L = 0;
            this.f718M = 0;
            this.f719N = 1.0f;
            this.f720O = 1.0f;
            this.f721P = -1;
            this.f722Q = -1;
            this.f723R = -1;
            this.f724S = false;
            this.f725T = false;
            this.f726U = null;
            this.f727V = true;
            this.f728W = true;
            this.f729X = false;
            this.f730Y = false;
            this.f731Z = false;
            this.f733a0 = false;
            this.f735b0 = false;
            this.f737c0 = -1;
            this.f739d0 = -1;
            this.f741e0 = -1;
            this.f743f0 = -1;
            this.f745g0 = -1;
            this.f747h0 = -1;
            this.f749i0 = 0.5f;
            this.f757m0 = new e();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0170i.f952J0);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i2 = 0; i2 < indexCount; i2++) {
                int index = obtainStyledAttributes.getIndex(i2);
                int i3 = C0152a.f772a.get(index);
                switch (i3) {
                    case 1:
                        this.f723R = obtainStyledAttributes.getInt(index, this.f723R);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f756m);
                        this.f756m = resourceId;
                        if (resourceId == -1) {
                            this.f756m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f758n = obtainStyledAttributes.getDimensionPixelSize(index, this.f758n);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f760o) % 360.0f;
                        this.f760o = f;
                        if (f < 0.0f) {
                            this.f760o = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f732a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f732a);
                        break;
                    case 6:
                        this.f734b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f734b);
                        break;
                    case 7:
                        this.f736c = obtainStyledAttributes.getFloat(index, this.f736c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f738d);
                        this.f738d = resourceId2;
                        if (resourceId2 == -1) {
                            this.f738d = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f740e);
                        this.f740e = resourceId3;
                        if (resourceId3 == -1) {
                            this.f740e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f742f);
                        this.f742f = resourceId4;
                        if (resourceId4 == -1) {
                            this.f742f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f744g);
                        this.f744g = resourceId5;
                        if (resourceId5 == -1) {
                            this.f744g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f746h);
                        this.f746h = resourceId6;
                        if (resourceId6 == -1) {
                            this.f746h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f748i);
                        this.f748i = resourceId7;
                        if (resourceId7 == -1) {
                            this.f748i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f750j);
                        this.f750j = resourceId8;
                        if (resourceId8 == -1) {
                            this.f750j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f752k);
                        this.f752k = resourceId9;
                        if (resourceId9 == -1) {
                            this.f752k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f754l);
                        this.f754l = resourceId10;
                        if (resourceId10 == -1) {
                            this.f754l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f761p);
                        this.f761p = resourceId11;
                        if (resourceId11 == -1) {
                            this.f761p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f762q);
                        this.f762q = resourceId12;
                        if (resourceId12 == -1) {
                            this.f762q = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f763r);
                        this.f763r = resourceId13;
                        if (resourceId13 == -1) {
                            this.f763r = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f764s);
                        this.f764s = resourceId14;
                        if (resourceId14 == -1) {
                            this.f764s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f765t = obtainStyledAttributes.getDimensionPixelSize(index, this.f765t);
                        break;
                    case 22:
                        this.f766u = obtainStyledAttributes.getDimensionPixelSize(index, this.f766u);
                        break;
                    case 23:
                        this.f767v = obtainStyledAttributes.getDimensionPixelSize(index, this.f767v);
                        break;
                    case 24:
                        this.f768w = obtainStyledAttributes.getDimensionPixelSize(index, this.f768w);
                        break;
                    case 25:
                        this.f769x = obtainStyledAttributes.getDimensionPixelSize(index, this.f769x);
                        break;
                    case 26:
                        this.f770y = obtainStyledAttributes.getDimensionPixelSize(index, this.f770y);
                        break;
                    case 27:
                        this.f724S = obtainStyledAttributes.getBoolean(index, this.f724S);
                        break;
                    case 28:
                        this.f725T = obtainStyledAttributes.getBoolean(index, this.f725T);
                        break;
                    case 29:
                        this.f771z = obtainStyledAttributes.getFloat(index, this.f771z);
                        break;
                    case 30:
                        this.f706A = obtainStyledAttributes.getFloat(index, this.f706A);
                        break;
                    case 31:
                        int i4 = obtainStyledAttributes.getInt(index, 0);
                        this.f713H = i4;
                        if (i4 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 32:
                        int i5 = obtainStyledAttributes.getInt(index, 0);
                        this.f714I = i5;
                        if (i5 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                            break;
                        } else {
                            break;
                        }
                    case 33:
                        try {
                            this.f715J = obtainStyledAttributes.getDimensionPixelSize(index, this.f715J);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f715J) == -2) {
                                this.f715J = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 34:
                        try {
                            this.f717L = obtainStyledAttributes.getDimensionPixelSize(index, this.f717L);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f717L) == -2) {
                                this.f717L = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 35:
                        this.f719N = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f719N));
                        this.f713H = 2;
                        break;
                    case 36:
                        try {
                            this.f716K = obtainStyledAttributes.getDimensionPixelSize(index, this.f716K);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f716K) == -2) {
                                this.f716K = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 37:
                        try {
                            this.f718M = obtainStyledAttributes.getDimensionPixelSize(index, this.f718M);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f718M) == -2) {
                                this.f718M = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case 38:
                        this.f720O = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f720O));
                        this.f714I = 2;
                        break;
                    default:
                        switch (i3) {
                            case 44:
                                String string = obtainStyledAttributes.getString(index);
                                this.f707B = string;
                                this.f708C = -1;
                                if (string != null) {
                                    int length = string.length();
                                    int indexOf = this.f707B.indexOf(44);
                                    if (indexOf <= 0 || indexOf >= length - 1) {
                                        i = 0;
                                    } else {
                                        String substring = this.f707B.substring(0, indexOf);
                                        if (substring.equalsIgnoreCase("W")) {
                                            this.f708C = 0;
                                        } else if (substring.equalsIgnoreCase("H")) {
                                            this.f708C = 1;
                                        }
                                        i = indexOf + 1;
                                    }
                                    int indexOf2 = this.f707B.indexOf(58);
                                    if (indexOf2 < 0 || indexOf2 >= length - 1) {
                                        String substring2 = this.f707B.substring(i);
                                        if (substring2.length() > 0) {
                                            Float.parseFloat(substring2);
                                            break;
                                        } else {
                                            break;
                                        }
                                    } else {
                                        String substring3 = this.f707B.substring(i, indexOf2);
                                        String substring4 = this.f707B.substring(indexOf2 + 1);
                                        if (substring3.length() > 0 && substring4.length() > 0) {
                                            try {
                                                float parseFloat = Float.parseFloat(substring3);
                                                float parseFloat2 = Float.parseFloat(substring4);
                                                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                                    if (this.f708C == 1) {
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
                                this.f709D = obtainStyledAttributes.getFloat(index, this.f709D);
                                continue;
                            case 46:
                                this.f710E = obtainStyledAttributes.getFloat(index, this.f710E);
                                continue;
                            case 47:
                                this.f711F = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 48:
                                this.f712G = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case 49:
                                this.f721P = obtainStyledAttributes.getDimensionPixelOffset(index, this.f721P);
                                continue;
                            case 50:
                                this.f722Q = obtainStyledAttributes.getDimensionPixelOffset(index, this.f722Q);
                                continue;
                            case 51:
                                this.f726U = obtainStyledAttributes.getString(index);
                                continue;
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m6293a();
        }

        public C0151b(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f732a = -1;
            this.f734b = -1;
            this.f736c = -1.0f;
            this.f738d = -1;
            this.f740e = -1;
            this.f742f = -1;
            this.f744g = -1;
            this.f746h = -1;
            this.f748i = -1;
            this.f750j = -1;
            this.f752k = -1;
            this.f754l = -1;
            this.f756m = -1;
            this.f758n = 0;
            this.f760o = 0.0f;
            this.f761p = -1;
            this.f762q = -1;
            this.f763r = -1;
            this.f764s = -1;
            this.f765t = -1;
            this.f766u = -1;
            this.f767v = -1;
            this.f768w = -1;
            this.f769x = -1;
            this.f770y = -1;
            this.f771z = 0.5f;
            this.f706A = 0.5f;
            this.f707B = null;
            this.f708C = 1;
            this.f709D = -1.0f;
            this.f710E = -1.0f;
            this.f711F = 0;
            this.f712G = 0;
            this.f713H = 0;
            this.f714I = 0;
            this.f715J = 0;
            this.f716K = 0;
            this.f717L = 0;
            this.f718M = 0;
            this.f719N = 1.0f;
            this.f720O = 1.0f;
            this.f721P = -1;
            this.f722Q = -1;
            this.f723R = -1;
            this.f724S = false;
            this.f725T = false;
            this.f726U = null;
            this.f727V = true;
            this.f728W = true;
            this.f729X = false;
            this.f730Y = false;
            this.f731Z = false;
            this.f733a0 = false;
            this.f735b0 = false;
            this.f737c0 = -1;
            this.f739d0 = -1;
            this.f741e0 = -1;
            this.f743f0 = -1;
            this.f745g0 = -1;
            this.f747h0 = -1;
            this.f749i0 = 0.5f;
            this.f757m0 = new e();
        }

        /* renamed from: a */
        public void m6293a() {
            this.f730Y = false;
            this.f727V = true;
            this.f728W = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f724S) {
                this.f727V = false;
                if (this.f713H == 0) {
                    this.f713H = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f725T) {
                this.f728W = false;
                if (this.f714I == 0) {
                    this.f714I = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f727V = false;
                if (i == 0 && this.f713H == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f724S = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f728W = false;
                if (i2 == 0 && this.f714I == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f725T = true;
                }
            }
            if (this.f736c == -1.0f && this.f732a == -1 && this.f734b == -1) {
                return;
            }
            this.f730Y = true;
            this.f727V = true;
            this.f728W = true;
            if (!(this.f757m0 instanceof g)) {
                this.f757m0 = new g();
            }
            this.f757m0.j1(this.f723R);
        }

        /* JADX WARN: Removed duplicated region for block: B:10:0x008f  */
        /* JADX WARN: Removed duplicated region for block: B:19:0x00c7  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00db  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x0101  */
        /* JADX WARN: Removed duplicated region for block: B:31:0x010b  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x012a  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x013f  */
        /* JADX WARN: Removed duplicated region for block: B:45:0x0173  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 624
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.C0151b.resolveLayoutDirection(int):void");
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m6303k(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m6303k(attributeSet, i, 0);
    }

    private int getPaddingWidth() {
        int i = 0;
        int max = Math.max(0, getPaddingLeft()) + Math.max(0, getPaddingRight());
        if (Build.VERSION.SDK_INT >= 17) {
            i = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        }
        if (i > 0) {
            max = i;
        }
        return max;
    }

    /* renamed from: h */
    private final e m6306h(int i) {
        if (i == 0) {
            return this.f688h;
        }
        View view = this.f686f.get(i);
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
            return this.f688h;
        }
        return view2 == null ? null : ((C0151b) view2.getLayoutParams()).f757m0;
    }

    /* renamed from: k */
    private void m6303k(AttributeSet attributeSet, int i, int i2) {
        this.f688h.l0(this);
        this.f688h.D1(this.f702v);
        this.f686f.put(getId(), this);
        this.f695o = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0170i.f952J0, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == C0170i.f977O0) {
                    this.f689i = obtainStyledAttributes.getDimensionPixelOffset(index, this.f689i);
                } else if (index == C0170i.f982P0) {
                    this.f690j = obtainStyledAttributes.getDimensionPixelOffset(index, this.f690j);
                } else if (index == C0170i.f967M0) {
                    this.f691k = obtainStyledAttributes.getDimensionPixelOffset(index, this.f691k);
                } else if (index == C0170i.f972N0) {
                    this.f692l = obtainStyledAttributes.getDimensionPixelOffset(index, this.f692l);
                } else if (index == C0170i.f1018W1) {
                    this.f694n = obtainStyledAttributes.getInt(index, this.f694n);
                } else if (index == C0170i.f1022X0) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            m6300n(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f696p = null;
                        }
                    }
                } else if (index == C0170i.f1007U0) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0160d c0160d = new C0160d();
                        this.f695o = c0160d;
                        c0160d.m6258m(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f695o = null;
                    }
                    this.f697q = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f688h.E1(this.f694n);
    }

    /* renamed from: m */
    private void m6301m() {
        this.f693m = true;
        this.f699s = -1;
        this.f700t = -1;
    }

    /* renamed from: q */
    private void m6297q() {
        boolean isInEditMode = isInEditMode();
        int childCount = getChildCount();
        for (int i = 0; i < childCount; i++) {
            e m6304j = m6304j(getChildAt(i));
            if (m6304j != null) {
                m6304j.h0();
            }
        }
        if (isInEditMode) {
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                try {
                    String resourceName = getResources().getResourceName(childAt.getId());
                    m6296r(0, resourceName, Integer.valueOf(childAt.getId()));
                    int indexOf = resourceName.indexOf(47);
                    String str = resourceName;
                    if (indexOf != -1) {
                        str = resourceName.substring(indexOf + 1);
                    }
                    m6306h(childAt.getId()).m0(str);
                } catch (Resources.NotFoundException e) {
                }
            }
        }
        if (this.f697q != -1) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt2 = getChildAt(i3);
                if (childAt2.getId() == this.f697q && (childAt2 instanceof C0166e)) {
                    this.f695o = ((C0166e) childAt2).getConstraintSet();
                }
            }
        }
        C0160d c0160d = this.f695o;
        if (c0160d != null) {
            c0160d.m6267d(this, true);
        }
        this.f688h.d1();
        int size = this.f687g.size();
        if (size > 0) {
            for (int i4 = 0; i4 < size; i4++) {
                this.f687g.get(i4).m6276m(this);
            }
        }
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt3 = getChildAt(i5);
            if (childAt3 instanceof C0168g) {
                ((C0168g) childAt3).m6235b(this);
            }
        }
        this.f701u.clear();
        this.f701u.put(0, this.f688h);
        this.f701u.put(getId(), this.f688h);
        for (int i6 = 0; i6 < childCount; i6++) {
            View childAt4 = getChildAt(i6);
            this.f701u.put(childAt4.getId(), m6304j(childAt4));
        }
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt5 = getChildAt(i7);
            e m6304j2 = m6304j(childAt5);
            if (m6304j2 != null) {
                C0151b c0151b = (C0151b) childAt5.getLayoutParams();
                this.f688h.a(m6304j2);
                m6310d(isInEditMode, childAt5, m6304j2, c0151b, this.f701u);
            }
        }
    }

    /* renamed from: t */
    private boolean m6294t() {
        boolean z;
        int childCount = getChildCount();
        int i = 0;
        while (true) {
            z = false;
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
            m6297q();
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        if (Build.VERSION.SDK_INT < 14) {
            onViewAdded(view);
        }
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0151b;
    }

    /* renamed from: d */
    protected void m6310d(boolean z, View view, e eVar, C0151b c0151b, SparseArray<e> sparseArray) {
        int i;
        e eVar2;
        e eVar3;
        e eVar4;
        e eVar5;
        c0151b.m6293a();
        c0151b.f759n0 = false;
        eVar.T0(view.getVisibility());
        if (c0151b.f733a0) {
            eVar.D0(true);
            eVar.T0(8);
        }
        eVar.l0(view);
        if (view instanceof AbstractC0156b) {
            ((AbstractC0156b) view).m6280i(eVar, this.f688h.x1());
        }
        if (c0151b.f730Y) {
            g gVar = (g) eVar;
            int i2 = c0151b.f751j0;
            int i3 = c0151b.f753k0;
            float f = c0151b.f755l0;
            if (Build.VERSION.SDK_INT < 17) {
                i2 = c0151b.f732a;
                i3 = c0151b.f734b;
                f = c0151b.f736c;
            }
            if (f != -1.0f) {
                gVar.i1(f);
                return;
            } else if (i2 != -1) {
                gVar.g1(i2);
                return;
            } else if (i3 == -1) {
                return;
            } else {
                gVar.h1(i3);
                return;
            }
        }
        int i4 = c0151b.f737c0;
        int i5 = c0151b.f739d0;
        int i6 = c0151b.f741e0;
        int i7 = c0151b.f743f0;
        int i8 = c0151b.f745g0;
        int i9 = c0151b.f747h0;
        float f2 = c0151b.f749i0;
        if (Build.VERSION.SDK_INT < 17) {
            int i10 = c0151b.f738d;
            int i11 = c0151b.f740e;
            i6 = c0151b.f742f;
            i7 = c0151b.f744g;
            i8 = c0151b.f765t;
            i9 = c0151b.f767v;
            f2 = c0151b.f771z;
            i4 = i10;
            i5 = i11;
            if (i10 == -1) {
                i4 = i10;
                i5 = i11;
                if (i11 == -1) {
                    i4 = c0151b.f762q;
                    if (i4 != -1) {
                        i5 = i11;
                    } else {
                        int i12 = c0151b.f761p;
                        i4 = i10;
                        i5 = i11;
                        if (i12 != -1) {
                            i5 = i12;
                            i4 = i10;
                        }
                    }
                }
            }
            if (i6 == -1 && i7 == -1) {
                int i13 = c0151b.f763r;
                if (i13 != -1) {
                    i6 = i13;
                } else {
                    int i14 = c0151b.f764s;
                    if (i14 != -1) {
                        i7 = i14;
                    }
                }
            }
        }
        int i15 = c0151b.f756m;
        if (i15 != -1) {
            e eVar6 = sparseArray.get(i15);
            if (eVar6 != null) {
                eVar.j(eVar6, c0151b.f760o, c0151b.f758n);
            }
        } else {
            if (i4 != -1) {
                e eVar7 = sparseArray.get(i4);
                if (eVar7 != null) {
                    d.b bVar = d.b.LEFT;
                    eVar.X(bVar, eVar7, bVar, ((ViewGroup.MarginLayoutParams) c0151b).leftMargin, i8);
                }
            } else if (i5 != -1 && (eVar5 = sparseArray.get(i5)) != null) {
                eVar.X(d.b.LEFT, eVar5, d.b.RIGHT, ((ViewGroup.MarginLayoutParams) c0151b).leftMargin, i8);
            }
            if (i6 != -1) {
                e eVar8 = sparseArray.get(i6);
                if (eVar8 != null) {
                    eVar.X(d.b.RIGHT, eVar8, d.b.LEFT, ((ViewGroup.MarginLayoutParams) c0151b).rightMargin, i9);
                }
            } else if (i7 != -1 && (eVar4 = sparseArray.get(i7)) != null) {
                d.b bVar2 = d.b.RIGHT;
                eVar.X(bVar2, eVar4, bVar2, ((ViewGroup.MarginLayoutParams) c0151b).rightMargin, i9);
            }
            int i16 = c0151b.f746h;
            if (i16 != -1) {
                e eVar9 = sparseArray.get(i16);
                if (eVar9 != null) {
                    d.b bVar3 = d.b.TOP;
                    eVar.X(bVar3, eVar9, bVar3, ((ViewGroup.MarginLayoutParams) c0151b).topMargin, c0151b.f766u);
                }
            } else {
                int i17 = c0151b.f748i;
                if (i17 != -1 && (eVar3 = sparseArray.get(i17)) != null) {
                    eVar.X(d.b.TOP, eVar3, d.b.BOTTOM, ((ViewGroup.MarginLayoutParams) c0151b).topMargin, c0151b.f766u);
                }
            }
            int i18 = c0151b.f750j;
            if (i18 != -1) {
                e eVar10 = sparseArray.get(i18);
                if (eVar10 != null) {
                    eVar.X(d.b.BOTTOM, eVar10, d.b.TOP, ((ViewGroup.MarginLayoutParams) c0151b).bottomMargin, c0151b.f768w);
                }
            } else {
                int i19 = c0151b.f752k;
                if (i19 != -1 && (eVar2 = sparseArray.get(i19)) != null) {
                    d.b bVar4 = d.b.BOTTOM;
                    eVar.X(bVar4, eVar2, bVar4, ((ViewGroup.MarginLayoutParams) c0151b).bottomMargin, c0151b.f768w);
                }
            }
            int i20 = c0151b.f754l;
            if (i20 != -1) {
                View view2 = this.f686f.get(i20);
                e eVar11 = sparseArray.get(c0151b.f754l);
                if (eVar11 != null && view2 != null && (view2.getLayoutParams() instanceof C0151b)) {
                    C0151b c0151b2 = (C0151b) view2.getLayoutParams();
                    c0151b.f729X = true;
                    c0151b2.f729X = true;
                    d.b bVar5 = d.b.BASELINE;
                    eVar.m(bVar5).a(eVar11.m(bVar5), 0, -1, true);
                    eVar.u0(true);
                    c0151b2.f757m0.u0(true);
                    eVar.m(d.b.TOP).p();
                    eVar.m(d.b.BOTTOM).p();
                }
            }
            if (f2 >= 0.0f) {
                eVar.w0(f2);
            }
            float f3 = c0151b.f706A;
            if (f3 >= 0.0f) {
                eVar.N0(f3);
            }
        }
        if (z && ((i = c0151b.f721P) != -1 || c0151b.f722Q != -1)) {
            eVar.L0(i, c0151b.f722Q);
        }
        if (c0151b.f727V) {
            eVar.z0(e.b.FIXED);
            eVar.U0(((ViewGroup.MarginLayoutParams) c0151b).width);
            if (((ViewGroup.MarginLayoutParams) c0151b).width == -2) {
                eVar.z0(e.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) c0151b).width == -1) {
            if (c0151b.f724S) {
                eVar.z0(e.b.MATCH_CONSTRAINT);
            } else {
                eVar.z0(e.b.MATCH_PARENT);
            }
            eVar.m(d.b.LEFT).g = ((ViewGroup.MarginLayoutParams) c0151b).leftMargin;
            eVar.m(d.b.RIGHT).g = ((ViewGroup.MarginLayoutParams) c0151b).rightMargin;
        } else {
            eVar.z0(e.b.MATCH_CONSTRAINT);
            eVar.U0(0);
        }
        if (c0151b.f728W) {
            eVar.Q0(e.b.FIXED);
            eVar.v0(((ViewGroup.MarginLayoutParams) c0151b).height);
            if (((ViewGroup.MarginLayoutParams) c0151b).height == -2) {
                eVar.Q0(e.b.WRAP_CONTENT);
            }
        } else if (((ViewGroup.MarginLayoutParams) c0151b).height == -1) {
            if (c0151b.f725T) {
                eVar.Q0(e.b.MATCH_CONSTRAINT);
            } else {
                eVar.Q0(e.b.MATCH_PARENT);
            }
            eVar.m(d.b.TOP).g = ((ViewGroup.MarginLayoutParams) c0151b).topMargin;
            eVar.m(d.b.BOTTOM).g = ((ViewGroup.MarginLayoutParams) c0151b).bottomMargin;
        } else {
            eVar.Q0(e.b.MATCH_CONSTRAINT);
            eVar.v0(0);
        }
        eVar.n0(c0151b.f707B);
        eVar.B0(c0151b.f709D);
        eVar.S0(c0151b.f710E);
        eVar.x0(c0151b.f711F);
        eVar.O0(c0151b.f712G);
        eVar.A0(c0151b.f713H, c0151b.f715J, c0151b.f717L, c0151b.f719N);
        eVar.R0(c0151b.f714I, c0151b.f716K, c0151b.f718M, c0151b.f720O);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<AbstractC0156b> arrayList = this.f687g;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                this.f687g.get(i).m6277l(this);
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            int childCount = getChildCount();
            float width = getWidth();
            float height = getHeight();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int parseInt4 = Integer.parseInt(split[3]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        int i5 = (int) ((parseInt3 / 1080.0f) * width);
                        int i6 = (int) ((parseInt4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + i5;
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i4 + i6;
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

    /* renamed from: e */
    public C0151b generateDefaultLayoutParams() {
        return new C0151b(-2, -2);
    }

    /* renamed from: f */
    public C0151b generateLayoutParams(AttributeSet attributeSet) {
        return new C0151b(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void forceLayout() {
        m6301m();
        super.forceLayout();
    }

    /* renamed from: g */
    public Object m6307g(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f698r;
        if (hashMap != null && hashMap.containsKey(str)) {
            return this.f698r.get(str);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0151b(layoutParams);
    }

    public int getMaxHeight() {
        return this.f692l;
    }

    public int getMaxWidth() {
        return this.f691k;
    }

    public int getMinHeight() {
        return this.f690j;
    }

    public int getMinWidth() {
        return this.f689i;
    }

    public int getOptimizationLevel() {
        return this.f688h.s1();
    }

    /* renamed from: i */
    public View m6305i(int i) {
        return this.f686f.get(i);
    }

    /* renamed from: j */
    public final e m6304j(View view) {
        if (view == this) {
            return this.f688h;
        }
        return view == null ? null : ((C0151b) view.getLayoutParams()).f757m0;
    }

    /* renamed from: l */
    protected boolean m6302l() {
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 17) {
            z = false;
            if ((getContext().getApplicationInfo().flags & 4194304) != 0) {
                z = false;
                if (1 == getLayoutDirection()) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: n */
    protected void m6300n(int i) {
        this.f696p = new C0157c(getContext(), this, i);
    }

    /* renamed from: o */
    protected void m6299o(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        c cVar = this.f702v;
        int i5 = cVar.e;
        int i6 = i3 + cVar.d;
        int i7 = i4 + i5;
        if (Build.VERSION.SDK_INT < 11) {
            setMeasuredDimension(i6, i7);
            this.f699s = i6;
            this.f700t = i7;
            return;
        }
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i6, i, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i7, i2, 0);
        int min = Math.min(this.f691k, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f692l, resolveSizeAndState2 & 16777215);
        int i8 = min;
        if (z) {
            i8 = min | 16777216;
        }
        int i9 = min2;
        if (z2) {
            i9 = min2 | 16777216;
        }
        setMeasuredDimension(i8, i9);
        this.f699s = i8;
        this.f700t = i9;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C0151b c0151b = (C0151b) childAt.getLayoutParams();
            e eVar = c0151b.f757m0;
            if ((childAt.getVisibility() != 8 || c0151b.f730Y || c0151b.f731Z || c0151b.f735b0 || isInEditMode) && !c0151b.f733a0) {
                int S = eVar.S();
                int T = eVar.T();
                int R = eVar.R() + S;
                int v = eVar.v() + T;
                childAt.layout(S, T, R, v);
                if ((childAt instanceof C0168g) && (content = ((C0168g) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(S, T, R, v);
                }
            }
        }
        int size = this.f687g.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                this.f687g.get(i6).m6279j(this);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        if (!this.f693m) {
            int childCount = getChildCount();
            int i3 = 0;
            while (true) {
                if (i3 >= childCount) {
                    break;
                } else if (getChildAt(i3).isLayoutRequested()) {
                    this.f693m = true;
                    break;
                } else {
                    i3++;
                }
            }
        }
        if (!this.f693m) {
            int i4 = this.f703w;
            if (i4 == i && this.f704x == i2) {
                m6299o(i, i2, this.f688h.R(), this.f688h.v(), this.f688h.y1(), this.f688h.w1());
                return;
            } else if (i4 == i && View.MeasureSpec.getMode(i) == 1073741824 && View.MeasureSpec.getMode(i2) == Integer.MIN_VALUE && View.MeasureSpec.getMode(this.f704x) == Integer.MIN_VALUE && View.MeasureSpec.getSize(i2) >= this.f688h.v()) {
                this.f703w = i;
                this.f704x = i2;
                m6299o(i, i2, this.f688h.R(), this.f688h.v(), this.f688h.y1(), this.f688h.w1());
                return;
            }
        }
        this.f703w = i;
        this.f704x = i2;
        this.f688h.F1(m6302l());
        if (this.f693m) {
            this.f693m = false;
            if (m6294t()) {
                this.f688h.H1();
            }
        }
        m6298p(this.f688h, this.f694n, i, i2);
        m6299o(i, i2, this.f688h.R(), this.f688h.v(), this.f688h.y1(), this.f688h.w1());
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewAdded(view);
        }
        e m6304j = m6304j(view);
        if ((view instanceof Guideline) && !(m6304j instanceof g)) {
            C0151b c0151b = (C0151b) view.getLayoutParams();
            g gVar = new g();
            c0151b.f757m0 = gVar;
            c0151b.f730Y = true;
            gVar.j1(c0151b.f723R);
        }
        if (view instanceof AbstractC0156b) {
            AbstractC0156b abstractC0156b = (AbstractC0156b) view;
            abstractC0156b.m6275n();
            ((C0151b) view.getLayoutParams()).f731Z = true;
            if (!this.f687g.contains(abstractC0156b)) {
                this.f687g.add(abstractC0156b);
            }
        }
        this.f686f.put(view.getId(), view);
        this.f693m = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        if (Build.VERSION.SDK_INT >= 14) {
            super.onViewRemoved(view);
        }
        this.f686f.remove(view.getId());
        this.f688h.c1(m6304j(view));
        this.f687g.remove(view);
        this.f693m = true;
    }

    /* renamed from: p */
    protected void m6298p(f fVar, int i, int i2, int i3) {
        int i4;
        int mode = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i2);
        int mode2 = View.MeasureSpec.getMode(i3);
        int size2 = View.MeasureSpec.getSize(i3);
        int max = Math.max(0, getPaddingTop());
        int max2 = Math.max(0, getPaddingBottom());
        int i5 = max + max2;
        int paddingWidth = getPaddingWidth();
        this.f702v.c(i2, i3, max, max2, paddingWidth, i5);
        if (Build.VERSION.SDK_INT >= 17) {
            i4 = Math.max(0, getPaddingStart());
            int max3 = Math.max(0, getPaddingEnd());
            if (i4 <= 0 && max3 <= 0) {
                i4 = Math.max(0, getPaddingLeft());
            } else if (m6302l()) {
                i4 = max3;
            }
        } else {
            i4 = Math.max(0, getPaddingLeft());
        }
        int i6 = size - paddingWidth;
        int i7 = size2 - i5;
        m6295s(fVar, mode, i6, mode2, i7);
        fVar.z1(i, mode, i6, mode2, i7, this.f699s, this.f700t, i4, max);
    }

    /* renamed from: r */
    public void m6296r(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.f698r == null) {
            this.f698r = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf("/");
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.f698r.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
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
        m6301m();
        super.requestLayout();
    }

    /* renamed from: s */
    protected void m6295s(f fVar, int i, int i2, int i3, int i4) {
        e.b bVar;
        c cVar = this.f702v;
        int i5 = cVar.e;
        int i6 = cVar.d;
        e.b bVar2 = e.b.FIXED;
        int childCount = getChildCount();
        if (i == Integer.MIN_VALUE) {
            e.b bVar3 = e.b.WRAP_CONTENT;
            bVar = bVar3;
            if (childCount == 0) {
                i2 = Math.max(0, this.f689i);
                bVar = bVar3;
            }
        } else if (i == 0) {
            e.b bVar4 = e.b.WRAP_CONTENT;
            bVar = bVar4;
            if (childCount == 0) {
                i2 = Math.max(0, this.f689i);
                bVar = bVar4;
            }
            i2 = 0;
        } else if (i != 1073741824) {
            bVar = bVar2;
            i2 = 0;
        } else {
            i2 = Math.min(this.f691k - i6, i2);
            bVar = bVar2;
        }
        if (i3 == Integer.MIN_VALUE) {
            e.b bVar5 = e.b.WRAP_CONTENT;
            bVar2 = bVar5;
            if (childCount == 0) {
                i4 = Math.max(0, this.f690j);
                bVar2 = bVar5;
            }
        } else if (i3 != 0) {
            if (i3 == 1073741824) {
                i4 = Math.min(this.f692l - i5, i4);
            }
            i4 = 0;
        } else {
            e.b bVar6 = e.b.WRAP_CONTENT;
            bVar2 = bVar6;
            if (childCount == 0) {
                i4 = Math.max(0, this.f690j);
                bVar2 = bVar6;
            }
            i4 = 0;
        }
        if (i2 != fVar.R() || i4 != fVar.v()) {
            fVar.v1();
        }
        fVar.V0(0);
        fVar.W0(0);
        fVar.H0(this.f691k - i6);
        fVar.G0(this.f692l - i5);
        fVar.K0(0);
        fVar.J0(0);
        fVar.z0(bVar);
        fVar.U0(i2);
        fVar.Q0(bVar2);
        fVar.v0(i4);
        fVar.K0(this.f689i - i6);
        fVar.J0(this.f690j - i5);
    }

    public void setConstraintSet(C0160d c0160d) {
        this.f695o = c0160d;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f686f.remove(getId());
        super.setId(i);
        this.f686f.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f692l) {
            return;
        }
        this.f692l = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f691k) {
            return;
        }
        this.f691k = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f690j) {
            return;
        }
        this.f690j = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f689i) {
            return;
        }
        this.f689i = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC0167f abstractC0167f) {
        C0157c c0157c = this.f696p;
        if (c0157c != null) {
            c0157c.m6272c(abstractC0167f);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f694n = i;
        this.f688h.E1(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
