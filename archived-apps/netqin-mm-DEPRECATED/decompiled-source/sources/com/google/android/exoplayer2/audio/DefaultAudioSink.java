package com.google.android.exoplayer2.audio;

import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.ConditionVariable;
import android.os.SystemClock;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.audio.AudioSink;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import p131c.p161d.p170b.p188c.C2910h0;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p206s0.C2976g;
import p131c.p161d.p170b.p188c.p206s0.C2979h;
import p131c.p161d.p170b.p188c.p206s0.C2982i;
import p131c.p161d.p170b.p188c.p206s0.C2985j;
import p131c.p161d.p170b.p188c.p206s0.C2990m;
import p131c.p161d.p170b.p188c.p206s0.C2992n;
import p131c.p161d.p170b.p188c.p206s0.C2994p;
import p131c.p161d.p170b.p188c.p206s0.C2995q;
import p131c.p161d.p170b.p188c.p206s0.C2996r;
import p131c.p161d.p170b.p188c.p206s0.C3000t;
import p131c.p161d.p170b.p188c.p206s0.C3001u;
import p131c.p161d.p170b.p188c.p206s0.C3003w;
import p131c.p161d.p170b.p188c.p206s0.C3004x;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink.class */
public final class DefaultAudioSink implements AudioSink {

    /* renamed from: S */
    public static boolean f21976S = false;

    /* renamed from: T */
    public static boolean f21977T = false;

    /* renamed from: A */
    public int f21978A;

    /* renamed from: B */
    public int f21979B;

    /* renamed from: C */
    public long f21980C;

    /* renamed from: D */
    public float f21981D;

    /* renamed from: E */
    public AudioProcessor[] f21982E;

    /* renamed from: F */
    public ByteBuffer[] f21983F;

    /* renamed from: G */
    public ByteBuffer f21984G;

    /* renamed from: H */
    public ByteBuffer f21985H;

    /* renamed from: I */
    public byte[] f21986I;

    /* renamed from: J */
    public int f21987J;

    /* renamed from: K */
    public int f21988K;

    /* renamed from: L */
    public boolean f21989L;

    /* renamed from: M */
    public boolean f21990M;

    /* renamed from: N */
    public boolean f21991N;

    /* renamed from: O */
    public int f21992O;

    /* renamed from: P */
    public C2992n f21993P;

    /* renamed from: Q */
    public boolean f21994Q;

    /* renamed from: R */
    public long f21995R;

    /* renamed from: a */
    public final C2985j f21996a;

    /* renamed from: b */
    public final AbstractC7126c f21997b;

    /* renamed from: c */
    public final boolean f21998c;

    /* renamed from: d */
    public final C2994p f21999d;

    /* renamed from: e */
    public final C3004x f22000e;

    /* renamed from: f */
    public final AudioProcessor[] f22001f;

    /* renamed from: g */
    public final AudioProcessor[] f22002g;

    /* renamed from: h */
    public final ConditionVariable f22003h;

    /* renamed from: i */
    public final C2990m f22004i;

    /* renamed from: j */
    public final ArrayDeque<C7129f> f22005j;

    /* renamed from: k */
    public AudioSink.AbstractC7123a f22006k;

    /* renamed from: l */
    public AudioTrack f22007l;

    /* renamed from: m */
    public C7127d f22008m;

    /* renamed from: n */
    public C7127d f22009n;

    /* renamed from: o */
    public AudioTrack f22010o;

    /* renamed from: p */
    public C2982i f22011p;

    /* renamed from: q */
    public C2910h0 f22012q;

    /* renamed from: r */
    public C2910h0 f22013r;

    /* renamed from: s */
    public long f22014s;

    /* renamed from: t */
    public long f22015t;

    /* renamed from: u */
    public ByteBuffer f22016u;

    /* renamed from: v */
    public int f22017v;

    /* renamed from: w */
    public long f22018w;

    /* renamed from: x */
    public long f22019x;

    /* renamed from: y */
    public long f22020y;

    /* renamed from: z */
    public long f22021z;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$InvalidAudioTrackTimestampException.class */
    public static final class InvalidAudioTrackTimestampException extends RuntimeException {
        public InvalidAudioTrackTimestampException(String str) {
            super(str);
        }

