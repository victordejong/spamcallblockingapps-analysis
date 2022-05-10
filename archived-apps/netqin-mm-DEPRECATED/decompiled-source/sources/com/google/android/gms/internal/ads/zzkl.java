package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.gms.internal.ads.zzjn;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
import p131c.p161d.p170b.p224d.p252g.p253a.ad0;
import p131c.p161d.p170b.p224d.p252g.p253a.cd0;
import p131c.p161d.p170b.p224d.p252g.p253a.tc0;
import p131c.p161d.p170b.p224d.p252g.p253a.uc0;
import p131c.p161d.p170b.p224d.p252g.p253a.xc0;
import p131c.p161d.p170b.p224d.p252g.p253a.yc0;
import p131c.p161d.p170b.p224d.p252g.p253a.zc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzkl.class */
public final class zzkl implements zzjv {

    /* renamed from: Z */
    public static final byte[] f28444Z = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: a0 */
    public static final byte[] f28445a0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: b0 */
    public static final UUID f28446b0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    public long f28447A;

    /* renamed from: B */
    public zzpe f28448B;

    /* renamed from: C */
    public zzpe f28449C;

    /* renamed from: D */
    public boolean f28450D;

    /* renamed from: E */
    public int f28451E;

    /* renamed from: F */
    public long f28452F;

    /* renamed from: G */
    public long f28453G;

    /* renamed from: H */
    public int f28454H;

    /* renamed from: I */
    public int f28455I;

    /* renamed from: J */
    public int[] f28456J;

    /* renamed from: K */
    public int f28457K;

    /* renamed from: L */
    public int f28458L;

    /* renamed from: M */
    public int f28459M;

    /* renamed from: N */
    public int f28460N;

    /* renamed from: O */
    public boolean f28461O;

    /* renamed from: P */
    public boolean f28462P;

    /* renamed from: Q */
    public boolean f28463Q;

    /* renamed from: R */
    public boolean f28464R;

    /* renamed from: S */
    public byte f28465S;

    /* renamed from: T */
    public int f28466T;

    /* renamed from: U */
    public int f28467U;

    /* renamed from: V */
    public int f28468V;

    /* renamed from: W */
    public boolean f28469W;

    /* renamed from: X */
    public boolean f28470X;

    /* renamed from: Y */
    public zzjx f28471Y;

    /* renamed from: a */
    public final uc0 f28472a;

    /* renamed from: b */
    public final cd0 f28473b;

    /* renamed from: c */
    public final SparseArray<ad0> f28474c;

    /* renamed from: d */
    public final boolean f28475d;

    /* renamed from: e */
    public final zzpk f28476e;

    /* renamed from: f */
    public final zzpk f28477f;

    /* renamed from: g */
    public final zzpk f28478g;

    /* renamed from: h */
    public final zzpk f28479h;

    /* renamed from: i */
    public final zzpk f28480i;

    /* renamed from: j */
    public final zzpk f28481j;

    /* renamed from: k */
    public final zzpk f28482k;

    /* renamed from: l */
    public final zzpk f28483l;

    /* renamed from: m */
    public final zzpk f28484m;

    /* renamed from: n */
    public ByteBuffer f28485n;

    /* renamed from: o */
    public long f28486o;

    /* renamed from: p */
    public long f28487p;

    /* renamed from: q */
    public long f28488q;

    /* renamed from: r */
    public long f28489r;

    /* renamed from: s */
    public long f28490s;

    /* renamed from: t */
    public ad0 f28491t;

    /* renamed from: u */
    public boolean f28492u;

    /* renamed from: v */
    public int f28493v;

    /* renamed from: w */
    public long f28494w;

    /* renamed from: x */
    public boolean f28495x;

    /* renamed from: y */
    public long f28496y;

    /* renamed from: z */
    public long f28497z;

    static {
        new yc0();
    }

    public zzkl() {
        this(0);
    }

    public zzkl(int i) {
        this(new tc0(), 0);
    }

