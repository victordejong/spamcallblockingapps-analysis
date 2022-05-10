package androidx.constraintlayout.solver.widgets;

import androidx.constraintlayout.solver.widgets.ConstraintAnchor;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.ArrayList;
import p012b.p036g.p037a.C0797c;
import p012b.p036g.p037a.C0799e;
import p012b.p036g.p037a.p038i.C0808e;
import p012b.p036g.p037a.p038i.C0809f;
import p012b.p036g.p037a.p038i.C0813i;
import p012b.p036g.p037a.p038i.C0816l;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget.class */
public class ConstraintWidget {

    /* renamed from: j0 */
    public static float f883j0 = 0.5f;

    /* renamed from: A */
    public ConstraintAnchor[] f884A;

    /* renamed from: C */
    public DimensionBehaviour[] f886C;

    /* renamed from: R */
    public int f901R;

    /* renamed from: S */
    public int f902S;

    /* renamed from: T */
    public int f903T;

    /* renamed from: U */
    public int f904U;

    /* renamed from: V */
    public float f905V;

    /* renamed from: W */
    public float f906W;

    /* renamed from: X */
    public Object f907X;

    /* renamed from: c */
    public C0816l f914c;

    /* renamed from: d */
    public C0816l f916d;

    /* renamed from: z */
    public ConstraintAnchor f944z;

    /* renamed from: a */
    public int f910a = -1;

    /* renamed from: b */
    public int f912b = -1;

    /* renamed from: e */
    public int f918e = 0;

    /* renamed from: f */
    public int f920f = 0;

    /* renamed from: g */
    public int[] f922g = new int[2];

    /* renamed from: h */
    public int f924h = 0;

    /* renamed from: i */
    public int f926i = 0;

    /* renamed from: j */
    public float f928j = 1.0f;

    /* renamed from: k */
    public int f929k = 0;

    /* renamed from: l */
    public int f930l = 0;

    /* renamed from: m */
    public float f931m = 1.0f;

    /* renamed from: n */
    public int f932n = -1;

    /* renamed from: o */
    public float f933o = 1.0f;

    /* renamed from: p */
    public C0809f f934p = null;

    /* renamed from: q */
    public int[] f935q = {MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT};

    /* renamed from: r */
    public float f936r = 0.0f;

    /* renamed from: s */
    public ConstraintAnchor f937s = new ConstraintAnchor(this, ConstraintAnchor.Type.LEFT);

    /* renamed from: t */
    public ConstraintAnchor f938t = new ConstraintAnchor(this, ConstraintAnchor.Type.TOP);

    /* renamed from: u */
    public ConstraintAnchor f939u = new ConstraintAnchor(this, ConstraintAnchor.Type.RIGHT);

    /* renamed from: v */
    public ConstraintAnchor f940v = new ConstraintAnchor(this, ConstraintAnchor.Type.BOTTOM);

    /* renamed from: w */
    public ConstraintAnchor f941w = new ConstraintAnchor(this, ConstraintAnchor.Type.BASELINE);

