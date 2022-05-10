package kotlin.p615io;

import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import kotlin.jvm.internal.Lambda;
import p573f.p590w.p591b.AbstractC10020a;
/* renamed from: kotlin.io.ConsoleKt$decoder$2 */
/* loaded from: classes2-dex2jar.jar:kotlin/io/ConsoleKt$decoder$2.class */
public final class ConsoleKt$decoder$2 extends Lambda implements AbstractC10020a<CharsetDecoder> {
    public static final ConsoleKt$decoder$2 INSTANCE = new ConsoleKt$decoder$2();

    public ConsoleKt$decoder$2() {
        super(0);
    }

    @Override // p573f.p590w.p591b.AbstractC10020a
    public final CharsetDecoder invoke() {
        return Charset.defaultCharset().newDecoder();
    }
}
