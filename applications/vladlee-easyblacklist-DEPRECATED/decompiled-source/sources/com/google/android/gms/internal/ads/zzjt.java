package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import com.google.android.gms.internal.ads.zziv;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Locale;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzjt.class */
public final class zzjt implements zzjd {

    /* renamed from: a */
    private static final zzji f14967a = new anj();

    /* renamed from: b */
    private static final byte[] f14968b = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: c */
    private static final byte[] f14969c = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: d */
    private static final UUID f14970d = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    private long f14971A;

    /* renamed from: B */
    private boolean f14972B;

    /* renamed from: C */
    private long f14973C;

    /* renamed from: D */
    private long f14974D;

    /* renamed from: E */
    private long f14975E;

    /* renamed from: F */
    private zzod f14976F;

    /* renamed from: G */
    private zzod f14977G;

    /* renamed from: H */
    private boolean f14978H;

    /* renamed from: I */
    private int f14979I;

    /* renamed from: J */
    private long f14980J;

    /* renamed from: K */
    private long f14981K;

    /* renamed from: L */
    private int f14982L;

    /* renamed from: M */
    private int f14983M;

    /* renamed from: N */
    private int[] f14984N;

    /* renamed from: O */
    private int f14985O;

    /* renamed from: P */
    private int f14986P;

    /* renamed from: Q */
    private int f14987Q;

    /* renamed from: R */
    private int f14988R;

    /* renamed from: S */
    private boolean f14989S;

    /* renamed from: T */
    private boolean f14990T;

    /* renamed from: U */
    private boolean f14991U;

    /* renamed from: V */
    private boolean f14992V;

    /* renamed from: W */
    private byte f14993W;

    /* renamed from: X */
    private int f14994X;

    /* renamed from: Y */
    private int f14995Y;

    /* renamed from: Z */
    private int f14996Z;

    /* renamed from: aa */
    private boolean f14997aa;

    /* renamed from: ab */
    private boolean f14998ab;

    /* renamed from: ac */
    private zzjf f14999ac;

    /* renamed from: e */
    private final anf f15000e;

    /* renamed from: f */
    private final ann f15001f;

    /* renamed from: g */
    private final SparseArray<anl> f15002g;

    /* renamed from: h */
    private final boolean f15003h;

    /* renamed from: i */
    private final zzoj f15004i;

    /* renamed from: j */
    private final zzoj f15005j;

    /* renamed from: k */
    private final zzoj f15006k;

    /* renamed from: l */
    private final zzoj f15007l;

    /* renamed from: m */
    private final zzoj f15008m;

    /* renamed from: n */
    private final zzoj f15009n;

    /* renamed from: o */
    private final zzoj f15010o;

    /* renamed from: p */
    private final zzoj f15011p;

    /* renamed from: q */
    private final zzoj f15012q;

    /* renamed from: r */
    private ByteBuffer f15013r;

    /* renamed from: s */
    private long f15014s;

    /* renamed from: t */
    private long f15015t;

    /* renamed from: u */
    private long f15016u;

    /* renamed from: v */
    private long f15017v;

    /* renamed from: w */
    private long f15018w;

    /* renamed from: x */
    private anl f15019x;

    /* renamed from: y */
    private boolean f15020y;

    /* renamed from: z */
    private int f15021z;

    public zzjt() {
        this((byte) 0);
    }

    private zzjt(byte b) {
        this(new ane());
    }

