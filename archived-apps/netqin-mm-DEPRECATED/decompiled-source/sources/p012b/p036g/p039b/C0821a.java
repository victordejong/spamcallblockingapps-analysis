package p012b.p036g.p039b;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.Barrier;
import androidx.constraintlayout.widget.ConstraintHelper;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Constraints;
import androidx.constraintlayout.widget.Guideline;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: b.g.b.a */
/* loaded from: classes-dex2jar.jar:b/g/b/a.class */
public class C0821a {

    /* renamed from: b */
    public static final int[] f3867b = {0, 4, 8};

    /* renamed from: c */
    public static SparseIntArray f3868c;

    /* renamed from: a */
    public HashMap<Integer, C0823b> f3869a = new HashMap<>();

    /* renamed from: b.g.b.a$b */
    /* loaded from: classes-dex2jar.jar:b/g/b/a$b.class */
    public static class C0823b {

        /* renamed from: A */
        public int f3870A;

        /* renamed from: B */
        public int f3871B;

        /* renamed from: C */
        public int f3872C;

        /* renamed from: D */
        public int f3873D;

        /* renamed from: E */
        public int f3874E;

        /* renamed from: F */
        public int f3875F;

        /* renamed from: G */
        public int f3876G;

        /* renamed from: H */
        public int f3877H;

        /* renamed from: I */
        public int f3878I;

        /* renamed from: J */
        public int f3879J;

        /* renamed from: K */
        public int f3880K;

        /* renamed from: L */
        public int f3881L;

        /* renamed from: M */
        public int f3882M;

        /* renamed from: N */
        public int f3883N;

        /* renamed from: O */
        public int f3884O;

        /* renamed from: P */
        public int f3885P;

        /* renamed from: Q */
        public float f3886Q;

        /* renamed from: R */
        public float f3887R;

        /* renamed from: S */
        public int f3888S;

        /* renamed from: T */
        public int f3889T;

        /* renamed from: U */
        public float f3890U;

        /* renamed from: V */
        public boolean f3891V;

        /* renamed from: W */
        public float f3892W;

        /* renamed from: X */
        public float f3893X;

        /* renamed from: Y */
        public float f3894Y;

        /* renamed from: Z */
        public float f3895Z;

        /* renamed from: a */
        public boolean f3896a;

        /* renamed from: a0 */
        public float f3897a0;

        /* renamed from: b */
        public int f3898b;

        /* renamed from: b0 */
        public float f3899b0;

        /* renamed from: c */
        public int f3900c;

        /* renamed from: c0 */
        public float f3901c0;

        /* renamed from: d */
        public int f3902d;

        /* renamed from: d0 */
        public float f3903d0;

        /* renamed from: e */
        public int f3904e;

        /* renamed from: e0 */
        public float f3905e0;

        /* renamed from: f */
        public int f3906f;

        /* renamed from: f0 */
        public float f3907f0;

        /* renamed from: g */
        public float f3908g;

        /* renamed from: g0 */
        public float f3909g0;

        /* renamed from: h */
        public int f3910h;

        /* renamed from: h0 */
        public boolean f3911h0;

        /* renamed from: i */
        public int f3912i;

        /* renamed from: i0 */
        public boolean f3913i0;

        /* renamed from: j */
        public int f3914j;

        /* renamed from: j0 */
        public int f3915j0;

        /* renamed from: k */
        public int f3916k;

        /* renamed from: k0 */
        public int f3917k0;

        /* renamed from: l */
        public int f3918l;

        /* renamed from: l0 */
        public int f3919l0;

        /* renamed from: m */
        public int f3920m;

        /* renamed from: m0 */
        public int f3921m0;

        /* renamed from: n */
        public int f3922n;

        /* renamed from: n0 */
        public int f3923n0;

        /* renamed from: o */
        public int f3924o;

        /* renamed from: o0 */
        public int f3925o0;

        /* renamed from: p */
        public int f3926p;

        /* renamed from: p0 */
        public float f3927p0;

        /* renamed from: q */
        public int f3928q;

        /* renamed from: q0 */
        public float f3929q0;

        /* renamed from: r */
        public int f3930r;

        /* renamed from: r0 */
        public boolean f3931r0;

        /* renamed from: s */
        public int f3932s;

        /* renamed from: s0 */
        public int f3933s0;

        /* renamed from: t */
        public int f3934t;

        /* renamed from: t0 */
        public int f3935t0;

        /* renamed from: u */
        public float f3936u;

        /* renamed from: u0 */
        public int[] f3937u0;

        /* renamed from: v */
        public float f3938v;

        /* renamed from: v0 */
        public String f3939v0;

        /* renamed from: w */
        public String f3940w;

        /* renamed from: x */
        public int f3941x;

        /* renamed from: y */
        public int f3942y;

        /* renamed from: z */
        public float f3943z;

