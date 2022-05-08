package okhttp3;

import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Locale;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0010\u0018��B\u0019\b\u0016\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0014\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dB%\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0014\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u0001¢\u0006\u0004\b\u001c\u0010\u001eJ\u001d\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u0001H\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\t\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u001a\u0010\r\u001a\u00020\f2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0096\u0002¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u00020\u000fH\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0011\u0010\u0014\u001a\u0004\u0018\u00010\u0002H\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0016\u001a\u00020\u0002H\u0007¢\u0006\u0004\b\u0015\u0010\u0013J\u000f\u0010\u0017\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0017\u0010\u0013J\u0015\u0010\u0018\u001a\u00020��2\u0006\u0010\t\u001a\u00020\u0006¢\u0006\u0004\b\u0018\u0010\u0019R'\u0010\u0005\u001a\u0010\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0004\u0012\u00020\u00020\u00018G@\u0006¢\u0006\f\n\u0004\b\u0005\u0010\u001a\u001a\u0004\b\u0005\u0010\u0004R\u0013\u0010\t\u001a\u00020\u00068G@\u0006¢\u0006\u0006\u001a\u0004\b\t\u0010\bR\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u00028G@\u0006¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0013R\u0019\u0010\u0016\u001a\u00020\u00028\u0007@\u0006¢\u0006\f\n\u0004\b\u0016\u0010\u001b\u001a\u0004\b\u0016\u0010\u0013¨\u0006\u001f"}, d2 = {"Lokhttp3/Challenge;", "", "", "-deprecated_authParams", "()Ljava/util/Map;", "authParams", "Ljava/nio/charset/Charset;", "-deprecated_charset", "()Ljava/nio/charset/Charset;", "charset", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "-deprecated_realm", "()Ljava/lang/String;", "realm", "-deprecated_scheme", "scheme", "toString", "withCharset", "(Ljava/nio/charset/Charset;)Lokhttp3/Challenge;", "Ljava/util/Map;", "Ljava/lang/String;", "<init>", "(Ljava/lang/String;Ljava/lang/String;)V", "(Ljava/lang/String;Ljava/util/Map;)V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/Challenge.class */
public final class Challenge {
    @NotNull
    private final Map<String, String> authParams;
    @NotNull
    private final String scheme;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Challenge(@org.jetbrains.annotations.NotNull java.lang.String r5, @org.jetbrains.annotations.NotNull java.lang.String r6) {
        /*
            r4 = this;
            r0 = r5
            java.lang.String r1 = "scheme"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r6
            java.lang.String r1 = "realm"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            java.lang.String r0 = "realm"
            r1 = r6
            java.util.Map r0 = java.util.Collections.singletonMap(r0, r1)
            r6 = r0
            r0 = r6
            java.lang.String r1 = "singletonMap(\"realm\", realm)"
            kotlin.jvm.internal.Intrinsics.m1831d(r0, r1)
            r0 = r4
            r1 = r5
            r2 = r6
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: okhttp3.Challenge.<init>(java.lang.String, java.lang.String):void");
    }

    public Challenge(@NotNull String scheme, @NotNull Map<String, String> authParams) {
        String str;
        Intrinsics.m1830e(scheme, "scheme");
        Intrinsics.m1830e(authParams, "authParams");
        this.scheme = scheme;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Map.Entry<String, String> entry : authParams.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (key != null) {
                Locale US = Locale.US;
                Intrinsics.m1831d(US, "US");
                if (key != null) {
                    str = key.toLowerCase(US);
                    Intrinsics.m1831d(str, "(this as java.lang.String).toLowerCase(locale)");
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            } else {
                str = null;
            }
            linkedHashMap.put(str, value);
        }
        Map<String, String> unmodifiableMap = Collections.unmodifiableMap(linkedHashMap);
        Intrinsics.m1831d(unmodifiableMap, "unmodifiableMap<String?, String>(newAuthParams)");
        this.authParams = unmodifiableMap;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_authParams  reason: not valid java name */
    public final Map<String, String> m24609deprecated_authParams() {
        return this.authParams;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_charset  reason: not valid java name */
    public final Charset m24610deprecated_charset() {
        return charset();
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_realm  reason: not valid java name */
    public final String m24611deprecated_realm() {
        return realm();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_scheme  reason: not valid java name */
    public final String m24612deprecated_scheme() {
        return this.scheme;
    }

    @JvmName
    @NotNull
    public final Map<String, String> authParams() {
        return this.authParams;
    }

    @JvmName
    @NotNull
    public final Charset charset() {
        String str = this.authParams.get("charset");
        if (str != null) {
            try {
                Charset forName = Charset.forName(str);
                Intrinsics.m1831d(forName, "Charset.forName(charset)");
                return forName;
            } catch (Exception e) {
            }
        }
        Charset ISO_8859_1 = StandardCharsets.ISO_8859_1;
        Intrinsics.m1831d(ISO_8859_1, "ISO_8859_1");
        return ISO_8859_1;
    }

    public boolean equals(@Nullable Object obj) {
        boolean z;
        if (obj instanceof Challenge) {
            Challenge challenge = (Challenge) obj;
            if (Intrinsics.m1834a(challenge.scheme, this.scheme) && Intrinsics.m1834a(challenge.authParams, this.authParams)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return ((899 + this.scheme.hashCode()) * 31) + this.authParams.hashCode();
    }

    @JvmName
    @Nullable
    public final String realm() {
        return this.authParams.get("realm");
    }

    @JvmName
    @NotNull
    public final String scheme() {
        return this.scheme;
    }

    @NotNull
    public String toString() {
        return this.scheme + " authParams=" + this.authParams;
    }

    @NotNull
    public final Challenge withCharset(@NotNull Charset charset) {
        Map p;
        Intrinsics.m1830e(charset, "charset");
        p = MapsKt__MapsKt.m2075p(this.authParams);
        String name = charset.name();
        Intrinsics.m1831d(name, "charset.name()");
        p.put("charset", name);
        return new Challenge(this.scheme, p);
    }
}