    private zzjt(anf anfVar) {
        this.f15015t = -1L;
        this.f15016u = -9223372036854775807L;
        this.f15017v = -9223372036854775807L;
        this.f15018w = -9223372036854775807L;
        this.f14973C = -1L;
        this.f14974D = -1L;
        this.f14975E = -9223372036854775807L;
        this.f15000e = anfVar;
        this.f15000e.mo4870a(new ani(this, (byte) 0));
        this.f15003h = true;
        this.f15001f = new ann();
        this.f15002g = new SparseArray<>();
        this.f15006k = new zzoj(4);
        this.f15007l = new zzoj(ByteBuffer.allocate(4).putInt(-1).array());
        this.f15008m = new zzoj(4);
        this.f15004i = new zzoj(zzoi.zzbga);
        this.f15005j = new zzoj(4);
        this.f15009n = new zzoj();
        this.f15010o = new zzoj();
        this.f15011p = new zzoj(8);
        this.f15012q = new zzoj();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static int m3217a(int i) {
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

    /* renamed from: a */
    private final int m3207a(zzjg zzjgVar, zzjo zzjoVar, int i) {
        int i2;
        int zzin = this.f15009n.zzin();
        if (zzin > 0) {
            i2 = Math.min(i, zzin);
            zzjoVar.zza(this.f15009n, i2);
        } else {
            i2 = zzjoVar.zza(zzjgVar, i, false);
        }
        this.f14988R += i2;
        this.f14996Z += i2;
        return i2;
    }

    /* renamed from: a */
    private final long m3211a(long j) {
        long j2 = this.f15016u;
        if (j2 != -9223372036854775807L) {
            return zzoq.zza(j, j2, 1000L);
        }
        throw new zzhd("Can't scale timecode prior to timecodeScale being set.");
    }

    /* renamed from: a */
    private final void m3210a(anl anlVar, long j) {
        byte[] bArr;
        int i;
        if ("S_TEXT/UTF8".equals(anlVar.f7786a)) {
            byte[] bArr2 = this.f15010o.data;
            long j2 = this.f14981K;
            if (j2 == -9223372036854775807L) {
                bArr = f14969c;
            } else {
                int i2 = (int) (j2 / 3600000000L);
                long j3 = j2 - (i2 * 3600000000L);
                int i3 = (int) (j3 / 60000000);
                long j4 = j3 - (60000000 * i3);
                bArr = zzoq.zzbm(String.format(Locale.US, "%02d:%02d:%02d,%03d", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) (j4 / 1000000)), Integer.valueOf((int) ((j4 - (1000000 * i)) / 1000))));
            }
            System.arraycopy(bArr, 0, bArr2, 19, 12);
            zzjo zzjoVar = anlVar.f7783N;
            zzoj zzojVar = this.f15010o;
            zzjoVar.zza(zzojVar, zzojVar.limit());
            this.f14996Z += this.f15010o.limit();
        }
        anlVar.f7783N.zza(j, this.f14987Q, this.f14996Z, 0, anlVar.f7792g);
        this.f14997aa = true;
        m3205b();
    }

    /* renamed from: a */
    private final void m3209a(zzjg zzjgVar, int i) {
        if (this.f15006k.limit() < i) {
            if (this.f15006k.capacity() < i) {
                zzoj zzojVar = this.f15006k;
                zzojVar.zzb(Arrays.copyOf(zzojVar.data, Math.max(this.f15006k.data.length << 1, i)), this.f15006k.limit());
            }
            zzjgVar.readFully(this.f15006k.data, this.f15006k.limit(), i - this.f15006k.limit());
            this.f15006k.zzbd(i);
        }
    }

