package com.google.android.gms.internal.ads;

import android.util.Log;
import com.crashlytics.android.core.CodedOutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;
import p000a.p001a.p002a.p003a.p004a.p009d.AbstractC0079b;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/anl.class */
public final class anl {

    /* renamed from: A */
    public float f7770A;

    /* renamed from: B */
    public float f7771B;

    /* renamed from: C */
    public float f7772C;

    /* renamed from: D */
    public float f7773D;

    /* renamed from: E */
    public float f7774E;

    /* renamed from: F */
    public float f7775F;

    /* renamed from: G */
    public int f7776G;

    /* renamed from: H */
    public int f7777H;

    /* renamed from: I */
    public int f7778I;

    /* renamed from: J */
    public long f7779J;

    /* renamed from: K */
    public long f7780K;

    /* renamed from: L */
    public boolean f7781L;

    /* renamed from: M */
    public boolean f7782M;

    /* renamed from: N */
    public zzjo f7783N;

    /* renamed from: O */
    public int f7784O;

    /* renamed from: P */
    private String f7785P;

    /* renamed from: a */
    public String f7786a;

    /* renamed from: b */
    public int f7787b;

    /* renamed from: c */
    public int f7788c;

    /* renamed from: d */
    public int f7789d;

    /* renamed from: e */
    public boolean f7790e;

    /* renamed from: f */
    public byte[] f7791f;

    /* renamed from: g */
    public zzjn f7792g;

    /* renamed from: h */
    public byte[] f7793h;

    /* renamed from: i */
    public zziv f7794i;

    /* renamed from: j */
    public int f7795j;

    /* renamed from: k */
    public int f7796k;

    /* renamed from: l */
    public int f7797l;

    /* renamed from: m */
    public int f7798m;

    /* renamed from: n */
    public int f7799n;

    /* renamed from: o */
    public byte[] f7800o;

    /* renamed from: p */
    public int f7801p;

    /* renamed from: q */
    public boolean f7802q;

    /* renamed from: r */
    public int f7803r;

    /* renamed from: s */
    public int f7804s;

    /* renamed from: t */
    public int f7805t;

    /* renamed from: u */
    public int f7806u;

    /* renamed from: v */
    public int f7807v;

    /* renamed from: w */
    public float f7808w;

    /* renamed from: x */
    public float f7809x;

    /* renamed from: y */
    public float f7810y;

    /* renamed from: z */
    public float f7811z;