    /* renamed from: x */
    public ConstraintAnchor f942x = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_X);

    /* renamed from: y */
    public ConstraintAnchor f943y = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER_Y);

    /* renamed from: B */
    public ArrayList<ConstraintAnchor> f885B = new ArrayList<>();

    /* renamed from: D */
    public ConstraintWidget f887D = null;

    /* renamed from: E */
    public int f888E = 0;

    /* renamed from: F */
    public int f889F = 0;

    /* renamed from: G */
    public float f890G = 0.0f;

    /* renamed from: H */
    public int f891H = -1;

    /* renamed from: I */
    public int f892I = 0;

    /* renamed from: J */
    public int f893J = 0;

    /* renamed from: K */
    public int f894K = 0;

    /* renamed from: L */
    public int f895L = 0;

    /* renamed from: M */
    public int f896M = 0;

    /* renamed from: N */
    public int f897N = 0;

    /* renamed from: O */
    public int f898O = 0;

    /* renamed from: P */
    public int f899P = 0;

    /* renamed from: Q */
    public int f900Q = 0;

    /* renamed from: Y */
    public int f908Y = 0;

    /* renamed from: Z */
    public String f909Z = null;

    /* renamed from: a0 */
    public String f911a0 = null;

    /* renamed from: b0 */
    public boolean f913b0 = false;

    /* renamed from: c0 */
    public boolean f915c0 = false;

    /* renamed from: d0 */
    public boolean f917d0 = false;

    /* renamed from: e0 */
    public int f919e0 = 0;

    /* renamed from: f0 */
    public int f921f0 = 0;

    /* renamed from: g0 */
    public float[] f923g0 = {-1.0f, -1.0f};

    /* renamed from: h0 */
    public ConstraintWidget[] f925h0 = {null, null};

    /* renamed from: i0 */
    public ConstraintWidget[] f927i0 = {null, null};

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$ContentAlignment.class */
    public enum ContentAlignment {
        BEGIN,
        MIDDLE,
        END,
        TOP,
        VERTICAL_MIDDLE,
        BOTTOM,
        LEFT,
        RIGHT
    }

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour.class */
    public enum DimensionBehaviour {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    /* renamed from: androidx.constraintlayout.solver.widgets.ConstraintWidget$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/widgets/ConstraintWidget$a.class */
    public static /* synthetic */ class C0181a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f945a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f946b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x00a6 -> B:49:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00aa -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00ae -> B:57:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b2 -> B:10:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b6 -> B:61:0x0049). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00ba -> B:59:0x0054). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00be -> B:67:0x005f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c2 -> B:63:0x006a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c6 -> B:47:0x0075). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00ca -> B:43:0x0081). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00ce -> B:55:0x008d). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d2 -> B:51:0x0099). Please submit an issue!!! */
        static {
            int[] iArr = new int[DimensionBehaviour.values().length];
            f946b = iArr;
            try {
                iArr[DimensionBehaviour.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f946b[DimensionBehaviour.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f946b[DimensionBehaviour.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f946b[DimensionBehaviour.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            int[] iArr2 = new int[ConstraintAnchor.Type.values().length];
            f945a = iArr2;
            try {
                iArr2[ConstraintAnchor.Type.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f945a[ConstraintAnchor.Type.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f945a[ConstraintAnchor.Type.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f945a[ConstraintAnchor.Type.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f945a[ConstraintAnchor.Type.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f945a[ConstraintAnchor.Type.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f945a[ConstraintAnchor.Type.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f945a[ConstraintAnchor.Type.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f945a[ConstraintAnchor.Type.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError e13) {
            }
        }
    }

    public ConstraintWidget() {
        ConstraintAnchor constraintAnchor = new ConstraintAnchor(this, ConstraintAnchor.Type.CENTER);
        this.f944z = constraintAnchor;
        this.f884A = new ConstraintAnchor[]{this.f937s, this.f939u, this.f938t, this.f940v, this.f941w, constraintAnchor};
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        this.f886C = new DimensionBehaviour[]{dimensionBehaviour, dimensionBehaviour};
        float f = f883j0;
        this.f905V = f;
        this.f906W = f;
        m38788a();
    }

    /* renamed from: A */
    public boolean m38794A() {
        ConstraintAnchor constraintAnchor = this.f937s;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f876d;
        if (constraintAnchor2 != null && constraintAnchor2.f876d == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.f939u;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f876d;
        return constraintAnchor4 != null && constraintAnchor4.f876d == constraintAnchor3;
    }

    /* renamed from: B */
    public boolean m38793B() {
        ConstraintAnchor constraintAnchor = this.f938t;
        ConstraintAnchor constraintAnchor2 = constraintAnchor.f876d;
        if (constraintAnchor2 != null && constraintAnchor2.f876d == constraintAnchor) {
            return true;
        }
        ConstraintAnchor constraintAnchor3 = this.f940v;
        ConstraintAnchor constraintAnchor4 = constraintAnchor3.f876d;
        return constraintAnchor4 != null && constraintAnchor4.f876d == constraintAnchor3;
    }

    /* renamed from: C */
    public boolean m38792C() {
        boolean z = true;
        if (!(this.f920f == 0 && this.f890G == 0.0f && this.f929k == 0 && this.f930l == 0 && this.f886C[1] == DimensionBehaviour.MATCH_CONSTRAINT)) {
            z = false;
        }
        return z;
    }

    /* renamed from: D */
    public boolean m38791D() {
        boolean z = false;
        if (this.f918e == 0) {
            z = false;
            if (this.f890G == 0.0f) {
                z = false;
                if (this.f924h == 0) {
                    z = false;
                    if (this.f926i == 0) {
                        z = false;
                        if (this.f886C[0] == DimensionBehaviour.MATCH_CONSTRAINT) {
                            z = true;
                        }
                    }
                }
            }
        }
        return z;
    }

    /* renamed from: E */
    public void mo35837E() {
        this.f937s.m38795j();
        this.f938t.m38795j();
        this.f939u.m38795j();
        this.f940v.m38795j();
        this.f941w.m38795j();
        this.f942x.m38795j();
        this.f943y.m38795j();
        this.f944z.m38795j();
        this.f887D = null;
        this.f936r = 0.0f;
        this.f888E = 0;
        this.f889F = 0;
        this.f890G = 0.0f;
        this.f891H = -1;
        this.f892I = 0;
        this.f893J = 0;
        this.f896M = 0;
        this.f897N = 0;
        this.f898O = 0;
        this.f899P = 0;
        this.f900Q = 0;
        this.f901R = 0;
        this.f902S = 0;
        this.f903T = 0;
        this.f904U = 0;
        float f = f883j0;
        this.f905V = f;
        this.f906W = f;
        DimensionBehaviour[] dimensionBehaviourArr = this.f886C;
        DimensionBehaviour dimensionBehaviour = DimensionBehaviour.FIXED;
        dimensionBehaviourArr[0] = dimensionBehaviour;
        dimensionBehaviourArr[1] = dimensionBehaviour;
        this.f907X = null;
        this.f908Y = 0;
        this.f911a0 = null;
        this.f919e0 = 0;
        this.f921f0 = 0;
        float[] fArr = this.f923g0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.f910a = -1;
        this.f912b = -1;
        int[] iArr = this.f935q;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.f918e = 0;
        this.f920f = 0;
        this.f928j = 1.0f;
        this.f931m = 1.0f;
        this.f926i = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f930l = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f924h = 0;
        this.f929k = 0;
        this.f932n = -1;
        this.f933o = 1.0f;
        C0816l lVar = this.f914c;
        if (lVar != null) {
            lVar.mo35843d();
        }
        C0816l lVar2 = this.f916d;
        if (lVar2 != null) {
            lVar2.mo35843d();
        }
        this.f934p = null;
        this.f913b0 = false;
        this.f915c0 = false;
        this.f917d0 = false;
    }

    /* renamed from: F */
    public void m38790F() {
        ConstraintWidget l = m38744l();
        if (l == null || !(l instanceof C0808e) || !((C0808e) m38744l()).m35903O()) {
            int size = this.f885B.size();
            for (int i = 0; i < size; i++) {
                this.f885B.get(i).m38795j();
            }
        }
    }

    /* renamed from: G */
    public void mo35913G() {
        for (int i = 0; i < 6; i++) {
            this.f884A[i].m38801d().mo35843d();
        }
    }

    /* renamed from: H */
    public void mo35912H() {
    }

    /* renamed from: I */
    public void mo35836I() {
        int i = this.f892I;
        int i2 = this.f893J;
        this.f896M = i;
        this.f897N = i2;
    }

    /* renamed from: J */
    public void m38789J() {
        for (int i = 0; i < 6; i++) {
            this.f884A[i].m38801d().m35850g();
        }
    }

    /* renamed from: a */
    public ConstraintAnchor mo35876a(ConstraintAnchor.Type type) {
        switch (C0181a.f945a[type.ordinal()]) {
            case 1:
                return this.f937s;
            case 2:
                return this.f938t;
            case 3:
                return this.f939u;
            case 4:
                return this.f940v;
            case 5:
                return this.f941w;
            case 6:
                return this.f944z;
            case 7:
                return this.f942x;
            case 8:
                return this.f943y;
            case 9:
                return null;
            default:
                throw new AssertionError(type.name());
        }
    }

    /* renamed from: a */
    public final void m38788a() {
        this.f885B.add(this.f937s);
        this.f885B.add(this.f938t);
        this.f885B.add(this.f939u);
        this.f885B.add(this.f940v);
        this.f885B.add(this.f942x);
        this.f885B.add(this.f943y);
        this.f885B.add(this.f944z);
        this.f885B.add(this.f941w);
    }

    /* renamed from: a */
    public void m38787a(float f) {
        this.f905V = f;
    }

    /* renamed from: a */
    public void mo35877a(int i) {
        C0813i.m35865a(i, this);
    }

    /* renamed from: a */
    public void m38786a(int i, int i2) {
        this.f892I = i;
        int i3 = i2 - i;
        this.f888E = i3;
        int i4 = this.f901R;
        if (i3 < i4) {
            this.f888E = i4;
        }
    }

    /* renamed from: a */
    public void m38785a(int i, int i2, int i3) {
        if (i3 == 0) {
            m38786a(i, i2);
        } else if (i3 == 1) {
            m38757e(i, i2);
        }
        this.f915c0 = true;
    }

    /* renamed from: a */
    public void m38784a(int i, int i2, int i3, float f) {
        this.f918e = i;
        this.f924h = i2;
        this.f926i = i3;
        this.f928j = f;
        if (f < 1.0f && i == 0) {
            this.f918e = 2;
        }
    }

    /* renamed from: a */
    public void m38783a(int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        this.f892I = i;
        this.f893J = i2;
        if (this.f908Y == 8) {
            this.f888E = 0;
            this.f889F = 0;
            return;
        }
        int i7 = i5;
        if (this.f886C[0] == DimensionBehaviour.FIXED) {
            int i8 = this.f888E;
            i7 = i5;
            if (i5 < i8) {
                i7 = i8;
            }
        }
        int i9 = i6;
        if (this.f886C[1] == DimensionBehaviour.FIXED) {
            int i10 = this.f889F;
            i9 = i6;
            if (i6 < i10) {
                i9 = i10;
            }
        }
        this.f888E = i7;
        this.f889F = i9;
        int i11 = this.f902S;
        if (i9 < i11) {
            this.f889F = i11;
        }
        int i12 = this.f888E;
        int i13 = this.f901R;
        if (i12 < i13) {
            this.f888E = i13;
        }
        this.f915c0 = true;
    }

    /* renamed from: a */
    public void m38782a(ConstraintAnchor.Type type, ConstraintWidget constraintWidget, ConstraintAnchor.Type type2, int i, int i2) {
        mo35876a(type).m38806a(constraintWidget.mo35876a(type2), i, i2, ConstraintAnchor.Strength.STRONG, 0, true);
    }

    /* renamed from: a */
    public void m38781a(DimensionBehaviour dimensionBehaviour) {
        this.f886C[0] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            m38735p(this.f903T);
        }
    }

    /* renamed from: a */
    public void m38780a(ConstraintWidget constraintWidget) {
        this.f887D = constraintWidget;
    }

    /* renamed from: a */
    public void m38779a(ConstraintWidget constraintWidget, float f, int i) {
        ConstraintAnchor.Type type = ConstraintAnchor.Type.CENTER;
        m38782a(type, constraintWidget, type, i, 0);
        this.f936r = f;
    }

    /* renamed from: a */
    public void mo35832a(C0797c cVar) {
        this.f937s.m38804a(cVar);
        this.f938t.m38804a(cVar);
        this.f939u.m38804a(cVar);
        this.f940v.m38804a(cVar);
        this.f941w.m38804a(cVar);
        this.f944z.m38804a(cVar);
        this.f942x.m38804a(cVar);
        this.f943y.m38804a(cVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:155:0x04b8  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x04c7  */
    /* JADX WARN: Removed duplicated region for block: B:159:0x04d5  */
    /* JADX WARN: Removed duplicated region for block: B:160:0x04e4  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x052f  */
    /* JADX WARN: Removed duplicated region for block: B:169:0x0571  */
    /* JADX WARN: Removed duplicated region for block: B:171:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo35875a(p012b.p036g.p037a.C0799e r23) {
        /*
            Method dump skipped, instructions count: 1433
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo35875a(b.g.a.e):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:191:0x04d1  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x054b  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:221:0x0594  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m38778a(p012b.p036g.p037a.C0799e r11, boolean r12, androidx.constraintlayout.solver.SolverVariable r13, androidx.constraintlayout.solver.SolverVariable r14, androidx.constraintlayout.solver.widgets.ConstraintWidget.DimensionBehaviour r15, boolean r16, androidx.constraintlayout.solver.widgets.ConstraintAnchor r17, androidx.constraintlayout.solver.widgets.ConstraintAnchor r18, int r19, int r20, int r21, int r22, float r23, boolean r24, boolean r25, int r26, int r27, int r28, float r29, boolean r30) {
        /*
            Method dump skipped, instructions count: 1489
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m38778a(b.g.a.e, boolean, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.SolverVariable, androidx.constraintlayout.solver.widgets.ConstraintWidget$DimensionBehaviour, boolean, androidx.constraintlayout.solver.widgets.ConstraintAnchor, androidx.constraintlayout.solver.widgets.ConstraintAnchor, int, int, int, int, float, boolean, boolean, int, int, int, float, boolean):void");
    }

    /* renamed from: a */
    public void m38777a(Object obj) {
        this.f907X = obj;
    }

    /* renamed from: a */
    public void m38776a(String str) {
        this.f909Z = str;
    }

    /* renamed from: a */
    public void m38775a(boolean z) {
    }

    /* renamed from: a */
    public void m38774a(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.f932n == -1) {
            if (z3 && !z4) {
                this.f932n = 0;
            } else if (!z3 && z4) {
                this.f932n = 1;
                if (this.f891H == -1) {
                    this.f933o = 1.0f / this.f933o;
                }
            }
        }
        if (this.f932n == 0 && (!this.f938t.m38796i() || !this.f940v.m38796i())) {
            this.f932n = 1;
        } else if (this.f932n == 1 && (!this.f937s.m38796i() || !this.f939u.m38796i())) {
            this.f932n = 0;
        }
        if (this.f932n == -1 && (!this.f938t.m38796i() || !this.f940v.m38796i() || !this.f937s.m38796i() || !this.f939u.m38796i())) {
            if (this.f938t.m38796i() && this.f940v.m38796i()) {
                this.f932n = 0;
            } else if (this.f937s.m38796i() && this.f939u.m38796i()) {
                this.f933o = 1.0f / this.f933o;
                this.f932n = 1;
            }
        }
        if (this.f932n == -1) {
            if (z && !z2) {
                this.f932n = 0;
            } else if (!z && z2) {
                this.f933o = 1.0f / this.f933o;
                this.f932n = 1;
            }
        }
        if (this.f932n == -1) {
            if (this.f924h > 0 && this.f929k == 0) {
                this.f932n = 0;
            } else if (this.f924h == 0 && this.f929k > 0) {
                this.f933o = 1.0f / this.f933o;
                this.f932n = 1;
            }
        }
        if (this.f932n == -1 && z && z2) {
            this.f933o = 1.0f / this.f933o;
            this.f932n = 1;
        }
    }

    /* renamed from: b */
    public float m38772b(int i) {
        if (i == 0) {
            return this.f905V;
        }
        if (i == 1) {
            return this.f906W;
        }
        return -1.0f;
    }

    /* renamed from: b */
    public void m38773b(float f) {
        this.f923g0[0] = f;
    }

    /* renamed from: b */
    public void mo35831b(int i, int i2) {
        this.f898O = i;
        this.f899P = i2;
    }

    /* renamed from: b */
    public void m38771b(int i, int i2, int i3, float f) {
        this.f920f = i;
        this.f929k = i2;
        this.f930l = i3;
        this.f931m = f;
        if (f < 1.0f && i == 0) {
            this.f920f = 2;
        }
    }

    /* renamed from: b */
    public void m38770b(DimensionBehaviour dimensionBehaviour) {
        this.f886C[1] = dimensionBehaviour;
        if (dimensionBehaviour == DimensionBehaviour.WRAP_CONTENT) {
            m38751h(this.f904U);
        }
    }

    /* renamed from: b */
    public void m38769b(C0799e eVar) {
        eVar.m35949a(this.f937s);
        eVar.m35949a(this.f938t);
        eVar.m35949a(this.f939u);
        eVar.m35949a(this.f940v);
        if (this.f900Q > 0) {
            eVar.m35949a(this.f941w);
        }
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00f0 -> B:38:0x00f3). Please submit an issue!!! */
    /* renamed from: b */
    public void m38768b(String str) {
        float f;
        if (str == null || str.length() == 0) {
            this.f890G = 0.0f;
            return;
        }
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i = -1;
        int i2 = 0;
        if (indexOf > 0) {
            i = -1;
            i2 = 0;
            if (indexOf < length - 1) {
                String substring = str.substring(0, indexOf);
                if (substring.equalsIgnoreCase("W")) {
                    i = 0;
                } else {
                    i = -1;
                    if (substring.equalsIgnoreCase("H")) {
                        i = 1;
                    }
                }
                i2 = indexOf + 1;
            }
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 < 0 || indexOf2 >= length - 1) {
            String substring2 = str.substring(i2);
            if (substring2.length() > 0) {
                f = Float.parseFloat(substring2);
            }
            f = 0.0f;
        } else {
            String substring3 = str.substring(i2, indexOf2);
            String substring4 = str.substring(indexOf2 + 1);
            if (substring3.length() > 0 && substring4.length() > 0) {
                float parseFloat = Float.parseFloat(substring3);
                float parseFloat2 = Float.parseFloat(substring4);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    f = i == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                }
            }
            f = 0.0f;
        }
        if (f > 0.0f) {
            this.f890G = f;
            this.f891H = i;
        }
    }

    /* renamed from: b */
    public void m38767b(boolean z) {
    }

    /* renamed from: b */
    public boolean mo35874b() {
        return this.f908Y != 8;
    }

    /* renamed from: c */
    public DimensionBehaviour m38765c(int i) {
        if (i == 0) {
            return m38746k();
        }
        if (i == 1) {
            return m38732r();
        }
        return null;
    }

    /* renamed from: c */
    public ArrayList<ConstraintAnchor> mo35873c() {
        return this.f885B;
    }

    /* renamed from: c */
    public void m38766c(float f) {
        this.f906W = f;
    }

    /* renamed from: c */
    public void m38764c(int i, int i2) {
        this.f892I = i;
        this.f893J = i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x006d, code lost:
        if (r0 == Integer.MAX_VALUE) goto L_0x0070;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo35872c(p012b.p036g.p037a.C0799e r7) {
        /*
            r6 = this;
            r0 = r7
            r1 = r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.f937s
            int r0 = r0.m35943b(r1)
            r8 = r0
            r0 = r7
            r1 = r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.f938t
            int r0 = r0.m35943b(r1)
            r9 = r0
            r0 = r7
            r1 = r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.f939u
            int r0 = r0.m35943b(r1)
            r10 = r0
            r0 = r7
            r1 = r6
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r1 = r1.f940v
            int r0 = r0.m35943b(r1)
            r11 = r0
            r0 = r10
            r1 = r8
            int r0 = r0 - r1
            if (r0 < 0) goto L_0x0070
            r0 = r11
            r1 = r9
            int r0 = r0 - r1
            if (r0 < 0) goto L_0x0070
            r0 = r8
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0070
            r0 = r8
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L_0x0070
            r0 = r9
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0070
            r0 = r9
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L_0x0070
            r0 = r10
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0070
            r0 = r10
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 == r1) goto L_0x0070
            r0 = r11
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0070
            r0 = r11
            r12 = r0
            r0 = r11
            r1 = 2147483647(0x7fffffff, float:NaN)
            if (r0 != r1) goto L_0x007a
        L_0x0070:
            r0 = 0
            r12 = r0
            r0 = 0
            r8 = r0
            r0 = 0
            r9 = r0
            r0 = 0
            r10 = r0
        L_0x007a:
            r0 = r6
            r1 = r8
            r2 = r9
            r3 = r10
            r4 = r12
            r0.m38783a(r1, r2, r3, r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.mo35872c(b.g.a.e):void");
    }

    /* renamed from: d */
    public int m38763d() {
        return this.f900Q;
    }

    /* renamed from: d */
    public int m38761d(int i) {
        if (i == 0) {
            return m38728t();
        }
        if (i == 1) {
            return m38748j();
        }
        return 0;
    }

    /* renamed from: d */
    public void m38762d(float f) {
        this.f923g0[1] = f;
    }

    /* renamed from: d */
    public void m38760d(int i, int i2) {
        if (i2 == 0) {
            this.f894K = i;
        } else if (i2 == 1) {
            this.f895L = i;
        }
    }

    /* renamed from: e */
    public int m38759e() {
        return m38723x() + this.f889F;
    }

    /* renamed from: e */
    public int m38758e(int i) {
        if (i == 0) {
            return this.f894K;
        }
        if (i == 1) {
            return this.f895L;
        }
        return 0;
    }

    /* renamed from: e */
    public void m38757e(int i, int i2) {
        this.f893J = i;
        int i3 = i2 - i;
        this.f889F = i3;
        int i4 = this.f902S;
        if (i3 < i4) {
            this.f889F = i4;
        }
    }

    /* renamed from: f */
    public Object m38756f() {
        return this.f907X;
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x003e, code lost:
        if (r0[r5].f876d.f876d == r0[r5]) goto L_0x0047;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m38755f(int r5) {
        /*
            r4 = this;
            r0 = r5
            r1 = 2
            int r0 = r0 * r1
            r5 = r0
            r0 = r4
            androidx.constraintlayout.solver.widgets.ConstraintAnchor[] r0 = r0.f884A
            r6 = r0
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f876d
            r7 = r0
            r0 = 1
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f876d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f876d
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 == r1) goto L_0x0044
            int r5 = r5 + 1
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f876d
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r5
            r0 = r0[r1]
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f876d
            androidx.constraintlayout.solver.widgets.ConstraintAnchor r0 = r0.f876d
            r1 = r6
            r2 = r5
            r1 = r1[r2]
            if (r0 != r1) goto L_0x0044
            goto L_0x0047
        L_0x0044:
            r0 = 0
            r8 = r0
        L_0x0047:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.solver.widgets.ConstraintWidget.m38755f(int):boolean");
    }

    /* renamed from: g */
    public String m38754g() {
        return this.f909Z;
    }

    /* renamed from: g */
    public void m38753g(int i) {
        this.f900Q = i;
    }

    /* renamed from: h */
    public int m38752h() {
        return this.f896M + this.f898O;
    }

    /* renamed from: h */
    public void m38751h(int i) {
        this.f889F = i;
        int i2 = this.f902S;
        if (i < i2) {
            this.f889F = i2;
        }
    }

    /* renamed from: i */
    public int m38750i() {
        return this.f897N + this.f899P;
    }

    /* renamed from: i */
    public void m38749i(int i) {
        this.f919e0 = i;
    }

    /* renamed from: j */
    public int m38748j() {
        if (this.f908Y == 8) {
            return 0;
        }
        return this.f889F;
    }

    /* renamed from: j */
    public void m38747j(int i) {
        this.f935q[1] = i;
    }

    /* renamed from: k */
    public DimensionBehaviour m38746k() {
        return this.f886C[0];
    }

    /* renamed from: k */
    public void m38745k(int i) {
        this.f935q[0] = i;
    }

    /* renamed from: l */
    public ConstraintWidget m38744l() {
        return this.f887D;
    }

    /* renamed from: l */
    public void m38743l(int i) {
        if (i < 0) {
            this.f902S = 0;
        } else {
            this.f902S = i;
        }
    }

    /* renamed from: m */
    public C0816l m38742m() {
        if (this.f916d == null) {
            this.f916d = new C0816l();
        }
        return this.f916d;
    }

    /* renamed from: m */
    public void m38741m(int i) {
        if (i < 0) {
            this.f901R = 0;
        } else {
            this.f901R = i;
        }
    }

    /* renamed from: n */
    public C0816l m38740n() {
        if (this.f914c == null) {
            this.f914c = new C0816l();
        }
        return this.f914c;
    }

    /* renamed from: n */
    public void m38739n(int i) {
        this.f921f0 = i;
    }

    /* renamed from: o */
    public int m38738o() {
        return m38724w() + this.f888E;
    }

    /* renamed from: o */
    public void m38737o(int i) {
        this.f908Y = i;
    }

    /* renamed from: p */
    public int m38736p() {
        return this.f892I + this.f898O;
    }

    /* renamed from: p */
    public void m38735p(int i) {
        this.f888E = i;
        int i2 = this.f901R;
        if (i < i2) {
            this.f888E = i2;
        }
    }

    /* renamed from: q */
    public int m38734q() {
        return this.f893J + this.f899P;
    }

    /* renamed from: q */
    public void m38733q(int i) {
        this.f904U = i;
    }

    /* renamed from: r */
    public DimensionBehaviour m38732r() {
        return this.f886C[1];
    }

    /* renamed from: r */
    public void m38731r(int i) {
        this.f903T = i;
    }

    /* renamed from: s */
    public int m38730s() {
        return this.f908Y;
    }

    /* renamed from: s */
    public void m38729s(int i) {
        this.f892I = i;
    }

    /* renamed from: t */
    public int m38728t() {
        if (this.f908Y == 8) {
            return 0;
        }
        return this.f888E;
    }

    /* renamed from: t */
    public void m38727t(int i) {
        this.f893J = i;
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.f911a0 != null) {
            str = "type: " + this.f911a0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.f909Z != null) {
            str2 = "id: " + this.f909Z + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.f892I);
        sb.append(", ");
        sb.append(this.f893J);
        sb.append(") - (");
        sb.append(this.f888E);
        sb.append(" x ");
        sb.append(this.f889F);
        sb.append(") wrap: (");
        sb.append(this.f903T);
        sb.append(" x ");
        sb.append(this.f904U);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: u */
    public int m38726u() {
        return this.f904U;
    }

    /* renamed from: v */
    public int m38725v() {
        return this.f903T;
    }

    /* renamed from: w */
    public int m38724w() {
        return this.f892I;
    }

    /* renamed from: x */
    public int m38723x() {
        return this.f893J;
    }

    /* renamed from: y */
    public boolean m38722y() {
        return this.f900Q > 0;
    }

    /* renamed from: z */
    public boolean m38721z() {
        return this.f937s.m38801d().f3855b == 1 && this.f939u.m38801d().f3855b == 1 && this.f938t.m38801d().f3855b == 1 && this.f940v.m38801d().f3855b == 1;
    }
}