        public /* synthetic */ InvalidAudioTrackTimestampException(String str, C7124a aVar) {
            this(str);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$a.class */
    public class C7124a extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AudioTrack f22022a;

        public C7124a(AudioTrack audioTrack) {
            this.f22022a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            try {
                this.f22022a.flush();
                this.f22022a.release();
            } finally {
                DefaultAudioSink.this.f22003h.open();
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$b.class */
    public class C7125b extends Thread {

        /* renamed from: a */
        public final /* synthetic */ AudioTrack f22024a;

        public C7125b(DefaultAudioSink defaultAudioSink, AudioTrack audioTrack) {
            this.f22024a = audioTrack;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            this.f22024a.release();
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$c.class */
    public interface AbstractC7126c {
        /* renamed from: a */
        long mo18630a();

        /* renamed from: a */
        long mo18629a(long j);

        /* renamed from: a */
        C2910h0 mo18628a(C2910h0 h0Var);

        /* renamed from: b */
        AudioProcessor[] mo18627b();
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$d.class */
    public static final class C7127d {

        /* renamed from: a */
        public final boolean f22025a;

        /* renamed from: b */
        public final int f22026b;

        /* renamed from: c */
        public final int f22027c;

        /* renamed from: d */
        public final int f22028d;

        /* renamed from: e */
        public final int f22029e;

        /* renamed from: f */
        public final int f22030f;

        /* renamed from: g */
        public final int f22031g;

        /* renamed from: h */
        public final int f22032h;

        /* renamed from: i */
        public final boolean f22033i;

        /* renamed from: j */
        public final boolean f22034j;

        /* renamed from: k */
        public final AudioProcessor[] f22035k;

        public C7127d(boolean z, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z2, boolean z3, AudioProcessor[] audioProcessorArr) {
            this.f22025a = z;
            this.f22026b = i;
            this.f22027c = i2;
            this.f22028d = i3;
            this.f22029e = i4;
            this.f22030f = i5;
            this.f22031g = i6;
            this.f22032h = i7 == 0 ? m18637a() : i7;
            this.f22033i = z2;
            this.f22034j = z3;
            this.f22035k = audioProcessorArr;
        }

        /* renamed from: a */
        public final int m18637a() {
            if (this.f22025a) {
                int minBufferSize = AudioTrack.getMinBufferSize(this.f22029e, this.f22030f, this.f22031g);
                C2877e.m28731b(minBufferSize != -2);
                return C2885h0.m28685a(minBufferSize * 4, ((int) m18636a(250000L)) * this.f22028d, (int) Math.max(minBufferSize, m18636a(750000L) * this.f22028d));
            }
            int c = DefaultAudioSink.m18653c(this.f22031g);
            int i = c;
            if (this.f22031g == 5) {
                i = c * 2;
            }
            return (int) ((i * 250000) / 1000000);
        }

        /* renamed from: a */
        public long m18636a(long j) {
            return (j * this.f22029e) / 1000000;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x007f -> B:14:0x006a). Please submit an issue!!! */
        /* renamed from: a */
        public AudioTrack m18634a(boolean z, C2982i iVar, int i) throws AudioSink.InitializationException {
            AudioTrack audioTrack;
            if (C2885h0.f10477a >= 21) {
                audioTrack = m18632b(z, iVar, i);
            } else {
                int c = C2885h0.m28640c(iVar.f10730c);
                audioTrack = i == 0 ? new AudioTrack(c, this.f22029e, this.f22030f, this.f22031g, this.f22032h, 1) : new AudioTrack(c, this.f22029e, this.f22030f, this.f22031g, this.f22032h, 1, i);
            }
            int state = audioTrack.getState();
            if (state == 1) {
                return audioTrack;
            }
            try {
                audioTrack.release();
            } catch (Exception e) {
            }
            throw new AudioSink.InitializationException(state, this.f22029e, this.f22030f, this.f22032h);
        }

        /* renamed from: a */
        public boolean m18635a(C7127d dVar) {
            return dVar.f22031g == this.f22031g && dVar.f22029e == this.f22029e && dVar.f22030f == this.f22030f;
        }

        /* renamed from: b */
        public long m18633b(long j) {
            return (j * 1000000) / this.f22029e;
        }

        /* renamed from: b */
        public final AudioTrack m18632b(boolean z, C2982i iVar, int i) {
            AudioAttributes build = z ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : iVar.m28300a();
            AudioFormat build2 = new AudioFormat.Builder().setChannelMask(this.f22030f).setEncoding(this.f22031g).setSampleRate(this.f22029e).build();
            int i2 = this.f22032h;
            if (i == 0) {
                i = 0;
            }
            return new AudioTrack(build, build2, i2, 1, i);
        }

        /* renamed from: c */
        public long m18631c(long j) {
            return (j * 1000000) / this.f22027c;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$e */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$e.class */
    public static class C7128e implements AbstractC7126c {

        /* renamed from: a */
        public final AudioProcessor[] f22036a;

        /* renamed from: b */
        public final C3001u f22037b = new C3001u();

        /* renamed from: c */
        public final C3003w f22038c;

        public C7128e(AudioProcessor... audioProcessorArr) {
            AudioProcessor[] audioProcessorArr2 = new AudioProcessor[audioProcessorArr.length + 2];
            this.f22036a = audioProcessorArr2;
            System.arraycopy(audioProcessorArr, 0, audioProcessorArr2, 0, audioProcessorArr.length);
            C3003w wVar = new C3003w();
            this.f22038c = wVar;
            AudioProcessor[] audioProcessorArr3 = this.f22036a;
            audioProcessorArr3[audioProcessorArr.length] = this.f22037b;
            audioProcessorArr3[audioProcessorArr.length + 1] = wVar;
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC7126c
        /* renamed from: a */
        public long mo18630a() {
            return this.f22037b.m28208j();
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC7126c
        /* renamed from: a */
        public long mo18629a(long j) {
            return this.f22038c.m28184a(j);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC7126c
        /* renamed from: a */
        public C2910h0 mo18628a(C2910h0 h0Var) {
            this.f22037b.m28216a(h0Var.f10542c);
            return new C2910h0(this.f22038c.m28183b(h0Var.f10540a), this.f22038c.m28185a(h0Var.f10541b), h0Var.f10542c);
        }

        @Override // com.google.android.exoplayer2.audio.DefaultAudioSink.AbstractC7126c
        /* renamed from: b */
        public AudioProcessor[] mo18627b() {
            return this.f22036a;
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$f */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$f.class */
    public static final class C7129f {

        /* renamed from: a */
        public final C2910h0 f22039a;

        /* renamed from: b */
        public final long f22040b;

        /* renamed from: c */
        public final long f22041c;

        public C7129f(C2910h0 h0Var, long j, long j2) {
            this.f22039a = h0Var;
            this.f22040b = j;
            this.f22041c = j2;
        }

        public /* synthetic */ C7129f(C2910h0 h0Var, long j, long j2, C7124a aVar) {
            this(h0Var, j, j2);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.DefaultAudioSink$g */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/DefaultAudioSink$g.class */
    public final class C7130g implements C2990m.AbstractC2991a {
        public C7130g() {
        }

        public /* synthetic */ C7130g(DefaultAudioSink defaultAudioSink, C7124a aVar) {
            this();
        }

        @Override // p131c.p161d.p170b.p188c.p206s0.C2990m.AbstractC2991a
        /* renamed from: a */
        public void mo18623a(int i, long j) {
            if (DefaultAudioSink.this.f22006k != null) {
                DefaultAudioSink.this.f22006k.mo18684a(i, j, SystemClock.elapsedRealtime() - DefaultAudioSink.this.f21995R);
            }
        }

        @Override // p131c.p161d.p170b.p188c.p206s0.C2990m.AbstractC2991a
        /* renamed from: a */
        public void mo18622a(long j) {
            C2894o.m28594d("AudioTrack", "Ignoring impossibly large audio latency: " + j);
        }

        @Override // p131c.p161d.p170b.p188c.p206s0.C2990m.AbstractC2991a
        /* renamed from: a */
        public void mo18621a(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.m18646e() + ", " + DefaultAudioSink.this.m18644f();
            if (!DefaultAudioSink.f21977T) {
                C2894o.m28594d("AudioTrack", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }

        @Override // p131c.p161d.p170b.p188c.p206s0.C2990m.AbstractC2991a
        /* renamed from: b */
        public void mo18620b(long j, long j2, long j3, long j4) {
            String str = "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + DefaultAudioSink.this.m18646e() + ", " + DefaultAudioSink.this.m18644f();
            if (!DefaultAudioSink.f21977T) {
                C2894o.m28594d("AudioTrack", str);
                return;
            }
            throw new InvalidAudioTrackTimestampException(str, null);
        }
    }

    public DefaultAudioSink(C2985j jVar, AbstractC7126c cVar, boolean z) {
        this.f21996a = jVar;
        C2877e.m28737a(cVar);
        this.f21997b = cVar;
        this.f21998c = z;
        this.f22003h = new ConditionVariable(true);
        this.f22004i = new C2990m(new C7130g(this, null));
        this.f21999d = new C2994p();
        this.f22000e = new C3004x();
        ArrayList arrayList = new ArrayList();
        Collections.addAll(arrayList, new C3000t(), this.f21999d, this.f22000e);
        Collections.addAll(arrayList, cVar.mo18627b());
        this.f22001f = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[0]);
        this.f22002g = new AudioProcessor[]{new C2996r()};
        this.f21981D = 1.0f;
        this.f21979B = 0;
        this.f22011p = C2982i.f10727f;
        this.f21992O = 0;
        this.f21993P = new C2992n(0, 0.0f);
        this.f22013r = C2910h0.f10539e;
        this.f21988K = -1;
        this.f21982E = new AudioProcessor[0];
        this.f21983F = new ByteBuffer[0];
        this.f22005j = new ArrayDeque<>();
    }

    public DefaultAudioSink(C2985j jVar, AudioProcessor[] audioProcessorArr) {
        this(jVar, audioProcessorArr, false);
    }

    public DefaultAudioSink(C2985j jVar, AudioProcessor[] audioProcessorArr, boolean z) {
        this(jVar, new C7128e(audioProcessorArr), z);
    }

    /* renamed from: a */
    public static int m18674a(int i, ByteBuffer byteBuffer) {
        if (i == 7 || i == 8) {
            return C2995q.m28242a(byteBuffer);
        }
        if (i == 5) {
            return C2976g.m28316a();
        }
        if (i == 6 || i == 18) {
            return C2976g.m28308b(byteBuffer);
        }
        if (i == 17) {
            return C2979h.m28302a(byteBuffer);
        }
        if (i == 14) {
            int a = C2976g.m28312a(byteBuffer);
            return a == -1 ? 0 : C2976g.m28311a(byteBuffer, a) * 16;
        }
        throw new IllegalStateException("Unexpected audio encoding: " + i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002a, code lost:
        if (r3 == 5) goto L_0x002d;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m18673a(int r3, boolean r4) {
        /*
            r0 = r3
            r5 = r0
            int r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.f10477a
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
            int r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.f10477a
            r1 = 26
            if (r0 > r1) goto L_0x0057
            r0 = r5
            r3 = r0
            java.lang.String r0 = "fugu"
            java.lang.String r1 = p131c.p161d.p170b.p188c.p203g1.C2885h0.f10478b
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
            int r0 = p131c.p161d.p170b.p188c.p203g1.C2885h0.m28687a(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m18673a(int, boolean):int");
    }

    /* renamed from: a */
    public static int m18670a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i) {
        return audioTrack.write(byteBuffer, i, 1);
    }

    /* renamed from: a */
    public static void m18671a(AudioTrack audioTrack, float f) {
        audioTrack.setVolume(f);
    }

    /* renamed from: b */
    public static void m18657b(AudioTrack audioTrack, float f) {
        audioTrack.setStereoVolume(f, f);
    }

    /* renamed from: c */
    public static int m18653c(int i) {
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
        if (i == 18) {
            return 768000;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: d */
    public static AudioTrack m18649d(int i) {
        return new AudioTrack(3, 4000, 4, 2, 2, 0, i);
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: S */
    public void mo18683S() {
        this.f21991N = true;
        if (m18642h()) {
            this.f22004i.m28247i();
            this.f22010o.play();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: T */
    public void mo18682T() throws AudioSink.WriteException {
        if (!this.f21989L && m18642h() && m18660b()) {
            m18641i();
            this.f21989L = true;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: U */
    public boolean mo18681U() {
        return m18642h() && this.f22004i.m28255d(m18644f());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: V */
    public void mo18680V() {
        if (this.f21994Q) {
            this.f21994Q = false;
            this.f21992O = 0;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: W */
    public void mo18679W() {
        if (this.f21979B == 1) {
            this.f21979B = 2;
        }
    }

    /* renamed from: a */
    public final int m18669a(AudioTrack audioTrack, ByteBuffer byteBuffer, int i, long j) {
        if (C2885h0.f10477a >= 26) {
            return audioTrack.write(byteBuffer, i, 1, j * 1000);
        }
        if (this.f22016u == null) {
            ByteBuffer allocate = ByteBuffer.allocate(16);
            this.f22016u = allocate;
            allocate.order(ByteOrder.BIG_ENDIAN);
            this.f22016u.putInt(1431633921);
        }
        if (this.f22017v == 0) {
            this.f22016u.putInt(4, i);
            this.f22016u.putLong(8, j * 1000);
            this.f22016u.position(0);
            this.f22017v = i;
        }
        int remaining = this.f22016u.remaining();
        if (remaining > 0) {
            int write = audioTrack.write(this.f22016u, remaining, 1);
            if (write < 0) {
                this.f22017v = 0;
                return write;
            } else if (write < remaining) {
                return 0;
            }
        }
        int a = m18670a(audioTrack, byteBuffer, i);
        if (a < 0) {
            this.f22017v = 0;
            return a;
        }
        this.f22017v -= a;
        return a;
    }

    /* renamed from: a */
    public final long m18672a(long j) {
        return j + this.f22009n.m18633b(this.f21997b.mo18630a());
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public long mo18661a(boolean z) {
        if (!m18642h() || this.f21979B == 0) {
            return Long.MIN_VALUE;
        }
        return this.f21980C + m18672a(m18658b(Math.min(this.f22004i.m28261a(z), this.f22009n.m18633b(m18644f()))));
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18678a() {
        flush();
        m18640j();
        for (AudioProcessor audioProcessor : this.f22001f) {
            audioProcessor.mo18693a();
        }
        for (AudioProcessor audioProcessor2 : this.f22002g) {
            audioProcessor2.mo18693a();
        }
        this.f21992O = 0;
        this.f21991N = false;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18677a(int i) {
        C2877e.m28731b(C2885h0.f10477a >= 21);
        if (!this.f21994Q || this.f21992O != i) {
            this.f21994Q = true;
            this.f21992O = i;
            flush();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18675a(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) throws AudioSink.ConfigurationException {
        int[] iArr2;
        int i7;
        int i8;
        int i9;
        if (C2885h0.f10477a < 21 && i2 == 8 && iArr == null) {
            int[] iArr3 = new int[6];
            int i10 = 0;
            while (true) {
                iArr2 = iArr3;
                if (i10 >= 6) {
                    break;
                }
                iArr3[i10] = i10;
                i10++;
            }
        } else {
            iArr2 = iArr;
        }
        boolean f = C2885h0.m28630f(i);
        boolean z = f && i != 4;
        boolean z2 = this.f21998c && mo18676a(i2, 4) && C2885h0.m28632e(i);
        AudioProcessor[] audioProcessorArr = z2 ? this.f22002g : this.f22001f;
        if (z) {
            this.f22000e.m28182a(i5, i6);
            this.f21999d.m28244a(iArr2);
            AudioProcessor.C7122a aVar = new AudioProcessor.C7122a(i3, i2, i);
            AudioProcessor.C7122a aVar2 = aVar;
            for (AudioProcessor audioProcessor : audioProcessorArr) {
                try {
                    aVar = audioProcessor.mo18692a(aVar2);
                    if (audioProcessor.mo18690b()) {
                        aVar2 = aVar;
                    }
                } catch (AudioProcessor.UnhandledAudioFormatException e) {
                    throw new AudioSink.ConfigurationException(e);
                }
            }
            i8 = aVar.f21972a;
            i7 = aVar.f21973b;
            i9 = aVar.f21974c;
        } else {
            i9 = i;
            i7 = i2;
            i8 = i3;
        }
        int a = m18673a(i7, f);
        if (a != 0) {
            C7127d dVar = new C7127d(f, f ? C2885h0.m28651b(i, i2) : -1, i3, f ? C2885h0.m28651b(i9, i7) : -1, i8, a, i9, i4, z, z && !z2, audioProcessorArr);
            if (m18642h()) {
                this.f22008m = dVar;
            } else {
                this.f22009n = dVar;
            }
        } else {
            throw new AudioSink.ConfigurationException("Unsupported channel count: " + i7);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18668a(C2910h0 h0Var) {
        C7127d dVar = this.f22009n;
        if (dVar != null && !dVar.f22034j) {
            this.f22013r = C2910h0.f10539e;
        } else if (h0Var.equals(mo18643g())) {
        } else {
            if (m18642h()) {
                this.f22012q = h0Var;
            } else {
                this.f22013r = h0Var;
            }
        }
    }

    /* renamed from: a */
    public final void m18667a(C2910h0 h0Var, long j) {
        this.f22005j.add(new C7129f(this.f22009n.f22034j ? this.f21997b.mo18628a(h0Var) : C2910h0.f10539e, Math.max(0L, j), this.f22009n.m18633b(m18644f()), null));
        m18638l();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18666a(C2982i iVar) {
        if (!this.f22011p.equals(iVar)) {
            this.f22011p = iVar;
            if (!this.f21994Q) {
                flush();
                this.f21992O = 0;
            }
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18665a(C2992n nVar) {
        if (!this.f21993P.equals(nVar)) {
            int i = nVar.f10777a;
            float f = nVar.f10778b;
            AudioTrack audioTrack = this.f22010o;
            if (audioTrack != null) {
                if (this.f21993P.f10777a != i) {
                    audioTrack.attachAuxEffect(i);
                }
                if (i != 0) {
                    this.f22010o.setAuxEffectSendLevel(f);
                }
            }
            this.f21993P = nVar;
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public void mo18664a(AudioSink.AbstractC7123a aVar) {
        this.f22006k = aVar;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public boolean mo18676a(int i, int i2) {
        boolean z;
        if (C2885h0.m28630f(i2)) {
            boolean z2 = true;
            if (i2 == 4) {
                z2 = C2885h0.f10477a >= 21;
            }
            return z2;
        }
        C2985j jVar = this.f21996a;
        if (jVar != null && jVar.m28297a(i2)) {
            z = true;
            if (i != -1) {
                if (i <= this.f21996a.m28298a()) {
                    z = true;
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: a */
    public boolean mo18662a(ByteBuffer byteBuffer, long j) throws AudioSink.InitializationException, AudioSink.WriteException {
        ByteBuffer byteBuffer2 = this.f21984G;
        C2877e.m28734a(byteBuffer2 == null || byteBuffer == byteBuffer2);
        if (this.f22008m != null) {
            if (!m18660b()) {
                return false;
            }
            if (!this.f22008m.m18635a(this.f22009n)) {
                m18641i();
                if (mo18681U()) {
                    return false;
                }
                flush();
            } else {
                this.f22009n = this.f22008m;
                this.f22008m = null;
            }
            m18667a(this.f22013r, j);
        }
        if (!m18642h()) {
            m18652c(j);
            if (this.f21991N) {
                mo18683S();
            }
        }
        if (!this.f22004i.m28251f(m18644f())) {
            return false;
        }
        if (this.f21984G == null) {
            if (!byteBuffer.hasRemaining()) {
                return true;
            }
            C7127d dVar = this.f22009n;
            if (!dVar.f22025a && this.f21978A == 0) {
                int a = m18674a(dVar.f22031g, byteBuffer);
                this.f21978A = a;
                if (a == 0) {
                    return true;
                }
            }
            if (this.f22012q != null) {
                if (!m18660b()) {
                    return false;
                }
                C2910h0 h0Var = this.f22012q;
                this.f22012q = null;
                m18667a(h0Var, j);
            }
            if (this.f21979B == 0) {
                this.f21980C = Math.max(0L, j);
                this.f21979B = 1;
            } else {
                long c = this.f21980C + this.f22009n.m18631c(m18646e() - this.f22000e.m28177j());
                if (this.f21979B == 1 && Math.abs(c - j) > 200000) {
                    C2894o.m28597b("AudioTrack", "Discontinuity detected [expected " + c + ", got " + j + "]");
                    this.f21979B = 2;
                }
                if (this.f21979B == 2) {
                    long j2 = j - c;
                    this.f21980C += j2;
                    this.f21979B = 1;
                    AudioSink.AbstractC7123a aVar = this.f22006k;
                    if (!(aVar == null || j2 == 0)) {
                        aVar.mo18686a();
                    }
                }
            }
            if (this.f22009n.f22025a) {
                this.f22018w += byteBuffer.remaining();
            } else {
                this.f22019x += this.f21978A;
            }
            this.f21984G = byteBuffer;
        }
        if (this.f22009n.f22033i) {
            m18648d(j);
        } else {
            m18655b(this.f21984G, j);
        }
        if (!this.f21984G.hasRemaining()) {
            this.f21984G = null;
            return true;
        } else if (!this.f22004i.m28253e(m18644f())) {
            return false;
        } else {
            C2894o.m28594d("AudioTrack", "Resetting stalled audio track");
            flush();
            return true;
        }
    }

    /* renamed from: b */
    public final long m18658b(long j) {
        long j2;
        long a;
        C7129f fVar = null;
        while (!this.f22005j.isEmpty() && j >= this.f22005j.getFirst().f22041c) {
            fVar = this.f22005j.remove();
        }
        if (fVar != null) {
            this.f22013r = fVar.f22039a;
            this.f22015t = fVar.f22041c;
            this.f22014s = fVar.f22040b - this.f21980C;
        }
        if (this.f22013r.f10540a == 1.0f) {
            return (j + this.f22014s) - this.f22015t;
        }
        if (this.f22005j.isEmpty()) {
            j2 = this.f22014s;
            a = this.f21997b.mo18629a(j - this.f22015t);
        } else {
            j2 = this.f22014s;
            a = C2885h0.m28684a(j - this.f22015t, this.f22013r.f10540a);
        }
        return j2 + a;
    }

    /* renamed from: b */
    public final void m18655b(ByteBuffer byteBuffer, long j) throws AudioSink.WriteException {
        if (byteBuffer.hasRemaining()) {
            ByteBuffer byteBuffer2 = this.f21985H;
            boolean z = true;
            int i = 0;
            if (byteBuffer2 != null) {
                C2877e.m28734a(byteBuffer2 == byteBuffer);
            } else {
                this.f21985H = byteBuffer;
                if (C2885h0.f10477a < 21) {
                    int remaining = byteBuffer.remaining();
                    byte[] bArr = this.f21986I;
                    if (bArr == null || bArr.length < remaining) {
                        this.f21986I = new byte[remaining];
                    }
                    int position = byteBuffer.position();
                    byteBuffer.get(this.f21986I, 0, remaining);
                    byteBuffer.position(position);
                    this.f21987J = 0;
                }
            }
            int remaining2 = byteBuffer.remaining();
            if (C2885h0.f10477a < 21) {
                int b = this.f22004i.m28259b(this.f22020y);
                if (b > 0) {
                    int write = this.f22010o.write(this.f21986I, this.f21987J, Math.min(remaining2, b));
                    i = write;
                    if (write > 0) {
                        this.f21987J += write;
                        byteBuffer.position(byteBuffer.position() + write);
                        i = write;
                    }
                }
            } else if (this.f21994Q) {
                if (j == -9223372036854775807L) {
                    z = false;
                }
                C2877e.m28731b(z);
                i = m18669a(this.f22010o, byteBuffer, remaining2, j);
            } else {
                i = m18670a(this.f22010o, byteBuffer, remaining2);
            }
            this.f21995R = SystemClock.elapsedRealtime();
            if (i >= 0) {
                if (this.f22009n.f22025a) {
                    this.f22020y += i;
                }
                if (i == remaining2) {
                    if (!this.f22009n.f22025a) {
                        this.f22021z += this.f21978A;
                    }
                    this.f21985H = null;
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
    public final boolean m18660b() throws com.google.android.exoplayer2.audio.AudioSink.WriteException {
        /*
            r5 = this;
            r0 = r5
            int r0 = r0.f21988K
            r1 = -1
            if (r0 != r1) goto L_0x0027
            r0 = r5
            com.google.android.exoplayer2.audio.DefaultAudioSink$d r0 = r0.f22009n
            boolean r0 = r0.f22033i
            if (r0 == 0) goto L_0x0017
            r0 = 0
            r6 = r0
            goto L_0x001d
        L_0x0017:
            r0 = r5
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r0.f21982E
            int r0 = r0.length
            r6 = r0
        L_0x001d:
            r0 = r5
            r1 = r6
            r0.f21988K = r1
        L_0x0022:
            r0 = 1
            r6 = r0
            goto L_0x0029
        L_0x0027:
            r0 = 0
            r6 = r0
        L_0x0029:
            r0 = r5
            int r0 = r0.f21988K
            r7 = r0
            r0 = r5
            com.google.android.exoplayer2.audio.AudioProcessor[] r0 = r0.f21982E
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
            r0.mo18687e()
        L_0x0047:
            r0 = r5
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m18648d(r1)
            r0 = r8
            boolean r0 = r0.mo18689c()
            if (r0 != 0) goto L_0x0059
            r0 = 0
            return r0
        L_0x0059:
            r0 = r5
            r1 = r5
            int r1 = r1.f21988K
            r2 = 1
            int r1 = r1 + r2
            r0.f21988K = r1
            goto L_0x0022
        L_0x0066:
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f21985H
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0080
            r0 = r5
            r1 = r8
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.m18655b(r1, r2)
            r0 = r5
            java.nio.ByteBuffer r0 = r0.f21985H
            if (r0 == 0) goto L_0x0080
            r0 = 0
            return r0
        L_0x0080:
            r0 = r5
            r1 = -1
            r0.f21988K = r1
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.DefaultAudioSink.m18660b():boolean");
    }

    /* renamed from: c */
    public final void m18652c(long j) throws AudioSink.InitializationException {
        this.f22003h.block();
        C7127d dVar = this.f22009n;
        C2877e.m28737a(dVar);
        AudioTrack a = dVar.m18634a(this.f21994Q, this.f22011p, this.f21992O);
        this.f22010o = a;
        int audioSessionId = a.getAudioSessionId();
        if (f21976S && C2885h0.f10477a < 21) {
            AudioTrack audioTrack = this.f22007l;
            if (!(audioTrack == null || audioSessionId == audioTrack.getAudioSessionId())) {
                m18640j();
            }
            if (this.f22007l == null) {
                this.f22007l = m18649d(audioSessionId);
            }
        }
        if (this.f21992O != audioSessionId) {
            this.f21992O = audioSessionId;
            AudioSink.AbstractC7123a aVar = this.f22006k;
            if (aVar != null) {
                aVar.mo18685a(audioSessionId);
            }
        }
        m18667a(this.f22013r, j);
        C2990m mVar = this.f22004i;
        AudioTrack audioTrack2 = this.f22010o;
        C7127d dVar2 = this.f22009n;
        mVar.m28262a(audioTrack2, dVar2.f22031g, dVar2.f22028d, dVar2.f22032h);
        m18639k();
        int i = this.f21993P.f10777a;
        if (i != 0) {
            this.f22010o.attachAuxEffect(i);
            this.f22010o.setAuxEffectSendLevel(this.f21993P.f10778b);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: c */
    public boolean mo18654c() {
        return !m18642h() || (this.f21989L && !mo18681U());
    }

    /* renamed from: d */
    public final void m18650d() {
        int i = 0;
        while (true) {
            AudioProcessor[] audioProcessorArr = this.f21982E;
            if (i < audioProcessorArr.length) {
                AudioProcessor audioProcessor = audioProcessorArr[i];
                audioProcessor.flush();
                this.f21983F[i] = audioProcessor.mo18688d();
                i++;
            } else {
                return;
            }
        }
    }

    /* renamed from: d */
    public final void m18648d(long j) throws AudioSink.WriteException {
        ByteBuffer byteBuffer;
        int length = this.f21982E.length;
        int i = length;
        while (i >= 0) {
            if (i > 0) {
                byteBuffer = this.f21983F[i - 1];
            } else {
                byteBuffer = this.f21984G;
                if (byteBuffer == null) {
                    byteBuffer = AudioProcessor.f21970a;
                }
            }
            if (i == length) {
                m18655b(byteBuffer, j);
            } else {
                AudioProcessor audioProcessor = this.f21982E[i];
                audioProcessor.mo18691a(byteBuffer);
                ByteBuffer d = audioProcessor.mo18688d();
                this.f21983F[i] = d;
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

    /* renamed from: e */
    public final long m18646e() {
        C7127d dVar = this.f22009n;
        return dVar.f22025a ? this.f22018w / dVar.f22026b : this.f22019x;
    }

    /* renamed from: f */
    public final long m18644f() {
        C7127d dVar = this.f22009n;
        return dVar.f22025a ? this.f22020y / dVar.f22028d : this.f22021z;
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void flush() {
        if (m18642h()) {
            this.f22018w = 0L;
            this.f22019x = 0L;
            this.f22020y = 0L;
            this.f22021z = 0L;
            this.f21978A = 0;
            C2910h0 h0Var = this.f22012q;
            if (h0Var != null) {
                this.f22013r = h0Var;
                this.f22012q = null;
            } else if (!this.f22005j.isEmpty()) {
                this.f22013r = this.f22005j.getLast().f22039a;
            }
            this.f22005j.clear();
            this.f22014s = 0L;
            this.f22015t = 0L;
            this.f22000e.m28176k();
            m18650d();
            this.f21984G = null;
            this.f21985H = null;
            this.f21990M = false;
            this.f21989L = false;
            this.f21988K = -1;
            this.f22016u = null;
            this.f22017v = 0;
            this.f21979B = 0;
            if (this.f22004i.m28256d()) {
                this.f22010o.pause();
            }
            AudioTrack audioTrack = this.f22010o;
            this.f22010o = null;
            C7127d dVar = this.f22008m;
            if (dVar != null) {
                this.f22009n = dVar;
                this.f22008m = null;
            }
            this.f22004i.m28250g();
            this.f22003h.close();
            new C7124a(audioTrack).start();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    /* renamed from: g */
    public C2910h0 mo18643g() {
        C2910h0 h0Var = this.f22012q;
        if (h0Var == null) {
            h0Var = !this.f22005j.isEmpty() ? this.f22005j.getLast().f22039a : this.f22013r;
        }
        return h0Var;
    }

    /* renamed from: h */
    public final boolean m18642h() {
        return this.f22010o != null;
    }

    /* renamed from: i */
    public final void m18641i() {
        if (!this.f21990M) {
            this.f21990M = true;
            this.f22004i.m28257c(m18644f());
            this.f22010o.stop();
            this.f22017v = 0;
        }
    }

    /* renamed from: j */
    public final void m18640j() {
        AudioTrack audioTrack = this.f22007l;
        if (audioTrack != null) {
            this.f22007l = null;
            new C7125b(this, audioTrack).start();
        }
    }

    /* renamed from: k */
    public final void m18639k() {
        if (m18642h()) {
            if (C2885h0.f10477a >= 21) {
                m18671a(this.f22010o, this.f21981D);
            } else {
                m18657b(this.f22010o, this.f21981D);
            }
        }
    }

    /* renamed from: l */
    public final void m18638l() {
        AudioProcessor[] audioProcessorArr = this.f22009n.f22035k;
        ArrayList arrayList = new ArrayList();
        for (AudioProcessor audioProcessor : audioProcessorArr) {
            if (audioProcessor.mo18690b()) {
                arrayList.add(audioProcessor);
            } else {
                audioProcessor.flush();
            }
        }
        int size = arrayList.size();
        this.f21982E = (AudioProcessor[]) arrayList.toArray(new AudioProcessor[size]);
        this.f21983F = new ByteBuffer[size];
        m18650d();
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void pause() {
        this.f21991N = false;
        if (m18642h() && this.f22004i.m28252f()) {
            this.f22010o.pause();
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioSink
    public void setVolume(float f) {
        if (this.f21981D != f) {
            this.f21981D = f;
            m18639k();
        }
    }
}