    /* renamed from: a */
    private final void m3208a(zzjg zzjgVar, anl anlVar, int i) {
        int i2;
        if ("S_TEXT/UTF8".equals(anlVar.f7786a)) {
            int length = f14968b.length + i;
            if (this.f15010o.capacity() < length) {
                this.f15010o.data = Arrays.copyOf(f14968b, length + i);
            }
            zzjgVar.readFully(this.f15010o.data, f14968b.length, i);
            this.f15010o.zzbe(0);
            this.f15010o.zzbd(length);
            return;
        }
        zzjo zzjoVar = anlVar.f7783N;
        if (!this.f14989S) {
            if (anlVar.f7790e) {
                this.f14987Q &= -1073741825;
                int i3 = 128;
                if (!this.f14990T) {
                    zzjgVar.readFully(this.f15006k.data, 0, 1);
                    this.f14988R++;
                    if ((this.f15006k.data[0] & 128) != 128) {
                        this.f14993W = this.f15006k.data[0];
                        this.f14990T = true;
                    } else {
                        throw new zzhd("Extension bit is set in signal byte");
                    }
                }
                byte b = this.f14993W;
                if ((b & 1) == 1) {
                    boolean z = (b & 2) == 2;
                    this.f14987Q |= 1073741824;
                    if (!this.f14991U) {
                        zzjgVar.readFully(this.f15011p.data, 0, 8);
                        this.f14988R += 8;
                        this.f14991U = true;
                        byte[] bArr = this.f15006k.data;
                        if (!z) {
                            i3 = 0;
                        }
                        bArr[0] = (byte) (i3 | 8);
                        this.f15006k.zzbe(0);
                        zzjoVar.zza(this.f15006k, 1);
                        this.f14996Z++;
                        this.f15011p.zzbe(0);
                        zzjoVar.zza(this.f15011p, 8);
                        this.f14996Z += 8;
                    }
                    if (z) {
                        if (!this.f14992V) {
                            zzjgVar.readFully(this.f15006k.data, 0, 1);
                            this.f14988R++;
                            this.f15006k.zzbe(0);
                            this.f14994X = this.f15006k.readUnsignedByte();
                            this.f14992V = true;
                        }
                        int i4 = this.f14994X << 2;
                        this.f15006k.reset(i4);
                        zzjgVar.readFully(this.f15006k.data, 0, i4);
                        this.f14988R += i4;
                        short s = (short) ((this.f14994X / 2) + 1);
                        int i5 = (s * 6) + 2;
                        ByteBuffer byteBuffer = this.f15013r;
                        if (byteBuffer == null || byteBuffer.capacity() < i5) {
                            this.f15013r = ByteBuffer.allocate(i5);
                        }
                        this.f15013r.position(0);
                        this.f15013r.putShort(s);
                        int i6 = 0;
                        int i7 = 0;
                        while (true) {
                            i2 = this.f14994X;
                            if (i6 >= i2) {
                                break;
                            }
                            int zzis = this.f15006k.zzis();
                            if (i6 % 2 == 0) {
                                this.f15013r.putShort((short) (zzis - i7));
                            } else {
                                this.f15013r.putInt(zzis - i7);
                            }
                            i6++;
                            i7 = zzis;
                        }
                        int i8 = (i - this.f14988R) - i7;
                        ByteBuffer byteBuffer2 = this.f15013r;
                        if (i2 % 2 == 1) {
                            byteBuffer2.putInt(i8);
                        } else {
                            byteBuffer2.putShort((short) i8);
                            this.f15013r.putInt(0);
                        }
                        this.f15012q.zzb(this.f15013r.array(), i5);
                        zzjoVar.zza(this.f15012q, i5);
                        this.f14996Z += i5;
                    }
                }
            } else if (anlVar.f7791f != null) {
                this.f15009n.zzb(anlVar.f7791f, anlVar.f7791f.length);
            }
            this.f14989S = true;
        }
        int limit = i + this.f15009n.limit();
        if (!"V_MPEG4/ISO/AVC".equals(anlVar.f7786a) && !"V_MPEGH/ISO/HEVC".equals(anlVar.f7786a)) {
            while (true) {
                int i9 = this.f14988R;
                if (i9 >= limit) {
                    break;
                }
                m3207a(zzjgVar, zzjoVar, limit - i9);
            }
        } else {
            byte[] bArr2 = this.f15005j.data;
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            bArr2[2] = (byte) 0;
            int i10 = anlVar.f7784O;
            int i11 = 4 - anlVar.f7784O;
            while (this.f14988R < limit) {
                int i12 = this.f14995Y;
                if (i12 == 0) {
                    int min = Math.min(i10, this.f15009n.zzin());
                    zzjgVar.readFully(bArr2, i11 + min, i10 - min);
                    if (min > 0) {
                        this.f15009n.zze(bArr2, i11, min);
                    }
                    this.f14988R += i10;
                    this.f15005j.zzbe(0);
                    this.f14995Y = this.f15005j.zzis();
                    this.f15004i.zzbe(0);
                    zzjoVar.zza(this.f15004i, 4);
                    this.f14996Z += 4;
                } else {
                    this.f14995Y = i12 - m3207a(zzjgVar, zzjoVar, i12);
                }
            }
        }
        if ("A_VORBIS".equals(anlVar.f7786a)) {
            this.f15007l.zzbe(0);
            zzjoVar.zza(this.f15007l, 4);
            this.f14996Z += 4;
        }
    }

