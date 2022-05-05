package com.google.android.gms.internal.ads;

import android.media.AudioTrack;
import android.os.ConditionVariable;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzhw.class */
public final class zzhw {

    /* renamed from: a */
    private static boolean f14851a = false;

    /* renamed from: b */
    private static boolean f14852b = false;

    /* renamed from: A */
    private int f14853A;

    /* renamed from: B */
    private int f14854B;

    /* renamed from: C */
    private long f14855C;

    /* renamed from: D */
    private long f14856D;

    /* renamed from: E */
    private boolean f14857E;

    /* renamed from: F */
    private long f14858F;

    /* renamed from: G */
    private Method f14859G;

    /* renamed from: H */
    private int f14860H;

    /* renamed from: I */
    private long f14861I;

    /* renamed from: J */
    private long f14862J;

    /* renamed from: K */
    private int f14863K;

    /* renamed from: L */
    private long f14864L;

    /* renamed from: M */
    private long f14865M;

    /* renamed from: N */
    private int f14866N;

    /* renamed from: O */
    private int f14867O;

    /* renamed from: P */
    private long f14868P;

    /* renamed from: Q */
    private long f14869Q;

    /* renamed from: R */
    private long f14870R;

    /* renamed from: S */
    private float f14871S;

    /* renamed from: T */
    private zzhm[] f14872T;

    /* renamed from: U */
    private ByteBuffer[] f14873U;

    /* renamed from: V */
    private ByteBuffer f14874V;

    /* renamed from: W */
    private ByteBuffer f14875W;

    /* renamed from: X */
    private byte[] f14876X;

    /* renamed from: Y */
    private int f14877Y;

    /* renamed from: Z */
    private int f14878Z;

    /* renamed from: aa */
    private boolean f14879aa;

    /* renamed from: ab */
    private boolean f14880ab;

    /* renamed from: ac */
    private int f14881ac;

    /* renamed from: ad */
    private boolean f14882ad;

    /* renamed from: ae */
    private boolean f14883ae;

    /* renamed from: af */
    private long f14884af;

    /* renamed from: d */
    private final amw f14886d;

    /* renamed from: e */
    private final zzim f14887e;

    /* renamed from: f */
    private final zzhm[] f14888f;

    /* renamed from: g */
    private final zzic f14889g;

    /* renamed from: i */
    private final long[] f14891i;

    /* renamed from: j */
    private final amr f14892j;

    /* renamed from: k */
    private final LinkedList<amv> f14893k;

    /* renamed from: l */
    private AudioTrack f14894l;

    /* renamed from: m */
    private int f14895m;

    /* renamed from: n */
    private int f14896n;

    /* renamed from: o */
    private int f14897o;

    /* renamed from: p */
    private int f14898p;

    /* renamed from: q */
    private int f14899q;

    /* renamed from: r */
    private boolean f14900r;

    /* renamed from: s */
    private int f14901s;

    /* renamed from: t */
    private long f14902t;

    /* renamed from: u */
    private zzhc f14903u;

    /* renamed from: v */
    private zzhc f14904v;

    /* renamed from: w */
    private long f14905w;

    /* renamed from: x */
    private long f14906x;

    /* renamed from: y */
    private ByteBuffer f14907y;

    /* renamed from: z */
    private int f14908z;

    /* renamed from: c */
    private final zzhn f14885c = null;