        public C0823b() {
            this.f3896a = false;
            this.f3904e = -1;
            this.f3906f = -1;
            this.f3908g = -1.0f;
            this.f3910h = -1;
            this.f3912i = -1;
            this.f3914j = -1;
            this.f3916k = -1;
            this.f3918l = -1;
            this.f3920m = -1;
            this.f3922n = -1;
            this.f3924o = -1;
            this.f3926p = -1;
            this.f3928q = -1;
            this.f3930r = -1;
            this.f3932s = -1;
            this.f3934t = -1;
            this.f3936u = 0.5f;
            this.f3938v = 0.5f;
            this.f3940w = null;
            this.f3941x = -1;
            this.f3942y = 0;
            this.f3943z = 0.0f;
            this.f3870A = -1;
            this.f3871B = -1;
            this.f3872C = -1;
            this.f3873D = -1;
            this.f3874E = -1;
            this.f3875F = -1;
            this.f3876G = -1;
            this.f3877H = -1;
            this.f3878I = -1;
            this.f3879J = 0;
            this.f3880K = -1;
            this.f3881L = -1;
            this.f3882M = -1;
            this.f3883N = -1;
            this.f3884O = -1;
            this.f3885P = -1;
            this.f3886Q = 0.0f;
            this.f3887R = 0.0f;
            this.f3888S = 0;
            this.f3889T = 0;
            this.f3890U = 1.0f;
            this.f3891V = false;
            this.f3892W = 0.0f;
            this.f3893X = 0.0f;
            this.f3894Y = 0.0f;
            this.f3895Z = 0.0f;
            this.f3897a0 = 1.0f;
            this.f3899b0 = 1.0f;
            this.f3901c0 = Float.NaN;
            this.f3903d0 = Float.NaN;
            this.f3905e0 = 0.0f;
            this.f3907f0 = 0.0f;
            this.f3909g0 = 0.0f;
            this.f3911h0 = false;
            this.f3913i0 = false;
            this.f3915j0 = 0;
            this.f3917k0 = 0;
            this.f3919l0 = -1;
            this.f3921m0 = -1;
            this.f3923n0 = -1;
            this.f3925o0 = -1;
            this.f3927p0 = 1.0f;
            this.f3929q0 = 1.0f;
            this.f3931r0 = false;
            this.f3933s0 = -1;
            this.f3935t0 = -1;
        }

        /* renamed from: a */
        public final void m35821a(int i, ConstraintLayout.LayoutParams layoutParams) {
            this.f3902d = i;
            this.f3910h = layoutParams.f1004d;
            this.f3912i = layoutParams.f1006e;
            this.f3914j = layoutParams.f1008f;
            this.f3916k = layoutParams.f1010g;
            this.f3918l = layoutParams.f1012h;
            this.f3920m = layoutParams.f1014i;
            this.f3922n = layoutParams.f1016j;
            this.f3924o = layoutParams.f1018k;
            this.f3926p = layoutParams.f1020l;
            this.f3928q = layoutParams.f1025p;
            this.f3930r = layoutParams.f1026q;
            this.f3932s = layoutParams.f1027r;
            this.f3934t = layoutParams.f1028s;
            this.f3936u = layoutParams.f1035z;
            this.f3938v = layoutParams.f972A;
            this.f3940w = layoutParams.f973B;
            this.f3941x = layoutParams.f1022m;
            this.f3942y = layoutParams.f1023n;
            this.f3943z = layoutParams.f1024o;
            this.f3870A = layoutParams.f987P;
            this.f3871B = layoutParams.f988Q;
            this.f3872C = layoutParams.f989R;
            this.f3908g = layoutParams.f1002c;
            this.f3904e = layoutParams.f998a;
            this.f3906f = layoutParams.f1000b;
            this.f3898b = ((ViewGroup.MarginLayoutParams) layoutParams).width;
            this.f3900c = ((ViewGroup.MarginLayoutParams) layoutParams).height;
            this.f3873D = ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin;
            this.f3874E = ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin;
            this.f3875F = ((ViewGroup.MarginLayoutParams) layoutParams).topMargin;
            this.f3876G = ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin;
            this.f3886Q = layoutParams.f976E;
            this.f3887R = layoutParams.f975D;
            this.f3889T = layoutParams.f978G;
            this.f3888S = layoutParams.f977F;
            boolean z = layoutParams.f990S;
            this.f3911h0 = z;
            this.f3913i0 = layoutParams.f991T;
            this.f3915j0 = layoutParams.f979H;
            this.f3917k0 = layoutParams.f980I;
            this.f3911h0 = z;
            this.f3919l0 = layoutParams.f983L;
            this.f3921m0 = layoutParams.f984M;
            this.f3923n0 = layoutParams.f981J;
            this.f3925o0 = layoutParams.f982K;
            this.f3927p0 = layoutParams.f985N;
            this.f3929q0 = layoutParams.f986O;
            if (Build.VERSION.SDK_INT >= 17) {
                this.f3877H = layoutParams.getMarginEnd();
                this.f3878I = layoutParams.getMarginStart();
            }
        }

