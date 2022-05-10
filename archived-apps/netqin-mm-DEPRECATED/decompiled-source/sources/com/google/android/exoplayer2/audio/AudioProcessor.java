package com.google.android.exoplayer2.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a */
    public static final ByteBuffer f21970a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$UnhandledAudioFormatException.class */
    public static final class UnhandledAudioFormatException extends Exception {
        public UnhandledAudioFormatException(C7122a aVar) {
            super("Unhandled format: " + aVar);
        }
    }

    /* renamed from: com.google.android.exoplayer2.audio.AudioProcessor$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/audio/AudioProcessor$a.class */
    public static final class C7122a {

        /* renamed from: e */
        public static final C7122a f21971e = new C7122a(-1, -1, -1);

        /* renamed from: a */
        public final int f21972a;

        /* renamed from: b */
        public final int f21973b;

        /* renamed from: c */
        public final int f21974c;

        /* renamed from: d */
        public final int f21975d;

        public C7122a(int i, int i2, int i3) {
            this.f21972a = i;
            this.f21973b = i2;
            this.f21974c = i3;
            this.f21975d = C2885h0.m28630f(i3) ? C2885h0.m28651b(i3, i2) : -1;
        }

        public String toString() {
            return "AudioFormat[sampleRate=" + this.f21972a + ", channelCount=" + this.f21973b + ", encoding=" + this.f21974c + ']';
        }
    }

    /* renamed from: a */
    C7122a mo18692a(C7122a aVar) throws UnhandledAudioFormatException;

    /* renamed from: a */
    void mo18693a();

    /* renamed from: a */
    void mo18691a(ByteBuffer byteBuffer);

    /* renamed from: b */
    boolean mo18690b();

    /* renamed from: c */
    boolean mo18689c();

    /* renamed from: d */
    ByteBuffer mo18688d();

    /* renamed from: e */
    void mo18687e();

    void flush();
}
