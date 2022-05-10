package com.google.android.gms.internal.ads;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import android.util.Log;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.LinkedList;
import p131c.p161d.p170b.p224d.p252g.p253a.ec0;
import p131c.p161d.p170b.p224d.p252g.p253a.fc0;
import p131c.p161d.p170b.p224d.p252g.p253a.gc0;
import p131c.p161d.p170b.p224d.p252g.p253a.hc0;
import p131c.p161d.p170b.p224d.p252g.p253a.ic0;
import p131c.p161d.p170b.p224d.p252g.p253a.kc0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzio.class */
public final class zzio {

    /* renamed from: A */
    public long f28323A;

    /* renamed from: B */
    public long f28324B;

    /* renamed from: C */
    public boolean f28325C;

    /* renamed from: D */
    public long f28326D;

    /* renamed from: E */
    public Method f28327E;

    /* renamed from: F */
    public int f28328F;

    /* renamed from: G */
    public long f28329G;

    /* renamed from: H */
    public long f28330H;

    /* renamed from: I */
    public int f28331I;

    /* renamed from: J */
    public long f28332J;

    /* renamed from: K */
    public long f28333K;

    /* renamed from: L */
    public int f28334L;

    /* renamed from: M */
    public int f28335M;

    /* renamed from: N */
    public long f28336N;

    /* renamed from: O */
    public long f28337O;

    /* renamed from: P */
    public long f28338P;

    /* renamed from: Q */
    public float f28339Q;

    /* renamed from: R */
    public zzie[] f28340R;

    /* renamed from: S */
    public ByteBuffer[] f28341S;

    /* renamed from: T */
    public ByteBuffer f28342T;

    /* renamed from: U */
    public ByteBuffer f28343U;

    /* renamed from: V */
    public byte[] f28344V;

    /* renamed from: W */
    public int f28345W;

    /* renamed from: X */
    public int f28346X;

    /* renamed from: Y */
    public boolean f28347Y;

    /* renamed from: Z */
    public boolean f28348Z;

    /* renamed from: a0 */
    public int f28350a0;

    /* renamed from: b */
    public final ic0 f28351b;

    /* renamed from: b0 */
    public boolean f28352b0;

    /* renamed from: c */
    public final zzje f28353c;

    /* renamed from: c0 */
    public boolean f28354c0;

    /* renamed from: d */
    public final zzie[] f28355d;

    /* renamed from: d0 */
    public long f28356d0;

    /* renamed from: e */
    public final zziu f28357e;

    /* renamed from: g */
    public final long[] f28359g;

    /* renamed from: h */
    public final ec0 f28360h;

    /* renamed from: i */
    public final LinkedList<hc0> f28361i;

    /* renamed from: j */
    public AudioTrack f28362j;

    /* renamed from: k */
    public int f28363k;

    /* renamed from: l */
    public int f28364l;

    /* renamed from: m */
    public int f28365m;

    /* renamed from: n */
    public int f28366n;

    /* renamed from: o */
    public int f28367o;

    /* renamed from: p */
    public boolean f28368p;

    /* renamed from: q */
    public int f28369q;

    /* renamed from: r */
    public long f28370r;

    /* renamed from: s */
    public zzhu f28371s;

    /* renamed from: t */
    public zzhu f28372t;

    /* renamed from: u */
    public long f28373u;

    /* renamed from: v */
    public long f28374v;

    /* renamed from: w */
    public ByteBuffer f28375w;

    /* renamed from: x */
    public int f28376x;

    /* renamed from: y */
    public int f28377y;

    /* renamed from: z */
    public int f28378z;

    /* renamed from: a */
    public final zzif f28349a = null;

    /* renamed from: f */
    public final ConditionVariable f28358f = new ConditionVariable(true);