    /* renamed from: h */
    private final ConditionVariable f14890h = new ConditionVariable(true);

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x00e3 -> B:5:0x002e). Please submit an issue!!! */
    public zzhw(zzhn zzhnVar, zzhm[] zzhmVarArr, zzic zzicVar) {
        this.f14889g = zzicVar;
        if (zzoq.SDK_INT >= 18) {
            try {
                this.f14859G = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        this.f14892j = zzoq.SDK_INT >= 19 ? new amu() : new amr((byte) 0);
        this.f14886d = new amw();
        this.f14887e = new zzim();
        this.f14888f = new zzhm[zzhmVarArr.length + 3];
        this.f14888f[0] = new amx();
        zzhm[] zzhmVarArr2 = this.f14888f;
        zzhmVarArr2[1] = this.f14886d;
        System.arraycopy(zzhmVarArr, 0, zzhmVarArr2, 2, zzhmVarArr.length);
        this.f14888f[zzhmVarArr.length + 2] = this.f14887e;
        this.f14891i = new long[10];
        this.f14871S = 1.0f;
        this.f14867O = 0;
        this.f14899q = 3;
        this.f14881ac = 0;
        this.f14904v = zzhc.zzagb;
        this.f14878Z = -1;
        this.f14872T = new zzhm[0];
        this.f14873U = new ByteBuffer[0];
        this.f14893k = new LinkedList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    private static int m3244a(String str) {
        char c;
        switch (str.hashCode()) {
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c == 0) {
            return 5;
        }
        if (c == 1) {
            return 6;
        }
        if (c != 2) {
            return c != 3 ? 0 : 8;
        }
        return 7;
    }

    /* renamed from: a */
    private final void m3247a() {
        zzhm[] zzhmVarArr;
        ArrayList arrayList = new ArrayList();
        for (zzhm zzhmVar : this.f14888f) {
            if (zzhmVar.isActive()) {
                arrayList.add(zzhmVar);
            } else {
                zzhmVar.flush();
            }
        }
        int size = arrayList.size();
        this.f14872T = (zzhm[]) arrayList.toArray(new zzhm[size]);
        this.f14873U = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            zzhm zzhmVar2 = this.f14872T[i];
            zzhmVar2.flush();
            this.f14873U[i] = zzhmVar2.zzfc();
        }
    }

    /* renamed from: a */
    private final void m3246a(long j) {
        ByteBuffer byteBuffer;
        int length = this.f14872T.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f14873U[i - 1];
            } else {
                byteBuffer = this.f14874V;
                if (byteBuffer == null) {
                    byteBuffer = zzhm.zzaha;
                }
            }
            if (i == length) {
                m3243a(byteBuffer, j);
            } else {
                zzhm zzhmVar = this.f14872T[i];
                zzhmVar.zzi(byteBuffer);
                ByteBuffer zzfc = zzhmVar.zzfc();
                this.f14873U[i] = zzfc;
                if (zzfc.hasRemaining()) {
                    i++;
                }
            }
            if (!byteBuffer.hasRemaining()) {
                i--;
            } else {
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0197, code lost:
        if (r13 < r0) goto L_0x00eb;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01dc  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0214  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m3243a(java.nio.ByteBuffer r8, long r9) {
        /*
            Method dump skipped, instructions count: 542
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhw.m3243a(java.nio.ByteBuffer, long):boolean");
    }

    /* renamed from: b */
    private final long m3241b(long j) {
        return (j * 1000000) / this.f14895m;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0060  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0056 -> B:8:0x001a). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final boolean m3242b() {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f14878Z
            r1 = -1
            if (r0 != r1) goto L_0x0024
            r0 = r5
            boolean r0 = r0.f14900r
            if (r0 == 0) goto L_0x0018
            r0 = r5
            com.google.android.gms.internal.ads.zzhm[] r0 = r0.f14872T
            int r0 = r0.length
            r6 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r6 = r0
        L_0x001a:
            r0 = r5
            r1 = r6
            r0.f14878Z = r1
            r0 = 1
            r6 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 0
            r6 = r0
        L_0x0026:
            r0 = r5
            int r0 = r0.f14878Z
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzhm[] r0 = r0.f14872T
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0060
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0044
            r0 = r8
            r0.zzfb()
        L_0x0044:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m3246a(r1)
            r0 = r8
            boolean r0 = r0.zzeu()
            if (r0 != 0) goto L_0x0056
            r0 = 0
            return r0
        L_0x0056:
            r0 = r5
            int r0 = r0.f14878Z
            r1 = 1
            int r0 = r0 + r1
            r6 = r0
            goto L_0x001a
        L_0x0060:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f14875W
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007b
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m3243a(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f14875W
            if (r0 == 0) goto L_0x007b
            r0 = 0
            return r0
        L_0x007b:
            r0 = r5
            r1 = -1
            r0.f14878Z = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhw.m3242b():boolean");
    }

    /* renamed from: c */
    private final long m3239c(long j) {
        return (j * this.f14895m) / 1000000;
    }

    /* renamed from: c */
    private final void m3240c() {
        if (!m3238d()) {
            return;
        }
        if (zzoq.SDK_INT >= 21) {
            this.f14894l.setVolume(this.f14871S);
            return;
        }
        AudioTrack audioTrack = this.f14894l;
        float f = this.f14871S;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: d */
    private final boolean m3238d() {
        return this.f14894l != null;
    }

    /* renamed from: e */
    private final long m3237e() {
        return this.f14900r ? this.f14865M : this.f14864L / this.f14863K;
    }

    /* renamed from: f */
    private final void m3236f() {
        this.f14855C = 0L;
        this.f14854B = 0;
        this.f14853A = 0;
        this.f14856D = 0L;
        this.f14857E = false;
        this.f14858F = 0L;
    }

    /* renamed from: g */
    private final boolean m3235g() {
        if (zzoq.SDK_INT >= 23) {
            return false;
        }
        int i = this.f14898p;
        return i == 5 || i == 6;
    }

    public final void pause() {
        this.f14880ab = false;
        if (m3238d()) {
            m3236f();
            this.f14892j.m4898a();
        }
    }

    public final void play() {
        this.f14880ab = true;
        if (m3238d()) {
            this.f14869Q = System.nanoTime() / 1000;
            this.f14894l.play();
        }
    }

    public final void release() {
        reset();
        for (zzhm zzhmVar : this.f14888f) {
            zzhmVar.reset();
        }
        this.f14881ac = 0;
        this.f14880ab = false;
    }

    public final void reset() {
        zzhc zzhcVar;
        if (m3238d()) {
            this.f14861I = 0L;
            this.f14862J = 0L;
            this.f14864L = 0L;
            this.f14865M = 0L;
            this.f14866N = 0;
            zzhc zzhcVar2 = this.f14903u;
            if (zzhcVar2 != null) {
                this.f14904v = zzhcVar2;
                this.f14903u = null;
            } else if (!this.f14893k.isEmpty()) {
                zzhcVar = this.f14893k.getLast().f7711a;
                this.f14904v = zzhcVar;
            }
            this.f14893k.clear();
            this.f14905w = 0L;
            this.f14906x = 0L;
            this.f14874V = null;
            this.f14875W = null;
            int i = 0;
            while (true) {
                zzhm[] zzhmVarArr = this.f14872T;
                if (i >= zzhmVarArr.length) {
                    break;
                }
                zzhm zzhmVar = zzhmVarArr[i];
                zzhmVar.flush();
                this.f14873U[i] = zzhmVar.zzfc();
                i++;
            }
            this.f14879aa = false;
            this.f14878Z = -1;
            this.f14907y = null;
            this.f14908z = 0;
            this.f14867O = 0;
            this.f14870R = 0L;
            m3236f();
            if (this.f14894l.getPlayState() == 3) {
                this.f14894l.pause();
            }
            AudioTrack audioTrack = this.f14894l;
            this.f14894l = null;
            this.f14892j.mo4894a(null, false);
            this.f14890h.close();
            new ams(this, audioTrack).start();
        }
    }

    public final void setStreamType(int i) {
        if (this.f14899q != i) {
            this.f14899q = i;
            if (!this.f14882ad) {
                reset();
                this.f14881ac = 0;
            }
        }
    }

    public final void setVolume(float f) {
        if (this.f14871S != f) {
            this.f14871S = f;
            m3240c();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:52:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x01fd  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0296  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x029e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) {
        /*
            Method dump skipped, instructions count: 702
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhw.zza(java.lang.String, int, int, int, int, int[]):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x0142 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00f9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(java.nio.ByteBuffer r12, long r13) {
        /*
            Method dump skipped, instructions count: 970
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhw.zza(java.nio.ByteBuffer, long):boolean");
    }

    public final zzhc zzb(zzhc zzhcVar) {
        if (this.f14900r) {
            this.f14904v = zzhc.zzagb;
            return this.f14904v;
        }
        zzhc zzhcVar2 = new zzhc(this.f14887e.zza(zzhcVar.zzagc), this.f14887e.zzb(zzhcVar.zzagd));
        zzhc zzhcVar3 = this.f14903u;
        if (zzhcVar3 == null) {
            zzhcVar3 = !this.f14893k.isEmpty() ? this.f14893k.getLast().f7711a : this.f14904v;
        }
        if (!zzhcVar2.equals(zzhcVar3)) {
            if (m3238d()) {
                this.f14903u = zzhcVar2;
            } else {
                this.f14904v = zzhcVar2;
            }
        }
        return this.f14904v;
    }

    public final boolean zzba(String str) {
        zzhn zzhnVar = this.f14885c;
        return zzhnVar != null && zzhnVar.zzq(m3244a(str));
    }

    public final boolean zzeu() {
        if (m3238d()) {
            return this.f14879aa && !zzfh();
        }
        return true;
    }

    public final void zzfe() {
        if (this.f14867O == 1) {
            this.f14867O = 2;
        }
    }

    public final void zzff() {
        if (!this.f14879aa && m3238d() && m3242b()) {
            this.f14892j.m4897a(m3237e());
            this.f14908z = 0;
            this.f14879aa = true;
        }
    }

    public final boolean zzfh() {
        if (!m3238d()) {
            return false;
        }
        if (m3237e() > this.f14892j.m4896b()) {
            return true;
        }
        return m3235g() && this.f14894l.getPlayState() == 2 && this.f14894l.getPlaybackHeadPosition() == 0;
    }

    public final zzhc zzfi() {
        return this.f14904v;
    }

    public final void zzfj() {
        if (this.f14882ad) {
            this.f14882ad = false;
            this.f14881ac = 0;
            reset();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r19v3, types: [long] */
    /* JADX WARN: Type inference failed for: r19v6 */
    /* JADX WARN: Type inference failed for: r19v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzj(boolean r9) {
        /*
            Method dump skipped, instructions count: 858
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhw.zzj(boolean):long");
    }

    public final void zzt(int i) {
        zzoc.checkState(zzoq.SDK_INT >= 21);
        if (!this.f14882ad || this.f14881ac != i) {
            this.f14882ad = true;
            this.f14881ac = i;
            reset();
        }
    }
}