        /* renamed from: a */
        public final void m35820a(int i, Constraints.LayoutParams layoutParams) {
            m35821a(i, (ConstraintLayout.LayoutParams) layoutParams);
            this.f3890U = layoutParams.f1038m0;
            this.f3893X = layoutParams.f1041p0;
            this.f3894Y = layoutParams.f1042q0;
            this.f3895Z = layoutParams.f1043r0;
            this.f3897a0 = layoutParams.f1044s0;
            this.f3899b0 = layoutParams.f1045t0;
            this.f3901c0 = layoutParams.f1046u0;
            this.f3903d0 = layoutParams.f1047v0;
            this.f3905e0 = layoutParams.f1048w0;
            this.f3907f0 = layoutParams.f1049x0;
            this.f3909g0 = layoutParams.f1050y0;
            this.f3892W = layoutParams.f1040o0;
            this.f3891V = layoutParams.f1039n0;
        }

        /* renamed from: a */
        public final void m35819a(ConstraintHelper constraintHelper, int i, Constraints.LayoutParams layoutParams) {
            m35820a(i, layoutParams);
            if (constraintHelper instanceof Barrier) {
                this.f3935t0 = 1;
                Barrier barrier = (Barrier) constraintHelper;
                this.f3933s0 = barrier.getType();
                this.f3937u0 = barrier.getReferencedIds();
            }
        }

        /* renamed from: a */
        public void m35818a(ConstraintLayout.LayoutParams layoutParams) {
            layoutParams.f1004d = this.f3910h;
            layoutParams.f1006e = this.f3912i;
            layoutParams.f1008f = this.f3914j;
            layoutParams.f1010g = this.f3916k;
            layoutParams.f1012h = this.f3918l;
            layoutParams.f1014i = this.f3920m;
            layoutParams.f1016j = this.f3922n;
            layoutParams.f1018k = this.f3924o;
            layoutParams.f1020l = this.f3926p;
            layoutParams.f1025p = this.f3928q;
            layoutParams.f1026q = this.f3930r;
            layoutParams.f1027r = this.f3932s;
            layoutParams.f1028s = this.f3934t;
            ((ViewGroup.MarginLayoutParams) layoutParams).leftMargin = this.f3873D;
            ((ViewGroup.MarginLayoutParams) layoutParams).rightMargin = this.f3874E;
            ((ViewGroup.MarginLayoutParams) layoutParams).topMargin = this.f3875F;
            ((ViewGroup.MarginLayoutParams) layoutParams).bottomMargin = this.f3876G;
            layoutParams.f1033x = this.f3885P;
            layoutParams.f1034y = this.f3884O;
            layoutParams.f1035z = this.f3936u;
            layoutParams.f972A = this.f3938v;
            layoutParams.f1022m = this.f3941x;
            layoutParams.f1023n = this.f3942y;
            layoutParams.f1024o = this.f3943z;
            layoutParams.f973B = this.f3940w;
            layoutParams.f987P = this.f3870A;
            layoutParams.f988Q = this.f3871B;
            layoutParams.f976E = this.f3886Q;
            layoutParams.f975D = this.f3887R;
            layoutParams.f978G = this.f3889T;
            layoutParams.f977F = this.f3888S;
            layoutParams.f990S = this.f3911h0;
            layoutParams.f991T = this.f3913i0;
            layoutParams.f979H = this.f3915j0;
            layoutParams.f980I = this.f3917k0;
            layoutParams.f983L = this.f3919l0;
            layoutParams.f984M = this.f3921m0;
            layoutParams.f981J = this.f3923n0;
            layoutParams.f982K = this.f3925o0;
            layoutParams.f985N = this.f3927p0;
            layoutParams.f986O = this.f3929q0;
            layoutParams.f989R = this.f3872C;
            layoutParams.f1002c = this.f3908g;
            layoutParams.f998a = this.f3904e;
            layoutParams.f1000b = this.f3906f;
            ((ViewGroup.MarginLayoutParams) layoutParams).width = this.f3898b;
            ((ViewGroup.MarginLayoutParams) layoutParams).height = this.f3900c;
            if (Build.VERSION.SDK_INT >= 17) {
                layoutParams.setMarginStart(this.f3878I);
                layoutParams.setMarginEnd(this.f3877H);
            }
            layoutParams.m38704a();
        }

