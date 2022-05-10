package androidx.media2.exoplayer.external.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import androidx.media2.exoplayer.external.audio.AudioProcessor;
import androidx.media2.exoplayer.external.audio.AudioSink;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import p012b.p076s.p078b.p079a.C1221c0;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p083p0.C1264a;
import p012b.p076s.p078b.p079a.p083p0.C1268b;
import p012b.p076s.p078b.p079a.p083p0.C1271c;
import p012b.p076s.p078b.p079a.p083p0.C1274d;
import p012b.p076s.p078b.p079a.p083p0.C1290o;
import p012b.p076s.p078b.p079a.p083p0.C1292p;
import p012b.p076s.p078b.p079a.p083p0.C1294r;
import p012b.p076s.p078b.p079a.p083p0.C1295s;
import p012b.p076s.p078b.p079a.p083p0.C1296t;
import p012b.p076s.p078b.p079a.p083p0.C1300v;
import p012b.p076s.p078b.p079a.p083p0.C1301w;
import p012b.p076s.p078b.p079a.p083p0.C1303y;
import p012b.p076s.p078b.p079a.p083p0.C1304z;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: S */
    public static boolean f1581S = false;

    /* renamed from: T */
    public static boolean f1582T = false;

    /* renamed from: A */
    public int f1583A;

    /* renamed from: B */
    public int f1584B;

    /* renamed from: C */
    public long f1585C;

    /* renamed from: D */
    public float f1586D;

    /* renamed from: E */
    public AudioProcessor[] f1587E;

    /* renamed from: F */
    public ByteBuffer[] f1588F;

    /* renamed from: G */
    public ByteBuffer f1589G;

    /* renamed from: H */
    public ByteBuffer f1590H;

    /* renamed from: I */
    public byte[] f1591I;

    /* renamed from: J */
    public int f1592J;

    /* renamed from: K */
    public int f1593K;

    /* renamed from: L */
    public boolean f1594L;

    /* renamed from: M */
    public boolean f1595M;

    /* renamed from: N */
    public boolean f1596N;

    /* renamed from: O */
    public int f1597O;

    /* renamed from: P */
    public C1292p f1598P;

    /* renamed from: Q */
    public boolean f1599Q;

    /* renamed from: R */
    public long f1600R;

    /* renamed from: a */
    public final C1274d f1601a;

    /* renamed from: b */
    public final AbstractC0284c f1602b;

    /* renamed from: c */
    public final boolean f1603c;

    /* renamed from: d */
    public final C1294r f1604d;

    /* renamed from: e */
    public final C1304z f1605e;

    /* renamed from: f */
    public final AudioProcessor[] f1606f;

    /* renamed from: g */
    public final AudioProcessor[] f1607g;

    /* renamed from: h */
    public final ConditionVariable f1608h;

    /* renamed from: i */
    public final C1290o f1609i;

    /* renamed from: j */
    public final ArrayDeque<C0287f> f1610j;

    /* renamed from: k */
    public AudioSink.AbstractC0281a f1611k;

    /* renamed from: l */
    public AudioTrack f1612l;

    /* renamed from: m */
    public C0285d f1613m;

    /* renamed from: n */
    public C0285d f1614n;

    /* renamed from: o */
    public AudioTrack f1615o;

    /* renamed from: p */
    public C1271c f1616p;

    /* renamed from: q */
    public C1221c0 f1617q;

    /* renamed from: r */
    public C1221c0 f1618r;

    /* renamed from: s */
    public long f1619s;

    /* renamed from: t */
    public long f1620t;

    /* renamed from: u */
    public ByteBuffer f1621u;

    /* renamed from: v */
    public int f1622v;

    /* renamed from: w */
    public long f1623w;

    /* renamed from: x */
    public long f1624x;

    /* renamed from: y */
    public long f1625y;

    /* renamed from: z */
    public long f1626z;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public InvalidAudioTrackTimestampException(String str) {
            super(str);
        }

        public /* synthetic */ InvalidAudioTrackTimestampException(String str, C0282a aVar) {
            this(str);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$a.class */
    public class C0282a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AudioTrack f1627a;

        public C0282a(AudioTrack audioTrack) {
            this.f1627a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f1627a.flush();
                this.f1627a.release();
            } finally {
                DefaultAudioSink.this.f1608h.open();
            }
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$b.class */
    public class C0283b extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AudioTrack f1629a;

        public C0283b(DefaultAudioSink defaultAudioSink, AudioTrack audioTrack) {
            this.f1629a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f1629a.release();
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$c.class */
    public interface AbstractC0284c {
        /* renamed from: a */
        long mo38114a();

        /* renamed from: a */
        long mo38113a(long j);

        /* renamed from: a */
        C1221c0 mo38112a(C1221c0 c0Var);

        /* renamed from: b */
        AudioProcessor[] mo38111b();
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$d.class */
    public static final class C0285d {

        /* renamed from: a */
        public final boolean f1630a;

        /* renamed from: b */
        public final int f1631b;

        /* renamed from: c */
        public final int f1632c;

        /* renamed from: d */
        public final int f1633d;

        /* renamed from: e */
        public final int f1634e;

        /* renamed from: f */
        public final int f1635f;

        /* renamed from: g */
        public final int f1636g;

        /* renamed from: h */
        public final int f1637h;

        /* renamed from: i */
        public final boolean f1638i;

        /* renamed from: j */
        public final boolean f1639j;

        /* renamed from: k */
        public final AudioProcessor[] f1640k;

        public C0285d(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.f1630a = z;
            this.f1631b = i;
            this.f1632c = i2;
            this.f1633d = i3;
            this.f1634e = i4;
            this.f1635f = i5;
            this.f1636g = i6;
            this.f1637h = i7 == 0 ? m38121a() : i7;
            this.f1638i = z2;
            this.f1639j = z3;
            this.f1640k = audioProcessorArr;
        }

        /* renamed from: a */
        public final int m38121a() {
            if (this.f1630a) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.f1634e, this.f1635f, this.f1636g);
                C1160a.m34518b(minBufferSize != -2);
                return C1167d0.m34493a(minBufferSize * 4, ((int) m38120a(250000L)) * this.f1633d, (int) Math.max(minBufferSize, m38120a(750000L) * this.f1633d));
            }
            int d = DefaultAudioSink.m38134d(this.f1636g);
            int i = d;
            if (this.f1636g == 5) {
                i = d * 2;
            }
            return (int) ((i * 250000) / 1000000);
        }

        /* renamed from: a */
        public long m38120a(long j) {
            return (j * this.f1634e) / 1000000;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:14:0x006a). Please submit an issue!!! */
        /* renamed from: a */
        public AudioTrack m38118a(boolean z, C1271c cVar, int i) throws AudioSink.InitializationException {
            AudioTrack audioTrack;
            if (C1167d0.f4688a >= 21) {
                audioTrack = m38116b(z, cVar, i);
            } else {
                int d = C1167d0.m34443d(cVar.f5065c);
                audioTrack = i == 0 ? new AudioTrack(d, this.f1634e, this.f1635f, this.f1636g, this.f1637h, 1) : new AudioTrack(d, this.f1634e, this.f1635f, this.f1636g, this.f1637h, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new AudioSink.InitializationException(state, this.f1634e, this.f1635f, this.f1637h);
        }

        /* renamed from: a */
        public boolean m38119a(C0285d dVar) {
            return dVar.f1636g == this.f1636g && dVar.f1634e == this.f1634e && dVar.f1635f == this.f1635f;
        }

        /* renamed from: b */
        public long m38117b(long j) {
            return (j * 1000000) / this.f1634e;
        }

        /* renamed from: b */
        public final AudioTrack m38116b(boolean z, C1271c cVar, int i) {
            AudioAttributes build = z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : cVar.m33935a();
            AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.f1635f).setEncoding(this.f1636g).setSampleRate(this.f1634e).build();
            int i2 = this.f1637h;
            if (i == 0) {
                i = 0;
            }
            return new AudioTrack(build, build2, i2, 1, i);
        }

        /* renamed from: c */
        public long m38115c(long j) {
            return (j * 1000000) / this.f1632c;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$e.class */
    public static class C0286e implements AbstractC0284c {

        /* renamed from: a */
        public final AudioProcessor[] f1641a;

        /* renamed from: b */
        public final C1301w f1642b = new C1301w();

        /* renamed from: c */
        public final C1303y f1643c;

        public C0286e(AudioProcessor... audioProcessorArr) {
            this.f1641a = (AudioProcessor[]) Arrays.copyOf(audioProcessorArr, audioProcessorArr.length + 2);
            C1303y yVar = new C1303y();
            this.f1643c = yVar;
            AudioProcessor[] audioProcessorArr2 = this.f1641a;
            audioProcessorArr2[audioProcessorArr.length] = this.f1642b;
            audioProcessorArr2[audioProcessorArr.length + 1] = yVar;
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC0284c
        /* renamed from: a */
        public long mo38114a() {
            return this.f1642b.m33786m();
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC0284c
        /* renamed from: a */
        public long mo38113a(long j) {
            return this.f1643c.m33761a(j);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC0284c
        /* renamed from: a */
        public C1221c0 mo38112a(C1221c0 c0Var) {
            this.f1642b.m33795a(c0Var.f4898c);
            return new C1221c0(this.f1643c.m33760b(c0Var.f4896a), this.f1643c.m33762a(c0Var.f4897b), c0Var.f4898c);
        }

        @Override // androidx.media2.exoplayer.external.audio.DefaultAudioSink.AbstractC0284c
        /* renamed from: b */
        public AudioProcessor[] mo38111b() {
            return this.f1641a;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$f.class */
    public static final class C0287f {

        /* renamed from: a */
        public final C1221c0 f1644a;

        /* renamed from: b */
        public final long f1645b;

        /* renamed from: c */
        public final long f1646c;

        public C0287f(C1221c0 c0Var, long j, long j2) {
            this.f1644a = c0Var;
            this.f1645b = j;
            this.f1646c = j2;
        }

        public /* synthetic */ C0287f(C1221c0 c0Var, long j, long j2, C0282a aVar) {
            this(c0Var, j, j2);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.DefaultAudioSink$g */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/DefaultAudioSink$g.class */
    public final class C0288g implements C1290o.AbstractC1291a {
        public C0288g() {
        }

        public /* synthetic */ C0288g(DefaultAudioSink defaultAudioSink, C0282a aVar) {
            this();
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.C1290o.AbstractC1291a
        /* renamed from: a */
        public void mo33851a(int i, long j) {
            if (DefaultAudioSink.this.f1611k != null) {
                DefaultAudioSink.this.f1611k.mo33798a(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f1600R);
            }
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.C1290o.AbstractC1291a
        /* renamed from: a */
        public void mo33850a(long j) {
            StringBuilder sb = new StringBuilder(61);
            sb.append("Ignoring impossibly large audio latency: ");
            sb.append(j);
            C1175j.m34414d("AudioTrack", sb.toString());
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.C1290o.AbstractC1291a
        /* renamed from: a */
        public void mo33849a(long j, long j2, long j3, long j4) {
            long e = DefaultAudioSink.this.m38132e();
            long f = DefaultAudioSink.this.m38129f();
            StringBuilder sb = new StringBuilder(182);
            sb.append("Spurious audio timestamp (frame position mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(e);
            sb.append(", ");
            sb.append(f);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f1582T) {
                C1175j.m34414d("AudioTrack", sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2, null);
        }

        @Override // p012b.p076s.p078b.p079a.p083p0.C1290o.AbstractC1291a
        /* renamed from: b */
        public void mo33848b(long j, long j2, long j3, long j4) {
            long e = DefaultAudioSink.this.m38132e();
            long f = DefaultAudioSink.this.m38129f();
            StringBuilder sb = new StringBuilder(180);
            sb.append("Spurious audio timestamp (system clock mismatch): ");
            sb.append(j);
            sb.append(", ");
            sb.append(j2);
            sb.append(", ");
            sb.append(j3);
            sb.append(", ");
            sb.append(j4);
            sb.append(", ");
            sb.append(e);
            sb.append(", ");
            sb.append(f);
            String sb2 = sb.toString();
            if (!DefaultAudioSink.f1582T) {
                C1175j.m34414d("AudioTrack", sb2);
                return;
            }
            throw new InvalidAudioTrackTimestampException(sb2, null);
        }
    }

    public DefaultAudioSink(C1274d dVar, AbstractC0284c cVar, boolean z) {
        this.f1601a = dVar;
        C1160a.m34522a(cVar);
        this.f1602b = cVar;
        this.f1603c = z;
        this.f1608h = new ConditionVariable(true);
        this.f1609i = new C1290o(new C0288g(this, null));
        this.f1604d = new C1294r();
        this.f1605e = new C1304z();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C1300v(), this.f1604d, this.f1605e);
        Collections.addAll(arrayList, cVar.mo38111b());
        this.f1606f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f1607g = new AudioProcessor[]{new C1296t()};
        this.f1586D = 1.0f;
        this.f1584B = 0;
        this.f1616p = C1271c.f5062e;
        this.f1597O = 0;
        this.f1598P = new C1292p(0, 0.0f);
        this.f1618r = C1221c0.f4895e;
        this.f1593K = -1;
        this.f1587E = new AudioProcessor[0];
        this.f1588F = new ByteBuffer[0];
        this.f1610j = new ArrayDeque<>();
    }

    public DefaultAudioSink(C1274d dVar, AudioProcessor[] audioProcessorArr) {
        this(dVar, audioProcessorArr, false);
    }

    public DefaultAudioSink(C1274d dVar, AudioProcessor[] audioProcessorArr, boolean z) {
        this(dVar, new C0286e(audioProcessorArr), z);
    }

    /* renamed from: a */
    public static int m38158a(int i, ByteBuffer byteBuffer) {
        if (i == 7 || i == 8) {
            return C1295s.m33842a(byteBuffer);
        }
        if (i == 5) {
            return C1264a.m33952a();
        }
        if (i == 6) {
            return C1264a.m33944b(byteBuffer);
        }
        if (i == 17) {
            return C1268b.m33937a(byteBuffer);
        }
        if (i == 14) {
            int a = C1264a.m33948a(byteBuffer);
            return a == -1 ? 0 : C1264a.m33947a(byteBuffer, a) * 16;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("Unexpected audio encoding: ");
        sb.append(i);
        throw new IllegalStateException(sb.toString());
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
        if (r3 == 5) goto L_0x002d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m38157a(int r3, boolean r4) {
        /*
            r0 = r3
            r5 = r0
            int r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.f4688a
            r1 = 28
            if (r0 > r1) goto L_0x0030
            r0 = r3
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0030
            r0 = r3
            r1 = 7
            if (r0 != r1) goto L_0x001c
            r0 = 8
            r5 = r0
            goto L_0x0030
        L_0x001c:
            r0 = r3
            r1 = 3
            if (r0 == r1) goto L_0x002d
            r0 = r3
            r1 = 4
            if (r0 == r1) goto L_0x002d
            r0 = r3
            r5 = r0
            r0 = r3
            r1 = 5
            if (r0 != r1) goto L_0x0030
        L_0x002d:
            r0 = 6
            r5 = r0
        L_0x0030:
            r0 = r5
            r3 = r0
            int r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.f4688a
            r1 = 26
            if (r0 > r1) goto L_0x0057
            r0 = r5
            r3 = r0
            java.lang.String r0 = "fugu"
            java.lang.String r1 = p012b.p076s.p078b.p079a.p080a1.C1167d0.f4689b
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0057
            r0 = r5
            r3 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0057
            r0 = r5
            r3 = r0
            r0 = r5
            r1 = 1
            if (r0 != r1) goto L_0x0057
            r0 = 2
            r3 = r0
        L_0x0057:
            r0 = r3
            int r0 = p012b.p076s.p078b.p079a.p080a1.C1167d0.m34495a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.m38157a(int, boolean):int");
    }

    /* renamed from: a */
    public static int m38154a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    /* renamed from: a */
    public static void m38155a(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    /* renamed from: b */
    public static void m38142b(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: d */
    public static int m38134d(int i) {
        if (i == 5) {
            return 80000;
        }
        if (i == 6) {
            return 768000;
        }
        if (i == 7) {
            return 192000;
        }
        if (i == 8) {
            return 2250000;
        }
        if (i == 14) {
            return 3062500;
        }
        if (i == 17) {
            return 336000;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: e */
    public static AudioTrack m38131e(int i) {
        return new AudioTrack(3, 4000, 4, 2, 2, 0, i);
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: S */
    public void mo38167S() {
        this.f1596N = true;
        if (m38126i()) {
            this.f1609i.m33852i();
            this.f1615o.play();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: T */
    public void mo38166T() throws AudioSink.WriteException {
        if (!this.f1594L && m38126i() && m38145b()) {
            m38125j();
            this.f1594L = true;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: U */
    public boolean mo38165U() {
        return m38126i() && this.f1609i.m33860d(m38129f());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: V */
    public void mo38164V() {
        if (this.f1599Q) {
            this.f1599Q = false;
            this.f1597O = 0;
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: W */
    public void mo38163W() {
        if (this.f1584B == 1) {
            this.f1584B = 2;
        }
    }

    /* renamed from: a */
    public final int m38153a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (this.f1621u == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f1621u = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f1621u.putInt(1431633921);
        }
        if (this.f1622v == 0) {
            this.f1621u.putInt(4, i);
            this.f1621u.putLong(8, j * 1000);
            this.f1621u.position(0);
            this.f1622v = i;
        }
        int remaining = this.f1621u.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f1621u, remaining, 1);
            if (write < 0) {
                this.f1622v = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int a = m38154a(audioTrack, byteBuffer, i);
        if (a < 0) {
            this.f1622v = 0;
            return a;
        }
        this.f1622v -= a;
        return a;
    }

    /* renamed from: a */
    public final long m38156a(long j) {
        return j + this.f1614n.m38117b(this.f1602b.mo38114a());
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public long mo38146a(boolean z) {
        if (!m38126i() || this.f1584B == 0) {
            return Long.MIN_VALUE;
        }
        return this.f1585C + m38156a(m38143b(Math.min(this.f1609i.m33866a(z), this.f1614n.m38117b(m38129f()))));
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public C1221c0 mo38150a(C1221c0 c0Var) {
        C0285d dVar = this.f1614n;
        if (dVar == null || dVar.f1639j) {
            C1221c0 c0Var2 = this.f1617q;
            if (c0Var2 == null) {
                c0Var2 = !this.f1610j.isEmpty() ? this.f1610j.getLast().f1644a : this.f1618r;
            }
            if (!c0Var.equals(c0Var2)) {
                if (m38126i()) {
                    this.f1617q = c0Var;
                } else {
                    this.f1618r = this.f1602b.mo38112a(c0Var);
                }
            }
            return this.f1618r;
        }
        C1221c0 c0Var3 = C1221c0.f4895e;
        this.f1618r = c0Var3;
        return c0Var3;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public void mo38162a() {
        flush();
        m38124k();
        for (AudioProcessor audioProcessor : this.f1606f) {
            audioProcessor.mo33763a();
        }
        for (AudioProcessor audioProcessor2 : this.f1607g) {
            audioProcessor2.mo33763a();
        }
        this.f1597O = 0;
        this.f1596N = false;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public void mo38161a(int i) {
        C1160a.m34518b(C1167d0.f4688a >= 21);
        if (!this.f1599Q || this.f1597O != i) {
            this.f1599Q = true;
            this.f1597O = i;
            flush();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public void mo38159a(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) throws AudioSink.ConfigurationException {
        int i7;
        int i8;
        boolean z;
        int i9;
        boolean z2 = false;
        if (C1167d0.f4688a < 21 && i2 == 8 && iArr == null) {
            int[] iArr2 = new int[6];
            int i10 = 0;
            while (true) {
                iArr = iArr2;
                if (i10 >= 6) {
                    break;
                }
                iArr2[i10] = i10;
                i10++;
            }
        }
        boolean f = C1167d0.m34438f(i);
        boolean z3 = f && i != 4;
        boolean z4 = this.f1603c && mo38160a(i2, 4) && C1167d0.m34440e(i);
        AudioProcessor[] audioProcessorArr = z4 ? this.f1607g : this.f1606f;
        if (z3) {
            this.f1605e.m33755a(i5, i6);
            this.f1604d.m33844a(iArr);
            i9 = i3;
            int i11 = i2;
            int i12 = i;
            boolean z5 = false;
            for (AudioProcessor audioProcessor : audioProcessorArr) {
                try {
                    z5 |= audioProcessor.mo33754a(i9, i11, i12);
                    if (audioProcessor.mo33752b()) {
                        i11 = audioProcessor.mo33758f();
                        i9 = audioProcessor.mo33757g();
                        i12 = audioProcessor.mo33756h();
                    }
                } catch (AudioProcessor.UnhandledFormatException e) {
                    throw new AudioSink.ConfigurationException(e);
                }
            }
            z = z5;
            i7 = i11;
            i8 = i12;
        } else {
            i9 = i3;
            i7 = i2;
            i8 = i;
            z = false;
        }
        int a = m38157a(i7, f);
        if (a != 0) {
            C0285d dVar = new C0285d(f, f ? C1167d0.m34457b(i, i2) : -1, i3, f ? C1167d0.m34457b(i8, i7) : -1, i9, a, i8, i4, z3, z3 && !z4, audioProcessorArr);
            if (z || this.f1613m != null) {
                z2 = true;
            }
            if (!m38126i() || (dVar.m38119a(this.f1614n) && !z2)) {
                this.f1614n = dVar;
            } else {
                this.f1613m = dVar;
            }
        } else {
            StringBuilder sb = new StringBuilder(38);
            sb.append("Unsupported channel count: ");
            sb.append(i7);
            throw new AudioSink.ConfigurationException(sb.toString());
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public void mo38152a(AudioSink.AbstractC0281a aVar) {
        this.f1611k = aVar;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public void mo38149a(C1271c cVar) {
        if (!this.f1616p.equals(cVar)) {
            this.f1616p = cVar;
            if (!this.f1599Q) {
                flush();
                this.f1597O = 0;
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public void mo38148a(C1292p pVar) {
        if (!this.f1598P.equals(pVar)) {
            int i = pVar.f5138a;
            float f = pVar.f5139b;
            AudioTrack audioTrack = this.f1615o;
            if (audioTrack != null) {
                if (this.f1598P.f5138a != i) {
                    audioTrack.attachAuxEffect(i);
                }
                if (i != 0) {
                    this.f1615o.setAuxEffectSendLevel(f);
                }
            }
            this.f1598P = pVar;
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public boolean mo38160a(int i, int i2) {
        boolean z;
        if (C1167d0.m34438f(i2)) {
            boolean z2 = true;
            if (i2 == 4) {
                z2 = C1167d0.f4688a >= 21;
            }
            return z2;
        }
        C1274d dVar = this.f1601a;
        if (dVar != null && dVar.m33929a(i2)) {
            z = true;
            if (i != -1) {
                if (i <= this.f1601a.m33930a()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: a */
    public boolean mo38147a(ByteBuffer byteBuffer, long j) throws AudioSink.InitializationException, AudioSink.WriteException {
        String str;
        ByteBuffer byteBuffer2 = this.f1589G;
        C1160a.m34520a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f1613m != null) {
            if (!m38145b()) {
                return false;
            }
            if (!this.f1613m.m38119a(this.f1614n)) {
                m38125j();
                if (mo38165U()) {
                    return false;
                }
                flush();
            } else {
                this.f1614n = this.f1613m;
                this.f1613m = null;
            }
            this.f1618r = this.f1614n.f1639j ? this.f1602b.mo38112a(this.f1618r) : C1221c0.f4895e;
            m38122m();
        }
        if (!m38126i()) {
            m38127h();
            if (this.f1596N) {
                mo38167S();
            }
        }
        if (!this.f1609i.m33856f(m38129f())) {
            return false;
        }
        if (this.f1589G != null) {
            str = "AudioTrack";
        } else if (!byteBuffer.hasRemaining()) {
            return true;
        } else {
            C0285d dVar = this.f1614n;
            if (!dVar.f1630a && this.f1583A == 0) {
                int a = m38158a(dVar.f1636g, byteBuffer);
                this.f1583A = a;
                if (a == 0) {
                    return true;
                }
            }
            if (this.f1617q != null) {
                if (!m38145b()) {
                    return false;
                }
                C1221c0 c0Var = this.f1617q;
                this.f1617q = null;
                this.f1610j.add(new C0287f(this.f1602b.mo38112a(c0Var), Math.max(0L, j), this.f1614n.m38117b(m38129f()), null));
                m38122m();
            }
            if (this.f1584B == 0) {
                this.f1585C = Math.max(0L, j);
                this.f1584B = 1;
            } else {
                long c = this.f1585C + this.f1614n.m38115c(m38132e() - this.f1605e.m33747m());
                if (this.f1584B == 1 && Math.abs(c - j) > 200000) {
                    StringBuilder sb = new StringBuilder(80);
                    sb.append("Discontinuity detected [expected ");
                    sb.append(c);
                    sb.append(", got ");
                    sb.append(j);
                    sb.append("]");
                    C1175j.m34417b("AudioTrack", sb.toString());
                    this.f1584B = 2;
                }
                if (this.f1584B == 2) {
                    long j2 = j - c;
                    this.f1585C += j2;
                    this.f1584B = 1;
                    AudioSink.AbstractC0281a aVar = this.f1611k;
                    if (!(aVar == null || j2 == 0)) {
                        aVar.mo33800a();
                    }
                }
            }
            str = "AudioTrack";
            if (this.f1614n.f1630a) {
                this.f1623w += byteBuffer.remaining();
            } else {
                this.f1624x += this.f1583A;
            }
            this.f1589G = byteBuffer;
        }
        if (this.f1614n.f1638i) {
            m38137c(j);
        } else {
            m38140b(this.f1589G, j);
        }
        if (!this.f1589G.hasRemaining()) {
            this.f1589G = null;
            return true;
        } else if (!this.f1609i.m33858e(m38129f())) {
            return false;
        } else {
            C1175j.m34414d(str, "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    /* renamed from: b */
    public final long m38143b(long j) {
        long a;
        long j2;
        C0287f fVar = null;
        while (!this.f1610j.isEmpty() && j >= this.f1610j.getFirst().f1646c) {
            fVar = this.f1610j.remove();
        }
        if (fVar != null) {
            this.f1618r = fVar.f1644a;
            this.f1620t = fVar.f1646c;
            this.f1619s = fVar.f1645b - this.f1585C;
        }
        if (this.f1618r.f4896a == 1.0f) {
            return (j + this.f1619s) - this.f1620t;
        }
        if (this.f1610j.isEmpty()) {
            j2 = this.f1619s;
            a = this.f1602b.mo38113a(j - this.f1620t);
        } else {
            j2 = this.f1619s;
            a = C1167d0.m34492a(j - this.f1620t, this.f1618r.f4896a);
        }
        return j2 + a;
    }

    /* renamed from: b */
    public void m38144b(int i) {
        if (this.f1597O != i) {
            this.f1597O = i;
            flush();
        }
    }

    /* renamed from: b */
    public final void m38140b(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.f1590H;
            boolean z = true;
            int i = 0;
            if (byteBuffer2 != null) {
                C1160a.m34520a(byteBuffer2 == byteBuffer);
            } else {
                this.f1590H = byteBuffer;
                if (C1167d0.f4688a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.f1591I;
                    if (bArr == null || bArr.length < remaining) {
                        this.f1591I = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.f1591I, 0, remaining);
                    byteBuffer.position(position);
                    this.f1592J = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (C1167d0.f4688a < 21) {
                int b = this.f1609i.m33864b(this.f1625y);
                if (b > 0) {
                    int write = this.f1615o.write(this.f1591I, this.f1592J, Math.min(remaining2, b));
                    i = write;
                    if (write > 0) {
                        this.f1592J += write;
                        byteBuffer.position(byteBuffer.position() + write);
                        i = write;
                    }
                }
            } else if (this.f1599Q) {
                if (j == -9223372036854775807L) {
                    z = false;
                }
                C1160a.m34518b(z);
                i = m38153a(this.f1615o, byteBuffer, remaining2, j);
            } else {
                i = m38154a(this.f1615o, byteBuffer, remaining2);
            }
            this.f1600R = SystemClock.elapsedRealtime();
            if (i >= 0) {
                if (this.f1614n.f1630a) {
                    this.f1625y += i;
                }
                if (i == remaining2) {
                    if (!this.f1614n.f1630a) {
                        this.f1626z += this.f1583A;
                    }
                    this.f1590H = null;
                    return;
                }
                return;
            }
            throw new AudioSink.WriteException(i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0066  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0059 -> B:9:0x0022). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m38145b() throws androidx.media2.exoplayer.external.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f1593K
            r1 = -1
            if (r0 != r1) goto L_0x0027
            r0 = r5
            androidx.media2.exoplayer.external.audio.DefaultAudioSink$d r0 = r0.f1614n
            boolean r0 = r0.f1638i
            if (r0 == 0) goto L_0x0017
            r0 = 0
            r6 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.f1587E
            int r0 = r0.length
            r6 = r0
        L_0x001d:
            r0 = r5
            r1 = r6
            r0.f1593K = r1
        L_0x0022:
            r0 = 1
            r6 = r0
            goto L_0x0029
        L_0x0027:
            r0 = 0
            r6 = r0
        L_0x0029:
            r0 = r5
            int r0 = r0.f1593K
            r7 = r0
            r0 = r5
            androidx.media2.exoplayer.external.audio.AudioProcessor[] r0 = r0.f1587E
            r8 = r0
            r0 = r7
            r1 = r8
            int r1 = r1.length
            if (r0 >= r1) goto L_0x0066
            r0 = r8
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0047
            r0 = r8
            r0.mo33759e()
        L_0x0047:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m38137c(r1)
            r0 = r8
            boolean r0 = r0.mo33751c()
            if (r0 != 0) goto L_0x0059
            r0 = 0
            return r0
        L_0x0059:
            r0 = r5
            r1 = r5
            int r1 = r1.f1593K
            r2 = 1
            int r1 = r1 + r2
            r0.f1593K = r1
            goto L_0x0022
        L_0x0066:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f1590H
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0080
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m38140b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f1590H
            if (r0 == 0) goto L_0x0080
            r0 = 0
            return r0
        L_0x0080:
            r0 = r5
            r1 = -1
            r0.f1593K = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.DefaultAudioSink.m38145b():boolean");
    }

    /* renamed from: c */
    public final void m38137c(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.f1587E.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f1588F[i - 1];
            } else {
                byteBuffer = this.f1589G;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f1580a;
                }
            }
            if (i == length) {
                m38140b(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.f1587E[i];
                audioProcessor.mo33753a(byteBuffer);
                ByteBuffer d = audioProcessor.mo33750d();
                this.f1588F[i] = d;
                if (d.hasRemaining()) {
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

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: c */
    public boolean mo38139c() {
        return !m38126i() || (this.f1594L && !mo38165U());
    }

    /* renamed from: d */
    public final void m38135d() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.f1587E;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.flush();
                this.f1588F[i] = audioProcessor.mo33750d();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: e */
    public final long m38132e() {
        C0285d dVar = this.f1614n;
        return dVar.f1630a ? this.f1623w / dVar.f1631b : this.f1624x;
    }

    /* renamed from: f */
    public final long m38129f() {
        C0285d dVar = this.f1614n;
        return dVar.f1630a ? this.f1625y / dVar.f1633d : this.f1626z;
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void flush() {
        if (m38126i()) {
            this.f1623w = 0L;
            this.f1624x = 0L;
            this.f1625y = 0L;
            this.f1626z = 0L;
            this.f1583A = 0;
            C1221c0 c0Var = this.f1617q;
            if (c0Var != null) {
                this.f1618r = c0Var;
                this.f1617q = null;
            } else if (!this.f1610j.isEmpty()) {
                this.f1618r = this.f1610j.getLast().f1644a;
            }
            this.f1610j.clear();
            this.f1619s = 0L;
            this.f1620t = 0L;
            this.f1605e.m33746n();
            m38135d();
            this.f1589G = null;
            this.f1590H = null;
            this.f1595M = false;
            this.f1594L = false;
            this.f1593K = -1;
            this.f1621u = null;
            this.f1622v = 0;
            this.f1584B = 0;
            if (this.f1609i.m33861d()) {
                this.f1615o.pause();
            }
            AudioTrack audioTrack = this.f1615o;
            this.f1615o = null;
            C0285d dVar = this.f1613m;
            if (dVar != null) {
                this.f1614n = dVar;
                this.f1613m = null;
            }
            this.f1609i.m33855g();
            this.f1608h.close();
            new C0282a(audioTrack).start();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    /* renamed from: g */
    public C1221c0 mo38128g() {
        return this.f1618r;
    }

    /* renamed from: h */
    public final void m38127h() throws AudioSink.InitializationException {
        this.f1608h.block();
        C0285d dVar = this.f1614n;
        C1160a.m34522a(dVar);
        AudioTrack a = dVar.m38118a(this.f1599Q, this.f1616p, this.f1597O);
        this.f1615o = a;
        int audioSessionId = a.getAudioSessionId();
        if (f1581S && C1167d0.f4688a < 21) {
            AudioTrack audioTrack = this.f1612l;
            if (!(audioTrack == null || audioSessionId == audioTrack.getAudioSessionId())) {
                m38124k();
            }
            if (this.f1612l == null) {
                this.f1612l = m38131e(audioSessionId);
            }
        }
        if (this.f1597O != audioSessionId) {
            this.f1597O = audioSessionId;
            AudioSink.AbstractC0281a aVar = this.f1611k;
            if (aVar != null) {
                aVar.mo33799a(audioSessionId);
            }
        }
        this.f1618r = this.f1614n.f1639j ? this.f1602b.mo38112a(this.f1618r) : C1221c0.f4895e;
        m38122m();
        C1290o oVar = this.f1609i;
        AudioTrack audioTrack2 = this.f1615o;
        C0285d dVar2 = this.f1614n;
        oVar.m33867a(audioTrack2, dVar2.f1636g, dVar2.f1633d, dVar2.f1637h);
        m38123l();
        int i = this.f1598P.f5138a;
        if (i != 0) {
            this.f1615o.attachAuxEffect(i);
            this.f1615o.setAuxEffectSendLevel(this.f1598P.f5139b);
        }
    }

    /* renamed from: i */
    public final boolean m38126i() {
        return this.f1615o != null;
    }

    /* renamed from: j */
    public final void m38125j() {
        if (!this.f1595M) {
            this.f1595M = true;
            this.f1609i.m33862c(m38129f());
            this.f1615o.stop();
            this.f1622v = 0;
        }
    }

    /* renamed from: k */
    public final void m38124k() {
        AudioTrack audioTrack = this.f1612l;
        if (audioTrack != null) {
            this.f1612l = null;
            new C0283b(this, audioTrack).start();
        }
    }

    /* renamed from: l */
    public final void m38123l() {
        if (m38126i()) {
            if (C1167d0.f4688a >= 21) {
                m38155a(this.f1615o, this.f1586D);
            } else {
                m38142b(this.f1615o, this.f1586D);
            }
        }
    }

    /* renamed from: m */
    public final void m38122m() {
        AudioProcessor[] audioProcessorArr = this.f1614n.f1640k;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.mo33752b()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.f1587E = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.f1588F = new ByteBuffer[size];
        m38135d();
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void pause() {
        this.f1596N = false;
        if (m38126i() && this.f1609i.m33857f()) {
            this.f1615o.pause();
        }
    }

    @Override // androidx.media2.exoplayer.external.audio.AudioSink
    public void setVolume(float f) {
        if (this.f1586D != f) {
            this.f1586D = f;
            m38123l();
        }
    }
}
