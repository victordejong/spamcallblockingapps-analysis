package androidx.media2.exoplayer.external.audio;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioProcessor.class */
public interface AudioProcessor {

    /* renamed from: a */
    public static final ByteBuffer f1580a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/audio/AudioProcessor$UnhandledFormatException.class */
    public static final class UnhandledFormatException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public UnhandledFormatException(int r5, int r6, int r7) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 78
                r1.<init>(r2)
                r8 = r0
                r0 = r8
                java.lang.String r1 = "Unhandled format: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " Hz, "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                java.lang.String r1 = " channels in encoding "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r8
                r1 = r7
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r8
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.audio.AudioProcessor.UnhandledFormatException.<init>(int, int, int):void");
        }
    }

    /* renamed from: a */
    void mo33763a();

    /* renamed from: a */
    void mo33753a(ByteBuffer byteBuffer);

    /* renamed from: a */
    boolean mo33754a(int i, int i2, int i3) throws UnhandledFormatException;

    /* renamed from: b */
    boolean mo33752b();

    /* renamed from: c */
    boolean mo33751c();

    /* renamed from: d */
    ByteBuffer mo33750d();

    /* renamed from: e */
    void mo33759e();

    /* renamed from: f */
    int mo33758f();

    void flush();

    /* renamed from: g */
    int mo33757g();

    /* renamed from: h */
    int mo33756h();
}
