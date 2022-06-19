package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0166e;
import androidx.constraintlayout.widget.ConstraintLayout;
import f.f.a.a.a;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.d */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d.class */
public class C0160d {

    /* renamed from: d */
    private static final int[] f801d = {0, 4, 8};

    /* renamed from: e */
    private static SparseIntArray f802e;

    /* renamed from: a */
    private HashMap<String, C0153a> f803a = new HashMap<>();

    /* renamed from: b */
    private boolean f804b = true;

    /* renamed from: c */
    private HashMap<Integer, C0161a> f805c = new HashMap<>();

    /* renamed from: androidx.constraintlayout.widget.d$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d$a.class */
    public static class C0161a {

        /* renamed from: a */
        int f806a;

        /* renamed from: b */
        public final C0164d f807b = new C0164d();

        /* renamed from: c */
        public final C0163c f808c = new C0163c();

        /* renamed from: d */
        public final C0162b f809d = new C0162b();

        /* renamed from: e */
        public final C0165e f810e = new C0165e();

        /* renamed from: f */
        public HashMap<String, C0153a> f811f = new HashMap<>();

        /* renamed from: f */
        public void m6249f(int i, ConstraintLayout.C0151b c0151b) {
            this.f806a = i;
            C0162b c0162b = this.f809d;
            c0162b.f853h = c0151b.f738d;
            c0162b.f855i = c0151b.f740e;
            c0162b.f857j = c0151b.f742f;
            c0162b.f859k = c0151b.f744g;
            c0162b.f860l = c0151b.f746h;
            c0162b.f861m = c0151b.f748i;
            c0162b.f862n = c0151b.f750j;
            c0162b.f863o = c0151b.f752k;
            c0162b.f864p = c0151b.f754l;
            c0162b.f865q = c0151b.f761p;
            c0162b.f866r = c0151b.f762q;
            c0162b.f867s = c0151b.f763r;
            c0162b.f868t = c0151b.f764s;
            c0162b.f869u = c0151b.f771z;
            c0162b.f870v = c0151b.f706A;
            c0162b.f871w = c0151b.f707B;
            c0162b.f872x = c0151b.f756m;
            c0162b.f873y = c0151b.f758n;
            c0162b.f874z = c0151b.f760o;
            c0162b.f813A = c0151b.f721P;
            c0162b.f814B = c0151b.f722Q;
            c0162b.f815C = c0151b.f723R;
            c0162b.f851g = c0151b.f736c;
            c0162b.f847e = c0151b.f732a;
            c0162b.f849f = c0151b.f734b;
            C0162b c0162b2 = this.f809d;
            c0162b2.f843c = ((ViewGroup.MarginLayoutParams) c0151b).width;
            c0162b2.f845d = ((ViewGroup.MarginLayoutParams) c0151b).height;
            c0162b2.f816D = ((ViewGroup.MarginLayoutParams) c0151b).leftMargin;
            c0162b2.f817E = ((ViewGroup.MarginLayoutParams) c0151b).rightMargin;
            c0162b2.f818F = ((ViewGroup.MarginLayoutParams) c0151b).topMargin;
            c0162b2.f819G = ((ViewGroup.MarginLayoutParams) c0151b).bottomMargin;
            c0162b2.f828P = c0151b.f710E;
            c0162b2.f829Q = c0151b.f709D;
            c0162b2.f831S = c0151b.f712G;
            c0162b2.f830R = c0151b.f711F;
            c0162b2.f854h0 = c0151b.f724S;
            c0162b2.f856i0 = c0151b.f725T;
            c0162b2.f832T = c0151b.f713H;
            c0162b2.f833U = c0151b.f714I;
            c0162b2.f834V = c0151b.f717L;
            c0162b2.f835W = c0151b.f718M;
            c0162b2.f836X = c0151b.f715J;
            c0162b2.f837Y = c0151b.f716K;
            c0162b2.f838Z = c0151b.f719N;
            c0162b2.f840a0 = c0151b.f720O;
            c0162b2.f852g0 = c0151b.f726U;
            c0162b2.f823K = c0151b.f766u;
            c0162b2.f825M = c0151b.f768w;
            c0162b2.f822J = c0151b.f765t;
            c0162b2.f824L = c0151b.f767v;
            C0162b c0162b3 = this.f809d;
            c0162b3.f827O = c0151b.f769x;
            c0162b3.f826N = c0151b.f770y;
            if (Build.VERSION.SDK_INT >= 17) {
                c0162b3.f820H = c0151b.getMarginEnd();
                this.f809d.f821I = c0151b.getMarginStart();
            }
        }

        /* renamed from: g */
        public void m6248g(int i, C0166e.a aVar) {
            m6249f(i, aVar);
            this.f807b.f886d = aVar.o0;
            C0165e c0165e = this.f810e;
            c0165e.f890b = aVar.r0;
            c0165e.f891c = aVar.s0;
            c0165e.f892d = aVar.t0;
            c0165e.f893e = aVar.u0;
            c0165e.f894f = aVar.v0;
            c0165e.f895g = aVar.w0;
            c0165e.f896h = aVar.x0;
            c0165e.f897i = aVar.y0;
            c0165e.f898j = aVar.z0;
            c0165e.f899k = aVar.A0;
            c0165e.f901m = aVar.q0;
            c0165e.f900l = aVar.p0;
        }

        /* renamed from: h */
        public void m6247h(AbstractC0156b abstractC0156b, int i, C0166e.a aVar) {
            m6248g(i, aVar);
            if (abstractC0156b instanceof Barrier) {
                C0162b c0162b = this.f809d;
                c0162b.f846d0 = 1;
                Barrier barrier = (Barrier) abstractC0156b;
                c0162b.f842b0 = barrier.getType();
                this.f809d.f848e0 = barrier.getReferencedIds();
                this.f809d.f844c0 = barrier.getMargin();
            }
        }

        /* renamed from: d */
        public void m6251d(ConstraintLayout.C0151b c0151b) {
            C0162b c0162b = this.f809d;
            c0151b.f738d = c0162b.f853h;
            c0151b.f740e = c0162b.f855i;
            c0151b.f742f = c0162b.f857j;
            c0151b.f744g = c0162b.f859k;
            c0151b.f746h = c0162b.f860l;
            c0151b.f748i = c0162b.f861m;
            c0151b.f750j = c0162b.f862n;
            c0151b.f752k = c0162b.f863o;
            c0151b.f754l = c0162b.f864p;
            c0151b.f761p = c0162b.f865q;
            c0151b.f762q = c0162b.f866r;
            c0151b.f763r = c0162b.f867s;
            c0151b.f764s = c0162b.f868t;
            ((ViewGroup.MarginLayoutParams) c0151b).leftMargin = c0162b.f816D;
            ((ViewGroup.MarginLayoutParams) c0151b).rightMargin = c0162b.f817E;
            ((ViewGroup.MarginLayoutParams) c0151b).topMargin = c0162b.f818F;
            ((ViewGroup.MarginLayoutParams) c0151b).bottomMargin = c0162b.f819G;
            c0151b.f769x = c0162b.f827O;
            c0151b.f770y = c0162b.f826N;
            c0151b.f766u = c0162b.f823K;
            c0151b.f768w = c0162b.f825M;
            c0151b.f771z = c0162b.f869u;
            c0151b.f706A = c0162b.f870v;
            c0151b.f756m = c0162b.f872x;
            c0151b.f758n = c0162b.f873y;
            C0162b c0162b2 = this.f809d;
            c0151b.f760o = c0162b2.f874z;
            c0151b.f707B = c0162b2.f871w;
            c0151b.f721P = c0162b2.f813A;
            c0151b.f722Q = c0162b2.f814B;
            c0151b.f710E = c0162b2.f828P;
            c0151b.f709D = c0162b2.f829Q;
            c0151b.f712G = c0162b2.f831S;
            c0151b.f711F = c0162b2.f830R;
            c0151b.f724S = c0162b2.f854h0;
            c0151b.f725T = c0162b2.f856i0;
            c0151b.f713H = c0162b2.f832T;
            c0151b.f714I = c0162b2.f833U;
            c0151b.f717L = c0162b2.f834V;
            c0151b.f718M = c0162b2.f835W;
            c0151b.f715J = c0162b2.f836X;
            c0151b.f716K = c0162b2.f837Y;
            c0151b.f719N = c0162b2.f838Z;
            c0151b.f720O = c0162b2.f840a0;
            c0151b.f723R = c0162b2.f815C;
            c0151b.f736c = c0162b2.f851g;
            c0151b.f732a = c0162b2.f847e;
            c0151b.f734b = c0162b2.f849f;
            ((ViewGroup.MarginLayoutParams) c0151b).width = c0162b2.f843c;
            ((ViewGroup.MarginLayoutParams) c0151b).height = c0162b2.f845d;
            String str = c0162b2.f852g0;
            if (str != null) {
                c0151b.f726U = str;
            }
            if (Build.VERSION.SDK_INT >= 17) {
                c0151b.setMarginStart(this.f809d.f821I);
                c0151b.setMarginEnd(this.f809d.f820H);
            }
            c0151b.m6293a();
        }