    public zzio(zzif zzifVar, zzie[] zzieVarArr, zziu zziuVar) {
        this.f28357e = zziuVar;
        if (zzpq.f28786a >= 18) {
            try {
                this.f28327E = AudioTrack.class.getMethod("getLatency", null);
            } catch (NoSuchMethodException e) {
            }
        }
        if (zzpq.f28786a >= 19) {
            this.f28360h = new gc0();
        } else {
            this.f28360h = new ec0(null);
        }
        this.f28351b = new ic0();
        this.f28353c = new zzje();
        zzie[] zzieVarArr2 = new zzie[zzieVarArr.length + 3];
        this.f28355d = zzieVarArr2;
        zzieVarArr2[0] = new kc0();
        zzie[] zzieVarArr3 = this.f28355d;
        zzieVarArr3[1] = this.f28351b;
        System.arraycopy(zzieVarArr, 0, zzieVarArr3, 2, zzieVarArr.length);
        this.f28355d[zzieVarArr.length + 2] = this.f28353c;
        this.f28359g = new long[10];
        this.f28339Q = 1.0f;
        this.f28335M = 0;
        this.f28367o = 3;
        this.f28350a0 = 0;
        this.f28372t = zzhu.f28294d;
        this.f28346X = -1;
        this.f28340R = new zzie[0];
        this.f28341S = new ByteBuffer[0];
        this.f28361i = new LinkedList<>();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: b */
    public static int m11959b(String str) {
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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v12 */
    /* JADX WARN: Type inference failed for: r13v13 */
    /* JADX WARN: Type inference failed for: r13v8 */
    /* JADX WARN: Type inference failed for: r20v3, types: [long] */
    /* JADX WARN: Type inference failed for: r20v6 */
    /* JADX WARN: Type inference failed for: r20v7 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m11963a(boolean r9) {
        /*
            Method dump skipped, instructions count: 955
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzio.m11963a(boolean):long");
    }

    /* renamed from: a */
    public final zzhu m11968a(zzhu zzhuVar) {
        if (this.f28368p) {
            zzhu zzhuVar2 = zzhu.f28294d;
            this.f28372t = zzhuVar2;
            return zzhuVar2;
        }
        float a = this.f28353c.m11929a(zzhuVar.f28295a);
        zzje zzjeVar = this.f28353c;
        float f = zzhuVar.f28296b;
        zzjeVar.m11925b(f);
        zzhu zzhuVar3 = new zzhu(a, f);
        zzhu zzhuVar4 = this.f28371s;
        if (zzhuVar4 == null) {
            zzhuVar4 = !this.f28361i.isEmpty() ? hc0.m26811a(this.f28361i.getLast()) : this.f28372t;
        }
        if (!zzhuVar3.equals(zzhuVar4)) {
            if (m11972a()) {
                this.f28371s = zzhuVar3;
            } else {
                this.f28372t = zzhuVar3;
            }
        }
        return this.f28372t;
    }

    /* renamed from: a */
    public final void m11971a(float f) {
        if (this.f28339Q != f) {
            this.f28339Q = f;
            m11945n();
        }
    }

    /* renamed from: a */
    public final void m11970a(int i) {
        if (this.f28367o != i) {
            this.f28367o = i;
            if (!this.f28352b0) {
                m11954e();
                this.f28350a0 = 0;
            }
        }
    }

    /* renamed from: a */
    public final void m11969a(long j) throws zziw {
        ByteBuffer byteBuffer;
        int length = this.f28340R.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f28341S[i - 1];
            } else {
                byteBuffer = this.f28342T;
                if (byteBuffer == null) {
                    byteBuffer = zzie.f28318a;
                }
            }
            if (i == length) {
                m11958b(byteBuffer, j);
            } else {
                zzie zzieVar = this.f28340R[i];
                zzieVar.mo11927a(byteBuffer);
                ByteBuffer e = zzieVar.mo11922e();
                this.f28341S[i] = e;
                if (e.hasRemaining()) {
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

    /* JADX WARN: Removed duplicated region for block: B:73:0x020f  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0248  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x02b0  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02b8  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m11965a(java.lang.String r8, int r9, int r10, int r11, int r12, int[] r13) throws com.google.android.gms.internal.ads.zzis {
        /*
            Method dump skipped, instructions count: 725
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzio.m11965a(java.lang.String, int, int, int, int, int[]):void");
    }

    /* renamed from: a */
    public final boolean m11972a() {
        return this.f28362j != null;
    }

    /* renamed from: a */
    public final boolean m11966a(String str) {
        zzif zzifVar = this.f28349a;
        return zzifVar != null && zzifVar.m11986a(m11959b(str));
    }

    /* renamed from: a */
    public final boolean m11964a(ByteBuffer byteBuffer, long j) throws zziv, zziw {
        int i;
        ByteBuffer byteBuffer2 = this.f28342T;
        zzoz.m11696a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (!m11972a()) {
            this.f28358f.block();
            if (this.f28352b0) {
                this.f28362j = new AudioTrack(new AudioAttributes.Builder().setUsage(1).setContentType(3).setFlags(16).build(), new AudioFormat.Builder().setChannelMask(this.f28364l).setEncoding(this.f28366n).setSampleRate(this.f28363k).build(), this.f28369q, 1, this.f28350a0);
            } else if (this.f28350a0 == 0) {
                this.f28362j = new AudioTrack(this.f28367o, this.f28363k, this.f28364l, this.f28366n, this.f28369q, 1);
            } else {
                this.f28362j = new AudioTrack(this.f28367o, this.f28363k, this.f28364l, this.f28366n, this.f28369q, 1, this.f28350a0);
            }
            int state = this.f28362j.getState();
            if (state == 1) {
                int audioSessionId = this.f28362j.getAudioSessionId();
                if (this.f28350a0 != audioSessionId) {
                    this.f28350a0 = audioSessionId;
                    this.f28357e.mo11940a(audioSessionId);
                }
                this.f28360h.mo26968a(this.f28362j, m11942q());
                m11945n();
                this.f28354c0 = false;
                if (this.f28348Z) {
                    m11957c();
                }
            } else {
                try {
                    this.f28362j.release();
                } catch (Exception e) {
                } finally {
                    this.f28362j = null;
                }
                throw new zziv(state, this.f28363k, this.f28364l, this.f28369q);
            }
        }
        if (m11942q()) {
            if (this.f28362j.getPlayState() == 2) {
                this.f28354c0 = false;
                return false;
            } else if (this.f28362j.getPlayState() == 1 && this.f28360h.m27031b() != 0) {
                return false;
            }
        }
        boolean z = this.f28354c0;
        boolean k = m11948k();
        this.f28354c0 = k;
        if (z && !k && this.f28362j.getPlayState() != 1) {
            this.f28357e.mo11939a(this.f28369q, zzha.m12067a(this.f28370r), SystemClock.elapsedRealtime() - this.f28356d0);
        }
        if (this.f28342T == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            if (this.f28368p && this.f28334L == 0) {
                int i2 = this.f28366n;
                if (i2 == 7 || i2 == 8) {
                    i = zziy.m11938a(byteBuffer);
                } else if (i2 == 5) {
                    i = zzic.m11990a();
                } else if (i2 == 6) {
                    i = zzic.m11988a(byteBuffer);
                } else {
                    StringBuilder sb = new StringBuilder(38);
                    sb.append("Unexpected audio encoding: ");
                    sb.append(i2);
                    throw new IllegalStateException(sb.toString());
                }
                this.f28334L = i;
            }
            if (this.f28371s != null) {
                if (!m11949j()) {
                    return false;
                }
                this.f28361i.add(new hc0(this.f28371s, Math.max(0L, j), m11960b(m11944o()), null));
                this.f28371s = null;
                m11952g();
            }
            if (this.f28335M == 0) {
                this.f28336N = Math.max(0L, j);
                this.f28335M = 1;
            } else {
                long b = this.f28336N + m11960b(this.f28368p ? this.f28330H : this.f28329G / this.f28328F);
                if (this.f28335M == 1 && Math.abs(b - j) > 200000) {
                    StringBuilder sb2 = new StringBuilder(80);
                    sb2.append("Discontinuity detected [expected ");
                    sb2.append(b);
                    sb2.append(", got ");
                    sb2.append(j);
                    sb2.append("]");
                    Log.e("AudioTrack", sb2.toString());
                    this.f28335M = 2;
                }
                if (this.f28335M == 2) {
                    this.f28336N += j - b;
                    this.f28335M = 1;
                    this.f28357e.mo11941a();
                }
            }
            if (this.f28368p) {
                this.f28330H += this.f28334L;
            } else {
                this.f28329G += byteBuffer.remaining();
            }
            this.f28342T = byteBuffer;
        }
        if (this.f28368p) {
            m11958b(this.f28342T, j);
        } else {
            m11969a(j);
        }
        if (this.f28342T.hasRemaining()) {
            return false;
        }
        this.f28342T = null;
        return true;
    }

    /* renamed from: b */
    public final long m11960b(long j) {
        return (j * 1000000) / this.f28363k;
    }

    /* renamed from: b */
    public final void m11962b() {
        this.f28348Z = false;
        if (m11972a()) {
            m11943p();
            this.f28360h.m27033a();
        }
    }

    /* renamed from: b */
    public final void m11961b(int i) {
        zzoz.m11694b(zzpq.f28786a >= 21);
        if (!this.f28352b0 || this.f28350a0 != i) {
            this.f28352b0 = true;
            this.f28350a0 = i;
            m11954e();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x0199, code lost:
        if (r14 < r0) goto L_0x00eb;
     */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0216  */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11958b(java.nio.ByteBuffer r8, long r9) throws com.google.android.gms.internal.ads.zziw {
        /*
            Method dump skipped, instructions count: 552
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzio.m11958b(java.nio.ByteBuffer, long):boolean");
    }

    /* renamed from: c */
    public final long m11956c(long j) {
        return (j * this.f28363k) / 1000000;
    }

    /* renamed from: c */
    public final void m11957c() {
        this.f28348Z = true;
        if (m11972a()) {
            this.f28337O = System.nanoTime() / 1000;
            this.f28362j.play();
        }
    }

    /* renamed from: d */
    public final void m11955d() {
        m11954e();
        for (zzie zzieVar : this.f28355d) {
            zzieVar.mo11930a();
        }
        this.f28350a0 = 0;
        this.f28348Z = false;
    }

    /* renamed from: e */
    public final void m11954e() {
        if (m11972a()) {
            this.f28329G = 0L;
            this.f28330H = 0L;
            this.f28332J = 0L;
            this.f28333K = 0L;
            this.f28334L = 0;
            zzhu zzhuVar = this.f28371s;
            if (zzhuVar != null) {
                this.f28372t = zzhuVar;
                this.f28371s = null;
            } else if (!this.f28361i.isEmpty()) {
                this.f28372t = hc0.m26811a(this.f28361i.getLast());
            }
            this.f28361i.clear();
            this.f28373u = 0L;
            this.f28374v = 0L;
            this.f28342T = null;
            this.f28343U = null;
            int i = 0;
            while (true) {
                zzie[] zzieVarArr = this.f28340R;
                if (i >= zzieVarArr.length) {
                    break;
                }
                zzie zzieVar = zzieVarArr[i];
                zzieVar.flush();
                this.f28341S[i] = zzieVar.mo11922e();
                i++;
            }
            this.f28347Y = false;
            this.f28346X = -1;
            this.f28375w = null;
            this.f28376x = 0;
            this.f28335M = 0;
            this.f28338P = 0L;
            m11943p();
            if (this.f28362j.getPlayState() == 3) {
                this.f28362j.pause();
            }
            AudioTrack audioTrack = this.f28362j;
            this.f28362j = null;
            this.f28360h.mo26968a(null, false);
            this.f28358f.close();
            new fc0(this, audioTrack).start();
        }
    }

    /* renamed from: f */
    public final boolean m11953f() {
        if (m11972a()) {
            return this.f28347Y && !m11948k();
        }
        return true;
    }

    /* renamed from: g */
    public final void m11952g() {
        zzie[] zzieVarArr;
        ArrayList arrayList = new ArrayList();
        for (zzie zzieVar : this.f28355d) {
            if (zzieVar.mo11926b()) {
                arrayList.add(zzieVar);
            } else {
                zzieVar.flush();
            }
        }
        int size = arrayList.size();
        this.f28340R = (zzie[]) arrayList.toArray(new zzie[size]);
        this.f28341S = new ByteBuffer[size];
        for (int i = 0; i < size; i++) {
            zzie zzieVar2 = this.f28340R[i];
            zzieVar2.flush();
            this.f28341S[i] = zzieVar2.mo11922e();
        }
    }

    /* renamed from: h */
    public final void m11951h() {
        if (this.f28335M == 1) {
            this.f28335M = 2;
        }
    }

    /* renamed from: i */
    public final void m11950i() throws zziw {
        if (!this.f28347Y && m11972a() && m11949j()) {
            this.f28360h.m27032a(m11944o());
            this.f28376x = 0;
            this.f28347Y = true;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0036  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0063  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0056 -> B:9:0x001f). Please submit an issue!!! */
    /* renamed from: j */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11949j() throws com.google.android.gms.internal.ads.zziw {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f28346X
            r1 = -1
            if (r0 != r1) goto L_0x0024
            r0 = r5
            boolean r0 = r0.f28368p
            if (r0 == 0) goto L_0x0018
            r0 = r5
            com.google.android.gms.internal.ads.zzie[] r0 = r0.f28340R
            int r0 = r0.length
            r6 = r0
            goto L_0x001a
        L_0x0018:
            r0 = 0
            r6 = r0
        L_0x001a:
            r0 = r5
            r1 = r6
            r0.f28346X = r1
        L_0x001f:
            r0 = 1
            r6 = r0
            goto L_0x0026
        L_0x0024:
            r0 = 0
            r6 = r0
        L_0x0026:
            r0 = r5
            int r0 = r0.f28346X
            r7 = r0
            r0 = r5
            com.google.android.gms.internal.ads.zzie[] r0 = r0.f28340R
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0063
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0044
            r0 = r8
            r0.mo11923d()
        L_0x0044:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m11969a(r1)
            r0 = r8
            boolean r0 = r0.mo11924c()
            if (r0 != 0) goto L_0x0056
            r0 = 0
            return r0
        L_0x0056:
            r0 = r5
            r1 = r5
            int r1 = r1.f28346X
            r2 = 1
            int r1 = r1 + r2
            r0.f28346X = r1
            goto L_0x001f
        L_0x0063:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f28343U
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x007e
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            boolean r0 = r0.m11958b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f28343U
            if (r0 == 0) goto L_0x007e
            r0 = 0
            return r0
        L_0x007e:
            r0 = r5
            r1 = -1
            r0.f28346X = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzio.m11949j():boolean");
    }

    /* renamed from: k */
    public final boolean m11948k() {
        if (!m11972a()) {
            return false;
        }
        if (m11944o() > this.f28360h.m27031b()) {
            return true;
        }
        return m11942q() && this.f28362j.getPlayState() == 2 && this.f28362j.getPlaybackHeadPosition() == 0;
    }

    /* renamed from: l */
    public final zzhu m11947l() {
        return this.f28372t;
    }

    /* renamed from: m */
    public final void m11946m() {
        if (this.f28352b0) {
            this.f28352b0 = false;
            this.f28350a0 = 0;
            m11954e();
        }
    }

    /* renamed from: n */
    public final void m11945n() {
        if (!m11972a()) {
            return;
        }
        if (zzpq.f28786a >= 21) {
            this.f28362j.setVolume(this.f28339Q);
            return;
        }
        AudioTrack audioTrack = this.f28362j;
        float f = this.f28339Q;
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: o */
    public final long m11944o() {
        return this.f28368p ? this.f28333K : this.f28332J / this.f28331I;
    }

    /* renamed from: p */
    public final void m11943p() {
        this.f28323A = 0L;
        this.f28378z = 0;
        this.f28377y = 0;
        this.f28324B = 0L;
        this.f28325C = false;
        this.f28326D = 0L;
    }

    /* renamed from: q */
    public final boolean m11942q() {
        if (zzpq.f28786a >= 23) {
            return false;
        }
        int i = this.f28366n;
        return i == 5 || i == 6;
    }
}
