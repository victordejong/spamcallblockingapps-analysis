package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import java.io.IOException;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.Stack;
import p131c.p161d.p170b.p224d.p252g.p253a.bd0;
import p131c.p161d.p170b.p224d.p252g.p253a.ed0;
import p131c.p161d.p170b.p224d.p252g.p253a.od0;
import p131c.p161d.p170b.p224d.p252g.p253a.pd0;
import p131c.p161d.p170b.p224d.p252g.p253a.qd0;
import p131c.p161d.p170b.p224d.p252g.p253a.ud0;
import p131c.p161d.p170b.p224d.p252g.p253a.vd0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzlg.class */
public final class zzlg implements zzjv {

    /* renamed from: D */
    public static final int f28503D = zzpq.m11614d("seig");

    /* renamed from: E */
    public static final byte[] f28504E = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};

    /* renamed from: A */
    public zzkg f28505A;

    /* renamed from: B */
    public zzkg[] f28506B;

    /* renamed from: C */
    public boolean f28507C;

    /* renamed from: a */
    public final int f28508a;

    /* renamed from: b */
    public final SparseArray<pd0> f28509b;

    /* renamed from: c */
    public final zzpk f28510c;

    /* renamed from: d */
    public final zzpk f28511d;

    /* renamed from: e */
    public final zzpk f28512e;

    /* renamed from: f */
    public final zzpk f28513f;

    /* renamed from: g */
    public final zzpo f28514g;

    /* renamed from: h */
    public final zzpk f28515h;

    /* renamed from: i */
    public final byte[] f28516i;

    /* renamed from: j */
    public final Stack<ed0> f28517j;

    /* renamed from: k */
    public final LinkedList<qd0> f28518k;

    /* renamed from: l */
    public int f28519l;

    /* renamed from: m */
    public int f28520m;

    /* renamed from: n */
    public long f28521n;

    /* renamed from: o */
    public int f28522o;

    /* renamed from: p */
    public zzpk f28523p;

    /* renamed from: q */
    public long f28524q;

    /* renamed from: r */
    public int f28525r;

    /* renamed from: s */
    public long f28526s;

    /* renamed from: t */
    public long f28527t;

    /* renamed from: u */
    public pd0 f28528u;

    /* renamed from: v */
    public int f28529v;

    /* renamed from: w */
    public int f28530w;

    /* renamed from: x */
    public int f28531x;

    /* renamed from: y */
    public boolean f28532y;

    /* renamed from: z */
    public zzjx f28533z;

    static {
        new od0();
    }

    public zzlg() {
        this(0);
    }

    public zzlg(int i) {
        this(0, null);
    }

    public zzlg(int i, zzpo zzpoVar) {
        this(0, null, null);
    }

    public zzlg(int i, zzpo zzpoVar, zzln zzlnVar) {
        this.f28508a = i;
        this.f28514g = null;
        this.f28515h = new zzpk(16);
        this.f28510c = new zzpk(zzpf.f28764a);
        this.f28511d = new zzpk(5);
        this.f28512e = new zzpk();
        this.f28513f = new zzpk(1);
        this.f28516i = new byte[16];
        this.f28517j = new Stack<>();
        this.f28518k = new LinkedList<>();
        this.f28509b = new SparseArray<>();
        this.f28526s = -9223372036854775807L;
        this.f28527t = -9223372036854775807L;
        m11855b();
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0110  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0127  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.ads.zzjn m11856a(java.util.List<p131c.p161d.p170b.p224d.p252g.p253a.dd0> r7) {
        /*
            Method dump skipped, instructions count: 337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlg.m11856a(java.util.List):com.google.android.gms.internal.ads.zzjn");
    }

    /* renamed from: a */
    public static void m11857a(zzpk zzpkVar, int i, vd0 vd0Var) throws zzhv {
        zzpkVar.m11656c(i + 8);
        int b = bd0.m27122b(zzpkVar.m11655d());
        if ((b & 1) == 0) {
            boolean z = (b & 2) != 0;
            int o = zzpkVar.m11642o();
            if (o == vd0Var.f15824f) {
                Arrays.fill(vd0Var.f15832n, 0, o, z);
                vd0Var.m26206a(zzpkVar.m11647j());
                zzpkVar.m11660a(vd0Var.f15835q.f28779a, 0, vd0Var.f15834p);
                vd0Var.f15835q.m11656c(0);
                vd0Var.f15836r = false;
                return;
            }
            int i2 = vd0Var.f15824f;
            StringBuilder sb = new StringBuilder(41);
            sb.append("Length mismatch: ");
            sb.append(o);
            sb.append(", ");
            sb.append(i2);
            throw new zzhv(sb.toString());
        }
        throw new zzhv("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:269:0x053b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0b38 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:284:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0002 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v265, types: [long[]] */
    /* JADX WARN: Type inference failed for: r0v266, types: [long] */
    /* JADX WARN: Type inference failed for: r0v306, types: [long] */
    /* JADX WARN: Type inference failed for: r0v378, types: [long] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v16 */
    /* JADX WARN: Type inference failed for: r13v17 */
    /* JADX WARN: Type inference failed for: r13v18 */
    /* JADX WARN: Type inference failed for: r13v2, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4, types: [long] */
    /* JADX WARN: Type inference failed for: r23v3 */
    /* JADX WARN: Type inference failed for: r23v4 */
    /* JADX WARN: Type inference failed for: r23v6 */
    /* JADX WARN: Unknown variable types count: 6 */
    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo11849a(com.google.android.gms.internal.ads.zzjy r9, com.google.android.gms.internal.ads.zzkb r10) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 2904
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlg.mo11849a(com.google.android.gms.internal.ads.zzjy, com.google.android.gms.internal.ads.zzkb):int");
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11854a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v193, types: [long] */
    /* JADX WARN: Type inference failed for: r19v10 */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r19v5 */
    /* JADX WARN: Type inference failed for: r30v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11858a(long r10) throws com.google.android.gms.internal.ads.zzhv {
        /*
            Method dump skipped, instructions count: 3116
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzlg.m11858a(long):void");
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11852a(long j, long j2) {
        int size = this.f28509b.size();
        for (int i = 0; i < size; i++) {
            this.f28509b.valueAt(i).m26543a();
        }
        this.f28518k.clear();
        this.f28525r = 0;
        this.f28517j.clear();
        m11855b();
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11851a(zzjx zzjxVar) {
        this.f28533z = zzjxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final boolean mo11850a(zzjy zzjyVar) throws IOException, InterruptedException {
        return ud0.m26242a(zzjyVar);
    }

    /* renamed from: b */
    public final void m11855b() {
        this.f28519l = 0;
        this.f28522o = 0;
    }
}