        /* renamed from: e */
        public C0161a clone() {
            C0161a c0161a = new C0161a();
            c0161a.f809d.m6246a(this.f809d);
            c0161a.f808c.m6244a(this.f808c);
            c0161a.f807b.m6242a(this.f807b);
            c0161a.f810e.m6240a(this.f810e);
            c0161a.f806a = this.f806a;
            return c0161a;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.d$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d$b.class */
    public static class C0162b {

        /* renamed from: k0 */
        private static SparseIntArray f812k0;

        /* renamed from: c */
        public int f843c;

        /* renamed from: d */
        public int f845d;

        /* renamed from: e0 */
        public int[] f848e0;

        /* renamed from: f0 */
        public String f850f0;

        /* renamed from: g0 */
        public String f852g0;

        /* renamed from: a */
        public boolean f839a = false;

        /* renamed from: b */
        public boolean f841b = false;

        /* renamed from: e */
        public int f847e = -1;

        /* renamed from: f */
        public int f849f = -1;

        /* renamed from: g */
        public float f851g = -1.0f;

        /* renamed from: h */
        public int f853h = -1;

        /* renamed from: i */
        public int f855i = -1;

        /* renamed from: j */
        public int f857j = -1;

        /* renamed from: k */
        public int f859k = -1;

        /* renamed from: l */
        public int f860l = -1;

        /* renamed from: m */
        public int f861m = -1;

        /* renamed from: n */
        public int f862n = -1;

        /* renamed from: o */
        public int f863o = -1;

        /* renamed from: p */
        public int f864p = -1;

        /* renamed from: q */
        public int f865q = -1;

        /* renamed from: r */
        public int f866r = -1;

        /* renamed from: s */
        public int f867s = -1;

        /* renamed from: t */
        public int f868t = -1;

        /* renamed from: u */
        public float f869u = 0.5f;

        /* renamed from: v */
        public float f870v = 0.5f;

        /* renamed from: w */
        public String f871w = null;

        /* renamed from: x */
        public int f872x = -1;

        /* renamed from: y */
        public int f873y = 0;

        /* renamed from: z */
        public float f874z = 0.0f;

        /* renamed from: A */
        public int f813A = -1;

        /* renamed from: B */
        public int f814B = -1;

        /* renamed from: C */
        public int f815C = -1;

        /* renamed from: D */
        public int f816D = -1;

        /* renamed from: E */
        public int f817E = -1;

        /* renamed from: F */
        public int f818F = -1;

        /* renamed from: G */
        public int f819G = -1;

        /* renamed from: H */
        public int f820H = -1;

        /* renamed from: I */
        public int f821I = -1;

        /* renamed from: J */
        public int f822J = -1;

        /* renamed from: K */
        public int f823K = -1;

        /* renamed from: L */
        public int f824L = -1;

        /* renamed from: M */
        public int f825M = -1;

        /* renamed from: N */
        public int f826N = -1;

        /* renamed from: O */
        public int f827O = -1;

        /* renamed from: P */
        public float f828P = -1.0f;

        /* renamed from: Q */
        public float f829Q = -1.0f;

        /* renamed from: R */
        public int f830R = 0;

        /* renamed from: S */
        public int f831S = 0;

        /* renamed from: T */
        public int f832T = 0;

        /* renamed from: U */
        public int f833U = 0;

        /* renamed from: V */
        public int f834V = -1;

        /* renamed from: W */
        public int f835W = -1;

        /* renamed from: X */
        public int f836X = -1;

        /* renamed from: Y */
        public int f837Y = -1;

        /* renamed from: Z */
        public float f838Z = 1.0f;

        /* renamed from: a0 */
        public float f840a0 = 1.0f;

        /* renamed from: b0 */
        public int f842b0 = -1;

        /* renamed from: c0 */
        public int f844c0 = 0;

        /* renamed from: d0 */
        public int f846d0 = -1;

        /* renamed from: h0 */
        public boolean f854h0 = false;

        /* renamed from: i0 */
        public boolean f856i0 = false;

        /* renamed from: j0 */
        public boolean f858j0 = true;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f812k0 = sparseIntArray;
            sparseIntArray.append(C0170i.f1052c3, 24);
            f812k0.append(C0170i.f1058d3, 25);
            f812k0.append(C0170i.f1070f3, 28);
            f812k0.append(C0170i.f1075g3, 29);
            f812k0.append(C0170i.f1100l3, 35);
            f812k0.append(C0170i.f1095k3, 34);
            f812k0.append(C0170i.f974N2, 4);
            f812k0.append(C0170i.f969M2, 3);
            f812k0.append(C0170i.f959K2, 1);
            f812k0.append(C0170i.f1125q3, 6);
            f812k0.append(C0170i.f1130r3, 7);
            f812k0.append(C0170i.f1009U2, 17);
            f812k0.append(C0170i.f1014V2, 18);
            f812k0.append(C0170i.f1019W2, 19);
            f812k0.append(C0170i.f1149v2, 26);
            f812k0.append(C0170i.f1080h3, 31);
            f812k0.append(C0170i.f1085i3, 32);
            f812k0.append(C0170i.f1004T2, 10);
            f812k0.append(C0170i.f999S2, 9);
            f812k0.append(C0170i.f1145u3, 13);
            f812k0.append(C0170i.f1160x3, 16);
            f812k0.append(C0170i.f1150v3, 14);
            f812k0.append(C0170i.f1135s3, 11);
            f812k0.append(C0170i.f1155w3, 15);
            f812k0.append(C0170i.f1140t3, 12);
            f812k0.append(C0170i.f1115o3, 38);
            f812k0.append(C0170i.f1040a3, 37);
            f812k0.append(C0170i.f1034Z2, 39);
            f812k0.append(C0170i.f1110n3, 40);
            f812k0.append(C0170i.f1029Y2, 20);
            f812k0.append(C0170i.f1105m3, 36);
            f812k0.append(C0170i.f994R2, 5);
            f812k0.append(C0170i.f1046b3, 76);
            f812k0.append(C0170i.f1090j3, 76);
            f812k0.append(C0170i.f1064e3, 76);
            f812k0.append(C0170i.f964L2, 76);
            f812k0.append(C0170i.f954J2, 76);
            f812k0.append(C0170i.f1164y2, 23);
            f812k0.append(C0170i.f909A2, 27);
            f812k0.append(C0170i.f919C2, 30);
            f812k0.append(C0170i.f924D2, 8);
            f812k0.append(C0170i.f1169z2, 33);
            f812k0.append(C0170i.f914B2, 2);
            f812k0.append(C0170i.f1154w2, 22);
            f812k0.append(C0170i.f1159x2, 21);
            f812k0.append(C0170i.f979O2, 61);
            f812k0.append(C0170i.f989Q2, 62);
            f812k0.append(C0170i.f984P2, 63);
            f812k0.append(C0170i.f1120p3, 69);
            f812k0.append(C0170i.f1024X2, 70);
            f812k0.append(C0170i.f944H2, 71);
            f812k0.append(C0170i.f934F2, 72);
            f812k0.append(C0170i.f939G2, 73);
            f812k0.append(C0170i.f949I2, 74);
            f812k0.append(C0170i.f929E2, 75);
        }

        /* renamed from: a */
        public void m6246a(C0162b c0162b) {
            this.f839a = c0162b.f839a;
            this.f843c = c0162b.f843c;
            this.f841b = c0162b.f841b;
            this.f845d = c0162b.f845d;
            this.f847e = c0162b.f847e;
            this.f849f = c0162b.f849f;
            this.f851g = c0162b.f851g;
            this.f853h = c0162b.f853h;
            this.f855i = c0162b.f855i;
            this.f857j = c0162b.f857j;
            this.f859k = c0162b.f859k;
            this.f860l = c0162b.f860l;
            this.f861m = c0162b.f861m;
            this.f862n = c0162b.f862n;
            this.f863o = c0162b.f863o;
            this.f864p = c0162b.f864p;
            this.f865q = c0162b.f865q;
            this.f866r = c0162b.f866r;
            this.f867s = c0162b.f867s;
            this.f868t = c0162b.f868t;
            this.f869u = c0162b.f869u;
            this.f870v = c0162b.f870v;
            this.f871w = c0162b.f871w;
            this.f872x = c0162b.f872x;
            this.f873y = c0162b.f873y;
            this.f874z = c0162b.f874z;
            this.f813A = c0162b.f813A;
            this.f814B = c0162b.f814B;
            this.f815C = c0162b.f815C;
            this.f816D = c0162b.f816D;
            this.f817E = c0162b.f817E;
            this.f818F = c0162b.f818F;
            this.f819G = c0162b.f819G;
            this.f820H = c0162b.f820H;
            this.f821I = c0162b.f821I;
            this.f822J = c0162b.f822J;
            this.f823K = c0162b.f823K;
            this.f824L = c0162b.f824L;
            this.f825M = c0162b.f825M;
            this.f826N = c0162b.f826N;
            this.f827O = c0162b.f827O;
            this.f828P = c0162b.f828P;
            this.f829Q = c0162b.f829Q;
            this.f830R = c0162b.f830R;
            this.f831S = c0162b.f831S;
            this.f832T = c0162b.f832T;
            this.f833U = c0162b.f833U;
            this.f834V = c0162b.f834V;
            this.f835W = c0162b.f835W;
            this.f836X = c0162b.f836X;
            this.f837Y = c0162b.f837Y;
            this.f838Z = c0162b.f838Z;
            this.f840a0 = c0162b.f840a0;
            this.f842b0 = c0162b.f842b0;
            this.f844c0 = c0162b.f844c0;
            this.f846d0 = c0162b.f846d0;
            this.f852g0 = c0162b.f852g0;
            int[] iArr = c0162b.f848e0;
            if (iArr != null) {
                this.f848e0 = Arrays.copyOf(iArr, iArr.length);
            } else {
                this.f848e0 = null;
            }
            this.f850f0 = c0162b.f850f0;
            this.f854h0 = c0162b.f854h0;
            this.f856i0 = c0162b.f856i0;
            this.f858j0 = c0162b.f858j0;
        }

        /* renamed from: b */
        void m6245b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0170i.f1144u2);
            this.f841b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f812k0.get(index);
                if (i2 == 80) {
                    this.f854h0 = obtainStyledAttributes.getBoolean(index, this.f854h0);
                } else if (i2 != 81) {
                    switch (i2) {
                        case 1:
                            this.f864p = C0160d.m6256o(obtainStyledAttributes, index, this.f864p);
                            continue;
                        case 2:
                            this.f819G = obtainStyledAttributes.getDimensionPixelSize(index, this.f819G);
                            continue;
                        case 3:
                            this.f863o = C0160d.m6256o(obtainStyledAttributes, index, this.f863o);
                            continue;
                        case 4:
                            this.f862n = C0160d.m6256o(obtainStyledAttributes, index, this.f862n);
                            continue;
                        case 5:
                            this.f871w = obtainStyledAttributes.getString(index);
                            continue;
                        case 6:
                            this.f813A = obtainStyledAttributes.getDimensionPixelOffset(index, this.f813A);
                            continue;
                        case 7:
                            this.f814B = obtainStyledAttributes.getDimensionPixelOffset(index, this.f814B);
                            continue;
                        case 8:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f820H = obtainStyledAttributes.getDimensionPixelSize(index, this.f820H);
                                break;
                            } else {
                                continue;
                            }
                        case 9:
                            this.f868t = C0160d.m6256o(obtainStyledAttributes, index, this.f868t);
                            continue;
                        case 10:
                            this.f867s = C0160d.m6256o(obtainStyledAttributes, index, this.f867s);
                            continue;
                        case 11:
                            this.f825M = obtainStyledAttributes.getDimensionPixelSize(index, this.f825M);
                            continue;
                        case 12:
                            this.f826N = obtainStyledAttributes.getDimensionPixelSize(index, this.f826N);
                            continue;
                        case 13:
                            this.f822J = obtainStyledAttributes.getDimensionPixelSize(index, this.f822J);
                            continue;
                        case 14:
                            this.f824L = obtainStyledAttributes.getDimensionPixelSize(index, this.f824L);
                            continue;
                        case 15:
                            this.f827O = obtainStyledAttributes.getDimensionPixelSize(index, this.f827O);
                            continue;
                        case 16:
                            this.f823K = obtainStyledAttributes.getDimensionPixelSize(index, this.f823K);
                            continue;
                        case 17:
                            this.f847e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f847e);
                            continue;
                        case 18:
                            this.f849f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f849f);
                            continue;
                        case 19:
                            this.f851g = obtainStyledAttributes.getFloat(index, this.f851g);
                            continue;
                        case 20:
                            this.f869u = obtainStyledAttributes.getFloat(index, this.f869u);
                            continue;
                        case 21:
                            this.f845d = obtainStyledAttributes.getLayoutDimension(index, this.f845d);
                            continue;
                        case 22:
                            this.f843c = obtainStyledAttributes.getLayoutDimension(index, this.f843c);
                            continue;
                        case 23:
                            this.f816D = obtainStyledAttributes.getDimensionPixelSize(index, this.f816D);
                            continue;
                        case 24:
                            this.f853h = C0160d.m6256o(obtainStyledAttributes, index, this.f853h);
                            continue;
                        case 25:
                            this.f855i = C0160d.m6256o(obtainStyledAttributes, index, this.f855i);
                            continue;
                        case 26:
                            this.f815C = obtainStyledAttributes.getInt(index, this.f815C);
                            continue;
                        case 27:
                            this.f817E = obtainStyledAttributes.getDimensionPixelSize(index, this.f817E);
                            continue;
                        case 28:
                            this.f857j = C0160d.m6256o(obtainStyledAttributes, index, this.f857j);
                            continue;
                        case 29:
                            this.f859k = C0160d.m6256o(obtainStyledAttributes, index, this.f859k);
                            continue;
                        case 30:
                            if (Build.VERSION.SDK_INT >= 17) {
                                this.f821I = obtainStyledAttributes.getDimensionPixelSize(index, this.f821I);
                                break;
                            } else {
                                continue;
                            }
                        case 31:
                            this.f865q = C0160d.m6256o(obtainStyledAttributes, index, this.f865q);
                            continue;
                        case 32:
                            this.f866r = C0160d.m6256o(obtainStyledAttributes, index, this.f866r);
                            continue;
                        case 33:
                            this.f818F = obtainStyledAttributes.getDimensionPixelSize(index, this.f818F);
                            continue;
                        case 34:
                            this.f861m = C0160d.m6256o(obtainStyledAttributes, index, this.f861m);
                            continue;
                        case 35:
                            this.f860l = C0160d.m6256o(obtainStyledAttributes, index, this.f860l);
                            continue;
                        case 36:
                            this.f870v = obtainStyledAttributes.getFloat(index, this.f870v);
                            continue;
                        case 37:
                            this.f829Q = obtainStyledAttributes.getFloat(index, this.f829Q);
                            continue;
                        case 38:
                            this.f828P = obtainStyledAttributes.getFloat(index, this.f828P);
                            continue;
                        case 39:
                            this.f830R = obtainStyledAttributes.getInt(index, this.f830R);
                            continue;
                        case 40:
                            this.f831S = obtainStyledAttributes.getInt(index, this.f831S);
                            continue;
                        default:
                            switch (i2) {
                                case 54:
                                    this.f832T = obtainStyledAttributes.getInt(index, this.f832T);
                                    continue;
                                case 55:
                                    this.f833U = obtainStyledAttributes.getInt(index, this.f833U);
                                    continue;
                                case 56:
                                    this.f834V = obtainStyledAttributes.getDimensionPixelSize(index, this.f834V);
                                    continue;
                                case 57:
                                    this.f835W = obtainStyledAttributes.getDimensionPixelSize(index, this.f835W);
                                    continue;
                                case 58:
                                    this.f836X = obtainStyledAttributes.getDimensionPixelSize(index, this.f836X);
                                    continue;
                                case 59:
                                    this.f837Y = obtainStyledAttributes.getDimensionPixelSize(index, this.f837Y);
                                    continue;
                                default:
                                    switch (i2) {
                                        case 61:
                                            this.f872x = C0160d.m6256o(obtainStyledAttributes, index, this.f872x);
                                            continue;
                                        case 62:
                                            this.f873y = obtainStyledAttributes.getDimensionPixelSize(index, this.f873y);
                                            continue;
                                        case 63:
                                            this.f874z = obtainStyledAttributes.getFloat(index, this.f874z);
                                            continue;
                                        default:
                                            switch (i2) {
                                                case 69:
                                                    this.f838Z = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 70:
                                                    this.f840a0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                                    continue;
                                                case 71:
                                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                                    continue;
                                                case 72:
                                                    this.f842b0 = obtainStyledAttributes.getInt(index, this.f842b0);
                                                    continue;
                                                case 73:
                                                    this.f844c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f844c0);
                                                    continue;
                                                case 74:
                                                    this.f850f0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                case 75:
                                                    this.f858j0 = obtainStyledAttributes.getBoolean(index, this.f858j0);
                                                    continue;
                                                case 76:
                                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f812k0.get(index));
                                                    continue;
                                                case 77:
                                                    this.f852g0 = obtainStyledAttributes.getString(index);
                                                    continue;
                                                default:
                                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f812k0.get(index));
                                                    continue;
                                                    continue;
                                                    continue;
                                                    continue;
                                            }
                                    }
                            }
                    }
                } else {
                    this.f856i0 = obtainStyledAttributes.getBoolean(index, this.f856i0);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.d$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d$c.class */
    public static class C0163c {

        /* renamed from: h */
        private static SparseIntArray f875h;

        /* renamed from: a */
        public boolean f876a = false;

        /* renamed from: b */
        public int f877b = -1;

        /* renamed from: c */
        public String f878c = null;

        /* renamed from: d */
        public int f879d = -1;

        /* renamed from: e */
        public int f880e = 0;

        /* renamed from: f */
        public float f881f = Float.NaN;

        /* renamed from: g */
        public float f882g = Float.NaN;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f875h = sparseIntArray;
            sparseIntArray.append(C0170i.f915B3, 1);
            f875h.append(C0170i.f925D3, 2);
            f875h.append(C0170i.f930E3, 3);
            f875h.append(C0170i.f910A3, 4);
            f875h.append(C0170i.f1170z3, 5);
            f875h.append(C0170i.f920C3, 6);
        }

        /* renamed from: a */
        public void m6244a(C0163c c0163c) {
            this.f876a = c0163c.f876a;
            this.f877b = c0163c.f877b;
            this.f878c = c0163c.f878c;
            this.f879d = c0163c.f879d;
            this.f880e = c0163c.f880e;
            this.f882g = c0163c.f882g;
            this.f881f = c0163c.f881f;
        }

        /* renamed from: b */
        void m6243b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0170i.f1165y3);
            this.f876a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f875h.get(index)) {
                    case 1:
                        this.f882g = obtainStyledAttributes.getFloat(index, this.f882g);
                        break;
                    case 2:
                        this.f879d = obtainStyledAttributes.getInt(index, this.f879d);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f878c = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f878c = a.a[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f880e = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        this.f877b = C0160d.m6256o(obtainStyledAttributes, index, this.f877b);
                        break;
                    case 6:
                        this.f881f = obtainStyledAttributes.getFloat(index, this.f881f);
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.d$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d$d.class */
    public static class C0164d {

        /* renamed from: a */
        public boolean f883a = false;

        /* renamed from: b */
        public int f884b = 0;

        /* renamed from: c */
        public int f885c = 0;

        /* renamed from: d */
        public float f886d = 1.0f;

        /* renamed from: e */
        public float f887e = Float.NaN;

        /* renamed from: a */
        public void m6242a(C0164d c0164d) {
            this.f883a = c0164d.f883a;
            this.f884b = c0164d.f884b;
            this.f886d = c0164d.f886d;
            this.f887e = c0164d.f887e;
            this.f885c = c0164d.f885c;
        }

        /* renamed from: b */
        void m6241b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0170i.f935F3);
            this.f883a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0170i.f945H3) {
                    this.f886d = obtainStyledAttributes.getFloat(index, this.f886d);
                } else if (index == C0170i.f940G3) {
                    this.f884b = obtainStyledAttributes.getInt(index, this.f884b);
                    this.f884b = C0160d.f801d[this.f884b];
                } else if (index == C0170i.f955J3) {
                    this.f885c = obtainStyledAttributes.getInt(index, this.f885c);
                } else if (index == C0170i.f950I3) {
                    this.f887e = obtainStyledAttributes.getFloat(index, this.f887e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.d$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/d$e.class */
    public static class C0165e {

        /* renamed from: n */
        private static SparseIntArray f888n;

        /* renamed from: a */
        public boolean f889a = false;

        /* renamed from: b */
        public float f890b = 0.0f;

        /* renamed from: c */
        public float f891c = 0.0f;

        /* renamed from: d */
        public float f892d = 0.0f;

        /* renamed from: e */
        public float f893e = 1.0f;

        /* renamed from: f */
        public float f894f = 1.0f;

        /* renamed from: g */
        public float f895g = Float.NaN;

        /* renamed from: h */
        public float f896h = Float.NaN;

        /* renamed from: i */
        public float f897i = 0.0f;

        /* renamed from: j */
        public float f898j = 0.0f;

        /* renamed from: k */
        public float f899k = 0.0f;

        /* renamed from: l */
        public boolean f900l = false;

        /* renamed from: m */
        public float f901m = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f888n = sparseIntArray;
            sparseIntArray.append(C0170i.f1010U3, 1);
            f888n.append(C0170i.f1015V3, 2);
            f888n.append(C0170i.f1020W3, 3);
            f888n.append(C0170i.f1000S3, 4);
            f888n.append(C0170i.f1005T3, 5);
            f888n.append(C0170i.f980O3, 6);
            f888n.append(C0170i.f985P3, 7);
            f888n.append(C0170i.f990Q3, 8);
            f888n.append(C0170i.f995R3, 9);
            f888n.append(C0170i.f1025X3, 10);
            f888n.append(C0170i.f1030Y3, 11);
        }

        /* renamed from: a */
        public void m6240a(C0165e c0165e) {
            this.f889a = c0165e.f889a;
            this.f890b = c0165e.f890b;
            this.f891c = c0165e.f891c;
            this.f892d = c0165e.f892d;
            this.f893e = c0165e.f893e;
            this.f894f = c0165e.f894f;
            this.f895g = c0165e.f895g;
            this.f896h = c0165e.f896h;
            this.f897i = c0165e.f897i;
            this.f898j = c0165e.f898j;
            this.f899k = c0165e.f899k;
            this.f900l = c0165e.f900l;
            this.f901m = c0165e.f901m;
        }

        /* renamed from: b */
        void m6239b(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0170i.f975N3);
            this.f889a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f888n.get(index)) {
                    case 1:
                        this.f890b = obtainStyledAttributes.getFloat(index, this.f890b);
                        break;
                    case 2:
                        this.f891c = obtainStyledAttributes.getFloat(index, this.f891c);
                        break;
                    case 3:
                        this.f892d = obtainStyledAttributes.getFloat(index, this.f892d);
                        break;
                    case 4:
                        this.f893e = obtainStyledAttributes.getFloat(index, this.f893e);
                        break;
                    case 5:
                        this.f894f = obtainStyledAttributes.getFloat(index, this.f894f);
                        break;
                    case 6:
                        this.f895g = obtainStyledAttributes.getDimension(index, this.f895g);
                        break;
                    case 7:
                        this.f896h = obtainStyledAttributes.getDimension(index, this.f896h);
                        break;
                    case 8:
                        this.f897i = obtainStyledAttributes.getDimension(index, this.f897i);
                        break;
                    case 9:
                        this.f898j = obtainStyledAttributes.getDimension(index, this.f898j);
                        break;
                    case 10:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f899k = obtainStyledAttributes.getDimension(index, this.f899k);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (Build.VERSION.SDK_INT >= 21) {
                            this.f900l = true;
                            this.f901m = obtainStyledAttributes.getDimension(index, this.f901m);
                            break;
                        } else {
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f802e = sparseIntArray;
        sparseIntArray.append(C0170i.f1055d0, 25);
        f802e.append(C0170i.f1061e0, 26);
        f802e.append(C0170i.f1072g0, 29);
        f802e.append(C0170i.f1077h0, 30);
        f802e.append(C0170i.f1107n0, 36);
        f802e.append(C0170i.f1102m0, 35);
        f802e.append(C0170i.f961L, 4);
        f802e.append(C0170i.f956K, 3);
        f802e.append(C0170i.f946I, 1);
        f802e.append(C0170i.f1147v0, 6);
        f802e.append(C0170i.f1152w0, 7);
        f802e.append(C0170i.f996S, 17);
        f802e.append(C0170i.f1001T, 18);
        f802e.append(C0170i.f1006U, 19);
        f802e.append(C0170i.f1042b, 27);
        f802e.append(C0170i.f1082i0, 32);
        f802e.append(C0170i.f1087j0, 33);
        f802e.append(C0170i.f991R, 10);
        f802e.append(C0170i.f986Q, 9);
        f802e.append(C0170i.f1167z0, 13);
        f802e.append(C0170i.f917C0, 16);
        f802e.append(C0170i.f907A0, 14);
        f802e.append(C0170i.f1157x0, 11);
        f802e.append(C0170i.f912B0, 15);
        f802e.append(C0170i.f1162y0, 12);
        f802e.append(C0170i.f1122q0, 40);
        f802e.append(C0170i.f1043b0, 39);
        f802e.append(C0170i.f1037a0, 41);
        f802e.append(C0170i.f1117p0, 42);
        f802e.append(C0170i.f1031Z, 20);
        f802e.append(C0170i.f1112o0, 37);
        f802e.append(C0170i.f981P, 5);
        f802e.append(C0170i.f1049c0, 82);
        f802e.append(C0170i.f1097l0, 82);
        f802e.append(C0170i.f1067f0, 82);
        f802e.append(C0170i.f951J, 82);
        f802e.append(C0170i.f941H, 82);
        f802e.append(C0170i.f1071g, 24);
        f802e.append(C0170i.f1081i, 28);
        f802e.append(C0170i.f1141u, 31);
        f802e.append(C0170i.f1146v, 8);
        f802e.append(C0170i.f1076h, 34);
        f802e.append(C0170i.f1086j, 2);
        f802e.append(C0170i.f1060e, 23);
        f802e.append(C0170i.f1066f, 21);
        f802e.append(C0170i.f1054d, 22);
        f802e.append(C0170i.f1091k, 43);
        f802e.append(C0170i.f1156x, 44);
        f802e.append(C0170i.f1131s, 45);
        f802e.append(C0170i.f1136t, 46);
        f802e.append(C0170i.f1126r, 60);
        f802e.append(C0170i.f1116p, 47);
        f802e.append(C0170i.f1121q, 48);
        f802e.append(C0170i.f1096l, 49);
        f802e.append(C0170i.f1101m, 50);
        f802e.append(C0170i.f1106n, 51);
        f802e.append(C0170i.f1111o, 52);
        f802e.append(C0170i.f1151w, 53);
        f802e.append(C0170i.f1127r0, 54);
        f802e.append(C0170i.f1011V, 55);
        f802e.append(C0170i.f1132s0, 56);
        f802e.append(C0170i.f1016W, 57);
        f802e.append(C0170i.f1137t0, 58);
        f802e.append(C0170i.f1021X, 59);
        f802e.append(C0170i.f966M, 61);
        f802e.append(C0170i.f976O, 62);
        f802e.append(C0170i.f971N, 63);
        f802e.append(C0170i.f1161y, 64);
        f802e.append(C0170i.f937G0, 65);
        f802e.append(C0170i.f926E, 66);
        f802e.append(C0170i.f942H0, 67);
        f802e.append(C0170i.f927E0, 79);
        f802e.append(C0170i.f1048c, 38);
        f802e.append(C0170i.f922D0, 68);
        f802e.append(C0170i.f1142u0, 69);
        f802e.append(C0170i.f1026Y, 70);
        f802e.append(C0170i.f916C, 71);
        f802e.append(C0170i.f906A, 72);
        f802e.append(C0170i.f911B, 73);
        f802e.append(C0170i.f921D, 74);
        f802e.append(C0170i.f1166z, 75);
        f802e.append(C0170i.f932F0, 76);
        f802e.append(C0170i.f1092k0, 77);
        f802e.append(C0170i.f947I0, 78);
        f802e.append(C0170i.f936G, 80);
        f802e.append(C0170i.f931F, 81);
    }

    /* renamed from: j */
    private int[] m6261j(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0169h.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            int i4 = i;
            if (i == 0) {
                i4 = context.getResources().getIdentifier(trim, "id", context.getPackageName());
            }
            int i5 = i4;
            if (i4 == 0) {
                i5 = i4;
                if (view.isInEditMode()) {
                    i5 = i4;
                    if (view.getParent() instanceof ConstraintLayout) {
                        Object m6307g = ((ConstraintLayout) view.getParent()).m6307g(0, trim);
                        i5 = i4;
                        if (m6307g != null) {
                            i5 = i4;
                            if (m6307g instanceof Integer) {
                                i5 = ((Integer) m6307g).intValue();
                            }
                        }
                    }
                }
            }
            iArr[i3] = i5;
            i2++;
            i3++;
        }
        int[] iArr2 = iArr;
        if (i3 != split.length) {
            iArr2 = Arrays.copyOf(iArr, i3);
        }
        return iArr2;
    }

    /* renamed from: k */
    private C0161a m6260k(Context context, AttributeSet attributeSet) {
        C0161a c0161a = new C0161a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0170i.f1036a);
        m6255p(context, c0161a, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return c0161a;
    }

    /* renamed from: l */
    private C0161a m6259l(int i) {
        if (!this.f805c.containsKey(Integer.valueOf(i))) {
            this.f805c.put(Integer.valueOf(i), new C0161a());
        }
        return this.f805c.get(Integer.valueOf(i));
    }

    /* renamed from: o */
    public static int m6256o(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: p */
    private void m6255p(Context context, C0161a c0161a, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            if (index != C0170i.f1048c && C0170i.f1141u != index && C0170i.f1146v != index) {
                c0161a.f808c.f876a = true;
                c0161a.f809d.f841b = true;
                c0161a.f807b.f883a = true;
                c0161a.f810e.f889a = true;
            }
            switch (f802e.get(index)) {
                case 1:
                    C0162b c0162b = c0161a.f809d;
                    c0162b.f864p = m6256o(typedArray, index, c0162b.f864p);
                    break;
                case 2:
                    C0162b c0162b2 = c0161a.f809d;
                    c0162b2.f819G = typedArray.getDimensionPixelSize(index, c0162b2.f819G);
                    break;
                case 3:
                    C0162b c0162b3 = c0161a.f809d;
                    c0162b3.f863o = m6256o(typedArray, index, c0162b3.f863o);
                    break;
                case 4:
                    C0162b c0162b4 = c0161a.f809d;
                    c0162b4.f862n = m6256o(typedArray, index, c0162b4.f862n);
                    break;
                case 5:
                    c0161a.f809d.f871w = typedArray.getString(index);
                    break;
                case 6:
                    C0162b c0162b5 = c0161a.f809d;
                    c0162b5.f813A = typedArray.getDimensionPixelOffset(index, c0162b5.f813A);
                    break;
                case 7:
                    C0162b c0162b6 = c0161a.f809d;
                    c0162b6.f814B = typedArray.getDimensionPixelOffset(index, c0162b6.f814B);
                    break;
                case 8:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0162b c0162b7 = c0161a.f809d;
                        c0162b7.f820H = typedArray.getDimensionPixelSize(index, c0162b7.f820H);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    C0162b c0162b8 = c0161a.f809d;
                    c0162b8.f868t = m6256o(typedArray, index, c0162b8.f868t);
                    break;
                case 10:
                    C0162b c0162b9 = c0161a.f809d;
                    c0162b9.f867s = m6256o(typedArray, index, c0162b9.f867s);
                    break;
                case 11:
                    C0162b c0162b10 = c0161a.f809d;
                    c0162b10.f825M = typedArray.getDimensionPixelSize(index, c0162b10.f825M);
                    break;
                case 12:
                    C0162b c0162b11 = c0161a.f809d;
                    c0162b11.f826N = typedArray.getDimensionPixelSize(index, c0162b11.f826N);
                    break;
                case 13:
                    C0162b c0162b12 = c0161a.f809d;
                    c0162b12.f822J = typedArray.getDimensionPixelSize(index, c0162b12.f822J);
                    break;
                case 14:
                    C0162b c0162b13 = c0161a.f809d;
                    c0162b13.f824L = typedArray.getDimensionPixelSize(index, c0162b13.f824L);
                    break;
                case 15:
                    C0162b c0162b14 = c0161a.f809d;
                    c0162b14.f827O = typedArray.getDimensionPixelSize(index, c0162b14.f827O);
                    break;
                case 16:
                    C0162b c0162b15 = c0161a.f809d;
                    c0162b15.f823K = typedArray.getDimensionPixelSize(index, c0162b15.f823K);
                    break;
                case 17:
                    C0162b c0162b16 = c0161a.f809d;
                    c0162b16.f847e = typedArray.getDimensionPixelOffset(index, c0162b16.f847e);
                    break;
                case 18:
                    C0162b c0162b17 = c0161a.f809d;
                    c0162b17.f849f = typedArray.getDimensionPixelOffset(index, c0162b17.f849f);
                    break;
                case 19:
                    C0162b c0162b18 = c0161a.f809d;
                    c0162b18.f851g = typedArray.getFloat(index, c0162b18.f851g);
                    break;
                case 20:
                    C0162b c0162b19 = c0161a.f809d;
                    c0162b19.f869u = typedArray.getFloat(index, c0162b19.f869u);
                    break;
                case 21:
                    C0162b c0162b20 = c0161a.f809d;
                    c0162b20.f845d = typedArray.getLayoutDimension(index, c0162b20.f845d);
                    break;
                case 22:
                    C0164d c0164d = c0161a.f807b;
                    c0164d.f884b = typedArray.getInt(index, c0164d.f884b);
                    C0164d c0164d2 = c0161a.f807b;
                    c0164d2.f884b = f801d[c0164d2.f884b];
                    break;
                case 23:
                    C0162b c0162b21 = c0161a.f809d;
                    c0162b21.f843c = typedArray.getLayoutDimension(index, c0162b21.f843c);
                    break;
                case 24:
                    C0162b c0162b22 = c0161a.f809d;
                    c0162b22.f816D = typedArray.getDimensionPixelSize(index, c0162b22.f816D);
                    break;
                case 25:
                    C0162b c0162b23 = c0161a.f809d;
                    c0162b23.f853h = m6256o(typedArray, index, c0162b23.f853h);
                    break;
                case 26:
                    C0162b c0162b24 = c0161a.f809d;
                    c0162b24.f855i = m6256o(typedArray, index, c0162b24.f855i);
                    break;
                case 27:
                    C0162b c0162b25 = c0161a.f809d;
                    c0162b25.f815C = typedArray.getInt(index, c0162b25.f815C);
                    break;
                case 28:
                    C0162b c0162b26 = c0161a.f809d;
                    c0162b26.f817E = typedArray.getDimensionPixelSize(index, c0162b26.f817E);
                    break;
                case 29:
                    C0162b c0162b27 = c0161a.f809d;
                    c0162b27.f857j = m6256o(typedArray, index, c0162b27.f857j);
                    break;
                case 30:
                    C0162b c0162b28 = c0161a.f809d;
                    c0162b28.f859k = m6256o(typedArray, index, c0162b28.f859k);
                    break;
                case 31:
                    if (Build.VERSION.SDK_INT >= 17) {
                        C0162b c0162b29 = c0161a.f809d;
                        c0162b29.f821I = typedArray.getDimensionPixelSize(index, c0162b29.f821I);
                        break;
                    } else {
                        break;
                    }
                case 32:
                    C0162b c0162b30 = c0161a.f809d;
                    c0162b30.f865q = m6256o(typedArray, index, c0162b30.f865q);
                    break;
                case 33:
                    C0162b c0162b31 = c0161a.f809d;
                    c0162b31.f866r = m6256o(typedArray, index, c0162b31.f866r);
                    break;
                case 34:
                    C0162b c0162b32 = c0161a.f809d;
                    c0162b32.f818F = typedArray.getDimensionPixelSize(index, c0162b32.f818F);
                    break;
                case 35:
                    C0162b c0162b33 = c0161a.f809d;
                    c0162b33.f861m = m6256o(typedArray, index, c0162b33.f861m);
                    break;
                case 36:
                    C0162b c0162b34 = c0161a.f809d;
                    c0162b34.f860l = m6256o(typedArray, index, c0162b34.f860l);
                    break;
                case 37:
                    C0162b c0162b35 = c0161a.f809d;
                    c0162b35.f870v = typedArray.getFloat(index, c0162b35.f870v);
                    break;
                case 38:
                    c0161a.f806a = typedArray.getResourceId(index, c0161a.f806a);
                    break;
                case 39:
                    C0162b c0162b36 = c0161a.f809d;
                    c0162b36.f829Q = typedArray.getFloat(index, c0162b36.f829Q);
                    break;
                case 40:
                    C0162b c0162b37 = c0161a.f809d;
                    c0162b37.f828P = typedArray.getFloat(index, c0162b37.f828P);
                    break;
                case 41:
                    C0162b c0162b38 = c0161a.f809d;
                    c0162b38.f830R = typedArray.getInt(index, c0162b38.f830R);
                    break;
                case 42:
                    C0162b c0162b39 = c0161a.f809d;
                    c0162b39.f831S = typedArray.getInt(index, c0162b39.f831S);
                    break;
                case 43:
                    C0164d c0164d3 = c0161a.f807b;
                    c0164d3.f886d = typedArray.getFloat(index, c0164d3.f886d);
                    break;
                case 44:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0165e c0165e = c0161a.f810e;
                        c0165e.f900l = true;
                        c0165e.f901m = typedArray.getDimension(index, c0165e.f901m);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    C0165e c0165e2 = c0161a.f810e;
                    c0165e2.f891c = typedArray.getFloat(index, c0165e2.f891c);
                    break;
                case 46:
                    C0165e c0165e3 = c0161a.f810e;
                    c0165e3.f892d = typedArray.getFloat(index, c0165e3.f892d);
                    break;
                case 47:
                    C0165e c0165e4 = c0161a.f810e;
                    c0165e4.f893e = typedArray.getFloat(index, c0165e4.f893e);
                    break;
                case 48:
                    C0165e c0165e5 = c0161a.f810e;
                    c0165e5.f894f = typedArray.getFloat(index, c0165e5.f894f);
                    break;
                case 49:
                    C0165e c0165e6 = c0161a.f810e;
                    c0165e6.f895g = typedArray.getDimension(index, c0165e6.f895g);
                    break;
                case 50:
                    C0165e c0165e7 = c0161a.f810e;
                    c0165e7.f896h = typedArray.getDimension(index, c0165e7.f896h);
                    break;
                case 51:
                    C0165e c0165e8 = c0161a.f810e;
                    c0165e8.f897i = typedArray.getDimension(index, c0165e8.f897i);
                    break;
                case 52:
                    C0165e c0165e9 = c0161a.f810e;
                    c0165e9.f898j = typedArray.getDimension(index, c0165e9.f898j);
                    break;
                case 53:
                    if (Build.VERSION.SDK_INT >= 21) {
                        C0165e c0165e10 = c0161a.f810e;
                        c0165e10.f899k = typedArray.getDimension(index, c0165e10.f899k);
                        break;
                    } else {
                        break;
                    }
                case 54:
                    C0162b c0162b40 = c0161a.f809d;
                    c0162b40.f832T = typedArray.getInt(index, c0162b40.f832T);
                    break;
                case 55:
                    C0162b c0162b41 = c0161a.f809d;
                    c0162b41.f833U = typedArray.getInt(index, c0162b41.f833U);
                    break;
                case 56:
                    C0162b c0162b42 = c0161a.f809d;
                    c0162b42.f834V = typedArray.getDimensionPixelSize(index, c0162b42.f834V);
                    break;
                case 57:
                    C0162b c0162b43 = c0161a.f809d;
                    c0162b43.f835W = typedArray.getDimensionPixelSize(index, c0162b43.f835W);
                    break;
                case 58:
                    C0162b c0162b44 = c0161a.f809d;
                    c0162b44.f836X = typedArray.getDimensionPixelSize(index, c0162b44.f836X);
                    break;
                case 59:
                    C0162b c0162b45 = c0161a.f809d;
                    c0162b45.f837Y = typedArray.getDimensionPixelSize(index, c0162b45.f837Y);
                    break;
                case 60:
                    C0165e c0165e11 = c0161a.f810e;
                    c0165e11.f890b = typedArray.getFloat(index, c0165e11.f890b);
                    break;
                case 61:
                    C0162b c0162b46 = c0161a.f809d;
                    c0162b46.f872x = m6256o(typedArray, index, c0162b46.f872x);
                    break;
                case 62:
                    C0162b c0162b47 = c0161a.f809d;
                    c0162b47.f873y = typedArray.getDimensionPixelSize(index, c0162b47.f873y);
                    break;
                case 63:
                    C0162b c0162b48 = c0161a.f809d;
                    c0162b48.f874z = typedArray.getFloat(index, c0162b48.f874z);
                    break;
                case 64:
                    C0163c c0163c = c0161a.f808c;
                    c0163c.f877b = m6256o(typedArray, index, c0163c.f877b);
                    break;
                case 65:
                    if (typedArray.peekValue(index).type == 3) {
                        c0161a.f808c.f878c = typedArray.getString(index);
                        break;
                    } else {
                        c0161a.f808c.f878c = a.a[typedArray.getInteger(index, 0)];
                        break;
                    }
                case 66:
                    c0161a.f808c.f880e = typedArray.getInt(index, 0);
                    break;
                case 67:
                    C0163c c0163c2 = c0161a.f808c;
                    c0163c2.f882g = typedArray.getFloat(index, c0163c2.f882g);
                    break;
                case 68:
                    C0164d c0164d4 = c0161a.f807b;
                    c0164d4.f887e = typedArray.getFloat(index, c0164d4.f887e);
                    break;
                case 69:
                    c0161a.f809d.f838Z = typedArray.getFloat(index, 1.0f);
                    break;
                case 70:
                    c0161a.f809d.f840a0 = typedArray.getFloat(index, 1.0f);
                    break;
                case 71:
                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                    break;
                case 72:
                    C0162b c0162b49 = c0161a.f809d;
                    c0162b49.f842b0 = typedArray.getInt(index, c0162b49.f842b0);
                    break;
                case 73:
                    C0162b c0162b50 = c0161a.f809d;
                    c0162b50.f844c0 = typedArray.getDimensionPixelSize(index, c0162b50.f844c0);
                    break;
                case 74:
                    c0161a.f809d.f850f0 = typedArray.getString(index);
                    break;
                case 75:
                    C0162b c0162b51 = c0161a.f809d;
                    c0162b51.f858j0 = typedArray.getBoolean(index, c0162b51.f858j0);
                    break;
                case 76:
                    C0163c c0163c3 = c0161a.f808c;
                    c0163c3.f879d = typedArray.getInt(index, c0163c3.f879d);
                    break;
                case 77:
                    c0161a.f809d.f852g0 = typedArray.getString(index);
                    break;
                case 78:
                    C0164d c0164d5 = c0161a.f807b;
                    c0164d5.f885c = typedArray.getInt(index, c0164d5.f885c);
                    break;
                case 79:
                    C0163c c0163c4 = c0161a.f808c;
                    c0163c4.f881f = typedArray.getFloat(index, c0163c4.f881f);
                    break;
                case 80:
                    C0162b c0162b52 = c0161a.f809d;
                    c0162b52.f854h0 = typedArray.getBoolean(index, c0162b52.f854h0);
                    break;
                case 81:
                    C0162b c0162b53 = c0161a.f809d;
                    c0162b53.f856i0 = typedArray.getBoolean(index, c0162b53.f856i0);
                    break;
                case 82:
                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f802e.get(index));
                    break;
                default:
                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f802e.get(index));
                    break;
            }
        }
    }

    /* renamed from: c */
    public void m6268c(ConstraintLayout constraintLayout) {
        m6267d(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: d */
    public void m6267d(ConstraintLayout constraintLayout, boolean z) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f805c.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (!this.f805c.containsKey(Integer.valueOf(id))) {
                Log.w("ConstraintSet", "id unknown " + f.f.a.b.a.a(childAt));
            } else if (this.f804b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1) {
                    if (this.f805c.containsKey(Integer.valueOf(id))) {
                        hashSet.remove(Integer.valueOf(id));
                        C0161a c0161a = this.f805c.get(Integer.valueOf(id));
                        if (childAt instanceof Barrier) {
                            c0161a.f809d.f846d0 = 1;
                        }
                        int i2 = c0161a.f809d.f846d0;
                        if (i2 != -1 && i2 == 1) {
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(c0161a.f809d.f842b0);
                            barrier.setMargin(c0161a.f809d.f844c0);
                            barrier.setAllowsGoneWidget(c0161a.f809d.f858j0);
                            C0162b c0162b = c0161a.f809d;
                            int[] iArr = c0162b.f848e0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = c0162b.f850f0;
                                if (str != null) {
                                    c0162b.f848e0 = m6261j(barrier, str);
                                    barrier.setReferencedIds(c0161a.f809d.f848e0);
                                }
                            }
                        }
                        ConstraintLayout.C0151b c0151b = (ConstraintLayout.C0151b) childAt.getLayoutParams();
                        c0151b.m6293a();
                        c0161a.m6251d(c0151b);
                        if (z) {
                            C0153a.m6290c(childAt, c0161a.f811f);
                        }
                        childAt.setLayoutParams(c0151b);
                        C0164d c0164d = c0161a.f807b;
                        if (c0164d.f885c == 0) {
                            childAt.setVisibility(c0164d.f884b);
                        }
                        int i3 = Build.VERSION.SDK_INT;
                        if (i3 >= 17) {
                            childAt.setAlpha(c0161a.f807b.f886d);
                            childAt.setRotation(c0161a.f810e.f890b);
                            childAt.setRotationX(c0161a.f810e.f891c);
                            childAt.setRotationY(c0161a.f810e.f892d);
                            childAt.setScaleX(c0161a.f810e.f893e);
                            childAt.setScaleY(c0161a.f810e.f894f);
                            if (!Float.isNaN(c0161a.f810e.f895g)) {
                                childAt.setPivotX(c0161a.f810e.f895g);
                            }
                            if (!Float.isNaN(c0161a.f810e.f896h)) {
                                childAt.setPivotY(c0161a.f810e.f896h);
                            }
                            childAt.setTranslationX(c0161a.f810e.f897i);
                            childAt.setTranslationY(c0161a.f810e.f898j);
                            if (i3 >= 21) {
                                childAt.setTranslationZ(c0161a.f810e.f899k);
                                C0165e c0165e = c0161a.f810e;
                                if (c0165e.f900l) {
                                    childAt.setElevation(c0165e.f901m);
                                }
                            }
                        }
                    } else {
                        Log.v("ConstraintSet", "WARNING NO CONSTRAINTS for view " + id);
                    }
                }
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C0161a c0161a2 = this.f805c.get(num);
            int i4 = c0161a2.f809d.f846d0;
            if (i4 != -1 && i4 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                C0162b c0162b2 = c0161a2.f809d;
                int[] iArr2 = c0162b2.f848e0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = c0162b2.f850f0;
                    if (str2 != null) {
                        c0162b2.f848e0 = m6261j(barrier2, str2);
                        barrier2.setReferencedIds(c0161a2.f809d.f848e0);
                    }
                }
                barrier2.setType(c0161a2.f809d.f842b0);
                barrier2.setMargin(c0161a2.f809d.f844c0);
                ConstraintLayout.C0151b generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m6275n();
                c0161a2.m6251d(generateDefaultLayoutParams);
                constraintLayout.addView((View) barrier2, (ViewGroup.LayoutParams) generateDefaultLayoutParams);
            }
            if (c0161a2.f809d.f839a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.C0151b generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                c0161a2.m6251d(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    /* renamed from: e */
    public void m6266e(int i, int i2) {
        if (this.f805c.containsKey(Integer.valueOf(i))) {
            C0161a c0161a = this.f805c.get(Integer.valueOf(i));
            switch (i2) {
                case 1:
                    C0162b c0162b = c0161a.f809d;
                    c0162b.f855i = -1;
                    c0162b.f853h = -1;
                    c0162b.f816D = -1;
                    c0162b.f822J = -1;
                    return;
                case 2:
                    C0162b c0162b2 = c0161a.f809d;
                    c0162b2.f859k = -1;
                    c0162b2.f857j = -1;
                    c0162b2.f817E = -1;
                    c0162b2.f824L = -1;
                    return;
                case 3:
                    C0162b c0162b3 = c0161a.f809d;
                    c0162b3.f861m = -1;
                    c0162b3.f860l = -1;
                    c0162b3.f818F = -1;
                    c0162b3.f823K = -1;
                    return;
                case 4:
                    C0162b c0162b4 = c0161a.f809d;
                    c0162b4.f862n = -1;
                    c0162b4.f863o = -1;
                    c0162b4.f819G = -1;
                    c0162b4.f825M = -1;
                    return;
                case 5:
                    c0161a.f809d.f864p = -1;
                    return;
                case 6:
                    C0162b c0162b5 = c0161a.f809d;
                    c0162b5.f865q = -1;
                    c0162b5.f866r = -1;
                    c0162b5.f821I = -1;
                    c0162b5.f827O = -1;
                    return;
                case 7:
                    C0162b c0162b6 = c0161a.f809d;
                    c0162b6.f867s = -1;
                    c0162b6.f868t = -1;
                    c0162b6.f820H = -1;
                    c0162b6.f826N = -1;
                    return;
                default:
                    throw new IllegalArgumentException("unknown constraint");
            }
        }
    }

    /* renamed from: f */
    public void m6265f(Context context, int i) {
        m6264g((ConstraintLayout) LayoutInflater.from(context).inflate(i, (ViewGroup) null));
    }

    /* renamed from: g */
    public void m6264g(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        this.f805c.clear();
        for (int i = 0; i < childCount; i++) {
            Barrier childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.C0151b c0151b = (ConstraintLayout.C0151b) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f804b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f805c.containsKey(Integer.valueOf(id))) {
                this.f805c.put(Integer.valueOf(id), new C0161a());
            }
            C0161a c0161a = this.f805c.get(Integer.valueOf(id));
            c0161a.f811f = C0153a.m6292a(this.f803a, childAt);
            c0161a.m6249f(id, c0151b);
            c0161a.f807b.f884b = childAt.getVisibility();
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 17) {
                c0161a.f807b.f886d = childAt.getAlpha();
                c0161a.f810e.f890b = childAt.getRotation();
                c0161a.f810e.f891c = childAt.getRotationX();
                c0161a.f810e.f892d = childAt.getRotationY();
                c0161a.f810e.f893e = childAt.getScaleX();
                c0161a.f810e.f894f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    C0165e c0165e = c0161a.f810e;
                    c0165e.f895g = pivotX;
                    c0165e.f896h = pivotY;
                }
                c0161a.f810e.f897i = childAt.getTranslationX();
                c0161a.f810e.f898j = childAt.getTranslationY();
                if (i2 >= 21) {
                    c0161a.f810e.f899k = childAt.getTranslationZ();
                    C0165e c0165e2 = c0161a.f810e;
                    if (c0165e2.f900l) {
                        c0165e2.f901m = childAt.getElevation();
                    }
                }
            }
            if (childAt instanceof Barrier) {
                Barrier barrier = childAt;
                c0161a.f809d.f858j0 = barrier.o();
                c0161a.f809d.f848e0 = barrier.getReferencedIds();
                c0161a.f809d.f842b0 = barrier.getType();
                c0161a.f809d.f844c0 = barrier.getMargin();
            }
        }
    }

    /* renamed from: h */
    public void m6263h(C0166e c0166e) {
        int childCount = c0166e.getChildCount();
        this.f805c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = c0166e.getChildAt(i);
            C0166e.a layoutParams = childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f804b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f805c.containsKey(Integer.valueOf(id))) {
                this.f805c.put(Integer.valueOf(id), new C0161a());
            }
            C0161a c0161a = this.f805c.get(Integer.valueOf(id));
            if (childAt instanceof AbstractC0156b) {
                c0161a.m6247h((AbstractC0156b) childAt, id, layoutParams);
            }
            c0161a.m6248g(id, layoutParams);
        }
    }

    /* renamed from: i */
    public void m6262i(int i, int i2, int i3, float f) {
        C0162b c0162b = m6259l(i).f809d;
        c0162b.f872x = i2;
        c0162b.f873y = i3;
        c0162b.f874z = f;
    }

    /* renamed from: m */
    public void m6258m(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0161a m6260k = m6260k(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        m6260k.f809d.f839a = true;
                    }
                    this.f805c.put(Integer.valueOf(m6260k.f806a), m6260k);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: n */
    public void m6257n(Context context, XmlPullParser xmlPullParser) {
        C0161a c0161a;
        boolean z;
        try {
            int eventType = xmlPullParser.getEventType();
            C0161a c0161a2 = null;
            while (true) {
                C0161a c0161a3 = c0161a2;
                if (eventType == 1) {
                    return;
                }
                if (eventType == 0) {
                    xmlPullParser.getName();
                    c0161a = c0161a3;
                } else if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    switch (name.hashCode()) {
                        case -2025855158:
                            if (name.equals("Layout")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1984451626:
                            if (name.equals("Motion")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1269513683:
                            if (name.equals("PropertySet")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -1238332596:
                            if (name.equals("Transform")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case -71750448:
                            if (name.equals("Guideline")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1331510167:
                            if (name.equals("Barrier")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1791837707:
                            if (name.equals("CustomAttribute")) {
                                z = true;
                                break;
                            }
                            z = true;
                            break;
                        case 1803088381:
                            if (name.equals("Constraint")) {
                                z = false;
                                break;
                            }
                            z = true;
                            break;
                        default:
                            z = true;
                            break;
                    }
                    switch (z) {
                        case false:
                            c0161a = m6260k(context, Xml.asAttributeSet(xmlPullParser));
                            break;
                        case true:
                            c0161a = m6260k(context, Xml.asAttributeSet(xmlPullParser));
                            C0162b c0162b = c0161a.f809d;
                            c0162b.f839a = true;
                            c0162b.f841b = true;
                            break;
                        case true:
                            c0161a = m6260k(context, Xml.asAttributeSet(xmlPullParser));
                            c0161a.f809d.f846d0 = 1;
                            break;
                        case true:
                            if (c0161a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0161a3.f807b.m6241b(context, Xml.asAttributeSet(xmlPullParser));
                            c0161a = c0161a3;
                            break;
                        case true:
                            if (c0161a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0161a3.f810e.m6239b(context, Xml.asAttributeSet(xmlPullParser));
                            c0161a = c0161a3;
                            break;
                        case true:
                            if (c0161a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0161a3.f809d.m6245b(context, Xml.asAttributeSet(xmlPullParser));
                            c0161a = c0161a3;
                            break;
                        case true:
                            if (c0161a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            c0161a3.f808c.m6243b(context, Xml.asAttributeSet(xmlPullParser));
                            c0161a = c0161a3;
                            break;
                        case true:
                            if (c0161a3 == null) {
                                throw new RuntimeException("XML parser error must be within a Constraint " + xmlPullParser.getLineNumber());
                            }
                            C0153a.m6291b(context, xmlPullParser, c0161a3.f811f);
                            c0161a = c0161a3;
                            break;
                        default:
                            c0161a = c0161a3;
                            break;
                    }
                } else if (eventType != 3) {
                    c0161a = c0161a3;
                } else {
                    String name2 = xmlPullParser.getName();
                    if ("ConstraintSet".equals(name2)) {
                        return;
                    }
                    c0161a = c0161a3;
                    if (name2.equalsIgnoreCase("Constraint")) {
                        this.f805c.put(Integer.valueOf(c0161a3.f806a), c0161a3);
                        c0161a = null;
                    }
                }
                eventType = xmlPullParser.next();
                c0161a2 = c0161a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
