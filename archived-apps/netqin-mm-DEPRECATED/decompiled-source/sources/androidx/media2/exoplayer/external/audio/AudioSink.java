package androidx.media2.exoplayer.external.audio;

import java.nio.ByteBuffer;
import p012b.p076s.p078b.p079a.C1221c0;
import p012b.p076s.p078b.p079a.p083p0.C1271c;
import p012b.p076s.p078b.p079a.p083p0.C1292p;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink.class */
public interface AudioSink {

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$ConfigurationException.class */
    public static final class ConfigurationException extends Exception {
        public ConfigurationException(String str) {
            super(str);
        }

        public ConfigurationException(Throwable th) {
            super(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$InitializationException.class */
    public static final class InitializationException extends Exception {
        public final int audioTrackState;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public InitializationException(int r5, int r6, int r7, int r8) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 82
                r1.<init>(r2)
                r9 = r0
                r0 = r9
                java.lang.String r1 = "AudioTrack init failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ", Config("
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ", "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                r1 = r8
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r9
                java.lang.String r1 = ")"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r9
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.audioTrackState = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioSink.InitializationException.<init>(int, int, int, int):void");
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$WriteException.class */
    public static final class WriteException extends Exception {
        public final int errorCode;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public WriteException(int r5) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 36
                r1.<init>(r2)
                r6 = r0
                r0 = r6
                java.lang.String r1 = "AudioTrack write failed: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r6
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r6
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                r0 = r4
                r1 = r5
                r0.errorCode = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioSink.WriteException.<init>(int):void");
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.audio.AudioSink$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioSink$a.class */
    public interface AbstractC0281a {
        /* renamed from: a */
        void mo33800a();

        /* renamed from: a */
        void mo33799a(int i);

        /* renamed from: a */
        void mo33798a(int i, long j, long j2);
    }

    /* renamed from: S */
    void mo38167S();

    /* renamed from: T */
    void mo38166T() throws WriteException;

    /* renamed from: U */
    boolean mo38165U();

    /* renamed from: V */
    void mo38164V();

    /* renamed from: W */
    void mo38163W();

    /* renamed from: a */
    long mo38146a(boolean z);

    /* renamed from: a */
    C1221c0 mo38150a(C1221c0 c0Var);

    /* renamed from: a */
    void mo38162a();

    /* renamed from: a */
    void mo38161a(int i);

    /* renamed from: a */
    void mo38159a(int i, int i2, int i3, int i4, int[] iArr, int i5, int i6) throws ConfigurationException;

    /* renamed from: a */
    void mo38152a(AbstractC0281a aVar);

    /* renamed from: a */
    void mo38149a(C1271c cVar);

    /* renamed from: a */
    void mo38148a(C1292p pVar);

    /* renamed from: a */
    boolean mo38160a(int i, int i2);

    /* renamed from: a */
    boolean mo38147a(ByteBuffer byteBuffer, long j) throws InitializationException, WriteException;

    /* renamed from: c */
    boolean mo38139c();

    void flush();

    /* renamed from: g */
    C1221c0 mo38128g();

    void pause();

    void setVolume(float f);
}
