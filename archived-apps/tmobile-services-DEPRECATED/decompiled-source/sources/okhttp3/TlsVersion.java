package okhttp3;

import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018�� \t2\u00020\u0001:\u0001\tB\u0011\b\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\u0005\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0003\u0010\u0004R\u0019\u0010\u0005\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u0006\u001a\u0004\b\u0005\u0010\u0004j\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, d2 = {"Lokhttp3/TlsVersion;", "Ljava/lang/Enum;", "", "-deprecated_javaName", "()Ljava/lang/String;", "javaName", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "Companion", "TLS_1_3", "TLS_1_2", "TLS_1_1", "TLS_1_0", "SSL_3_0", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/TlsVersion.class */
public enum TlsVersion {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    
    public static final Companion Companion = new Companion(null);
    @NotNull
    private final String javaName;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lokhttp3/TlsVersion$Companion;", "", "javaName", "Lokhttp3/TlsVersion;", "forJavaName", "(Ljava/lang/String;)Lokhttp3/TlsVersion;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/TlsVersion$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @NotNull
        public final TlsVersion forJavaName(@NotNull String javaName) {
            TlsVersion tlsVersion;
            Intrinsics.m1830e(javaName, "javaName");
            int hashCode = javaName.hashCode();
            if (hashCode == 79201641) {
                if (javaName.equals("SSLv3")) {
                    tlsVersion = TlsVersion.SSL_3_0;
                    return tlsVersion;
                }
                throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
            } else if (hashCode != 79923350) {
                switch (hashCode) {
                    case -503070503:
                        if (javaName.equals("TLSv1.1")) {
                            tlsVersion = TlsVersion.TLS_1_1;
                            return tlsVersion;
                        }
                        throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
                    case -503070502:
                        if (javaName.equals("TLSv1.2")) {
                            tlsVersion = TlsVersion.TLS_1_2;
                            return tlsVersion;
                        }
                        throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
                    case -503070501:
                        if (javaName.equals("TLSv1.3")) {
                            tlsVersion = TlsVersion.TLS_1_3;
                            return tlsVersion;
                        }
                        throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
                    default:
                        throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
                }
            } else {
                if (javaName.equals("TLSv1")) {
                    tlsVersion = TlsVersion.TLS_1_0;
                    return tlsVersion;
                }
                throw new IllegalArgumentException("Unexpected TLS version: " + javaName);
            }
        }
    }

    TlsVersion(String str) {
        this.javaName = str;
    }

    @JvmStatic
    @NotNull
    public static final TlsVersion forJavaName(@NotNull String str) {
        return Companion.forJavaName(str);
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_javaName  reason: not valid java name */
    public final String m24744deprecated_javaName() {
        return this.javaName;
    }

    @JvmName
    @NotNull
    public final String javaName() {
        return this.javaName;
    }
}
