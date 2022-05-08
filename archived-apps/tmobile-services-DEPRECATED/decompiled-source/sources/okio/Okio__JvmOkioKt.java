package okio;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.Socket;
import java.util.logging.Logger;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(bv = {1, 0, 3}, d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u001a\u0011\u0010\u0002\u001a\u00020\u0001*\u00020��¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u001d\u0010\u0006\u001a\u00020\u0001*\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007\u001a\u0011\u0010\u0006\u001a\u00020\u0001*\u00020\b¢\u0006\u0004\b\u0006\u0010\t\u001a\u0011\u0010\u0006\u001a\u00020\u0001*\u00020\n¢\u0006\u0004\b\u0006\u0010\u000b\u001a'\u0010\u0006\u001a\u00020\u0001*\u00020\f2\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r\"\u00020\u000eH\u0007¢\u0006\u0004\b\u0006\u0010\u0010\u001a\u0011\u0010\u0012\u001a\u00020\u0011*\u00020��¢\u0006\u0004\b\u0012\u0010\u0013\u001a\u0011\u0010\u0012\u001a\u00020\u0011*\u00020\u0014¢\u0006\u0004\b\u0012\u0010\u0015\u001a\u0011\u0010\u0012\u001a\u00020\u0011*\u00020\n¢\u0006\u0004\b\u0012\u0010\u0016\u001a'\u0010\u0012\u001a\u00020\u0011*\u00020\f2\u0012\u0010\u000f\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000e0\r\"\u00020\u000eH\u0007¢\u0006\u0004\b\u0012\u0010\u0017\"$\u0010\u001a\u001a\n \u0019*\u0004\u0018\u00010\u00180\u00188\u0002@\u0002X\u0082\u0004¢\u0006\f\n\u0004\b\u001a\u0010\u001b\u001a\u0004\b\u001c\u0010\u001d\"\u001e\u0010 \u001a\u00020\u0004*\u00060\u001ej\u0002`\u001f8@@��X\u0080\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006\""}, d2 = {"Ljava/io/File;", "Lokio/Sink;", "appendingSink", "(Ljava/io/File;)Lokio/Sink;", "", "append", "sink", "(Ljava/io/File;Z)Lokio/Sink;", "Ljava/io/OutputStream;", "(Ljava/io/OutputStream;)Lokio/Sink;", "Ljava/net/Socket;", "(Ljava/net/Socket;)Lokio/Sink;", "Ljava/nio/file/Path;", "", "Ljava/nio/file/OpenOption;", "options", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Sink;", "Lokio/Source;", "source", "(Ljava/io/File;)Lokio/Source;", "Ljava/io/InputStream;", "(Ljava/io/InputStream;)Lokio/Source;", "(Ljava/net/Socket;)Lokio/Source;", "(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Lokio/Source;", "Ljava/util/logging/Logger;", "kotlin.jvm.PlatformType", "logger", "Ljava/util/logging/Logger;", "getLogger$Okio__JvmOkioKt", "()Ljava/util/logging/Logger;", "Ljava/lang/AssertionError;", "Lkotlin/AssertionError;", "isAndroidGetsocknameError", "(Ljava/lang/AssertionError;)Z", "okio"}, k = 5, mv = {1, 1, 15}, pn = "", xi = 0, xs = "okio/Okio")
/* loaded from: classes2-dex2jar.jar:okio/Okio__JvmOkioKt.class */
public final /* synthetic */ class Okio__JvmOkioKt {

    /* renamed from: a */
    private static final Logger f24165a = Logger.getLogger("okio.Okio");

    @NotNull
    /* renamed from: b */
    public static final Sink m133b(@NotNull File appendingSink) throws FileNotFoundException {
        Intrinsics.m1830e(appendingSink, "$this$appendingSink");
        return Okio.m140g(new FileOutputStream(appendingSink, true));
    }

    /* renamed from: c */
    public static final boolean m132c(@NotNull AssertionError isAndroidGetsocknameError) {
        Intrinsics.m1830e(isAndroidGetsocknameError, "$this$isAndroidGetsocknameError");
        boolean z = false;
        if (isAndroidGetsocknameError.getCause() != null) {
            String message = isAndroidGetsocknameError.getMessage();
            z = false;
            if (message != null ? StringsKt__StringsKt.m1466H(message, "getsockname failed", false, 2, null) : false) {
                z = true;
            }
        }
        return z;
    }

    @JvmOverloads
    @NotNull
    /* renamed from: d */
    public static final Sink m131d(@NotNull File sink, boolean z) throws FileNotFoundException {
        Intrinsics.m1830e(sink, "$this$sink");
        return Okio.m140g(new FileOutputStream(sink, z));
    }

    @NotNull
    /* renamed from: e */
    public static final Sink m130e(@NotNull OutputStream sink) {
        Intrinsics.m1830e(sink, "$this$sink");
        return new OutputStreamSink(sink, new Timeout());
    }

    @NotNull
    /* renamed from: f */
    public static final Sink m129f(@NotNull Socket sink) throws IOException {
        Intrinsics.m1830e(sink, "$this$sink");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(sink);
        OutputStream outputStream = sink.getOutputStream();
        Intrinsics.m1831d(outputStream, "getOutputStream()");
        return socketAsyncTimeout.sink(new OutputStreamSink(outputStream, socketAsyncTimeout));
    }

    /* renamed from: g */
    public static /* synthetic */ Sink m128g(File file, boolean z, int i, Object obj) throws FileNotFoundException {
        if ((i & 1) != 0) {
            z = false;
        }
        return Okio.m141f(file, z);
    }

    @NotNull
    /* renamed from: h */
    public static final Source m127h(@NotNull File source) throws FileNotFoundException {
        Intrinsics.m1830e(source, "$this$source");
        return Okio.m136k(new FileInputStream(source));
    }

    @NotNull
    /* renamed from: i */
    public static final Source m126i(@NotNull InputStream source) {
        Intrinsics.m1830e(source, "$this$source");
        return new InputStreamSource(source, new Timeout());
    }

    @NotNull
    /* renamed from: j */
    public static final Source m125j(@NotNull Socket source) throws IOException {
        Intrinsics.m1830e(source, "$this$source");
        SocketAsyncTimeout socketAsyncTimeout = new SocketAsyncTimeout(source);
        InputStream inputStream = source.getInputStream();
        Intrinsics.m1831d(inputStream, "getInputStream()");
        return socketAsyncTimeout.source(new InputStreamSource(inputStream, socketAsyncTimeout));
    }
}