    private anl() {
        this.f7795j = -1;
        this.f7796k = -1;
        this.f7797l = -1;
        this.f7798m = -1;
        this.f7799n = 0;
        this.f7800o = null;
        this.f7801p = -1;
        this.f7802q = false;
        this.f7803r = -1;
        this.f7804s = -1;
        this.f7805t = -1;
        this.f7806u = 1000;
        this.f7807v = 200;
        this.f7808w = -1.0f;
        this.f7809x = -1.0f;
        this.f7810y = -1.0f;
        this.f7811z = -1.0f;
        this.f7770A = -1.0f;
        this.f7771B = -1.0f;
        this.f7772C = -1.0f;
        this.f7773D = -1.0f;
        this.f7774E = -1.0f;
        this.f7775F = -1.0f;
        this.f7776G = 1;
        this.f7777H = -1;
        this.f7778I = AbstractC0079b.MAX_BYTE_SIZE_PER_FILE;
        this.f7779J = 0L;
        this.f7780K = 0L;
        this.f7782M = true;
        this.f7785P = "eng";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ anl(byte b) {
        this();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ String m4856a(anl anlVar, String str) {
        anlVar.f7785P = str;
        return str;
    }

    /* renamed from: a */
    private static List<byte[]> m4854a(zzoj zzojVar) {
        try {
            zzojVar.zzbf(16);
            if (zzojVar.zziq() != 826496599) {
                return null;
            }
            byte[] bArr = zzojVar.data;
            for (int position = zzojVar.getPosition() + 20; position < bArr.length - 4; position++) {
                if (bArr[position] == 0 && bArr[position + 1] == 0 && bArr[position + 2] == 1 && bArr[position + 3] == 15) {
                    return Collections.singletonList(Arrays.copyOfRange(bArr, position, bArr.length));
                }
            }
            throw new zzhd("Failed to find FourCC VC1 initialization data");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhd("Error parsing FourCC VC1 codec private");
        }
    }

    /* renamed from: a */
    private static List<byte[]> m4853a(byte[] bArr) {
        try {
            if (bArr[0] == 2) {
                int i = 0;
                int i2 = 1;
                while (bArr[i2] == -1) {
                    i += 255;
                    i2++;
                }
                int i3 = i2 + 1;
                int i4 = i + bArr[i2];
                int i5 = 0;
                while (bArr[i3] == -1) {
                    i5 += 255;
                    i3++;
                }
                int i6 = i3 + 1;
                byte b = bArr[i3];
                if (bArr[i6] == 1) {
                    byte[] bArr2 = new byte[i4];
                    System.arraycopy(bArr, i6, bArr2, 0, i4);
                    int i7 = i6 + i4;
                    if (bArr[i7] == 3) {
                        int i8 = i7 + i5 + b;
                        if (bArr[i8] == 5) {
                            byte[] bArr3 = new byte[bArr.length - i8];
                            System.arraycopy(bArr, i8, bArr3, 0, bArr.length - i8);
                            ArrayList arrayList = new ArrayList(2);
                            arrayList.add(bArr2);
                            arrayList.add(bArr3);
                            return arrayList;
                        }
                        throw new zzhd("Error parsing vorbis codec private");
                    }
                    throw new zzhd("Error parsing vorbis codec private");
                }
                throw new zzhd("Error parsing vorbis codec private");
            }
            throw new zzhd("Error parsing vorbis codec private");
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhd("Error parsing vorbis codec private");
        }
    }

    /* renamed from: b */
    private static boolean m4852b(zzoj zzojVar) {
        UUID uuid;
        UUID uuid2;
        try {
            int zzio = zzojVar.zzio();
            if (zzio == 1) {
                return true;
            }
            if (zzio != 65534) {
                return false;
            }
            zzojVar.zzbe(24);
            long readLong = zzojVar.readLong();
            uuid = zzjt.f14970d;
            if (readLong != uuid.getMostSignificantBits()) {
                return false;
            }
            long readLong2 = zzojVar.readLong();
            uuid2 = zzjt.f14970d;
            return readLong2 == uuid2.getLeastSignificantBits();
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new zzhd("Error parsing MS/ACM codec private");
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final void m4855a(zzjf zzjfVar, int i) {
        char c;
        int i2;
        String str;
        int i3;
        List<byte[]> list;
        zzgw zzgwVar;
        int i4;
        int i5;
        zzor zzorVar;
        int i6;
        String concat;
        int i7;
        StringBuilder sb;
        String str2 = this.f7786a;
        switch (str2.hashCode()) {
            case -2095576542:
                if (str2.equals("V_MPEG4/ISO/AP")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -2095575984:
                if (str2.equals("V_MPEG4/ISO/SP")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1985379776:
                if (str2.equals("A_MS/ACM")) {
                    c = 22;
                    break;
                }
                c = 65535;
                break;
            case -1784763192:
                if (str2.equals("A_TRUEHD")) {
                    c = 17;
                    break;
                }
                c = 65535;
                break;
            case -1730367663:
                if (str2.equals("A_VORBIS")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1482641358:
                if (str2.equals("A_MPEG/L2")) {
                    c = '\r';
                    break;
                }
                c = 65535;
                break;
            case -1482641357:
                if (str2.equals("A_MPEG/L3")) {
                    c = 14;
                    break;
                }
                c = 65535;
                break;
            case -1373388978:
                if (str2.equals("V_MS/VFW/FOURCC")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -933872740:
                if (str2.equals("S_DVBSUB")) {
                    c = 27;
                    break;
                }
                c = 65535;
                break;
            case -538363189:
                if (str2.equals("V_MPEG4/ISO/ASP")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -538363109:
                if (str2.equals("V_MPEG4/ISO/AVC")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -425012669:
                if (str2.equals("S_VOBSUB")) {
                    c = 25;
                    break;
                }
                c = 65535;
                break;
            case -356037306:
                if (str2.equals("A_DTS/LOSSLESS")) {
                    c = 20;
                    break;
                }
                c = 65535;
                break;
            case 62923557:
                if (str2.equals("A_AAC")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case 62923603:
                if (str2.equals("A_AC3")) {
                    c = 15;
                    break;
                }
                c = 65535;
                break;
            case 62927045:
                if (str2.equals("A_DTS")) {
                    c = 18;
                    break;
                }
                c = 65535;
                break;
            case 82338133:
                if (str2.equals("V_VP8")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 82338134:
                if (str2.equals("V_VP9")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 99146302:
                if (str2.equals("S_HDMV/PGS")) {
                    c = 26;
                    break;
                }
                c = 65535;
                break;
            case 444813526:
                if (str2.equals("V_THEORA")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case 542569478:
                if (str2.equals("A_DTS/EXPRESS")) {
                    c = 19;
                    break;
                }
                c = 65535;
                break;
            case 725957860:
                if (str2.equals("A_PCM/INT/LIT")) {
                    c = 23;
                    break;
                }
                c = 65535;
                break;
            case 855502857:
                if (str2.equals("V_MPEGH/ISO/HEVC")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case 1422270023:
                if (str2.equals("S_TEXT/UTF8")) {
                    c = 24;
                    break;
                }
                c = 65535;
                break;
            case 1809237540:
                if (str2.equals("V_MPEG2")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1950749482:
                if (str2.equals("A_EAC3")) {
                    c = 16;
                    break;
                }
                c = 65535;
                break;
            case 1950789798:
                if (str2.equals("A_FLAC")) {
                    c = 21;
                    break;
                }
                c = 65535;
                break;
            case 1951062397:
                if (str2.equals("A_OPUS")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                str = "video/x-vnd.on2.vp8";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 1:
                str = "video/x-vnd.on2.vp9";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 2:
                str = "video/mpeg2";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 3:
            case 4:
            case 5:
                byte[] bArr = this.f7793h;
                list = bArr == null ? null : Collections.singletonList(bArr);
                str = "video/mp4v-es";
                i3 = -1;
                i2 = -1;
                break;
            case 6:
                zzos zzf = zzos.zzf(new zzoj(this.f7793h));
                list = zzf.zzafg;
                this.f7784O = zzf.zzaqu;
                str = "video/avc";
                i3 = -1;
                i2 = -1;
                break;
            case 7:
                zzoy zzh = zzoy.zzh(new zzoj(this.f7793h));
                list = zzh.zzafg;
                this.f7784O = zzh.zzaqu;
                str = "video/hevc";
                i3 = -1;
                i2 = -1;
                break;
            case '\b':
                list = m4854a(new zzoj(this.f7793h));
                if (list == null) {
                    Log.w("MatroskaExtractor", "Unsupported FourCC. Setting mimeType to video/x-unknown");
                    i3 = -1;
                    i2 = -1;
                    str = "video/x-unknown";
                    break;
                } else {
                    str = "video/wvc1";
                    i3 = -1;
                    i2 = -1;
                    break;
                }
            case '\t':
                i3 = -1;
                i2 = -1;
                str = "video/x-unknown";
                list = null;
                break;
            case '\n':
                i3 = 8192;
                list = m4853a(this.f7793h);
                str = "audio/vorbis";
                i2 = -1;
                break;
            case 11:
                i3 = 5760;
                list = new ArrayList<>(3);
                list.add(this.f7793h);
                list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f7779J).array());
                list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f7780K).array());
                str = "audio/opus";
                i2 = -1;
                break;
            case '\f':
                list = Collections.singletonList(this.f7793h);
                str = "audio/mp4a-latm";
                i3 = -1;
                i2 = -1;
                break;
            case '\r':
                str = "audio/mpeg-L2";
                i2 = -1;
                i3 = CodedOutputStream.DEFAULT_BUFFER_SIZE;
                list = null;
                break;
            case 14:
                str = "audio/mpeg";
                i2 = -1;
                i3 = CodedOutputStream.DEFAULT_BUFFER_SIZE;
                list = null;
                break;
            case 15:
                str = "audio/ac3";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 16:
                str = "audio/eac3";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 17:
                str = "audio/true-hd";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 18:
            case 19:
                str = "audio/vnd.dts";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 20:
                str = "audio/vnd.dts.hd";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 21:
                list = Collections.singletonList(this.f7793h);
                str = "audio/x-flac";
                i3 = -1;
                i2 = -1;
                break;
            case 22:
                if (m4852b(new zzoj(this.f7793h))) {
                    int zzbk = zzoq.zzbk(this.f7777H);
                    i2 = zzbk;
                    if (zzbk == 0) {
                        i7 = this.f7777H;
                        sb = new StringBuilder("audio/x-unknown".length() + 60);
                        sb.append("Unsupported PCM bit depth: ");
                        sb.append(i7);
                        sb.append(". Setting mimeType to ");
                        sb.append("audio/x-unknown");
                        concat = sb.toString();
                        Log.w("MatroskaExtractor", concat);
                        i3 = -1;
                        i2 = -1;
                        str = "audio/x-unknown";
                        list = null;
                        break;
                    }
                    str = "audio/raw";
                    i3 = -1;
                    list = null;
                } else {
                    concat = "audio/x-unknown".length() != 0 ? "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat("audio/x-unknown") : new String("Non-PCM MS/ACM is unsupported. Setting mimeType to ");
                    Log.w("MatroskaExtractor", concat);
                    i3 = -1;
                    i2 = -1;
                    str = "audio/x-unknown";
                    list = null;
                }
            case 23:
                int zzbk2 = zzoq.zzbk(this.f7777H);
                i2 = zzbk2;
                if (zzbk2 == 0) {
                    i7 = this.f7777H;
                    sb = new StringBuilder("audio/x-unknown".length() + 60);
                    sb.append("Unsupported PCM bit depth: ");
                    sb.append(i7);
                    sb.append(". Setting mimeType to ");
                    sb.append("audio/x-unknown");
                    concat = sb.toString();
                    Log.w("MatroskaExtractor", concat);
                    i3 = -1;
                    i2 = -1;
                    str = "audio/x-unknown";
                    list = null;
                    break;
                }
                str = "audio/raw";
                i3 = -1;
                list = null;
            case 24:
                str = "application/x-subrip";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 25:
                list = Collections.singletonList(this.f7793h);
                str = "application/vobsub";
                i3 = -1;
                i2 = -1;
                break;
            case 26:
                str = "application/pgs";
                i3 = -1;
                i2 = -1;
                list = null;
                break;
            case 27:
                byte[] bArr2 = this.f7793h;
                list = Collections.singletonList(new byte[]{bArr2[0], bArr2[1], bArr2[2], bArr2[3]});
                str = "application/dvbsubs";
                i3 = -1;
                i2 = -1;
                break;
            default:
                throw new zzhd("Unrecognized codec identifier.");
        }
        int i8 = (this.f7782M ? 1 : 0) | 0 | (this.f7781L ? 2 : 0);
        if (zzof.zzbh(str)) {
            zzgwVar = zzgw.zza(Integer.toString(i), str, null, -1, i3, this.f7776G, this.f7778I, i2, list, this.f7794i, i8, this.f7785P);
            i4 = 1;
        } else if (zzof.zzbi(str)) {
            if (this.f7799n == 0) {
                int i9 = this.f7797l;
                int i10 = i9;
                if (i9 == -1) {
                    i10 = this.f7795j;
                }
                this.f7797l = i10;
                int i11 = this.f7798m;
                int i12 = i11;
                if (i11 == -1) {
                    i12 = this.f7796k;
                }
                this.f7798m = i12;
            }
            float f = (this.f7797l == -1 || (i6 = this.f7798m) == -1) ? -1.0f : (this.f7796k * i5) / (this.f7795j * i6);
            if (this.f7802q) {
                byte[] bArr3 = null;
                if (this.f7808w != -1.0f) {
                    bArr3 = null;
                    if (this.f7809x != -1.0f) {
                        bArr3 = null;
                        if (this.f7810y != -1.0f) {
                            bArr3 = null;
                            if (this.f7811z != -1.0f) {
                                bArr3 = null;
                                if (this.f7770A != -1.0f) {
                                    bArr3 = null;
                                    if (this.f7771B != -1.0f) {
                                        bArr3 = null;
                                        if (this.f7772C != -1.0f) {
                                            bArr3 = null;
                                            if (this.f7773D != -1.0f) {
                                                bArr3 = null;
                                                if (this.f7774E != -1.0f) {
                                                    if (this.f7775F == -1.0f) {
                                                        bArr3 = null;
                                                    } else {
                                                        bArr3 = new byte[25];
                                                        ByteBuffer wrap = ByteBuffer.wrap(bArr3);
                                                        wrap.put((byte) 0);
                                                        wrap.putShort((short) ((this.f7808w * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7809x * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7810y * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7811z * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7770A * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7771B * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7772C * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) ((this.f7773D * 50000.0f) + 0.5f));
                                                        wrap.putShort((short) (this.f7774E + 0.5f));
                                                        wrap.putShort((short) (this.f7775F + 0.5f));
                                                        wrap.putShort((short) this.f7806u);
                                                        wrap.putShort((short) this.f7807v);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                zzorVar = new zzor(this.f7803r, this.f7805t, this.f7804s, bArr3);
            } else {
                zzorVar = null;
            }
            zzgwVar = zzgw.zza(Integer.toString(i), str, null, -1, i3, this.f7795j, this.f7796k, -1.0f, list, -1, f, this.f7800o, this.f7801p, zzorVar, this.f7794i);
            i4 = 2;
        } else if ("application/x-subrip".equals(str)) {
            zzgwVar = zzgw.zza(Integer.toString(i), str, (String) null, -1, i8, this.f7785P, this.f7794i);
            i4 = 3;
        } else if ("application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
            zzgwVar = zzgw.zza(Integer.toString(i), str, (String) null, -1, list, this.f7785P, this.f7794i);
            i4 = 3;
        } else {
            throw new zzhd("Unexpected MIME type.");
        }
        this.f7783N = zzjfVar.zzc(this.f7787b, i4);
        this.f7783N.zze(zzgwVar);
    }
}