    /* renamed from: a */
    private static int[] m3206a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length << 1, i)];
    }

    /* renamed from: b */
    private final void m3205b() {
        this.f14988R = 0;
        this.f14996Z = 0;
        this.f14995Y = 0;
        this.f14989S = false;
        this.f14990T = false;
        this.f14992V = false;
        this.f14994X = 0;
        this.f14993W = (byte) 0;
        this.f14991U = false;
        this.f15009n.reset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static boolean m3204b(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3216a(int i, double d) {
        if (i == 181) {
            this.f15019x.f7778I = (int) d;
        } else if (i != 17545) {
            switch (i) {
                case 21969:
                    this.f15019x.f7808w = (float) d;
                    return;
                case 21970:
                    this.f15019x.f7809x = (float) d;
                    return;
                case 21971:
                    this.f15019x.f7810y = (float) d;
                    return;
                case 21972:
                    this.f15019x.f7811z = (float) d;
                    return;
                case 21973:
                    this.f15019x.f7770A = (float) d;
                    return;
                case 21974:
                    this.f15019x.f7771B = (float) d;
                    return;
                case 21975:
                    this.f15019x.f7772C = (float) d;
                    return;
                case 21976:
                    this.f15019x.f7773D = (float) d;
                    return;
                case 21977:
                    this.f15019x.f7774E = (float) d;
                    return;
                case 21978:
                    this.f15019x.f7775F = (float) d;
                    return;
                default:
                    return;
            }
        } else {
            this.f15017v = (long) d;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03d1, code lost:
        throw new com.google.android.gms.internal.ads.zzhd("EBML lacing sample size out of range.");
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
    public final void m3215a(int r9, int r10, com.google.android.gms.internal.ads.zzjg r11) {
        /*
            Method dump skipped, instructions count: 1304
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjt.m3215a(int, int, com.google.android.gms.internal.ads.zzjg):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3214a(int i, long j) {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                boolean z2 = false;
                switch (i) {
                    case 131:
                        this.f15019x.f7788c = (int) j;
                        return;
                    case 136:
                        anl anlVar = this.f15019x;
                        if (j == 1) {
                            z = true;
                        }
                        anlVar.f7781L = z;
                        return;
                    case 155:
                        this.f14981K = m3211a(j);
                        return;
                    case 159:
                        this.f15019x.f7776G = (int) j;
                        return;
                    case 176:
                        this.f15019x.f7795j = (int) j;
                        return;
                    case 179:
                        this.f14976F.add(m3211a(j));
                        return;
                    case 186:
                        this.f15019x.f7796k = (int) j;
                        return;
                    case 215:
                        this.f15019x.f7787b = (int) j;
                        return;
                    case 231:
                        this.f14975E = m3211a(j);
                        return;
                    case 241:
                        if (!this.f14978H) {
                            this.f14977G.add(j);
                            this.f14978H = true;
                            return;
                        }
                        return;
                    case 251:
                        this.f14998ab = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw new zzhd(sb.toString());
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw new zzhd(sb2.toString());
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw new zzhd(sb3.toString());
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw new zzhd(sb4.toString());
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw new zzhd(sb5.toString());
                        }
                        return;
                    case 21420:
                        this.f14971A = j + this.f15015t;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            this.f15019x.f7801p = 0;
                            return;
                        } else if (i2 == 1) {
                            this.f15019x.f7801p = 2;
                            return;
                        } else if (i2 == 3) {
                            this.f15019x.f7801p = 1;
                            return;
                        } else if (i2 == 15) {
                            this.f15019x.f7801p = 3;
                            return;
                        } else {
                            return;
                        }
                    case 21680:
                        this.f15019x.f7797l = (int) j;
                        return;
                    case 21682:
                        this.f15019x.f7799n = (int) j;
                        return;
                    case 21690:
                        this.f15019x.f7798m = (int) j;
                        return;
                    case 21930:
                        anl anlVar2 = this.f15019x;
                        if (j == 1) {
                            z2 = true;
                        }
                        anlVar2.f7782M = z2;
                        return;
                    case 22186:
                        this.f15019x.f7779J = j;
                        return;
                    case 22203:
                        this.f15019x.f7780K = j;
                        return;
                    case 25188:
                        this.f15019x.f7777H = (int) j;
                        return;
                    case 2352003:
                        this.f15019x.f7789d = (int) j;
                        return;
                    case 2807729:
                        this.f15016u = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i3 = (int) j;
                                if (i3 == 1) {
                                    this.f15019x.f7805t = 2;
                                    return;
                                } else if (i3 == 2) {
                                    this.f15019x.f7805t = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case 21946:
                                int i4 = (int) j;
                                if (i4 != 1) {
                                    if (i4 == 16) {
                                        this.f15019x.f7804s = 6;
                                        return;
                                    } else if (i4 == 18) {
                                        this.f15019x.f7804s = 7;
                                        return;
                                    } else if (!(i4 == 6 || i4 == 7)) {
                                        return;
                                    }
                                }
                                this.f15019x.f7804s = 3;
                                return;
                            case 21947:
                                anl anlVar3 = this.f15019x;
                                anlVar3.f7802q = true;
                                int i5 = (int) j;
                                if (i5 == 1) {
                                    anlVar3.f7803r = 1;
                                    return;
                                } else if (i5 == 9) {
                                    anlVar3.f7803r = 6;
                                    return;
                                } else if (i5 == 4 || i5 == 5 || i5 == 6 || i5 == 7) {
                                    this.f15019x.f7803r = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                this.f15019x.f7806u = (int) j;
                                return;
                            case 21949:
                                this.f15019x.f7807v = (int) j;
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
                throw new zzhd(sb6.toString());
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw new zzhd(sb7.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3213a(int i, long j, long j2) {
        if (i == 160) {
            this.f14998ab = false;
        } else if (i == 174) {
            this.f15019x = new anl((byte) 0);
        } else if (i == 187) {
            this.f14978H = false;
        } else if (i == 19899) {
            this.f15021z = -1;
            this.f14971A = -1L;
        } else if (i == 20533) {
            this.f15019x.f7790e = true;
        } else if (i == 21968) {
            this.f15019x.f7802q = true;
        } else if (i == 25152) {
        } else {
            if (i == 408125543) {
                long j3 = this.f15015t;
                if (j3 == -1 || j3 == j) {
                    this.f15015t = j;
                    this.f15014s = j2;
                    return;
                }
                throw new zzhd("Multiple Segment elements not supported");
            } else if (i == 475249515) {
                this.f14976F = new zzod();
                this.f14977G = new zzod();
            } else if (i != 524531317 || this.f15020y) {
            } else {
                if (!this.f15003h || this.f14973C == -1) {
                    this.f14999ac.zza(new zzjl(this.f15018w));
                    this.f15020y = true;
                    return;
                }
                this.f14972B = true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final void m3212a(int i, String str) {
        if (i == 134) {
            this.f15019x.f7786a = str;
        } else if (i != 17026) {
            if (i == 2274716) {
                anl.m4856a(this.f15019x, str);
            }
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new zzhd(sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final void m3203c(int i) {
        zzjm zzjmVar;
        zzod zzodVar;
        zzod zzodVar2;
        int i2;
        boolean z = false;
        int i3 = 0;
        if (i != 160) {
            if (i == 174) {
                String str = this.f15019x.f7786a;
                if ("V_VP8".equals(str) || "V_VP9".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str)) {
                    z = true;
                }
                if (z) {
                    anl anlVar = this.f15019x;
                    anlVar.m4855a(this.f14999ac, anlVar.f7787b);
                    this.f15002g.put(this.f15019x.f7787b, this.f15019x);
                }
                this.f15019x = null;
            } else if (i == 19899) {
                int i4 = this.f15021z;
                if (i4 != -1) {
                    long j = this.f14971A;
                    if (j != -1) {
                        if (i4 == 475249515) {
                            this.f14973C = j;
                            return;
                        }
                        return;
                    }
                }
                throw new zzhd("Mandatory element SeekID or SeekPosition not found");
            } else if (i != 25152) {
                if (i != 28032) {
                    if (i == 357149030) {
                        if (this.f15016u == -9223372036854775807L) {
                            this.f15016u = 1000000L;
                        }
                        long j2 = this.f15017v;
                        if (j2 != -9223372036854775807L) {
                            this.f15018w = m3211a(j2);
                        }
                    } else if (i != 374648427) {
                        if (i == 475249515 && !this.f15020y) {
                            zzjf zzjfVar = this.f14999ac;
                            if (this.f15015t == -1 || this.f15018w == -9223372036854775807L || (zzodVar = this.f14976F) == null || zzodVar.size() == 0 || (zzodVar2 = this.f14977G) == null || zzodVar2.size() != this.f14976F.size()) {
                                this.f14976F = null;
                                this.f14977G = null;
                                zzjmVar = new zzjl(this.f15018w);
                            } else {
                                int size = this.f14976F.size();
                                int[] iArr = new int[size];
                                long[] jArr = new long[size];
                                long[] jArr2 = new long[size];
                                long[] jArr3 = new long[size];
                                for (int i5 = 0; i5 < size; i5++) {
                                    jArr3[i5] = this.f14976F.get(i5);
                                    jArr[i5] = this.f15015t + this.f14977G.get(i5);
                                }
                                while (true) {
                                    i2 = size - 1;
                                    if (i3 >= i2) {
                                        break;
                                    }
                                    int i6 = i3 + 1;
                                    iArr[i3] = (int) (jArr[i6] - jArr[i3]);
                                    jArr2[i3] = jArr3[i6] - jArr3[i3];
                                    i3 = i6;
                                }
                                iArr[i2] = (int) ((this.f15015t + this.f15014s) - jArr[i2]);
                                jArr2[i2] = this.f15018w - jArr3[i2];
                                this.f14976F = null;
                                this.f14977G = null;
                                zzjmVar = new zzjb(iArr, jArr, jArr2, jArr3);
                            }
                            zzjfVar.zza(zzjmVar);
                            this.f15020y = true;
                        }
                    } else if (this.f15002g.size() != 0) {
                        this.f14999ac.zzgj();
                    } else {
                        throw new zzhd("No valid tracks were found");
                    }
                } else if (this.f15019x.f7790e && this.f15019x.f7791f != null) {
                    throw new zzhd("Combining encryption and compression is not supported");
                }
            } else if (this.f15019x.f7790e) {
                if (this.f15019x.f7792g != null) {
                    this.f15019x.f7794i = new zziv(new zziv.zza(zzgi.zzacb, "video/webm", this.f15019x.f7792g.zzand));
                    return;
                }
                throw new zzhd("Encrypted Track found but ContentEncKeyID was not found");
            }
        } else if (this.f14979I == 2) {
            if (!this.f14998ab) {
                this.f14987Q |= 1;
            }
            m3210a(this.f15002g.get(this.f14985O), this.f14980J);
            this.f14979I = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void release() {
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x007f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0007 A[SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzjd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzjg r6, com.google.android.gms.internal.ads.zzjj r7) {
        /*
            r5 = this;
            r0 = r5
            r1 = 0
            r0.f14997aa = r1
            r0 = 1
            r8 = r0
        L_0x0007:
            r0 = r8
            if (r0 == 0) goto L_0x0081
            r0 = r5
            boolean r0 = r0.f14997aa
            if (r0 != 0) goto L_0x0081
            r0 = r5
            com.google.android.gms.internal.ads.anf r0 = r0.f15000e
            r1 = r6
            boolean r0 = r0.mo4869a(r1)
            r9 = r0
            r0 = r9
            r8 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0007
            r0 = r6
            long r0 = r0.getPosition()
            r10 = r0
            r0 = r5
            boolean r0 = r0.f14972B
            if (r0 == 0) goto L_0x004e
            r0 = r5
            r1 = r10
            r0.f14974D = r1
            r0 = r7
            r1 = r5
            long r1 = r1.f14973C
            r0.zzamw = r1
            r0 = r5
            r1 = 0
            r0.f14972B = r1
        L_0x0048:
            r0 = 1
            r12 = r0
            goto L_0x0077
        L_0x004e:
            r0 = r5
            boolean r0 = r0.f15020y
            if (r0 == 0) goto L_0x0074
            r0 = r5
            long r0 = r0.f14974D
            r10 = r0
            r0 = r10
            r1 = -1
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0074
            r0 = r7
            r1 = r10
            r0.zzamw = r1
            r0 = r5
            r1 = -1
            r0.f14974D = r1
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzjt.zza(com.google.android.gms.internal.ads.zzjg, com.google.android.gms.internal.ads.zzjj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zza(zzjf zzjfVar) {
        this.f14999ac = zzjfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final boolean zza(zzjg zzjgVar) {
        return new ank().m4858a(zzjgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzjd
    public final void zzc(long j, long j2) {
        this.f14975E = -9223372036854775807L;
        this.f14979I = 0;
        this.f15000e.mo4871a();
        this.f15001f.m4848a();
        m3205b();
    }
}
