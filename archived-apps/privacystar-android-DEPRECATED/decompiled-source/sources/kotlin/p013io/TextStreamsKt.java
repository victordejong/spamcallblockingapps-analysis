package kotlin.p013io;

import com.privacystar.core.service.blocking.api21.BlockingOverlayService;
import com.privacystar.core.util.BlockingManager;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStream;
import java.io.Reader;
import java.io.StringReader;
import java.io.StringWriter;
import java.io.Writer;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.internal.InlineOnly;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.Charsets;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��X\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0012\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0017\u0010��\u001a\u00020\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u0017\u0010��\u001a\u00020\u0005*\u00020\u00062\b\b\u0002\u0010\u0003\u001a\u00020\u0004H\u0087\b\u001a\u001c\u0010\u0007\u001a\u00020\b*\u00020\u00022\u0006\u0010\t\u001a\u00020\u00062\b\b\u0002\u0010\u0003\u001a\u00020\u0004\u001a\u001e\u0010\n\u001a\u00020\u000b*\u00020\u00022\u0012\u0010\f\u001a\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u000b0\r\u001a\u0010\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0010*\u00020\u0001\u001a\n\u0010\u0011\u001a\u00020\u0012*\u00020\u0013\u001a\u0010\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015*\u00020\u0002\u001a\n\u0010\u0016\u001a\u00020\u000e*\u00020\u0002\u001a\u0017\u0010\u0016\u001a\u00020\u000e*\u00020\u00132\b\b\u0002\u0010\u0017\u001a\u00020\u0018H\u0087\b\u001a\r\u0010\u0019\u001a\u00020\u001a*\u00020\u000eH\u0087\b\u001a5\u0010\u001b\u001a\u0002H\u001c\"\u0004\b��\u0010\u001c*\u00020\u00022\u0018\u0010\u001d\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\u0010\u0012\u0004\u0012\u0002H\u001c0\rH\u0086\bø\u0001��¢\u0006\u0002\u0010\u001f\u0082\u0002\b\n\u0006\b\u0011(\u001e0\u0001¨\u0006 "}, m254d2 = {"buffered", "Ljava/io/BufferedReader;", "Ljava/io/Reader;", "bufferSize", "", "Ljava/io/BufferedWriter;", "Ljava/io/Writer;", "copyTo", "", "out", "forEachLine", "", BlockingManager.ACTION_CONSTANT, "Lkotlin/Function1;", "", "lineSequence", "Lkotlin/sequences/Sequence;", "readBytes", "", "Ljava/net/URL;", "readLines", "", "readText", HttpRequest.PARAM_CHARSET, "Ljava/nio/charset/Charset;", "reader", "Ljava/io/StringReader;", "useLines", "T", BlockingOverlayService.EXTRA_BLOCK_IMMEDIATELY, "Requires newer compiler version to be inlined correctly.", "(Ljava/io/Reader;Lkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "kotlin-stdlib"}, m253k = 2, m252mv = {1, 1, 13})
@JvmName(name = "TextStreamsKt")
/* renamed from: kotlin.io.TextStreamsKt */
/* loaded from: classes2-dex2jar.jar:kotlin/io/TextStreamsKt.class */
public final class TextStreamsKt {
    @InlineOnly
    private static final BufferedReader buffered(@NotNull Reader reader, int i) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    @InlineOnly
    private static final BufferedWriter buffered(@NotNull Writer writer, int i) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    @InlineOnly
    static /* synthetic */ BufferedReader buffered$default(Reader reader, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader, i);
    }

    @InlineOnly
    static /* synthetic */ BufferedWriter buffered$default(Writer writer, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 8192;
        }
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer, i);
    }

    public static final long copyTo(@NotNull Reader receiver$0, @NotNull Writer out, int i) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(out, "out");
        char[] cArr = new char[i];
        int read = receiver$0.read(cArr);
        long j = 0;
        while (read >= 0) {
            out.write(cArr, 0, read);
            j += read;
            read = receiver$0.read(cArr);
        }
        return j;
    }

    public static /* synthetic */ long copyTo$default(Reader reader, Writer writer, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 8192;
        }
        return copyTo(reader, writer, i);
    }

    public static final void forEachLine(@NotNull Reader receiver$0, @NotNull Function1<? super String, Unit> action) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(action, "action");
        BufferedReader bufferedReader = receiver$0 instanceof BufferedReader ? (BufferedReader) receiver$0 : new BufferedReader(receiver$0, 8192);
        Throwable th = null;
        try {
            for (String str : lineSequence(bufferedReader)) {
                action.invoke(str);
            }
            Unit unit = Unit.INSTANCE;
            CloseableKt.closeFinally(bufferedReader, th);
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public static final Sequence<String> lineSequence(@NotNull BufferedReader receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        return SequencesKt.constrainOnce(new LinesSequence(receiver$0));
    }

    @NotNull
    public static final byte[] readBytes(@NotNull URL receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        InputStream openStream = receiver$0.openStream();
        Throwable th = null;
        try {
            InputStream it = openStream;
            Intrinsics.checkExpressionValueIsNotNull(it, "it");
            byte[] readBytes = ByteStreamsKt.readBytes(it);
            CloseableKt.closeFinally(openStream, th);
            return readBytes;
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @NotNull
    public static final List<String> readLines(@NotNull Reader receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        ArrayList arrayList = new ArrayList();
        forEachLine(receiver$0, new TextStreamsKt$readLines$1(arrayList));
        return arrayList;
    }

    @NotNull
    public static final String readText(@NotNull Reader receiver$0) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        StringWriter stringWriter = new StringWriter();
        copyTo$default(receiver$0, stringWriter, 0, 2, null);
        String stringWriter2 = stringWriter.toString();
        Intrinsics.checkExpressionValueIsNotNull(stringWriter2, "buffer.toString()");
        return stringWriter2;
    }

    @InlineOnly
    private static final String readText(@NotNull URL url, Charset charset) {
        return new String(readBytes(url), charset);
    }

    @InlineOnly
    static /* synthetic */ String readText$default(URL url, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = Charsets.UTF_8;
        }
        return new String(readBytes(url), charset);
    }

    @InlineOnly
    private static final StringReader reader(@NotNull String str) {
        return new StringReader(str);
    }

    /* JADX WARN: Finally extract failed */
    public static final <T> T useLines(@NotNull Reader receiver$0, @NotNull Function1<? super Sequence<String>, ? extends T> block) {
        Intrinsics.checkParameterIsNotNull(receiver$0, "receiver$0");
        Intrinsics.checkParameterIsNotNull(block, "block");
        BufferedReader bufferedReader = receiver$0 instanceof BufferedReader ? (BufferedReader) receiver$0 : new BufferedReader(receiver$0, 8192);
        Throwable th = null;
        try {
            T t = (T) block.invoke(lineSequence(bufferedReader));
            InlineMarker.finallyStart(1);
            if (PlatformImplementationsKt.apiVersionIsAtLeast(1, 1, 0)) {
                CloseableKt.closeFinally(bufferedReader, th);
            } else {
                bufferedReader.close();
            }
            InlineMarker.finallyEnd(1);
            return t;
        } finally {
            try {
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