    public zzkl(uc0 uc0Var, int i) {
        this.f28487p = -1L;
        this.f28488q = -9223372036854775807L;
        this.f28489r = -9223372036854775807L;
        this.f28490s = -9223372036854775807L;
        this.f28496y = -1L;
        this.f28497z = -1L;
        this.f28447A = -9223372036854775807L;
        this.f28472a = uc0Var;
        uc0Var.mo26244a(new xc0(this, null));
        this.f28475d = true;
        this.f28473b = new cd0();
        this.f28474c = new SparseArray<>();
        this.f28478g = new zzpk(4);
        this.f28479h = new zzpk(ByteBuffer.allocate(4).putInt(-1).array());
        this.f28480i = new zzpk(4);
        this.f28476e = new zzpk(zzpf.f28764a);
        this.f28477f = new zzpk(4);
        this.f28481j = new zzpk();
        this.f28482k = new zzpk();
        this.f28483l = new zzpk(8);
        this.f28484m = new zzpk();
    }

    /* renamed from: a */
    public static int[] m11863a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }

    /* renamed from: b */
    public static int m11861b(int i) {
        switch (i) {
            case 131:
            case 136:
            case 155:
            case 159:
            case 176:
            case 179:
            case 186:
            case 215:
            case 231:
            case 241:
            case 251:
            case 16980:
            case 17029:
            case 17143:
            case 18401:
            case 18408:
            case 20529:
            case 20530:
            case 21420:
            case 21432:
            case 21680:
            case 21682:
            case 21690:
            case 21930:
            case 21945:
            case 21946:
            case 21947:
            case 21948:
            case 21949:
            case 22186:
            case 22203:
            case 25188:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 2274716:
                return 3;
            case 160:
            case 174:
            case 183:
            case 187:
            case 224:
            case 225:
            case 18407:
            case 19899:
            case 20532:
            case 20533:
            case 21936:
            case 21968:
            case 25152:
            case 28032:
            case 30320:
            case 290298740:
            case 357149030:
            case 374648427:
            case 408125543:
            case 440786851:
            case 475249515:
            case 524531317:
                return 1;
            case 161:
            case 163:
            case 16981:
            case 18402:
            case 21419:
            case 25506:
            case 30322:
                return 4;
            case 181:
            case 17545:
            case 21969:
            case 21970:
            case 21971:
            case 21972:
            case 21973:
            case 21974:
            case 21975:
            case 21976:
            case 21977:
            case 21978:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: c */
    public static boolean m11859c(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0007 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo11849a(com.google.android.gms.internal.ads.zzjy r6, com.google.android.gms.internal.ads.zzkb r7) throws java.io.IOException, java.lang.InterruptedException {
        /*
            r5 = this;
            r0 = r5
            r1 = 0
            r0.f28469W = r1
            r0 = 1
            r8 = r0
        L_0x0007:
            r0 = r8
            if (r0 == 0) goto L_0x0081
            r0 = r5
            boolean r0 = r0.f28469W
            if (r0 != 0) goto L_0x0081
            r0 = r5
            c.d.b.d.g.a.uc0 r0 = r0.f28472a
            r1 = r6
            boolean r0 = r0.mo26243a(r1)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0007
            r0 = r6
            long r0 = r0.getPosition()
            r10 = r0
            r0 = r5
            boolean r0 = r0.f28495x
            if (r0 == 0) goto L_0x004e
            r0 = r5
            r1 = r10
            r0.f28497z = r1
            r0 = r7
            r1 = r5
            long r1 = r1.f28496y
            r0.f28440a = r1
            r0 = r5
            r1 = 0
            r0.f28495x = r1
        L_0x0048:
            r0 = 1
            r12 = r0
            goto L_0x0077
        L_0x004e:
            r0 = r5
            boolean r0 = r0.f28492u
            if (r0 == 0) goto L_0x0074
            r0 = r5
            long r0 = r0.f28497z
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0074
            r0 = r7
            r1 = r10
            r0.f28440a = r1
            r0 = r5
            r1 = -1
            r0.f28497z = r1
            goto L_0x0048
        L_0x0074:
            r0 = 0
            r12 = r0
        L_0x0077:
            r0 = r9
            r8 = r0
            r0 = r12
            if (r0 == 0) goto L_0x0007
            r0 = 1
            return r0
        L_0x0081:
            r0 = r8
            if (r0 == 0) goto L_0x0087
            r0 = 0
            return r0
        L_0x0087:
            r0 = -1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkl.mo11849a(com.google.android.gms.internal.ads.zzjy, com.google.android.gms.internal.ads.zzkb):int");
    }

    /* renamed from: a */
    public final int m11864a(zzjy zzjyVar, zzkg zzkgVar, int i) throws IOException, InterruptedException {
        int i2;
        int j = this.f28481j.m11647j();
        if (j > 0) {
            i2 = Math.min(i, j);
            zzkgVar.mo11777a(this.f28481j, i2);
        } else {
            i2 = zzkgVar.mo11779a(zzjyVar, i, false);
        }
        this.f28460N += i2;
        this.f28468V += i2;
        return i2;
    }

    /* renamed from: a */
    public final long m11868a(long j) throws zzhv {
        long j2 = this.f28488q;
        if (j2 != -9223372036854775807L) {
            return zzpq.m11626a(j, j2, 1000L);
        }
        throw new zzhv("Can't scale timecode prior to timecodeScale being set.");
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11854a() {
    }

    /* renamed from: a */
    public final void m11874a(int i) throws zzhv {
        zzke zzkeVar;
        zzpe zzpeVar;
        zzpe zzpeVar2;
        int i2;
        boolean z = false;
        int i3 = 0;
        if (i != 160) {
            if (i == 174) {
                String str = this.f28491t.f12260a;
                if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                    z = true;
                }
                if (z) {
                    ad0 ad0Var = this.f28491t;
                    ad0Var.m27197a(this.f28471Y, ad0Var.f12261b);
                    SparseArray<ad0> sparseArray = this.f28474c;
                    ad0 ad0Var2 = this.f28491t;
                    sparseArray.put(ad0Var2.f12261b, ad0Var2);
                }
                this.f28491t = null;
            } else if (i == 19899) {
                int i4 = this.f28493v;
                if (i4 != -1) {
                    long j = this.f28494w;
                    if (j != -1) {
                        if (i4 == 475249515) {
                            this.f28496y = j;
                            return;
                        }
                        return;
                    }
                }
                throw new zzhv("Mandatory element SeekID or SeekPosition not found");
            } else if (i == 25152) {
                ad0 ad0Var3 = this.f28491t;
                if (!ad0Var3.f12264e) {
                    return;
                }
                if (ad0Var3.f12266g != null) {
                    ad0Var3.f12268i = new zzjn(new zzjn.zza(zzha.f28246b, "video/webm", this.f28491t.f12266g.f28443b));
                    return;
                }
                throw new zzhv("Encrypted Track found but ContentEncKeyID was not found");
            } else if (i == 28032) {
                ad0 ad0Var4 = this.f28491t;
                if (ad0Var4.f12264e && ad0Var4.f12265f != null) {
                    throw new zzhv("Combining encryption and compression is not supported");
                }
            } else if (i == 357149030) {
                if (this.f28488q == -9223372036854775807L) {
                    this.f28488q = 1000000L;
                }
                long j2 = this.f28489r;
                if (j2 != -9223372036854775807L) {
                    this.f28490s = m11868a(j2);
                }
            } else if (i != 374648427) {
                if (i == 475249515 && !this.f28492u) {
                    zzjx zzjxVar = this.f28471Y;
                    if (this.f28487p == -1 || this.f28490s == -9223372036854775807L || (zzpeVar = this.f28448B) == null || zzpeVar.m11682a() == 0 || (zzpeVar2 = this.f28449C) == null || zzpeVar2.m11682a() != this.f28448B.m11682a()) {
                        this.f28448B = null;
                        this.f28449C = null;
                        zzkeVar = new zzkd(this.f28490s);
                    } else {
                        int a = this.f28448B.m11682a();
                        int[] iArr = new int[a];
                        long[] jArr = new long[a];
                        long[] jArr2 = new long[a];
                        long[] jArr3 = new long[a];
                        for (int i5 = 0; i5 < a; i5++) {
                            jArr3[i5] = this.f28448B.m11681a(i5);
                            jArr[i5] = this.f28487p + this.f28449C.m11681a(i5);
                        }
                        while (true) {
                            i2 = a - 1;
                            if (i3 >= i2) {
                                break;
                            }
                            int i6 = i3 + 1;
                            iArr[i3] = (int) (jArr[i6] - jArr[i3]);
                            jArr2[i3] = jArr3[i6] - jArr3[i3];
                            i3 = i6;
                        }
                        iArr[i2] = (int) ((this.f28487p + this.f28486o) - jArr[i2]);
                        jArr2[i2] = this.f28490s - jArr3[i2];
                        this.f28448B = null;
                        this.f28449C = null;
                        zzkeVar = new zzjt(iArr, jArr, jArr2, jArr3);
                    }
                    zzjxVar.mo11890a(zzkeVar);
                    this.f28492u = true;
                }
            } else if (this.f28474c.size() != 0) {
                this.f28471Y.mo11889b();
            } else {
                throw new zzhv("No valid tracks were found");
            }
        } else if (this.f28451E == 2) {
            if (!this.f28470X) {
                this.f28459M |= 1;
            }
            m11867a(this.f28474c.get(this.f28457K), this.f28452F);
            this.f28451E = 0;
        }
    }

    /* renamed from: a */
    public final void m11873a(int i, double d) {
        if (i == 181) {
            this.f28491t.f12252I = (int) d;
        } else if (i != 17545) {
            switch (i) {
                case 21969:
                    this.f28491t.f12282w = (float) d;
                    return;
                case 21970:
                    this.f28491t.f12283x = (float) d;
                    return;
                case 21971:
                    this.f28491t.f12284y = (float) d;
                    return;
                case 21972:
                    this.f28491t.f12285z = (float) d;
                    return;
                case 21973:
                    this.f28491t.f12244A = (float) d;
                    return;
                case 21974:
                    this.f28491t.f12245B = (float) d;
                    return;
                case 21975:
                    this.f28491t.f12246C = (float) d;
                    return;
                case 21976:
                    this.f28491t.f12247D = (float) d;
                    return;
                case 21977:
                    this.f28491t.f12248E = (float) d;
                    return;
                case 21978:
                    this.f28491t.f12249F = (float) d;
                    return;
                default:
                    return;
            }
        } else {
            this.f28489r = (long) d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:84:0x03d3, code lost:
        throw new com.google.android.gms.internal.ads.zzhv("EBML lacing sample size out of range.");
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [long] */
    /* JADX WARN: Type inference failed for: r22v3, types: [long] */
    /* JADX WARN: Type inference failed for: r22v4 */
    /* JADX WARN: Type inference failed for: r22v5, types: [long] */
    /* JADX WARN: Type inference failed for: r22v7 */
    /* JADX WARN: Type inference failed for: r22v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11872a(int r9, int r10, com.google.android.gms.internal.ads.zzjy r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1305
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzkl.m11872a(int, int, com.google.android.gms.internal.ads.zzjy):void");
    }

    /* renamed from: a */
    public final void m11871a(int i, long j) throws zzhv {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                boolean z2 = false;
                switch (i) {
                    case 131:
                        this.f28491t.f12262c = (int) j;
                        return;
                    case 136:
                        ad0 ad0Var = this.f28491t;
                        if (j == 1) {
                            z = true;
                        }
                        ad0Var.f12255L = z;
                        return;
                    case 155:
                        this.f28453G = m11868a(j);
                        return;
                    case 159:
                        this.f28491t.f12250G = (int) j;
                        return;
                    case 176:
                        this.f28491t.f12269j = (int) j;
                        return;
                    case 179:
                        this.f28448B.m11680a(m11868a(j));
                        return;
                    case 186:
                        this.f28491t.f12270k = (int) j;
                        return;
                    case 215:
                        this.f28491t.f12261b = (int) j;
                        return;
                    case 231:
                        this.f28447A = m11868a(j);
                        return;
                    case 241:
                        if (!this.f28450D) {
                            this.f28449C.m11680a(j);
                            this.f28450D = true;
                            return;
                        }
                        return;
                    case 251:
                        this.f28470X = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw new zzhv(sb.toString());
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw new zzhv(sb2.toString());
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw new zzhv(sb3.toString());
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw new zzhv(sb4.toString());
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw new zzhv(sb5.toString());
                        }
                        return;
                    case 21420:
                        this.f28494w = j + this.f28487p;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            this.f28491t.f12275p = 0;
                            return;
                        } else if (i2 == 1) {
                            this.f28491t.f12275p = 2;
                            return;
                        } else if (i2 == 3) {
                            this.f28491t.f12275p = 1;
                            return;
                        } else if (i2 == 15) {
                            this.f28491t.f12275p = 3;
                            return;
                        } else {
                            return;
                        }
                    case 21680:
                        this.f28491t.f12271l = (int) j;
                        return;
                    case 21682:
                        this.f28491t.f12273n = (int) j;
                        return;
                    case 21690:
                        this.f28491t.f12272m = (int) j;
                        return;
                    case 21930:
                        ad0 ad0Var2 = this.f28491t;
                        if (j == 1) {
                            z2 = true;
                        }
                        ad0Var2.f12256M = z2;
                        return;
                    case 22186:
                        this.f28491t.f12253J = j;
                        return;
                    case 22203:
                        this.f28491t.f12254K = j;
                        return;
                    case 25188:
                        this.f28491t.f12251H = (int) j;
                        return;
                    case 2352003:
                        this.f28491t.f12263d = (int) j;
                        return;
                    case 2807729:
                        this.f28488q = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i3 = (int) j;
                                if (i3 == 1) {
                                    this.f28491t.f12279t = 2;
                                    return;
                                } else if (i3 == 2) {
                                    this.f28491t.f12279t = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case 21946:
                                int i4 = (int) j;
                                if (i4 != 1) {
                                    if (i4 == 16) {
                                        this.f28491t.f12278s = 6;
                                        return;
                                    } else if (i4 == 18) {
                                        this.f28491t.f12278s = 7;
                                        return;
                                    } else if (!(i4 == 6 || i4 == 7)) {
                                        return;
                                    }
                                }
                                this.f28491t.f12278s = 3;
                                return;
                            case 21947:
                                ad0 ad0Var3 = this.f28491t;
                                ad0Var3.f12276q = true;
                                int i5 = (int) j;
                                if (i5 == 1) {
                                    ad0Var3.f12277r = 1;
                                    return;
                                } else if (i5 == 9) {
                                    ad0Var3.f12277r = 6;
                                    return;
                                } else if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                    this.f28491t.f12277r = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                this.f28491t.f12280u = (int) j;
                                return;
                            case 21949:
                                this.f28491t.f12281v = (int) j;
                                return;
                            default:
                                return;
                        }
                }
            } else if (j != 1) {
                StringBuilder sb6 = new StringBuilder(55);
                sb6.append("ContentEncodingScope ");
                sb6.append(j);
                sb6.append(" not supported");
                throw new zzhv(sb6.toString());
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw new zzhv(sb7.toString());
        }
    }

    /* renamed from: a */
    public final void m11870a(int i, long j, long j2) throws zzhv {
        if (i == 160) {
            this.f28470X = false;
        } else if (i == 174) {
            this.f28491t = new ad0(null);
        } else if (i == 187) {
            this.f28450D = false;
        } else if (i == 19899) {
            this.f28493v = -1;
            this.f28494w = -1L;
        } else if (i == 20533) {
            this.f28491t.f12264e = true;
        } else if (i == 21968) {
            this.f28491t.f12276q = true;
        } else if (i == 408125543) {
            long j3 = this.f28487p;
            if (j3 == -1 || j3 == j) {
                this.f28487p = j;
                this.f28486o = j2;
                return;
            }
            throw new zzhv("Multiple Segment elements not supported");
        } else if (i == 475249515) {
            this.f28448B = new zzpe();
            this.f28449C = new zzpe();
        } else if (i != 524531317 || this.f28492u) {
        } else {
            if (!this.f28475d || this.f28496y == -1) {
                this.f28471Y.mo11890a(new zzkd(this.f28490s));
                this.f28492u = true;
                return;
            }
            this.f28495x = true;
        }
    }

    /* renamed from: a */
    public final void m11869a(int i, String str) throws zzhv {
        if (i == 134) {
            this.f28491t.f12260a = str;
        } else if (i != 17026) {
            if (i == 2274716) {
                ad0.m27198a(this.f28491t, str);
            }
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzhv(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11852a(long j, long j2) {
        this.f28447A = -9223372036854775807L;
        this.f28451E = 0;
        this.f28472a.mo26245a();
        this.f28473b.m27099a();
        m11862b();
    }

    /* renamed from: a */
    public final void m11867a(ad0 ad0Var, long j) {
        byte[] bArr;
        int i;
        if ("S_TEXT/UTF8".equals(ad0Var.f12260a)) {
            byte[] bArr2 = this.f28482k.f28779a;
            long j2 = this.f28453G;
            if (j2 == -9223372036854775807L) {
                bArr = f28445a0;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                bArr = zzpq.m11615c(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * i)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            zzkg zzkgVar = ad0Var.f12258O;
            zzpk zzpkVar = this.f28482k;
            zzkgVar.mo11777a(zzpkVar, zzpkVar.m11657c());
            this.f28468V += this.f28482k.m11657c();
        }
        ad0Var.f12258O.mo11784a(j, this.f28459M, this.f28468V, 0, ad0Var.f12266g);
        this.f28469W = true;
        m11862b();
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final void mo11851a(zzjx zzjxVar) {
        this.f28471Y = zzjxVar;
    }

    /* renamed from: a */
    public final void m11866a(zzjy zzjyVar, int i) throws IOException, InterruptedException {
        if (this.f28478g.m11657c() < i) {
            if (this.f28478g.m11663a() < i) {
                zzpk zzpkVar = this.f28478g;
                byte[] bArr = zzpkVar.f28779a;
                zzpkVar.m11661a(Arrays.copyOf(bArr, Math.max(bArr.length << 1, i)), this.f28478g.m11657c());
            }
            zzpk zzpkVar2 = this.f28478g;
            zzjyVar.readFully(zzpkVar2.f28779a, zzpkVar2.m11657c(), i - this.f28478g.m11657c());
            this.f28478g.m11658b(i);
        }
    }

    /* renamed from: a */
    public final void m11865a(zzjy zzjyVar, ad0 ad0Var, int i) throws IOException, InterruptedException {
        int i2;
        byte[] bArr;
        if ("S_TEXT/UTF8".equals(ad0Var.f12260a)) {
            int length = f28444Z.length + i;
            if (this.f28482k.m11663a() < length) {
                this.f28482k.f28779a = Arrays.copyOf(f28444Z, length + i);
            }
            zzjyVar.readFully(this.f28482k.f28779a, f28444Z.length, i);
            this.f28482k.m11656c(0);
            this.f28482k.m11658b(length);
            return;
        }
        zzkg zzkgVar = ad0Var.f12258O;
        if (!this.f28461O) {
            if (ad0Var.f12264e) {
                this.f28459M &= -1073741825;
                int i3 = 128;
                if (!this.f28462P) {
                    zzjyVar.readFully(this.f28478g.f28779a, 0, 1);
                    this.f28460N++;
                    if ((this.f28478g.f28779a[0] & 128) != 128) {
                        this.f28465S = bArr[0];
                        this.f28462P = true;
                    } else {
                        throw new zzhv("Extension bit is set in signal byte");
                    }
                }
                byte b = this.f28465S;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.f28459M |= 1073741824;
                    if (!this.f28463Q) {
                        zzjyVar.readFully(this.f28483l.f28779a, 0, 8);
                        this.f28460N += 8;
                        this.f28463Q = true;
                        byte[] bArr2 = this.f28478g.f28779a;
                        if (!z) {
                            i3 = 0;
                        }
                        bArr2[0] = (byte) (i3 | 8);
                        this.f28478g.m11656c(0);
                        zzkgVar.mo11777a(this.f28478g, 1);
                        this.f28468V++;
                        this.f28483l.m11656c(0);
                        zzkgVar.mo11777a(this.f28483l, 8);
                        this.f28468V += 8;
                    }
                    if (z) {
                        if (!this.f28464R) {
                            zzjyVar.readFully(this.f28478g.f28779a, 0, 1);
                            this.f28460N++;
                            this.f28478g.m11656c(0);
                            this.f28466T = this.f28478g.m11650g();
                            this.f28464R = true;
                        }
                        int i4 = this.f28466T << 2;
                        this.f28478g.m11662a(i4);
                        zzjyVar.readFully(this.f28478g.f28779a, 0, i4);
                        this.f28460N += i4;
                        short s = (short) ((this.f28466T / 2) + 1);
                        int i5 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.f28485n;
                        if (byteBuffer == null || byteBuffer.capacity() < i5) {
                            this.f28485n = ByteBuffer.allocate(i5);
                        }
                        this.f28485n.position(0);
                        this.f28485n.putShort(s);
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            i2 = this.f28466T;
                            if (i6 >= i2) {
                                break;
                            }
                            int o = this.f28478g.m11642o();
                            if (i6 % 2 == 0) {
                                this.f28485n.putShort((short) (o - i7));
                            } else {
                                this.f28485n.putInt(o - i7);
                            }
                            i6++;
                            i7 = o;
                        }
                        int i8 = (i - this.f28460N) - i7;
                        if (i2 % 2 == 1) {
                            this.f28485n.putInt(i8);
                        } else {
                            this.f28485n.putShort((short) i8);
                            this.f28485n.putInt(0);
                        }
                        this.f28484m.m11661a(this.f28485n.array(), i5);
                        zzkgVar.mo11777a(this.f28484m, i5);
                        this.f28468V += i5;
                    }
                }
            } else {
                byte[] bArr3 = ad0Var.f12265f;
                if (bArr3 != null) {
                    this.f28481j.m11661a(bArr3, bArr3.length);
                }
            }
            this.f28461O = true;
        }
        int c = i + this.f28481j.m11657c();
        if (!"V_MPEG4/ISO/AVC".equals(ad0Var.f12260a) && !"V_MPEGH/ISO/HEVC".equals(ad0Var.f12260a)) {
            while (true) {
                int i9 = this.f28460N;
                if (i9 >= c) {
                    break;
                }
                m11864a(zzjyVar, zzkgVar, c - i9);
            }
        } else {
            byte[] bArr4 = this.f28477f.f28779a;
            bArr4[0] = (byte) 0;
            bArr4[1] = (byte) 0;
            bArr4[2] = (byte) 0;
            int i10 = ad0Var.f12259P;
            int i11 = 4 - i10;
            while (this.f28460N < c) {
                int i12 = this.f28467U;
                if (i12 == 0) {
                    int min = Math.min(i10, this.f28481j.m11647j());
                    zzjyVar.readFully(bArr4, i11 + min, i10 - min);
                    if (min > 0) {
                        this.f28481j.m11660a(bArr4, i11, min);
                    }
                    this.f28460N += i10;
                    this.f28477f.m11656c(0);
                    this.f28467U = this.f28477f.m11642o();
                    this.f28476e.m11656c(0);
                    zzkgVar.mo11777a(this.f28476e, 4);
                    this.f28468V += 4;
                } else {
                    this.f28467U = i12 - m11864a(zzjyVar, zzkgVar, i12);
                }
            }
        }
        if ("A_VORBIS".equals(ad0Var.f12260a)) {
            this.f28479h.m11656c(0);
            zzkgVar.mo11777a(this.f28479h, 4);
            this.f28468V += 4;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjv
    /* renamed from: a */
    public final boolean mo11850a(zzjy zzjyVar) throws IOException, InterruptedException {
        return new zc0().m26013a(zzjyVar);
    }

    /* renamed from: b */
    public final void m11862b() {
        this.f28460N = 0;
        this.f28468V = 0;
        this.f28467U = 0;
        this.f28461O = false;
        this.f28462P = false;
        this.f28464R = false;
        this.f28466T = 0;
        this.f28465S = (byte) 0;
        this.f28463Q = false;
        this.f28481j.m11648i();
    }
}
