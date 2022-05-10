package p012b.p076s.p078b.p079a.p086s0.p089t;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.video.ColorInfo;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import java.util.UUID;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1176k;
import p012b.p076s.p078b.p079a.p080a1.C1178m;
import p012b.p076s.p078b.p079a.p080a1.C1180n;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
import p012b.p076s.p078b.p079a.p081b1.C1199a;
import p012b.p076s.p078b.p079a.p081b1.C1201c;
import p012b.p076s.p078b.p079a.p083p0.C1264a;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1350g;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1351h;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1352i;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1353j;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1362q;
import p012b.p076s.p078b.p079a.p086s0.C1345b;
import p012b.p076s.p078b.p079a.p086s0.C1357n;
/* renamed from: b.s.b.a.s0.t.e */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/e.class */
public class C1377e implements AbstractC1350g {

    /* renamed from: Z */
    public static final byte[] f5424Z = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};

    /* renamed from: a0 */
    public static final byte[] f5425a0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: b0 */
    public static final byte[] f5426b0 = C1167d0.m34441d("Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text");

    /* renamed from: c0 */
    public static final byte[] f5427c0 = {68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};

    /* renamed from: d0 */
    public static final byte[] f5428d0 = {32, 32, 32, 32, 32, 32, 32, 32, 32, 32};

    /* renamed from: e0 */
    public static final UUID f5429e0 = new UUID(72057594037932032L, -9223371306706625679L);

    /* renamed from: A */
    public long f5430A;

    /* renamed from: B */
    public C1176k f5431B;

    /* renamed from: C */
    public C1176k f5432C;

    /* renamed from: D */
    public boolean f5433D;

    /* renamed from: E */
    public int f5434E;

    /* renamed from: F */
    public long f5435F;

    /* renamed from: G */
    public long f5436G;

    /* renamed from: H */
    public int f5437H;

    /* renamed from: I */
    public int f5438I;

    /* renamed from: J */
    public int[] f5439J;

    /* renamed from: K */
    public int f5440K;

    /* renamed from: L */
    public int f5441L;

    /* renamed from: M */
    public int f5442M;

    /* renamed from: N */
    public int f5443N;

    /* renamed from: O */
    public boolean f5444O;

    /* renamed from: P */
    public boolean f5445P;

    /* renamed from: Q */
    public boolean f5446Q;

    /* renamed from: R */
    public boolean f5447R;

    /* renamed from: S */
    public byte f5448S;

    /* renamed from: T */
    public int f5449T;

    /* renamed from: U */
    public int f5450U;

    /* renamed from: V */
    public int f5451V;

    /* renamed from: W */
    public boolean f5452W;

    /* renamed from: X */
    public boolean f5453X;

    /* renamed from: Y */
    public AbstractC1352i f5454Y;

    /* renamed from: a */
    public final AbstractC1375c f5455a;

    /* renamed from: b */
    public final C1383g f5456b;

    /* renamed from: c */
    public final SparseArray<C1380c> f5457c;

    /* renamed from: d */
    public final boolean f5458d;

    /* renamed from: e */
    public final C1184p f5459e;

    /* renamed from: f */
    public final C1184p f5460f;

    /* renamed from: g */
    public final C1184p f5461g;

    /* renamed from: h */
    public final C1184p f5462h;

    /* renamed from: i */
    public final C1184p f5463i;

    /* renamed from: j */
    public final C1184p f5464j;

    /* renamed from: k */
    public final C1184p f5465k;

    /* renamed from: l */
    public final C1184p f5466l;

    /* renamed from: m */
    public final C1184p f5467m;

    /* renamed from: n */
    public ByteBuffer f5468n;

    /* renamed from: o */
    public long f5469o;

    /* renamed from: p */
    public long f5470p;

    /* renamed from: q */
    public long f5471q;

    /* renamed from: r */
    public long f5472r;

    /* renamed from: s */
    public long f5473s;

    /* renamed from: t */
    public C1380c f5474t;

    /* renamed from: u */
    public boolean f5475u;

    /* renamed from: v */
    public int f5476v;

    /* renamed from: w */
    public long f5477w;

    /* renamed from: x */
    public boolean f5478x;

    /* renamed from: y */
    public long f5479y;

    /* renamed from: z */
    public long f5480z;

    /* renamed from: b.s.b.a.s0.t.e$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/e$b.class */
    public final class C1379b implements AbstractC1374b {
        public C1379b() {
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: a */
        public void mo33538a(int i) throws ParserException {
            C1377e.this.m33563a(i);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: a */
        public void mo33537a(int i, double d) throws ParserException {
            C1377e.this.m33562a(i, d);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: a */
        public void mo33536a(int i, int i2, AbstractC1351h hVar) throws IOException, InterruptedException {
            C1377e.this.m33561a(i, i2, hVar);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: a */
        public void mo33535a(int i, long j) throws ParserException {
            C1377e.this.m33560a(i, j);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: a */
        public void mo33534a(int i, long j, long j2) throws ParserException {
            C1377e.this.m33559a(i, j, j2);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: a */
        public void mo33533a(int i, String str) throws ParserException {
            C1377e.this.m33558a(i, str);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: b */
        public int mo33532b(int i) {
            return C1377e.this.m33544b(i);
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.p089t.AbstractC1374b
        /* renamed from: c */
        public boolean mo33531c(int i) {
            return C1377e.this.m33542c(i);
        }
    }

    /* renamed from: b.s.b.a.s0.t.e$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/e$c.class */
    public static final class C1380c {

        /* renamed from: A */
        public int f5482A;

        /* renamed from: B */
        public float f5483B;

        /* renamed from: C */
        public float f5484C;

        /* renamed from: D */
        public float f5485D;

        /* renamed from: E */
        public float f5486E;

        /* renamed from: F */
        public float f5487F;

        /* renamed from: G */
        public float f5488G;

        /* renamed from: H */
        public float f5489H;

        /* renamed from: I */
        public float f5490I;

        /* renamed from: J */
        public float f5491J;

        /* renamed from: K */
        public float f5492K;

        /* renamed from: L */
        public int f5493L;

        /* renamed from: M */
        public int f5494M;

        /* renamed from: N */
        public int f5495N;

        /* renamed from: O */
        public long f5496O;

        /* renamed from: P */
        public long f5497P;

        /* renamed from: Q */
        public C1381d f5498Q;

        /* renamed from: R */
        public boolean f5499R;

        /* renamed from: S */
        public boolean f5500S;

        /* renamed from: T */
        public String f5501T;

        /* renamed from: U */
        public AbstractC1362q f5502U;

        /* renamed from: V */
        public int f5503V;

        /* renamed from: a */
        public String f5504a;

        /* renamed from: b */
        public String f5505b;

        /* renamed from: c */
        public int f5506c;

        /* renamed from: d */
        public int f5507d;

        /* renamed from: e */
        public int f5508e;

        /* renamed from: f */
        public boolean f5509f;

        /* renamed from: g */
        public byte[] f5510g;

        /* renamed from: h */
        public AbstractC1362q.C1363a f5511h;

        /* renamed from: i */
        public byte[] f5512i;

        /* renamed from: j */
        public DrmInitData f5513j;

        /* renamed from: k */
        public int f5514k;

        /* renamed from: l */
        public int f5515l;

        /* renamed from: m */
        public int f5516m;

        /* renamed from: n */
        public int f5517n;

        /* renamed from: o */
        public int f5518o;

        /* renamed from: p */
        public int f5519p;

        /* renamed from: q */
        public float f5520q;

        /* renamed from: r */
        public float f5521r;

        /* renamed from: s */
        public float f5522s;

        /* renamed from: t */
        public byte[] f5523t;

        /* renamed from: u */
        public int f5524u;

        /* renamed from: v */
        public boolean f5525v;

        /* renamed from: w */
        public int f5526w;

        /* renamed from: x */
        public int f5527x;

        /* renamed from: y */
        public int f5528y;

        /* renamed from: z */
        public int f5529z;

        public C1380c() {
            this.f5514k = -1;
            this.f5515l = -1;
            this.f5516m = -1;
            this.f5517n = -1;
            this.f5518o = 0;
            this.f5519p = -1;
            this.f5520q = 0.0f;
            this.f5521r = 0.0f;
            this.f5522s = 0.0f;
            this.f5523t = null;
            this.f5524u = -1;
            this.f5525v = false;
            this.f5526w = -1;
            this.f5527x = -1;
            this.f5528y = -1;
            this.f5529z = 1000;
            this.f5482A = 200;
            this.f5483B = -1.0f;
            this.f5484C = -1.0f;
            this.f5485D = -1.0f;
            this.f5486E = -1.0f;
            this.f5487F = -1.0f;
            this.f5488G = -1.0f;
            this.f5489H = -1.0f;
            this.f5490I = -1.0f;
            this.f5491J = -1.0f;
            this.f5492K = -1.0f;
            this.f5493L = 1;
            this.f5494M = -1;
            this.f5495N = 8000;
            this.f5496O = 0L;
            this.f5497P = 0L;
            this.f5500S = true;
            this.f5501T = "eng";
        }

        /* renamed from: a */
        public static Pair<String, List<byte[]>> m33529a(C1184p pVar) throws ParserException {
            try {
                pVar.m34356f(16);
                long k = pVar.m34351k();
                if (k == 1482049860) {
                    return new Pair<>("video/divx", null);
                }
                if (k == 859189832) {
                    return new Pair<>("video/3gpp", null);
                }
                if (k == 826496599) {
                    byte[] bArr = pVar.f4738a;
                    for (int c = pVar.m34363c() + 20; c < bArr.length - 4; c++) {
                        if (bArr[c] == 0 && bArr[c + 1] == 0 && bArr[c + 2] == 1 && bArr[c + 3] == 15) {
                            return new Pair<>("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr, c, bArr.length)));
                        }
                    }
                    throw new ParserException("Failed to find FourCC VC1 initialization data");
                }
                C1175j.m34414d("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                return new Pair<>("video/x-unknown", null);
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing FourCC private data");
            }
        }

        /* renamed from: a */
        public static List<byte[]> m33526a(byte[] bArr) throws ParserException {
            try {
                if (bArr[0] == 2) {
                    int i = 1;
                    int i2 = 0;
                    while (bArr[i] == -1) {
                        i2 += 255;
                        i++;
                    }
                    int i3 = i + 1;
                    int i4 = i2 + bArr[i];
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
                            throw new ParserException("Error parsing vorbis codec private");
                        }
                        throw new ParserException("Error parsing vorbis codec private");
                    }
                    throw new ParserException("Error parsing vorbis codec private");
                }
                throw new ParserException("Error parsing vorbis codec private");
            } catch (ArrayIndexOutOfBoundsException e) {
                throw new ParserException("Error parsing vorbis codec private");
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
            if (r5.m34348n() == p012b.p076s.p078b.p079a.p086s0.p089t.C1377e.f5429e0.getLeastSignificantBits()) goto L_0x0041;
         */
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static boolean m33524b(p012b.p076s.p078b.p079a.p080a1.C1184p r5) throws androidx.media2.exoplayer.external.ParserException {
            /*
                r0 = r5
                int r0 = r0.m34349m()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                r6 = r0
                r0 = 1
                r7 = r0
                r0 = r6
                r1 = 1
                if (r0 != r1) goto L_0x000e
                r0 = 1
                return r0
            L_0x000e:
                r0 = r6
                r1 = 65534(0xfffe, float:9.1833E-41)
                if (r0 != r1) goto L_0x0043
                r0 = r5
                r1 = 24
                r0.m34358e(r1)     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                r0 = r5
                long r0 = r0.m34348n()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                java.util.UUID r1 = p012b.p076s.p078b.p079a.p086s0.p089t.C1377e.m33540e()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                long r1 = r1.getMostSignificantBits()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x003f
                r0 = r5
                long r0 = r0.m34348n()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                r8 = r0
                java.util.UUID r0 = p012b.p076s.p078b.p079a.p086s0.p089t.C1377e.m33540e()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                long r0 = r0.getLeastSignificantBits()     // Catch: ArrayIndexOutOfBoundsException -> 0x0045
                r10 = r0
                r0 = r8
                r1 = r10
                int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
                if (r0 != 0) goto L_0x003f
                goto L_0x0041
            L_0x003f:
                r0 = 0
                r7 = r0
            L_0x0041:
                r0 = r7
                return r0
            L_0x0043:
                r0 = 0
                return r0
            L_0x0045:
                r5 = move-exception
                androidx.media2.exoplayer.external.ParserException r0 = new androidx.media2.exoplayer.external.ParserException
                r1 = r0
                java.lang.String r2 = "Error parsing MS/ACM codec private"
                r1.<init>(r2)
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p089t.C1377e.C1380c.m33524b(b.s.b.a.a1.p):boolean");
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* renamed from: a */
        public void m33528a(AbstractC1352i iVar, int i) throws ParserException {
            char c;
            int i2;
            String str;
            int i3;
            List list;
            Format format;
            int i4;
            int i5;
            String str2 = this.f5505b;
            switch (str2.hashCode()) {
                case -2095576542:
                    if (str2.equals("V_MPEG4/ISO/AP")) {
                        c = 6;
                        break;
                    }
                    c = 65535;
                    break;
                case -2095575984:
                    if (str2.equals("V_MPEG4/ISO/SP")) {
                        c = 4;
                        break;
                    }
                    c = 65535;
                    break;
                case -1985379776:
                    if (str2.equals("A_MS/ACM")) {
                        c = 23;
                        break;
                    }
                    c = 65535;
                    break;
                case -1784763192:
                    if (str2.equals("A_TRUEHD")) {
                        c = 18;
                        break;
                    }
                    c = 65535;
                    break;
                case -1730367663:
                    if (str2.equals("A_VORBIS")) {
                        c = 11;
                        break;
                    }
                    c = 65535;
                    break;
                case -1482641358:
                    if (str2.equals("A_MPEG/L2")) {
                        c = 14;
                        break;
                    }
                    c = 65535;
                    break;
                case -1482641357:
                    if (str2.equals("A_MPEG/L3")) {
                        c = 15;
                        break;
                    }
                    c = 65535;
                    break;
                case -1373388978:
                    if (str2.equals("V_MS/VFW/FOURCC")) {
                        c = '\t';
                        break;
                    }
                    c = 65535;
                    break;
                case -933872740:
                    if (str2.equals("S_DVBSUB")) {
                        c = 29;
                        break;
                    }
                    c = 65535;
                    break;
                case -538363189:
                    if (str2.equals("V_MPEG4/ISO/ASP")) {
                        c = 5;
                        break;
                    }
                    c = 65535;
                    break;
                case -538363109:
                    if (str2.equals("V_MPEG4/ISO/AVC")) {
                        c = 7;
                        break;
                    }
                    c = 65535;
                    break;
                case -425012669:
                    if (str2.equals("S_VOBSUB")) {
                        c = 27;
                        break;
                    }
                    c = 65535;
                    break;
                case -356037306:
                    if (str2.equals("A_DTS/LOSSLESS")) {
                        c = 21;
                        break;
                    }
                    c = 65535;
                    break;
                case 62923557:
                    if (str2.equals("A_AAC")) {
                        c = '\r';
                        break;
                    }
                    c = 65535;
                    break;
                case 62923603:
                    if (str2.equals("A_AC3")) {
                        c = 16;
                        break;
                    }
                    c = 65535;
                    break;
                case 62927045:
                    if (str2.equals("A_DTS")) {
                        c = 19;
                        break;
                    }
                    c = 65535;
                    break;
                case 82318131:
                    if (str2.equals("V_AV1")) {
                        c = 2;
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
                        c = 28;
                        break;
                    }
                    c = 65535;
                    break;
                case 444813526:
                    if (str2.equals("V_THEORA")) {
                        c = '\n';
                        break;
                    }
                    c = 65535;
                    break;
                case 542569478:
                    if (str2.equals("A_DTS/EXPRESS")) {
                        c = 20;
                        break;
                    }
                    c = 65535;
                    break;
                case 725957860:
                    if (str2.equals("A_PCM/INT/LIT")) {
                        c = 24;
                        break;
                    }
                    c = 65535;
                    break;
                case 738597099:
                    if (str2.equals("S_TEXT/ASS")) {
                        c = 26;
                        break;
                    }
                    c = 65535;
                    break;
                case 855502857:
                    if (str2.equals("V_MPEGH/ISO/HEVC")) {
                        c = '\b';
                        break;
                    }
                    c = 65535;
                    break;
                case 1422270023:
                    if (str2.equals("S_TEXT/UTF8")) {
                        c = 25;
                        break;
                    }
                    c = 65535;
                    break;
                case 1809237540:
                    if (str2.equals("V_MPEG2")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                case 1950749482:
                    if (str2.equals("A_EAC3")) {
                        c = 17;
                        break;
                    }
                    c = 65535;
                    break;
                case 1950789798:
                    if (str2.equals("A_FLAC")) {
                        c = 22;
                        break;
                    }
                    c = 65535;
                    break;
                case 1951062397:
                    if (str2.equals("A_OPUS")) {
                        c = '\f';
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
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 1:
                    str = "video/x-vnd.on2.vp9";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 2:
                    str = "video/av01";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 3:
                    str = "video/mpeg2";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 4:
                case 5:
                case 6:
                    byte[] bArr = this.f5512i;
                    list = bArr == null ? null : Collections.singletonList(bArr);
                    str = "video/mp4v-es";
                    i3 = -1;
                    i2 = -1;
                    break;
                case 7:
                    C1199a b = C1199a.m34269b(new C1184p(this.f5512i));
                    list = b.f4795a;
                    this.f5503V = b.f4796b;
                    str = "video/avc";
                    i3 = -1;
                    i2 = -1;
                    break;
                case '\b':
                    C1201c a = C1201c.m34267a(new C1184p(this.f5512i));
                    list = a.f4801a;
                    this.f5503V = a.f4802b;
                    str = "video/hevc";
                    i3 = -1;
                    i2 = -1;
                    break;
                case '\t':
                    Pair<String, List<byte[]>> a2 = m33529a(new C1184p(this.f5512i));
                    str = (String) a2.first;
                    list = (List) a2.second;
                    i3 = -1;
                    i2 = -1;
                    break;
                case '\n':
                    str = "video/x-unknown";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 11:
                    list = m33526a(this.f5512i);
                    str = "audio/vorbis";
                    i3 = -1;
                    i2 = 8192;
                    break;
                case '\f':
                    list = new ArrayList(3);
                    list.add(this.f5512i);
                    list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f5496O).array());
                    list.add(ByteBuffer.allocate(8).order(ByteOrder.nativeOrder()).putLong(this.f5497P).array());
                    str = "audio/opus";
                    i3 = -1;
                    i2 = 5760;
                    break;
                case '\r':
                    list = Collections.singletonList(this.f5512i);
                    str = "audio/mp4a-latm";
                    i3 = -1;
                    i2 = -1;
                    break;
                case 14:
                    str = "audio/mpeg-L2";
                    list = null;
                    i3 = -1;
                    i2 = 4096;
                    break;
                case 15:
                    str = "audio/mpeg";
                    list = null;
                    i3 = -1;
                    i2 = 4096;
                    break;
                case 16:
                    str = "audio/ac3";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 17:
                    str = "audio/eac3";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 18:
                    this.f5498Q = new C1381d();
                    str = "audio/true-hd";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 19:
                case 20:
                    str = "audio/vnd.dts";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 21:
                    str = "audio/vnd.dts.hd";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 22:
                    list = Collections.singletonList(this.f5512i);
                    str = "audio/flac";
                    i3 = -1;
                    i2 = -1;
                    break;
                case 23:
                    if (m33524b(new C1184p(this.f5512i))) {
                        int c2 = C1167d0.m34446c(this.f5494M);
                        i3 = c2;
                        if (c2 == 0) {
                            int i6 = this.f5494M;
                            StringBuilder sb = new StringBuilder("audio/x-unknown".length() + 60);
                            sb.append("Unsupported PCM bit depth: ");
                            sb.append(i6);
                            sb.append(". Setting mimeType to ");
                            sb.append("audio/x-unknown");
                            C1175j.m34414d("MatroskaExtractor", sb.toString());
                            str = "audio/x-unknown";
                        }
                        str = "audio/raw";
                        list = null;
                        i2 = -1;
                        break;
                    } else {
                        C1175j.m34414d("MatroskaExtractor", "audio/x-unknown".length() != 0 ? "Non-PCM MS/ACM is unsupported. Setting mimeType to ".concat("audio/x-unknown") : new String("Non-PCM MS/ACM is unsupported. Setting mimeType to "));
                        str = "audio/x-unknown";
                    }
                    list = null;
                    i3 = -1;
                    i2 = -1;
                case 24:
                    int c3 = C1167d0.m34446c(this.f5494M);
                    i3 = c3;
                    if (c3 == 0) {
                        int i7 = this.f5494M;
                        StringBuilder sb2 = new StringBuilder("audio/x-unknown".length() + 60);
                        sb2.append("Unsupported PCM bit depth: ");
                        sb2.append(i7);
                        sb2.append(". Setting mimeType to ");
                        sb2.append("audio/x-unknown");
                        C1175j.m34414d("MatroskaExtractor", sb2.toString());
                        str = "audio/x-unknown";
                        list = null;
                        i3 = -1;
                        i2 = -1;
                        break;
                    }
                    str = "audio/raw";
                    list = null;
                    i2 = -1;
                case 25:
                    str = "application/x-subrip";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 26:
                    str = "text/x-ssa";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 27:
                    list = Collections.singletonList(this.f5512i);
                    str = "application/vobsub";
                    i3 = -1;
                    i2 = -1;
                    break;
                case 28:
                    str = "application/pgs";
                    list = null;
                    i3 = -1;
                    i2 = -1;
                    break;
                case 29:
                    byte[] bArr2 = this.f5512i;
                    list = Collections.singletonList(new byte[]{bArr2[0], bArr2[1], bArr2[2], bArr2[3]});
                    str = "application/dvbsubs";
                    i3 = -1;
                    i2 = -1;
                    break;
                default:
                    throw new ParserException("Unrecognized codec identifier.");
            }
            int i8 = (this.f5500S ? 1 : 0) | 0 | (this.f5499R ? 2 : 0);
            if (C1178m.m34400j(str)) {
                format = Format.m38181a(Integer.toString(i), str, (String) null, -1, i2, this.f5493L, this.f5495N, i3, list, this.f5513j, i8, this.f5501T);
                i4 = 1;
            } else if (C1178m.m34398l(str)) {
                if (this.f5518o == 0) {
                    int i9 = this.f5516m;
                    int i10 = i9;
                    if (i9 == -1) {
                        i10 = this.f5514k;
                    }
                    this.f5516m = i10;
                    int i11 = this.f5517n;
                    int i12 = i11;
                    if (i11 == -1) {
                        i12 = this.f5515l;
                    }
                    this.f5517n = i12;
                }
                int i13 = this.f5516m;
                float f = (i13 == -1 || (i5 = this.f5517n) == -1) ? -1.0f : (this.f5515l * i13) / (this.f5514k * i5);
                ColorInfo colorInfo = this.f5525v ? new ColorInfo(this.f5526w, this.f5528y, this.f5527x, m33530a()) : null;
                int i14 = "htc_video_rotA-000".equals(this.f5504a) ? 0 : "htc_video_rotA-090".equals(this.f5504a) ? 90 : "htc_video_rotA-180".equals(this.f5504a) ? 180 : "htc_video_rotA-270".equals(this.f5504a) ? 270 : -1;
                if (this.f5519p == 0 && Float.compare(this.f5520q, 0.0f) == 0 && Float.compare(this.f5521r, 0.0f) == 0) {
                    if (Float.compare(this.f5522s, 0.0f) == 0) {
                        i14 = 0;
                    } else if (Float.compare(this.f5521r, 90.0f) == 0) {
                        i14 = 90;
                    } else if (Float.compare(this.f5521r, -180.0f) == 0 || Float.compare(this.f5521r, 180.0f) == 0) {
                        i14 = 180;
                    } else if (Float.compare(this.f5521r, -90.0f) == 0) {
                        i14 = 270;
                    }
                }
                format = Format.m38183a(Integer.toString(i), str, (String) null, -1, i2, this.f5514k, this.f5515l, -1.0f, list, i14, f, this.f5523t, this.f5524u, colorInfo, this.f5513j);
                i4 = 2;
            } else {
                if ("application/x-subrip".equals(str)) {
                    format = Format.m38186a(Integer.toString(i), str, i8, this.f5501T, this.f5513j);
                } else if ("text/x-ssa".equals(str)) {
                    ArrayList arrayList = new ArrayList(2);
                    arrayList.add(C1377e.f5426b0);
                    arrayList.add(this.f5512i);
                    format = Format.m38179a(Integer.toString(i), str, (String) null, -1, i8, this.f5501T, -1, this.f5513j, Long.MAX_VALUE, arrayList);
                } else if ("application/vobsub".equals(str) || "application/pgs".equals(str) || "application/dvbsubs".equals(str)) {
                    format = Format.m38177a(Integer.toString(i), str, (String) null, -1, i8, list, this.f5501T, this.f5513j);
                } else {
                    throw new ParserException("Unexpected MIME type.");
                }
                i4 = 3;
            }
            AbstractC1362q a3 = iVar.mo32666a(this.f5506c, i4);
            this.f5502U = a3;
            a3.mo32623a(format);
        }

        /* renamed from: a */
        public final byte[] m33530a() {
            if (this.f5483B == -1.0f || this.f5484C == -1.0f || this.f5485D == -1.0f || this.f5486E == -1.0f || this.f5487F == -1.0f || this.f5488G == -1.0f || this.f5489H == -1.0f || this.f5490I == -1.0f || this.f5491J == -1.0f || this.f5492K == -1.0f) {
                return null;
            }
            byte[] bArr = new byte[25];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.put((byte) 0);
            wrap.putShort((short) ((this.f5483B * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5484C * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5485D * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5486E * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5487F * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5488G * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5489H * 50000.0f) + 0.5f));
            wrap.putShort((short) ((this.f5490I * 50000.0f) + 0.5f));
            wrap.putShort((short) (this.f5491J + 0.5f));
            wrap.putShort((short) (this.f5492K + 0.5f));
            wrap.putShort((short) this.f5529z);
            wrap.putShort((short) this.f5482A);
            return bArr;
        }

        /* renamed from: b */
        public void m33525b() {
            C1381d dVar = this.f5498Q;
            if (dVar != null) {
                dVar.m33520a(this);
            }
        }

        /* renamed from: c */
        public void m33523c() {
            C1381d dVar = this.f5498Q;
            if (dVar != null) {
                dVar.m33522a();
            }
        }
    }

    /* renamed from: b.s.b.a.s0.t.e$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/t/e$d.class */
    public static final class C1381d {

        /* renamed from: a */
        public final byte[] f5530a = new byte[10];

        /* renamed from: b */
        public boolean f5531b;

        /* renamed from: c */
        public int f5532c;

        /* renamed from: d */
        public int f5533d;

        /* renamed from: e */
        public long f5534e;

        /* renamed from: f */
        public int f5535f;

        /* renamed from: a */
        public void m33522a() {
            this.f5531b = false;
        }

        /* renamed from: a */
        public void m33521a(AbstractC1351h hVar, int i, int i2) throws IOException, InterruptedException {
            if (!this.f5531b) {
                hVar.mo33619a(this.f5530a, 0, 10);
                hVar.mo33614c();
                if (C1264a.m33943b(this.f5530a) != 0) {
                    this.f5531b = true;
                    this.f5532c = 0;
                } else {
                    return;
                }
            }
            if (this.f5532c == 0) {
                this.f5535f = i;
                this.f5533d = 0;
            }
            this.f5533d += i2;
        }

        /* renamed from: a */
        public void m33520a(C1380c cVar) {
            if (this.f5531b && this.f5532c > 0) {
                cVar.f5502U.mo32832a(this.f5534e, this.f5535f, this.f5533d, 0, cVar.f5511h);
                this.f5532c = 0;
            }
        }

        /* renamed from: a */
        public void m33519a(C1380c cVar, long j) {
            if (this.f5531b) {
                int i = this.f5532c;
                this.f5532c = i + 1;
                if (i == 0) {
                    this.f5534e = j;
                }
                if (this.f5532c >= 16) {
                    cVar.f5502U.mo32832a(this.f5534e, this.f5535f, this.f5533d, 0, cVar.f5511h);
                    this.f5532c = 0;
                }
            }
        }
    }

    static {
        AbstractC1353j jVar = C1376d.f5423a;
    }

    public C1377e() {
        this(0);
    }

    public C1377e(int i) {
        this(new C1371a(), i);
    }

    public C1377e(AbstractC1375c cVar, int i) {
        this.f5470p = -1L;
        this.f5471q = -9223372036854775807L;
        this.f5472r = -9223372036854775807L;
        this.f5473s = -9223372036854775807L;
        this.f5479y = -1L;
        this.f5480z = -1L;
        this.f5430A = -9223372036854775807L;
        this.f5455a = cVar;
        cVar.mo33564a(new C1379b());
        this.f5458d = (i & 1) != 0 ? false : true;
        this.f5456b = new C1383g();
        this.f5457c = new SparseArray<>();
        this.f5461g = new C1184p(4);
        this.f5462h = new C1184p(ByteBuffer.allocate(4).putInt(-1).array());
        this.f5463i = new C1184p(4);
        this.f5459e = new C1184p(C1180n.f4714a);
        this.f5460f = new C1184p(4);
        this.f5464j = new C1184p();
        this.f5465k = new C1184p();
        this.f5466l = new C1184p(8);
        this.f5467m = new C1184p();
    }

    /* renamed from: a */
    public static void m33547a(byte[] bArr, long j, String str, int i, long j2, byte[] bArr2) {
        byte[] bArr3;
        if (j == -9223372036854775807L) {
            bArr3 = bArr2;
        } else {
            int i2 = (int) (j / 3600000000L);
            long j3 = j - ((i2 * 3600) * 1000000);
            int i3 = (int) (j3 / 60000000);
            long j4 = j3 - ((i3 * 60) * 1000000);
            int i4 = (int) (j4 / 1000000);
            bArr3 = C1167d0.m34441d(String.format(Locale.US, str, Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf((int) ((j4 - (i4 * 1000000)) / j2))));
        }
        System.arraycopy(bArr3, 0, bArr, i, bArr2.length);
    }

    /* renamed from: a */
    public static boolean m33548a(String str) {
        return "V_VP8".equals(str) || "V_VP9".equals(str) || "V_AV1".equals(str) || "V_MPEG2".equals(str) || "V_MPEG4/ISO/SP".equals(str) || "V_MPEG4/ISO/ASP".equals(str) || "V_MPEG4/ISO/AP".equals(str) || "V_MPEG4/ISO/AVC".equals(str) || "V_MPEGH/ISO/HEVC".equals(str) || "V_MS/VFW/FOURCC".equals(str) || "V_THEORA".equals(str) || "A_OPUS".equals(str) || "A_VORBIS".equals(str) || "A_AAC".equals(str) || "A_MPEG/L2".equals(str) || "A_MPEG/L3".equals(str) || "A_AC3".equals(str) || "A_EAC3".equals(str) || "A_TRUEHD".equals(str) || "A_DTS".equals(str) || "A_DTS/EXPRESS".equals(str) || "A_DTS/LOSSLESS".equals(str) || "A_FLAC".equals(str) || "A_MS/ACM".equals(str) || "A_PCM/INT/LIT".equals(str) || "S_TEXT/UTF8".equals(str) || "S_TEXT/ASS".equals(str) || "S_VOBSUB".equals(str) || "S_HDMV/PGS".equals(str) || "S_DVBSUB".equals(str);
    }

    /* renamed from: a */
    public static int[] m33546a(int[] iArr, int i) {
        return iArr == null ? new int[i] : iArr.length >= i ? iArr : new int[Math.max(iArr.length * 2, i)];
    }

    /* renamed from: f */
    public static final /* synthetic */ AbstractC1350g[] m33539f() {
        return new AbstractC1350g[]{new C1377e()};
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public final int mo32615a(AbstractC1351h hVar, C1357n nVar) throws IOException, InterruptedException {
        this.f5452W = false;
        boolean z = true;
        while (z && !this.f5452W) {
            boolean a = this.f5455a.mo33565a(hVar);
            z = a;
            if (a) {
                z = a;
                if (m33551a(nVar, hVar.getPosition())) {
                    return 1;
                }
            }
        }
        if (z) {
            return 0;
        }
        for (int i = 0; i < this.f5457c.size(); i++) {
            this.f5457c.valueAt(i).m33525b();
        }
        return -1;
    }

    /* renamed from: a */
    public final int m33555a(AbstractC1351h hVar, AbstractC1362q qVar, int i) throws IOException, InterruptedException {
        int i2;
        int a = this.f5464j.m34372a();
        if (a > 0) {
            i2 = Math.min(i, a);
            qVar.mo32827a(this.f5464j, i2);
        } else {
            i2 = qVar.mo32825a(hVar, i, false);
        }
        this.f5443N += i2;
        this.f5451V += i2;
        return i2;
    }

    /* renamed from: a */
    public final long m33557a(long j) throws ParserException {
        long j2 = this.f5471q;
        if (j2 != -9223372036854775807L) {
            return C1167d0.m34445c(j, j2, 1000L);
        }
        throw new ParserException("Can't scale timecode prior to timecodeScale being set.");
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public final void mo32619a() {
    }

    /* renamed from: a */
    public void m33563a(int i) throws ParserException {
        if (i != 160) {
            if (i == 174) {
                if (m33548a(this.f5474t.f5505b)) {
                    C1380c cVar = this.f5474t;
                    cVar.m33528a(this.f5454Y, cVar.f5506c);
                    SparseArray<C1380c> sparseArray = this.f5457c;
                    C1380c cVar2 = this.f5474t;
                    sparseArray.put(cVar2.f5506c, cVar2);
                }
                this.f5474t = null;
            } else if (i == 19899) {
                int i2 = this.f5476v;
                if (i2 != -1) {
                    long j = this.f5477w;
                    if (j != -1) {
                        if (i2 == 475249515) {
                            this.f5479y = j;
                            return;
                        }
                        return;
                    }
                }
                throw new ParserException("Mandatory element SeekID or SeekPosition not found");
            } else if (i == 25152) {
                C1380c cVar3 = this.f5474t;
                if (!cVar3.f5509f) {
                    return;
                }
                if (cVar3.f5511h != null) {
                    cVar3.f5513j = new DrmInitData(new DrmInitData.SchemeData(C1220c.f4890a, "video/webm", this.f5474t.f5511h.f5364b));
                    return;
                }
                throw new ParserException("Encrypted Track found but ContentEncKeyID was not found");
            } else if (i == 28032) {
                C1380c cVar4 = this.f5474t;
                if (cVar4.f5509f && cVar4.f5510g != null) {
                    throw new ParserException("Combining encryption and compression is not supported");
                }
            } else if (i == 357149030) {
                if (this.f5471q == -9223372036854775807L) {
                    this.f5471q = 1000000L;
                }
                long j2 = this.f5472r;
                if (j2 != -9223372036854775807L) {
                    this.f5473s = m33557a(j2);
                }
            } else if (i != 374648427) {
                if (i == 475249515 && !this.f5475u) {
                    this.f5454Y.mo32656a(m33545b());
                    this.f5475u = true;
                }
            } else if (this.f5457c.size() != 0) {
                this.f5454Y.mo32639e();
            } else {
                throw new ParserException("No valid tracks were found");
            }
        } else if (this.f5434E == 2) {
            if (!this.f5453X) {
                this.f5442M |= 1;
            }
            m33550a(this.f5457c.get(this.f5440K), this.f5435F);
            this.f5434E = 0;
        }
    }

    /* renamed from: a */
    public void m33562a(int i, double d) throws ParserException {
        if (i == 181) {
            this.f5474t.f5495N = (int) d;
        } else if (i != 17545) {
            switch (i) {
                case 21969:
                    this.f5474t.f5483B = (float) d;
                    return;
                case 21970:
                    this.f5474t.f5484C = (float) d;
                    return;
                case 21971:
                    this.f5474t.f5485D = (float) d;
                    return;
                case 21972:
                    this.f5474t.f5486E = (float) d;
                    return;
                case 21973:
                    this.f5474t.f5487F = (float) d;
                    return;
                case 21974:
                    this.f5474t.f5488G = (float) d;
                    return;
                case 21975:
                    this.f5474t.f5489H = (float) d;
                    return;
                case 21976:
                    this.f5474t.f5490I = (float) d;
                    return;
                case 21977:
                    this.f5474t.f5491J = (float) d;
                    return;
                case 21978:
                    this.f5474t.f5492K = (float) d;
                    return;
                default:
                    switch (i) {
                        case 30323:
                            this.f5474t.f5520q = (float) d;
                            return;
                        case 30324:
                            this.f5474t.f5521r = (float) d;
                            return;
                        case 30325:
                            this.f5474t.f5522s = (float) d;
                            return;
                        default:
                            return;
                    }
            }
        } else {
            this.f5472r = (long) d;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:79:0x03df, code lost:
        throw new androidx.media2.exoplayer.external.ParserException("EBML lacing sample size out of range.");
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
    public void m33561a(int r9, int r10, p012b.p076s.p078b.p079a.p086s0.AbstractC1351h r11) throws java.io.IOException, java.lang.InterruptedException {
        /*
            Method dump skipped, instructions count: 1319
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p012b.p076s.p078b.p079a.p086s0.p089t.C1377e.m33561a(int, int, b.s.b.a.s0.h):void");
    }

    /* renamed from: a */
    public void m33560a(int i, long j) throws ParserException {
        if (i != 20529) {
            if (i != 20530) {
                boolean z = false;
                boolean z2 = false;
                switch (i) {
                    case 131:
                        this.f5474t.f5507d = (int) j;
                        return;
                    case 136:
                        C1380c cVar = this.f5474t;
                        if (j == 1) {
                            z = true;
                        }
                        cVar.f5500S = z;
                        return;
                    case 155:
                        this.f5436G = m33557a(j);
                        return;
                    case 159:
                        this.f5474t.f5493L = (int) j;
                        return;
                    case 176:
                        this.f5474t.f5514k = (int) j;
                        return;
                    case 179:
                        this.f5431B.m34411a(m33557a(j));
                        return;
                    case 186:
                        this.f5474t.f5515l = (int) j;
                        return;
                    case 215:
                        this.f5474t.f5506c = (int) j;
                        return;
                    case 231:
                        this.f5430A = m33557a(j);
                        return;
                    case 241:
                        if (!this.f5433D) {
                            this.f5432C.m34411a(j);
                            this.f5433D = true;
                            return;
                        }
                        return;
                    case 251:
                        this.f5453X = true;
                        return;
                    case 16980:
                        if (j != 3) {
                            StringBuilder sb = new StringBuilder(50);
                            sb.append("ContentCompAlgo ");
                            sb.append(j);
                            sb.append(" not supported");
                            throw new ParserException(sb.toString());
                        }
                        return;
                    case 17029:
                        if (j < 1 || j > 2) {
                            StringBuilder sb2 = new StringBuilder(53);
                            sb2.append("DocTypeReadVersion ");
                            sb2.append(j);
                            sb2.append(" not supported");
                            throw new ParserException(sb2.toString());
                        }
                        return;
                    case 17143:
                        if (j != 1) {
                            StringBuilder sb3 = new StringBuilder(50);
                            sb3.append("EBMLReadVersion ");
                            sb3.append(j);
                            sb3.append(" not supported");
                            throw new ParserException(sb3.toString());
                        }
                        return;
                    case 18401:
                        if (j != 5) {
                            StringBuilder sb4 = new StringBuilder(49);
                            sb4.append("ContentEncAlgo ");
                            sb4.append(j);
                            sb4.append(" not supported");
                            throw new ParserException(sb4.toString());
                        }
                        return;
                    case 18408:
                        if (j != 1) {
                            StringBuilder sb5 = new StringBuilder(56);
                            sb5.append("AESSettingsCipherMode ");
                            sb5.append(j);
                            sb5.append(" not supported");
                            throw new ParserException(sb5.toString());
                        }
                        return;
                    case 21420:
                        this.f5477w = j + this.f5470p;
                        return;
                    case 21432:
                        int i2 = (int) j;
                        if (i2 == 0) {
                            this.f5474t.f5524u = 0;
                            return;
                        } else if (i2 == 1) {
                            this.f5474t.f5524u = 2;
                            return;
                        } else if (i2 == 3) {
                            this.f5474t.f5524u = 1;
                            return;
                        } else if (i2 == 15) {
                            this.f5474t.f5524u = 3;
                            return;
                        } else {
                            return;
                        }
                    case 21680:
                        this.f5474t.f5516m = (int) j;
                        return;
                    case 21682:
                        this.f5474t.f5518o = (int) j;
                        return;
                    case 21690:
                        this.f5474t.f5517n = (int) j;
                        return;
                    case 21930:
                        C1380c cVar2 = this.f5474t;
                        if (j == 1) {
                            z2 = true;
                        }
                        cVar2.f5499R = z2;
                        return;
                    case 22186:
                        this.f5474t.f5496O = j;
                        return;
                    case 22203:
                        this.f5474t.f5497P = j;
                        return;
                    case 25188:
                        this.f5474t.f5494M = (int) j;
                        return;
                    case 30321:
                        int i3 = (int) j;
                        if (i3 == 0) {
                            this.f5474t.f5519p = 0;
                            return;
                        } else if (i3 == 1) {
                            this.f5474t.f5519p = 1;
                            return;
                        } else if (i3 == 2) {
                            this.f5474t.f5519p = 2;
                            return;
                        } else if (i3 == 3) {
                            this.f5474t.f5519p = 3;
                            return;
                        } else {
                            return;
                        }
                    case 2352003:
                        this.f5474t.f5508e = (int) j;
                        return;
                    case 2807729:
                        this.f5471q = j;
                        return;
                    default:
                        switch (i) {
                            case 21945:
                                int i4 = (int) j;
                                if (i4 == 1) {
                                    this.f5474t.f5528y = 2;
                                    return;
                                } else if (i4 == 2) {
                                    this.f5474t.f5528y = 1;
                                    return;
                                } else {
                                    return;
                                }
                            case 21946:
                                int i5 = (int) j;
                                if (i5 != 1) {
                                    if (i5 == 16) {
                                        this.f5474t.f5527x = 6;
                                        return;
                                    } else if (i5 == 18) {
                                        this.f5474t.f5527x = 7;
                                        return;
                                    } else if (!(i5 == 6 || i5 == 7)) {
                                        return;
                                    }
                                }
                                this.f5474t.f5527x = 3;
                                return;
                            case 21947:
                                C1380c cVar3 = this.f5474t;
                                cVar3.f5525v = true;
                                int i6 = (int) j;
                                if (i6 == 1) {
                                    cVar3.f5526w = 1;
                                    return;
                                } else if (i6 == 9) {
                                    cVar3.f5526w = 6;
                                    return;
                                } else if (i6 == 4 || i6 == 5 || i6 == 6 || i6 == 7) {
                                    this.f5474t.f5526w = 2;
                                    return;
                                } else {
                                    return;
                                }
                            case 21948:
                                this.f5474t.f5529z = (int) j;
                                return;
                            case 21949:
                                this.f5474t.f5482A = (int) j;
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
                throw new ParserException(sb6.toString());
            }
        } else if (j != 0) {
            StringBuilder sb7 = new StringBuilder(55);
            sb7.append("ContentEncodingOrder ");
            sb7.append(j);
            sb7.append(" not supported");
            throw new ParserException(sb7.toString());
        }
    }

    /* renamed from: a */
    public void m33559a(int i, long j, long j2) throws ParserException {
        if (i == 160) {
            this.f5453X = false;
        } else if (i == 174) {
            this.f5474t = new C1380c();
        } else if (i == 187) {
            this.f5433D = false;
        } else if (i == 19899) {
            this.f5476v = -1;
            this.f5477w = -1L;
        } else if (i == 20533) {
            this.f5474t.f5509f = true;
        } else if (i == 21968) {
            this.f5474t.f5525v = true;
        } else if (i == 408125543) {
            long j3 = this.f5470p;
            if (j3 == -1 || j3 == j) {
                this.f5470p = j;
                this.f5469o = j2;
                return;
            }
            throw new ParserException("Multiple Segment elements not supported");
        } else if (i == 475249515) {
            this.f5431B = new C1176k();
            this.f5432C = new C1176k();
        } else if (i != 524531317 || this.f5475u) {
        } else {
            if (!this.f5458d || this.f5479y == -1) {
                this.f5454Y.mo32656a(new AbstractC1358o.C1360b(this.f5473s));
                this.f5475u = true;
                return;
            }
            this.f5478x = true;
        }
    }

    /* renamed from: a */
    public void m33558a(int i, String str) throws ParserException {
        if (i == 134) {
            this.f5474t.f5505b = str;
        } else if (i != 17026) {
            if (i == 21358) {
                this.f5474t.f5504a = str;
            } else if (i == 2274716) {
                this.f5474t.f5501T = str;
            }
        } else if (!"webm".equals(str) && !"matroska".equals(str)) {
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 22);
            sb.append("DocType ");
            sb.append(str);
            sb.append(" not supported");
            throw new ParserException(sb.toString());
        }
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public void mo32617a(long j, long j2) {
        this.f5430A = -9223372036854775807L;
        this.f5434E = 0;
        this.f5455a.mo33566a();
        this.f5456b.m33512b();
        m33543c();
        for (int i = 0; i < this.f5457c.size(); i++) {
            this.f5457c.valueAt(i).m33523c();
        }
    }

    /* renamed from: a */
    public final void m33556a(AbstractC1351h hVar, int i) throws IOException, InterruptedException {
        if (this.f5461g.m34361d() < i) {
            if (this.f5461g.m34365b() < i) {
                C1184p pVar = this.f5461g;
                byte[] bArr = pVar.f4738a;
                pVar.m34367a(Arrays.copyOf(bArr, Math.max(bArr.length * 2, i)), this.f5461g.m34361d());
            }
            C1184p pVar2 = this.f5461g;
            hVar.readFully(pVar2.f4738a, pVar2.m34361d(), i - this.f5461g.m34361d());
            this.f5461g.m34360d(i);
        }
    }

    /* renamed from: a */
    public final void m33554a(AbstractC1351h hVar, C1380c cVar, int i) throws IOException, InterruptedException {
        int i2;
        byte[] bArr;
        if ("S_TEXT/UTF8".equals(cVar.f5505b)) {
            m33553a(hVar, f5424Z, i);
        } else if ("S_TEXT/ASS".equals(cVar.f5505b)) {
            m33553a(hVar, f5427c0, i);
        } else {
            AbstractC1362q qVar = cVar.f5502U;
            boolean z = true;
            if (!this.f5444O) {
                if (cVar.f5509f) {
                    this.f5442M &= -1073741825;
                    int i3 = 128;
                    if (!this.f5445P) {
                        hVar.readFully(this.f5461g.f4738a, 0, 1);
                        this.f5443N++;
                        if ((this.f5461g.f4738a[0] & 128) != 128) {
                            this.f5448S = bArr[0];
                            this.f5445P = true;
                        } else {
                            throw new ParserException("Extension bit is set in signal byte");
                        }
                    }
                    if ((this.f5448S & 1) == 1) {
                        boolean z2 = (this.f5448S & 2) == 2;
                        this.f5442M |= 1073741824;
                        if (!this.f5446Q) {
                            hVar.readFully(this.f5466l.f4738a, 0, 8);
                            this.f5443N += 8;
                            this.f5446Q = true;
                            byte[] bArr2 = this.f5461g.f4738a;
                            if (!z2) {
                                i3 = 0;
                            }
                            bArr2[0] = (byte) (i3 | 8);
                            this.f5461g.m34358e(0);
                            qVar.mo32827a(this.f5461g, 1);
                            this.f5451V++;
                            this.f5466l.m34358e(0);
                            qVar.mo32827a(this.f5466l, 8);
                            this.f5451V += 8;
                        }
                        if (z2) {
                            if (!this.f5447R) {
                                hVar.readFully(this.f5461g.f4738a, 0, 1);
                                this.f5443N++;
                                this.f5461g.m34358e(0);
                                this.f5449T = this.f5461g.m34344r();
                                this.f5447R = true;
                            }
                            int i4 = this.f5449T * 4;
                            this.f5461g.m34362c(i4);
                            hVar.readFully(this.f5461g.f4738a, 0, i4);
                            this.f5443N += i4;
                            short s = (short) ((this.f5449T / 2) + 1);
                            int i5 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.f5468n;
                            if (byteBuffer == null || byteBuffer.capacity() < i5) {
                                this.f5468n = ByteBuffer.allocate(i5);
                            }
                            this.f5468n.position(0);
                            this.f5468n.putShort(s);
                            int i6 = 0;
                            int i7 = 0;
                            while (true) {
                                i2 = this.f5449T;
                                if (i6 >= i2) {
                                    break;
                                }
                                int v = this.f5461g.m34340v();
                                if (i6 % 2 == 0) {
                                    this.f5468n.putShort((short) (v - i7));
                                } else {
                                    this.f5468n.putInt(v - i7);
                                }
                                i6++;
                                i7 = v;
                            }
                            int i8 = (i - this.f5443N) - i7;
                            if (i2 % 2 == 1) {
                                this.f5468n.putInt(i8);
                            } else {
                                this.f5468n.putShort((short) i8);
                                this.f5468n.putInt(0);
                            }
                            this.f5467m.m34367a(this.f5468n.array(), i5);
                            qVar.mo32827a(this.f5467m, i5);
                            this.f5451V += i5;
                        }
                    }
                } else {
                    byte[] bArr3 = cVar.f5510g;
                    if (bArr3 != null) {
                        this.f5464j.m34367a(bArr3, bArr3.length);
                    }
                }
                this.f5444O = true;
            }
            int d = i + this.f5464j.m34361d();
            if (!"V_MPEG4/ISO/AVC".equals(cVar.f5505b) && !"V_MPEGH/ISO/HEVC".equals(cVar.f5505b)) {
                if (cVar.f5498Q != null) {
                    if (this.f5464j.m34361d() != 0) {
                        z = false;
                    }
                    C1160a.m34518b(z);
                    cVar.f5498Q.m33521a(hVar, this.f5442M, d);
                }
                while (true) {
                    int i9 = this.f5443N;
                    if (i9 >= d) {
                        break;
                    }
                    m33555a(hVar, qVar, d - i9);
                }
            } else {
                byte[] bArr4 = this.f5460f.f4738a;
                bArr4[0] = (byte) 0;
                bArr4[1] = (byte) 0;
                bArr4[2] = (byte) 0;
                int i10 = cVar.f5503V;
                while (this.f5443N < d) {
                    int i11 = this.f5450U;
                    if (i11 == 0) {
                        m33552a(hVar, bArr4, 4 - i10, i10);
                        this.f5460f.m34358e(0);
                        this.f5450U = this.f5460f.m34340v();
                        this.f5459e.m34358e(0);
                        qVar.mo32827a(this.f5459e, 4);
                        this.f5451V += 4;
                    } else {
                        this.f5450U = i11 - m33555a(hVar, qVar, i11);
                    }
                }
            }
            if ("A_VORBIS".equals(cVar.f5505b)) {
                this.f5462h.m34358e(0);
                qVar.mo32827a(this.f5462h, 4);
                this.f5451V += 4;
            }
        }
    }

    /* renamed from: a */
    public final void m33553a(AbstractC1351h hVar, byte[] bArr, int i) throws IOException, InterruptedException {
        int length = bArr.length + i;
        if (this.f5465k.m34365b() < length) {
            this.f5465k.f4738a = Arrays.copyOf(bArr, length + i);
        } else {
            System.arraycopy(bArr, 0, this.f5465k.f4738a, 0, bArr.length);
        }
        hVar.readFully(this.f5465k.f4738a, bArr.length, i);
        this.f5465k.m34362c(length);
    }

    /* renamed from: a */
    public final void m33552a(AbstractC1351h hVar, byte[] bArr, int i, int i2) throws IOException, InterruptedException {
        int min = Math.min(i2, this.f5464j.m34372a());
        hVar.readFully(bArr, i + min, i2 - min);
        if (min > 0) {
            this.f5464j.m34366a(bArr, i, min);
        }
        this.f5443N += i2;
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public final void mo32614a(AbstractC1352i iVar) {
        this.f5454Y = iVar;
    }

    /* renamed from: a */
    public final void m33550a(C1380c cVar, long j) {
        C1381d dVar = cVar.f5498Q;
        if (dVar != null) {
            dVar.m33519a(cVar, j);
        } else {
            if ("S_TEXT/UTF8".equals(cVar.f5505b)) {
                m33549a(cVar, "%02d:%02d:%02d,%03d", 19, 1000L, f5425a0);
            } else if ("S_TEXT/ASS".equals(cVar.f5505b)) {
                m33549a(cVar, "%01d:%02d:%02d:%02d", 21, 10000L, f5428d0);
            }
            cVar.f5502U.mo32832a(j, this.f5442M, this.f5451V, 0, cVar.f5511h);
        }
        this.f5452W = true;
        m33543c();
    }

    /* renamed from: a */
    public final void m33549a(C1380c cVar, String str, int i, long j, byte[] bArr) {
        m33547a(this.f5465k.f4738a, this.f5436G, str, i, j, bArr);
        AbstractC1362q qVar = cVar.f5502U;
        C1184p pVar = this.f5465k;
        qVar.mo32827a(pVar, pVar.m34361d());
        this.f5451V += this.f5465k.m34361d();
    }

    @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1350g
    /* renamed from: a */
    public final boolean mo32616a(AbstractC1351h hVar) throws IOException, InterruptedException {
        return new C1382f().m33517b(hVar);
    }

    /* renamed from: a */
    public final boolean m33551a(C1357n nVar, long j) {
        if (this.f5478x) {
            this.f5480z = j;
            nVar.f5355a = this.f5479y;
            this.f5478x = false;
            return true;
        } else if (!this.f5475u) {
            return false;
        } else {
            long j2 = this.f5480z;
            if (j2 == -1) {
                return false;
            }
            nVar.f5355a = j2;
            this.f5480z = -1L;
            return true;
        }
    }

    /* renamed from: b */
    public int m33544b(int i) {
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
            case 30321:
            case 2352003:
            case 2807729:
                return 2;
            case 134:
            case 17026:
            case 21358:
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
            case 30323:
            case 30324:
            case 30325:
                return 5;
            default:
                return 0;
        }
    }

    /* renamed from: b */
    public final AbstractC1358o m33545b() {
        C1176k kVar;
        C1176k kVar2;
        if (this.f5470p == -1 || this.f5473s == -9223372036854775807L || (kVar = this.f5431B) == null || kVar.m34413a() == 0 || (kVar2 = this.f5432C) == null || kVar2.m34413a() != this.f5431B.m34413a()) {
            this.f5431B = null;
            this.f5432C = null;
            return new AbstractC1358o.C1360b(this.f5473s);
        }
        int a = this.f5431B.m34413a();
        int[] iArr = new int[a];
        long[] jArr = new long[a];
        long[] jArr2 = new long[a];
        long[] jArr3 = new long[a];
        int i = 0;
        for (int i2 = 0; i2 < a; i2++) {
            jArr3[i2] = this.f5431B.m34412a(i2);
            jArr[i2] = this.f5470p + this.f5432C.m34412a(i2);
        }
        while (true) {
            int i3 = a - 1;
            if (i < i3) {
                int i4 = i + 1;
                iArr[i] = (int) (jArr[i4] - jArr[i]);
                jArr2[i] = jArr3[i4] - jArr3[i];
                i = i4;
            } else {
                iArr[i3] = (int) ((this.f5470p + this.f5469o) - jArr[i3]);
                jArr2[i3] = this.f5473s - jArr3[i3];
                this.f5431B = null;
                this.f5432C = null;
                return new C1345b(iArr, jArr, jArr2, jArr3);
            }
        }
    }

    /* renamed from: c */
    public final void m33543c() {
        this.f5443N = 0;
        this.f5451V = 0;
        this.f5450U = 0;
        this.f5444O = false;
        this.f5445P = false;
        this.f5447R = false;
        this.f5449T = 0;
        this.f5448S = (byte) 0;
        this.f5446Q = false;
        this.f5464j.m34336z();
    }

    /* renamed from: c */
    public boolean m33542c(int i) {
        return i == 357149030 || i == 524531317 || i == 475249515 || i == 374648427;
    }
}
