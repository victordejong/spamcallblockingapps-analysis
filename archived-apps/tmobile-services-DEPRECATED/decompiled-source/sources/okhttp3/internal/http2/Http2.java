package okhttp3.internal.http2;

import com.google.firebase.appindexing.Indexable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import okhttp3.internal.Util;
import okio.ByteString;
import org.jetbrains.annotations.NotNull;
import org.simpleframework.xml.strategy.Name;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u001b\bÆ\u0002\u0018��B\t\b\u0002¢\u0006\u0004\b,\u0010-J\u001d\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0006\u0010\u0002\u001a\u00020\u0001H��¢\u0006\u0004\b\u0007\u0010\bJ5\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\f\u001a\u00020\u00012\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0001¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00040\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0006@\u0007X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u001e\u0010\u0016\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u0019\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0018R\u0016\u0010\u001a\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001a\u0010\u0018R\u0016\u0010\u001b\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001b\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001c\u0010\u0018R\u0016\u0010\u001d\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001d\u0010\u0018R\u0016\u0010\u001e\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u0018R\u0016\u0010\u001f\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001f\u0010\u0018R\u001c\u0010 \u001a\b\u0012\u0004\u0012\u00020\u00040\u00108\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010\u0012R\u0016\u0010!\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b!\u0010\u0018R\u0016\u0010\"\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b\"\u0010\u0018R\u0016\u0010#\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b#\u0010\u0018R\u0016\u0010$\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b$\u0010\u0018R\u0016\u0010%\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b%\u0010\u0018R\u0016\u0010&\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b&\u0010\u0018R\u0016\u0010'\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b'\u0010\u0018R\u0016\u0010(\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b(\u0010\u0018R\u0016\u0010)\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b)\u0010\u0018R\u0016\u0010*\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b*\u0010\u0018R\u0016\u0010+\u001a\u00020\u00018\u0006@\u0006X\u0086T¢\u0006\u0006\n\u0004\b+\u0010\u0018¨\u0006."}, d2 = {"Lokhttp3/internal/http2/Http2;", "", "type", "flags", "", "formatFlags", "(II)Ljava/lang/String;", "formattedType$okhttp", "(I)Ljava/lang/String;", "formattedType", "", "inbound", "streamId", Name.LENGTH, "frameLog", "(ZIIII)Ljava/lang/String;", "", "BINARY", "[Ljava/lang/String;", "Lokio/ByteString;", "CONNECTION_PREFACE", "Lokio/ByteString;", "FLAGS", "FLAG_ACK", "I", "FLAG_COMPRESSED", "FLAG_END_HEADERS", "FLAG_END_PUSH_PROMISE", "FLAG_END_STREAM", "FLAG_NONE", "FLAG_PADDED", "FLAG_PRIORITY", "FRAME_NAMES", "INITIAL_MAX_FRAME_SIZE", "TYPE_CONTINUATION", "TYPE_DATA", "TYPE_GOAWAY", "TYPE_HEADERS", "TYPE_PING", "TYPE_PRIORITY", "TYPE_PUSH_PROMISE", "TYPE_RST_STREAM", "TYPE_SETTINGS", "TYPE_WINDOW_UPDATE", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/internal/http2/Http2.class */
public final class Http2 {
    private static final String[] BINARY;
    public static final int FLAG_ACK = 1;
    public static final int FLAG_COMPRESSED = 32;
    public static final int FLAG_END_HEADERS = 4;
    public static final int FLAG_END_PUSH_PROMISE = 4;
    public static final int FLAG_END_STREAM = 1;
    public static final int FLAG_NONE = 0;
    public static final int FLAG_PADDED = 8;
    public static final int FLAG_PRIORITY = 32;
    public static final int INITIAL_MAX_FRAME_SIZE = 16384;
    public static final int TYPE_CONTINUATION = 9;
    public static final int TYPE_DATA = 0;
    public static final int TYPE_GOAWAY = 7;
    public static final int TYPE_HEADERS = 1;
    public static final int TYPE_PING = 6;
    public static final int TYPE_PRIORITY = 2;
    public static final int TYPE_PUSH_PROMISE = 5;
    public static final int TYPE_RST_STREAM = 3;
    public static final int TYPE_SETTINGS = 4;
    public static final int TYPE_WINDOW_UPDATE = 8;
    public static final Http2 INSTANCE = new Http2();
    @JvmField
    @NotNull
    public static final ByteString CONNECTION_PREFACE = ByteString.f24137j.m163d("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
    private static final String[] FRAME_NAMES = {"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
    private static final String[] FLAGS = new String[64];

    static {
        String x;
        String[] strArr = new String[Indexable.MAX_URL_LENGTH];
        for (int i = 0; i < 256; i++) {
            String binaryString = Integer.toBinaryString(i);
            Intrinsics.m1831d(binaryString, "Integer.toBinaryString(it)");
            x = StringsKt__StringsJVMKt.m1479x(Util.format("%8s", binaryString), ' ', '0', false, 4, null);
            strArr[i] = x;
        }
        BINARY = strArr;
        String[] strArr2 = FLAGS;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        for (int i2 = 0; i2 < 1; i2++) {
            int i3 = iArr[i2];
            String[] strArr3 = FLAGS;
            strArr3[i3 | 8] = Intrinsics.m1822m(strArr3[i3], "|PADDED");
        }
        String[] strArr4 = FLAGS;
        strArr4[4] = "END_HEADERS";
        strArr4[32] = "PRIORITY";
        strArr4[36] = "END_HEADERS|PRIORITY";
        for (int i4 = 0; i4 < 3; i4++) {
            int i5 = new int[]{4, 32, 36}[i4];
            for (int i6 = 0; i6 < 1; i6++) {
                int i7 = iArr[i6];
                int i8 = i7 | i5;
                FLAGS[i8] = FLAGS[i7] + "|" + FLAGS[i5];
                FLAGS[i8 | 8] = FLAGS[i7] + "|" + FLAGS[i5] + "|PADDED";
            }
        }
        int length = FLAGS.length;
        for (int i9 = 0; i9 < length; i9++) {
            String[] strArr5 = FLAGS;
            if (strArr5[i9] == null) {
                strArr5[i9] = BINARY[i9];
            }
        }
    }

    private Http2() {
    }

    @NotNull
    public final String formatFlags(int i, int i2) {
        String str;
        String str2;
        if (i2 == 0) {
            return "";
        }
        if (!(i == 2 || i == 3)) {
            if (i == 4 || i == 6) {
                return i2 == 1 ? "ACK" : BINARY[i2];
            } else if (!(i == 7 || i == 8)) {
                String[] strArr = FLAGS;
                if (i2 < strArr.length) {
                    str = strArr[i2];
                    Intrinsics.m1832c(str);
                } else {
                    str = BINARY[i2];
                }
                if (i != 5 || (i2 & 4) == 0) {
                    str2 = str;
                    if (i == 0) {
                        str2 = str;
                        if ((i2 & 32) != 0) {
                            str2 = StringsKt__StringsJVMKt.m1478y(str, "PRIORITY", "COMPRESSED", false, 4, null);
                        }
                    }
                } else {
                    str2 = StringsKt__StringsJVMKt.m1478y(str, "HEADERS", "PUSH_PROMISE", false, 4, null);
                }
                return str2;
            }
        }
        return BINARY[i2];
    }

    @NotNull
    public final String formattedType$okhttp(int i) {
        String[] strArr = FRAME_NAMES;
        return i < strArr.length ? strArr[i] : Util.format("0x%02x", Integer.valueOf(i));
    }

    @NotNull
    public final String frameLog(boolean z, int i, int i2, int i3, int i4) {
        return Util.format("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), formattedType$okhttp(i3), formatFlags(i3, i4));
    }
}