        public C0823b clone() {
            C0823b bVar = new C0823b();
            bVar.f3896a = this.f3896a;
            bVar.f3898b = this.f3898b;
            bVar.f3900c = this.f3900c;
            bVar.f3904e = this.f3904e;
            bVar.f3906f = this.f3906f;
            bVar.f3908g = this.f3908g;
            bVar.f3910h = this.f3910h;
            bVar.f3912i = this.f3912i;
            bVar.f3914j = this.f3914j;
            bVar.f3916k = this.f3916k;
            bVar.f3918l = this.f3918l;
            bVar.f3920m = this.f3920m;
            bVar.f3922n = this.f3922n;
            bVar.f3924o = this.f3924o;
            bVar.f3926p = this.f3926p;
            bVar.f3928q = this.f3928q;
            bVar.f3930r = this.f3930r;
            bVar.f3932s = this.f3932s;
            bVar.f3934t = this.f3934t;
            bVar.f3936u = this.f3936u;
            bVar.f3938v = this.f3938v;
            bVar.f3940w = this.f3940w;
            bVar.f3870A = this.f3870A;
            bVar.f3871B = this.f3871B;
            bVar.f3936u = this.f3936u;
            bVar.f3936u = this.f3936u;
            bVar.f3936u = this.f3936u;
            bVar.f3936u = this.f3936u;
            bVar.f3936u = this.f3936u;
            bVar.f3872C = this.f3872C;
            bVar.f3873D = this.f3873D;
            bVar.f3874E = this.f3874E;
            bVar.f3875F = this.f3875F;
            bVar.f3876G = this.f3876G;
            bVar.f3877H = this.f3877H;
            bVar.f3878I = this.f3878I;
            bVar.f3879J = this.f3879J;
            bVar.f3880K = this.f3880K;
            bVar.f3881L = this.f3881L;
            bVar.f3882M = this.f3882M;
            bVar.f3883N = this.f3883N;
            bVar.f3884O = this.f3884O;
            bVar.f3885P = this.f3885P;
            bVar.f3886Q = this.f3886Q;
            bVar.f3887R = this.f3887R;
            bVar.f3888S = this.f3888S;
            bVar.f3889T = this.f3889T;
            bVar.f3890U = this.f3890U;
            bVar.f3891V = this.f3891V;
            bVar.f3892W = this.f3892W;
            bVar.f3893X = this.f3893X;
            bVar.f3894Y = this.f3894Y;
            bVar.f3895Z = this.f3895Z;
            bVar.f3897a0 = this.f3897a0;
            bVar.f3899b0 = this.f3899b0;
            bVar.f3901c0 = this.f3901c0;
            bVar.f3903d0 = this.f3903d0;
            bVar.f3905e0 = this.f3905e0;
            bVar.f3907f0 = this.f3907f0;
            bVar.f3909g0 = this.f3909g0;
            bVar.f3911h0 = this.f3911h0;
            bVar.f3913i0 = this.f3913i0;
            bVar.f3915j0 = this.f3915j0;
            bVar.f3917k0 = this.f3917k0;
            bVar.f3919l0 = this.f3919l0;
            bVar.f3921m0 = this.f3921m0;
            bVar.f3923n0 = this.f3923n0;
            bVar.f3925o0 = this.f3925o0;
            bVar.f3927p0 = this.f3927p0;
            bVar.f3929q0 = this.f3929q0;
            bVar.f3933s0 = this.f3933s0;
            bVar.f3935t0 = this.f3935t0;
            int[] iArr = this.f3937u0;
            if (iArr != null) {
                bVar.f3937u0 = Arrays.copyOf(iArr, iArr.length);
            }
            bVar.f3941x = this.f3941x;
            bVar.f3942y = this.f3942y;
            bVar.f3943z = this.f3943z;
            bVar.f3931r0 = this.f3931r0;
            return bVar;
        }
    }

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f3868c = sparseIntArray;
        sparseIntArray.append(C0825c.ConstraintSet_layout_constraintLeft_toLeftOf, 25);
        f3868c.append(C0825c.ConstraintSet_layout_constraintLeft_toRightOf, 26);
        f3868c.append(C0825c.ConstraintSet_layout_constraintRight_toLeftOf, 29);
        f3868c.append(C0825c.ConstraintSet_layout_constraintRight_toRightOf, 30);
        f3868c.append(C0825c.ConstraintSet_layout_constraintTop_toTopOf, 36);
        f3868c.append(C0825c.ConstraintSet_layout_constraintTop_toBottomOf, 35);
        f3868c.append(C0825c.ConstraintSet_layout_constraintBottom_toTopOf, 4);
        f3868c.append(C0825c.ConstraintSet_layout_constraintBottom_toBottomOf, 3);
        f3868c.append(C0825c.ConstraintSet_layout_constraintBaseline_toBaselineOf, 1);
        f3868c.append(C0825c.ConstraintSet_layout_editor_absoluteX, 6);
        f3868c.append(C0825c.ConstraintSet_layout_editor_absoluteY, 7);
        f3868c.append(C0825c.ConstraintSet_layout_constraintGuide_begin, 17);
        f3868c.append(C0825c.ConstraintSet_layout_constraintGuide_end, 18);
        f3868c.append(C0825c.ConstraintSet_layout_constraintGuide_percent, 19);
        f3868c.append(C0825c.ConstraintSet_android_orientation, 27);
        f3868c.append(C0825c.ConstraintSet_layout_constraintStart_toEndOf, 32);
        f3868c.append(C0825c.ConstraintSet_layout_constraintStart_toStartOf, 33);
        f3868c.append(C0825c.ConstraintSet_layout_constraintEnd_toStartOf, 10);
        f3868c.append(C0825c.ConstraintSet_layout_constraintEnd_toEndOf, 9);
        f3868c.append(C0825c.ConstraintSet_layout_goneMarginLeft, 13);
        f3868c.append(C0825c.ConstraintSet_layout_goneMarginTop, 16);
        f3868c.append(C0825c.ConstraintSet_layout_goneMarginRight, 14);
        f3868c.append(C0825c.ConstraintSet_layout_goneMarginBottom, 11);
        f3868c.append(C0825c.ConstraintSet_layout_goneMarginStart, 15);
        f3868c.append(C0825c.ConstraintSet_layout_goneMarginEnd, 12);
        f3868c.append(C0825c.ConstraintSet_layout_constraintVertical_weight, 40);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHorizontal_weight, 39);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHorizontal_chainStyle, 41);
        f3868c.append(C0825c.ConstraintSet_layout_constraintVertical_chainStyle, 42);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHorizontal_bias, 20);
        f3868c.append(C0825c.ConstraintSet_layout_constraintVertical_bias, 37);
        f3868c.append(C0825c.ConstraintSet_layout_constraintDimensionRatio, 5);
        f3868c.append(C0825c.ConstraintSet_layout_constraintLeft_creator, 75);
        f3868c.append(C0825c.ConstraintSet_layout_constraintTop_creator, 75);
        f3868c.append(C0825c.ConstraintSet_layout_constraintRight_creator, 75);
        f3868c.append(C0825c.ConstraintSet_layout_constraintBottom_creator, 75);
        f3868c.append(C0825c.ConstraintSet_layout_constraintBaseline_creator, 75);
        f3868c.append(C0825c.ConstraintSet_android_layout_marginLeft, 24);
        f3868c.append(C0825c.ConstraintSet_android_layout_marginRight, 28);
        f3868c.append(C0825c.ConstraintSet_android_layout_marginStart, 31);
        f3868c.append(C0825c.ConstraintSet_android_layout_marginEnd, 8);
        f3868c.append(C0825c.ConstraintSet_android_layout_marginTop, 34);
        f3868c.append(C0825c.ConstraintSet_android_layout_marginBottom, 2);
        f3868c.append(C0825c.ConstraintSet_android_layout_width, 23);
        f3868c.append(C0825c.ConstraintSet_android_layout_height, 21);
        f3868c.append(C0825c.ConstraintSet_android_visibility, 22);
        f3868c.append(C0825c.ConstraintSet_android_alpha, 43);
        f3868c.append(C0825c.ConstraintSet_android_elevation, 44);
        f3868c.append(C0825c.ConstraintSet_android_rotationX, 45);
        f3868c.append(C0825c.ConstraintSet_android_rotationY, 46);
        f3868c.append(C0825c.ConstraintSet_android_rotation, 60);
        f3868c.append(C0825c.ConstraintSet_android_scaleX, 47);
        f3868c.append(C0825c.ConstraintSet_android_scaleY, 48);
        f3868c.append(C0825c.ConstraintSet_android_transformPivotX, 49);
        f3868c.append(C0825c.ConstraintSet_android_transformPivotY, 50);
        f3868c.append(C0825c.ConstraintSet_android_translationX, 51);
        f3868c.append(C0825c.ConstraintSet_android_translationY, 52);
        f3868c.append(C0825c.ConstraintSet_android_translationZ, 53);
        f3868c.append(C0825c.ConstraintSet_layout_constraintWidth_default, 54);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHeight_default, 55);
        f3868c.append(C0825c.ConstraintSet_layout_constraintWidth_max, 56);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHeight_max, 57);
        f3868c.append(C0825c.ConstraintSet_layout_constraintWidth_min, 58);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHeight_min, 59);
        f3868c.append(C0825c.ConstraintSet_layout_constraintCircle, 61);
        f3868c.append(C0825c.ConstraintSet_layout_constraintCircleRadius, 62);
        f3868c.append(C0825c.ConstraintSet_layout_constraintCircleAngle, 63);
        f3868c.append(C0825c.ConstraintSet_android_id, 38);
        f3868c.append(C0825c.ConstraintSet_layout_constraintWidth_percent, 69);
        f3868c.append(C0825c.ConstraintSet_layout_constraintHeight_percent, 70);
        f3868c.append(C0825c.ConstraintSet_chainUseRtl, 71);
        f3868c.append(C0825c.ConstraintSet_barrierDirection, 72);
        f3868c.append(C0825c.ConstraintSet_constraint_referenced_ids, 73);
        f3868c.append(C0825c.ConstraintSet_barrierAllowsGoneWidgets, 74);
    }

    /* renamed from: a */
    public static int m35826a(TypedArray typedArray, int i, int i2) {
        int resourceId = typedArray.getResourceId(i, i2);
        int i3 = resourceId;
        if (resourceId == -1) {
            i3 = typedArray.getInt(i, -1);
        }
        return i3;
    }

    /* renamed from: a */
    public final C0823b m35827a(Context context, AttributeSet attributeSet) {
        C0823b bVar = new C0823b();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0825c.ConstraintSet);
        m35822a(bVar, obtainStyledAttributes);
        obtainStyledAttributes.recycle();
        return bVar;
    }

    /* renamed from: a */
    public void m35828a(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0823b a = m35827a(context, Xml.asAttributeSet(xml));
                    if (name.equalsIgnoreCase("Guideline")) {
                        a.f3896a = true;
                    }
                    this.f3869a.put(Integer.valueOf(a.f3902d), a);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: a */
    public void m35824a(ConstraintLayout constraintLayout) {
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f3869a.keySet());
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            int id = childAt.getId();
            if (id != -1) {
                if (this.f3869a.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    C0823b bVar = this.f3869a.get(Integer.valueOf(id));
                    if (childAt instanceof Barrier) {
                        bVar.f3935t0 = 1;
                    }
                    int i2 = bVar.f3935t0;
                    if (i2 != -1 && i2 == 1) {
                        Barrier barrier = (Barrier) childAt;
                        barrier.setId(id);
                        barrier.setType(bVar.f3933s0);
                        barrier.setAllowsGoneWidget(bVar.f3931r0);
                        int[] iArr = bVar.f3937u0;
                        if (iArr != null) {
                            barrier.setReferencedIds(iArr);
                        } else {
                            String str = bVar.f3939v0;
                            if (str != null) {
                                int[] a = m35825a(barrier, str);
                                bVar.f3937u0 = a;
                                barrier.setReferencedIds(a);
                            }
                        }
                    }
                    ConstraintLayout.LayoutParams layoutParams = (ConstraintLayout.LayoutParams) childAt.getLayoutParams();
                    bVar.m35818a(layoutParams);
                    childAt.setLayoutParams(layoutParams);
                    childAt.setVisibility(bVar.f3879J);
                    if (Build.VERSION.SDK_INT >= 17) {
                        childAt.setAlpha(bVar.f3890U);
                        childAt.setRotation(bVar.f3893X);
                        childAt.setRotationX(bVar.f3894Y);
                        childAt.setRotationY(bVar.f3895Z);
                        childAt.setScaleX(bVar.f3897a0);
                        childAt.setScaleY(bVar.f3899b0);
                        if (!Float.isNaN(bVar.f3901c0)) {
                            childAt.setPivotX(bVar.f3901c0);
                        }
                        if (!Float.isNaN(bVar.f3903d0)) {
                            childAt.setPivotY(bVar.f3903d0);
                        }
                        childAt.setTranslationX(bVar.f3905e0);
                        childAt.setTranslationY(bVar.f3907f0);
                        if (Build.VERSION.SDK_INT >= 21) {
                            childAt.setTranslationZ(bVar.f3909g0);
                            if (bVar.f3891V) {
                                childAt.setElevation(bVar.f3892W);
                            }
                        }
                    }
                }
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            Integer num = (Integer) it.next();
            C0823b bVar2 = this.f3869a.get(num);
            int i3 = bVar2.f3935t0;
            if (i3 != -1 && i3 == 1) {
                Barrier barrier2 = new Barrier(constraintLayout.getContext());
                barrier2.setId(num.intValue());
                int[] iArr2 = bVar2.f3937u0;
                if (iArr2 != null) {
                    barrier2.setReferencedIds(iArr2);
                } else {
                    String str2 = bVar2.f3939v0;
                    if (str2 != null) {
                        int[] a2 = m35825a(barrier2, str2);
                        bVar2.f3937u0 = a2;
                        barrier2.setReferencedIds(a2);
                    }
                }
                barrier2.setType(bVar2.f3933s0);
                ConstraintLayout.LayoutParams generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                barrier2.m38720a();
                bVar2.m35818a(generateDefaultLayoutParams);
                constraintLayout.addView(barrier2, generateDefaultLayoutParams);
            }
            if (bVar2.f3896a) {
                View guideline = new Guideline(constraintLayout.getContext());
                guideline.setId(num.intValue());
                ConstraintLayout.LayoutParams generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                bVar2.m35818a(generateDefaultLayoutParams2);
                constraintLayout.addView(guideline, generateDefaultLayoutParams2);
            }
        }
    }

    /* renamed from: a */
    public void m35823a(Constraints constraints) {
        int childCount = constraints.getChildCount();
        this.f3869a.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraints.getChildAt(i);
            Constraints.LayoutParams layoutParams = (Constraints.LayoutParams) childAt.getLayoutParams();
            int id = childAt.getId();
            if (id != -1) {
                if (!this.f3869a.containsKey(Integer.valueOf(id))) {
                    this.f3869a.put(Integer.valueOf(id), new C0823b());
                }
                C0823b bVar = this.f3869a.get(Integer.valueOf(id));
                if (childAt instanceof ConstraintHelper) {
                    bVar.m35819a((ConstraintHelper) childAt, id, layoutParams);
                }
                bVar.m35820a(id, layoutParams);
            } else {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
        }
    }

    /* renamed from: a */
    public final void m35822a(C0823b bVar, TypedArray typedArray) {
        int indexCount = typedArray.getIndexCount();
        for (int i = 0; i < indexCount; i++) {
            int index = typedArray.getIndex(i);
            int i2 = f3868c.get(index);
            switch (i2) {
                case 1:
                    bVar.f3926p = m35826a(typedArray, index, bVar.f3926p);
                    break;
                case 2:
                    bVar.f3876G = typedArray.getDimensionPixelSize(index, bVar.f3876G);
                    break;
                case 3:
                    bVar.f3924o = m35826a(typedArray, index, bVar.f3924o);
                    break;
                case 4:
                    bVar.f3922n = m35826a(typedArray, index, bVar.f3922n);
                    break;
                case 5:
                    bVar.f3940w = typedArray.getString(index);
                    break;
                case 6:
                    bVar.f3870A = typedArray.getDimensionPixelOffset(index, bVar.f3870A);
                    break;
                case 7:
                    bVar.f3871B = typedArray.getDimensionPixelOffset(index, bVar.f3871B);
                    break;
                case 8:
                    bVar.f3877H = typedArray.getDimensionPixelSize(index, bVar.f3877H);
                    break;
                case 9:
                    bVar.f3934t = m35826a(typedArray, index, bVar.f3934t);
                    break;
                case 10:
                    bVar.f3932s = m35826a(typedArray, index, bVar.f3932s);
                    break;
                case 11:
                    bVar.f3883N = typedArray.getDimensionPixelSize(index, bVar.f3883N);
                    break;
                case 12:
                    bVar.f3884O = typedArray.getDimensionPixelSize(index, bVar.f3884O);
                    break;
                case 13:
                    bVar.f3880K = typedArray.getDimensionPixelSize(index, bVar.f3880K);
                    break;
                case 14:
                    bVar.f3882M = typedArray.getDimensionPixelSize(index, bVar.f3882M);
                    break;
                case 15:
                    bVar.f3885P = typedArray.getDimensionPixelSize(index, bVar.f3885P);
                    break;
                case 16:
                    bVar.f3881L = typedArray.getDimensionPixelSize(index, bVar.f3881L);
                    break;
                case 17:
                    bVar.f3904e = typedArray.getDimensionPixelOffset(index, bVar.f3904e);
                    break;
                case 18:
                    bVar.f3906f = typedArray.getDimensionPixelOffset(index, bVar.f3906f);
                    break;
                case 19:
                    bVar.f3908g = typedArray.getFloat(index, bVar.f3908g);
                    break;
                case 20:
                    bVar.f3936u = typedArray.getFloat(index, bVar.f3936u);
                    break;
                case 21:
                    bVar.f3900c = typedArray.getLayoutDimension(index, bVar.f3900c);
                    break;
                case 22:
                    int i3 = typedArray.getInt(index, bVar.f3879J);
                    bVar.f3879J = i3;
                    bVar.f3879J = f3867b[i3];
                    break;
                case 23:
                    bVar.f3898b = typedArray.getLayoutDimension(index, bVar.f3898b);
                    break;
                case 24:
                    bVar.f3873D = typedArray.getDimensionPixelSize(index, bVar.f3873D);
                    break;
                case 25:
                    bVar.f3910h = m35826a(typedArray, index, bVar.f3910h);
                    break;
                case 26:
                    bVar.f3912i = m35826a(typedArray, index, bVar.f3912i);
                    break;
                case 27:
                    bVar.f3872C = typedArray.getInt(index, bVar.f3872C);
                    break;
                case 28:
                    bVar.f3874E = typedArray.getDimensionPixelSize(index, bVar.f3874E);
                    break;
                case 29:
                    bVar.f3914j = m35826a(typedArray, index, bVar.f3914j);
                    break;
                case 30:
                    bVar.f3916k = m35826a(typedArray, index, bVar.f3916k);
                    break;
                case 31:
                    bVar.f3878I = typedArray.getDimensionPixelSize(index, bVar.f3878I);
                    break;
                case 32:
                    bVar.f3928q = m35826a(typedArray, index, bVar.f3928q);
                    break;
                case 33:
                    bVar.f3930r = m35826a(typedArray, index, bVar.f3930r);
                    break;
                case 34:
                    bVar.f3875F = typedArray.getDimensionPixelSize(index, bVar.f3875F);
                    break;
                case 35:
                    bVar.f3920m = m35826a(typedArray, index, bVar.f3920m);
                    break;
                case 36:
                    bVar.f3918l = m35826a(typedArray, index, bVar.f3918l);
                    break;
                case 37:
                    bVar.f3938v = typedArray.getFloat(index, bVar.f3938v);
                    break;
                case 38:
                    bVar.f3902d = typedArray.getResourceId(index, bVar.f3902d);
                    break;
                case 39:
                    bVar.f3887R = typedArray.getFloat(index, bVar.f3887R);
                    break;
                case 40:
                    bVar.f3886Q = typedArray.getFloat(index, bVar.f3886Q);
                    break;
                case 41:
                    bVar.f3888S = typedArray.getInt(index, bVar.f3888S);
                    break;
                case 42:
                    bVar.f3889T = typedArray.getInt(index, bVar.f3889T);
                    break;
                case 43:
                    bVar.f3890U = typedArray.getFloat(index, bVar.f3890U);
                    break;
                case 44:
                    bVar.f3891V = true;
                    bVar.f3892W = typedArray.getDimension(index, bVar.f3892W);
                    break;
                case 45:
                    bVar.f3894Y = typedArray.getFloat(index, bVar.f3894Y);
                    break;
                case 46:
                    bVar.f3895Z = typedArray.getFloat(index, bVar.f3895Z);
                    break;
                case 47:
                    bVar.f3897a0 = typedArray.getFloat(index, bVar.f3897a0);
                    break;
                case 48:
                    bVar.f3899b0 = typedArray.getFloat(index, bVar.f3899b0);
                    break;
                case 49:
                    bVar.f3901c0 = typedArray.getFloat(index, bVar.f3901c0);
                    break;
                case 50:
                    bVar.f3903d0 = typedArray.getFloat(index, bVar.f3903d0);
                    break;
                case 51:
                    bVar.f3905e0 = typedArray.getDimension(index, bVar.f3905e0);
                    break;
                case 52:
                    bVar.f3907f0 = typedArray.getDimension(index, bVar.f3907f0);
                    break;
                case 53:
                    bVar.f3909g0 = typedArray.getDimension(index, bVar.f3909g0);
                    break;
                default:
                    switch (i2) {
                        case 60:
                            bVar.f3893X = typedArray.getFloat(index, bVar.f3893X);
                            continue;
                        case 61:
                            bVar.f3941x = m35826a(typedArray, index, bVar.f3941x);
                            continue;
                        case 62:
                            bVar.f3942y = typedArray.getDimensionPixelSize(index, bVar.f3942y);
                            continue;
                        case 63:
                            bVar.f3943z = typedArray.getFloat(index, bVar.f3943z);
                            continue;
                        default:
                            switch (i2) {
                                case 69:
                                    bVar.f3927p0 = typedArray.getFloat(index, 1.0f);
                                    continue;
                                case 70:
                                    bVar.f3929q0 = typedArray.getFloat(index, 1.0f);
                                    continue;
                                case 71:
                                    Log.e("ConstraintSet", "CURRENTLY UNSUPPORTED");
                                    continue;
                                case 72:
                                    bVar.f3933s0 = typedArray.getInt(index, bVar.f3933s0);
                                    continue;
                                case 73:
                                    bVar.f3939v0 = typedArray.getString(index);
                                    continue;
                                case 74:
                                    bVar.f3931r0 = typedArray.getBoolean(index, bVar.f3931r0);
                                    continue;
                                case 75:
                                    Log.w("ConstraintSet", "unused attribute 0x" + Integer.toHexString(index) + "   " + f3868c.get(index));
                                    continue;
                                default:
                                    Log.w("ConstraintSet", "Unknown attribute 0x" + Integer.toHexString(index) + "   " + f3868c.get(index));
                                    continue;
                                    continue;
                            }
                    }
            }
        }
    }

    /* renamed from: a */
    public final int[] m35825a(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C0824b.class.getField(trim).getInt(null);
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
                        Object a = ((ConstraintLayout) view.getParent()).m38714a(0, trim);
                        i5 = i4;
                        if (a != null) {
                            i5 = i4;
                            if (a instanceof Integer) {
                                i5 = ((Integer) a).intValue();
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
}
