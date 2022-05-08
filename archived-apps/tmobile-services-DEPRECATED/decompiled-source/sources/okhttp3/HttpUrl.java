package okhttp3;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.collections.SetsKt__SetsKt;
import kotlin.jvm.JvmName;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.Buffer;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\"\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018�� W:\u0002XWBc\b��\u0012\u0006\u0010?\u001a\u00020\u0001\u0012\u0006\u0010M\u001a\u00020\u0001\u0012\u0006\u0010#\u001a\u00020\u0001\u0012\u0006\u0010\u001c\u001a\u00020\u0001\u0012\u0006\u0010)\u001a\u00020\u0018\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00010\t\u0012\u0010\u0010T\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t\u0012\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010F\u001a\u00020\u0001¢\u0006\u0004\bU\u0010VJ\u0011\u0010\u0004\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0006\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\b\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0007\u0010\u0003J\u0015\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\tH\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0011\u0010\u000e\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\r\u0010\u0003J\u000f\u0010\u0010\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u000f\u0010\u0003J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0096\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u0011\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b\u0016\u0010\u0003J\u000f\u0010\u0019\u001a\u00020\u0018H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u000f\u0010\u001c\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u001b\u0010\u0003J\r\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b\u001e\u0010\u001fJ\u0017\u0010\u001e\u001a\u0004\u0018\u00010\u001d2\u0006\u0010 \u001a\u00020\u0001¢\u0006\u0004\b\u001e\u0010!J\u000f\u0010#\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\"\u0010\u0003J\u0015\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00010\tH\u0007¢\u0006\u0004\b$\u0010\u000bJ\u000f\u0010'\u001a\u00020\u0018H\u0007¢\u0006\u0004\b&\u0010\u001aJ\u000f\u0010)\u001a\u00020\u0018H\u0007¢\u0006\u0004\b(\u0010\u001aJ\u0011\u0010+\u001a\u0004\u0018\u00010\u0001H\u0007¢\u0006\u0004\b*\u0010\u0003J\u0017\u0010-\u001a\u0004\u0018\u00010\u00012\u0006\u0010,\u001a\u00020\u0001¢\u0006\u0004\b-\u0010.J\u0015\u00100\u001a\u00020\u00012\u0006\u0010/\u001a\u00020\u0018¢\u0006\u0004\b0\u00101J\u0015\u00105\u001a\b\u0012\u0004\u0012\u00020\u000102H\u0007¢\u0006\u0004\b3\u00104J\u0017\u00106\u001a\u0004\u0018\u00010\u00012\u0006\u0010/\u001a\u00020\u0018¢\u0006\u0004\b6\u00101J\u001d\u00107\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010\t2\u0006\u0010,\u001a\u00020\u0001¢\u0006\u0004\b7\u00108J\u000f\u0010:\u001a\u00020\u0018H\u0007¢\u0006\u0004\b9\u0010\u001aJ\r\u0010;\u001a\u00020\u0001¢\u0006\u0004\b;\u0010\u0003J\u0017\u0010<\u001a\u0004\u0018\u00010��2\u0006\u0010 \u001a\u00020\u0001¢\u0006\u0004\b<\u0010=J\u000f\u0010?\u001a\u00020\u0001H\u0007¢\u0006\u0004\b>\u0010\u0003J\u000f\u0010@\u001a\u00020\u0001H\u0016¢\u0006\u0004\b@\u0010\u0003J\u000f\u0010D\u001a\u00020AH\u0007¢\u0006\u0004\bB\u0010CJ\u000f\u0010H\u001a\u00020EH\u0007¢\u0006\u0004\bF\u0010GJ\u000f\u0010I\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\bI\u0010\u0003J\u000f\u0010B\u001a\u00020AH\u0007¢\u0006\u0004\bJ\u0010CJ\u000f\u0010F\u001a\u00020EH\u0007¢\u0006\u0004\bK\u0010GJ\u000f\u0010M\u001a\u00020\u0001H\u0007¢\u0006\u0004\bL\u0010\u0003R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0003R\u0013\u0010\u0006\u001a\u00020\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0003R\u0013\u0010\b\u001a\u00020\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\b\u0010\u0003R\u0019\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00010\t8G@\u0006¢\u0006\u0006\u001a\u0004\b\f\u0010\u000bR\u0015\u0010\u000e\u001a\u0004\u0018\u00010\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\u000e\u0010\u0003R\u0013\u0010\u0010\u001a\u00020\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0003R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u0017\u0010N\u001a\u0004\b\u0017\u0010\u0003R\u0019\u0010\u001c\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b\u001c\u0010N\u001a\u0004\b\u001c\u0010\u0003R\u0019\u0010O\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\bO\u0010P\u001a\u0004\bO\u0010QR\u0019\u0010#\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b#\u0010N\u001a\u0004\b#\u0010\u0003R\u001f\u0010%\u001a\b\u0012\u0004\u0012\u00020\u00010\t8\u0007@\u0006¢\u0006\f\n\u0004\b%\u0010R\u001a\u0004\b%\u0010\u000bR\u0013\u0010'\u001a\u00020\u00188G@\u0006¢\u0006\u0006\u001a\u0004\b'\u0010\u001aR\u0019\u0010)\u001a\u00020\u00188\u0007@\u0006¢\u0006\f\n\u0004\b)\u0010S\u001a\u0004\b)\u0010\u001aR\u0015\u0010+\u001a\u0004\u0018\u00010\u00018G@\u0006¢\u0006\u0006\u001a\u0004\b+\u0010\u0003R \u0010T\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bT\u0010RR\u0019\u00105\u001a\b\u0012\u0004\u0012\u00020\u0001028G@\u0006¢\u0006\u0006\u001a\u0004\b5\u00104R\u0013\u0010:\u001a\u00020\u00188G@\u0006¢\u0006\u0006\u001a\u0004\b:\u0010\u001aR\u0019\u0010?\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\b?\u0010N\u001a\u0004\b?\u0010\u0003R\u0016\u0010F\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bF\u0010NR\u0019\u0010M\u001a\u00020\u00018\u0007@\u0006¢\u0006\f\n\u0004\bM\u0010N\u001a\u0004\bM\u0010\u0003¨\u0006Y"}, d2 = {"Lokhttp3/HttpUrl;", "", "-deprecated_encodedFragment", "()Ljava/lang/String;", "encodedFragment", "-deprecated_encodedPassword", "encodedPassword", "-deprecated_encodedPath", "encodedPath", "", "-deprecated_encodedPathSegments", "()Ljava/util/List;", "encodedPathSegments", "-deprecated_encodedQuery", "encodedQuery", "-deprecated_encodedUsername", "encodedUsername", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "-deprecated_fragment", "fragment", "", "hashCode", "()I", "-deprecated_host", "host", "Lokhttp3/HttpUrl$Builder;", "newBuilder", "()Lokhttp3/HttpUrl$Builder;", "link", "(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "-deprecated_password", "password", "-deprecated_pathSegments", "pathSegments", "-deprecated_pathSize", "pathSize", "-deprecated_port", "port", "-deprecated_query", "query", "name", "queryParameter", "(Ljava/lang/String;)Ljava/lang/String;", FirebaseAnalytics.Param.INDEX, "queryParameterName", "(I)Ljava/lang/String;", "", "-deprecated_queryParameterNames", "()Ljava/util/Set;", "queryParameterNames", "queryParameterValue", "queryParameterValues", "(Ljava/lang/String;)Ljava/util/List;", "-deprecated_querySize", "querySize", "redact", "resolve", "(Ljava/lang/String;)Lokhttp3/HttpUrl;", "-deprecated_scheme", "scheme", "toString", "Ljava/net/URI;", "uri", "()Ljava/net/URI;", "toUri", "Ljava/net/URL;", "url", "()Ljava/net/URL;", "toUrl", "topPrivateDomain", "-deprecated_uri", "-deprecated_url", "-deprecated_username", "username", "Ljava/lang/String;", "isHttps", "Z", "()Z", "Ljava/util/List;", "I", "queryNamesAndValues", "<init>", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V", "Companion", "Builder", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okhttp3/HttpUrl.class */
public final class HttpUrl {
    @NotNull
    public static final String FORM_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#&!$(),~";
    @NotNull
    public static final String FRAGMENT_ENCODE_SET = "";
    @NotNull
    public static final String FRAGMENT_ENCODE_SET_URI = " \"#<>\\^`{|}";
    @NotNull
    public static final String PASSWORD_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    @NotNull
    public static final String PATH_SEGMENT_ENCODE_SET = " \"<>^`{}|/\\?#";
    @NotNull
    public static final String PATH_SEGMENT_ENCODE_SET_URI = "[]";
    @NotNull
    public static final String QUERY_COMPONENT_ENCODE_SET = " !\"#$&'(),/:;<=>?@[]\\^`{|}~";
    @NotNull
    public static final String QUERY_COMPONENT_ENCODE_SET_URI = "\\^`{|}";
    @NotNull
    public static final String QUERY_COMPONENT_REENCODE_SET = " \"'<>#&=";
    @NotNull
    public static final String QUERY_ENCODE_SET = " \"'<>#";
    @NotNull
    public static final String USERNAME_ENCODE_SET = " \"':;<=>@[]^`{}|/\\?#";
    @Nullable
    private final String fragment;
    @NotNull
    private final String host;
    private final boolean isHttps;
    @NotNull
    private final String password;
    @NotNull
    private final List<String> pathSegments;
    private final int port;
    private final List<String> queryNamesAndValues;
    @NotNull
    private final String scheme;
    private final String url;
    @NotNull
    private final String username;
    public static final Companion Companion = new Companion(null);
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    @Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0012\n\u0002\u0010\u0002\n\u0002\b%\n\u0002\u0010!\n\u0002\b\u0014\u0018�� d:\u0001dB\u0007¢\u0006\u0004\bc\u0010-J\u0015\u0010\u0003\u001a\u00020��2\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\u0006\u001a\u00020��2\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0004J\u001f\u0010\t\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020��2\u0006\u0010\u000b\u001a\u00020\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0015\u0010\u000e\u001a\u00020��2\u0006\u0010\r\u001a\u00020\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u001f\u0010\u000e\u001a\u00020��2\u0006\u0010\r\u001a\u00020\u00012\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b\u000e\u0010\u0011J\u001f\u0010\u0014\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u0014\u0010\nJ\r\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aJ\u0017\u0010\u001b\u001a\u00020��2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001b\u0010\u0004J\u0015\u0010\u001c\u001a\u00020��2\u0006\u0010\u001c\u001a\u00020\u0001¢\u0006\u0004\b\u001c\u0010\u0004J\u0015\u0010\u001d\u001a\u00020��2\u0006\u0010\u001d\u001a\u00020\u0001¢\u0006\u0004\b\u001d\u0010\u0004J\u0017\u0010\u001e\u001a\u00020��2\b\u0010\u001e\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b\u001e\u0010\u0004J\u0015\u0010\u001f\u001a\u00020��2\u0006\u0010\u001f\u001a\u00020\u0001¢\u0006\u0004\b\u001f\u0010\u0004J\u0017\u0010 \u001a\u00020��2\b\u0010 \u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b \u0010\u0004J\u0015\u0010!\u001a\u00020��2\u0006\u0010!\u001a\u00020\u0001¢\u0006\u0004\b!\u0010\u0004J\u0017\u0010#\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u0001H\u0002¢\u0006\u0004\b#\u0010$J\u0017\u0010%\u001a\u00020\u000f2\u0006\u0010\"\u001a\u00020\u0001H\u0002¢\u0006\u0004\b%\u0010$J!\u0010)\u001a\u00020��2\b\u0010&\u001a\u0004\u0018\u00010\u00152\u0006\u0010\"\u001a\u00020\u0001H��¢\u0006\u0004\b'\u0010(J\u0015\u0010*\u001a\u00020��2\u0006\u0010*\u001a\u00020\u0001¢\u0006\u0004\b*\u0010\u0004J\u000f\u0010,\u001a\u00020+H\u0002¢\u0006\u0004\b,\u0010-J\u0015\u0010.\u001a\u00020��2\u0006\u0010.\u001a\u00020\u0018¢\u0006\u0004\b.\u0010/J7\u00103\u001a\u00020+2\u0006\u0010\"\u001a\u00020\u00012\u0006\u00100\u001a\u00020\u00182\u0006\u00101\u001a\u00020\u00182\u0006\u00102\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000fH\u0002¢\u0006\u0004\b3\u00104J\u0017\u00105\u001a\u00020��2\b\u00105\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\b5\u0010\u0004J\u000f\u00108\u001a\u00020��H��¢\u0006\u0004\b6\u00107J\u0017\u0010:\u001a\u00020+2\u0006\u00109\u001a\u00020\u0001H\u0002¢\u0006\u0004\b:\u0010;J\u0015\u0010<\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\u0001¢\u0006\u0004\b<\u0010\u0004J\u0015\u0010=\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u0001¢\u0006\u0004\b=\u0010\u0004J\u0015\u0010?\u001a\u00020��2\u0006\u0010>\u001a\u00020\u0018¢\u0006\u0004\b?\u0010/J'\u0010A\u001a\u00020+2\u0006\u0010\"\u001a\u00020\u00012\u0006\u0010@\u001a\u00020\u00182\u0006\u00101\u001a\u00020\u0018H\u0002¢\u0006\u0004\bA\u0010BJ\u0015\u0010C\u001a\u00020��2\u0006\u0010C\u001a\u00020\u0001¢\u0006\u0004\bC\u0010\u0004J\u001d\u0010D\u001a\u00020��2\u0006\u0010>\u001a\u00020\u00182\u0006\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\bD\u0010EJ\u001f\u0010F\u001a\u00020��2\u0006\u0010\u0007\u001a\u00020\u00012\b\u0010\b\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\bF\u0010\nJ\u001d\u0010G\u001a\u00020��2\u0006\u0010>\u001a\u00020\u00182\u0006\u0010\u000b\u001a\u00020\u0001¢\u0006\u0004\bG\u0010EJ\u001f\u0010H\u001a\u00020��2\u0006\u0010\u0012\u001a\u00020\u00012\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001¢\u0006\u0004\bH\u0010\nJ\u000f\u0010I\u001a\u00020\u0001H\u0016¢\u0006\u0004\bI\u0010JJ\u0015\u0010K\u001a\u00020��2\u0006\u0010K\u001a\u00020\u0001¢\u0006\u0004\bK\u0010\u0004R$\u0010\u001b\u001a\u0004\u0018\u00010\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010L\u001a\u0004\bM\u0010J\"\u0004\bN\u0010;R\"\u0010\u001c\u001a\u00020\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010L\u001a\u0004\bO\u0010J\"\u0004\bP\u0010;R\"\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00010Q8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0005\u0010R\u001a\u0004\bS\u0010TR,\u0010U\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010Q8��@��X\u0080\u000e¢\u0006\u0012\n\u0004\bU\u0010R\u001a\u0004\bV\u0010T\"\u0004\bW\u0010XR\"\u0010\u001f\u001a\u00020\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010L\u001a\u0004\bY\u0010J\"\u0004\bZ\u0010;R$\u0010!\u001a\u0004\u0018\u00010\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b!\u0010L\u001a\u0004\b[\u0010J\"\u0004\b\\\u0010;R\"\u0010.\u001a\u00020\u00188��@��X\u0080\u000e¢\u0006\u0012\n\u0004\b.\u0010]\u001a\u0004\b^\u0010\u001a\"\u0004\b_\u0010`R$\u0010C\u001a\u0004\u0018\u00010\u00018��@��X\u0080\u000e¢\u0006\u0012\n\u0004\bC\u0010L\u001a\u0004\ba\u0010J\"\u0004\bb\u0010;¨\u0006e"}, d2 = {"Lokhttp3/HttpUrl$Builder;", "", "encodedPathSegment", "addEncodedPathSegment", "(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "encodedPathSegments", "addEncodedPathSegments", "encodedName", "encodedValue", "addEncodedQueryParameter", "(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "pathSegment", "addPathSegment", "pathSegments", "addPathSegments", "", "alreadyEncoded", "(Ljava/lang/String;Z)Lokhttp3/HttpUrl$Builder;", "name", FirebaseAnalytics.Param.VALUE, "addQueryParameter", "Lokhttp3/HttpUrl;", "build", "()Lokhttp3/HttpUrl;", "", "effectivePort", "()I", "encodedFragment", "encodedPassword", "encodedPath", "encodedQuery", "encodedUsername", "fragment", "host", "input", "isDot", "(Ljava/lang/String;)Z", "isDotDot", "base", "parse$okhttp", "(Lokhttp3/HttpUrl;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;", "parse", "password", "", "pop", "()V", "port", "(I)Lokhttp3/HttpUrl$Builder;", "pos", "limit", "addTrailingSlash", "push", "(Ljava/lang/String;IIZZ)V", "query", "reencodeForUri$okhttp", "()Lokhttp3/HttpUrl$Builder;", "reencodeForUri", "canonicalName", "removeAllCanonicalQueryParameters", "(Ljava/lang/String;)V", "removeAllEncodedQueryParameters", "removeAllQueryParameters", FirebaseAnalytics.Param.INDEX, "removePathSegment", "startPos", "resolvePath", "(Ljava/lang/String;II)V", "scheme", "setEncodedPathSegment", "(ILjava/lang/String;)Lokhttp3/HttpUrl$Builder;", "setEncodedQueryParameter", "setPathSegment", "setQueryParameter", "toString", "()Ljava/lang/String;", "username", "Ljava/lang/String;", "getEncodedFragment$okhttp", "setEncodedFragment$okhttp", "getEncodedPassword$okhttp", "setEncodedPassword$okhttp", "", "Ljava/util/List;", "getEncodedPathSegments$okhttp", "()Ljava/util/List;", "encodedQueryNamesAndValues", "getEncodedQueryNamesAndValues$okhttp", "setEncodedQueryNamesAndValues$okhttp", "(Ljava/util/List;)V", "getEncodedUsername$okhttp", "setEncodedUsername$okhttp", "getHost$okhttp", "setHost$okhttp", "I", "getPort$okhttp", "setPort$okhttp", "(I)V", "getScheme$okhttp", "setScheme$okhttp", "<init>", "Companion", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/HttpUrl$Builder.class */
    public static final class Builder {
        public static final Companion Companion = new Companion(null);
        @NotNull
        public static final String INVALID_HOST = "Invalid URL host";
        @Nullable
        private String encodedFragment;
        @NotNull
        private final List<String> encodedPathSegments;
        @Nullable
        private List<String> encodedQueryNamesAndValues;
        @Nullable
        private String host;
        @Nullable
        private String scheme;
        @NotNull
        private String encodedUsername = "";
        @NotNull
        private String encodedPassword = "";
        private int port = -1;

        @Metadata(bv = {1, 0, 3}, d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\f\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u0006\u0010\u0007J'\u0010\b\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\b\u0010\u0007J'\u0010\t\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\t\u0010\u0007J#\u0010\n\u001a\u00020\u0003*\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0005\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lokhttp3/HttpUrl$Builder$Companion;", "", "input", "", "pos", "limit", "parsePort", "(Ljava/lang/String;II)I", "portColonOffset", "schemeDelimiterOffset", "slashCount", "INVALID_HOST", "Ljava/lang/String;", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
        /* loaded from: classes2-dex2jar.jar:okhttp3/HttpUrl$Builder$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int parsePort(String str, int i, int i2) {
                int i3;
                try {
                    int parseInt = Integer.parseInt(Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, "", false, false, false, false, null, 248, null));
                    if (1 > parseInt) {
                        i3 = -1;
                    } else {
                        i3 = -1;
                        if (65535 >= parseInt) {
                            i3 = parseInt;
                        }
                    }
                } catch (NumberFormatException e) {
                    i3 = -1;
                }
                return i3;
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int portColonOffset(String str, int i, int i2) {
                int i3;
                while (i < i2) {
                    char charAt = str.charAt(i);
                    if (charAt == ':') {
                        return i;
                    }
                    int i4 = i;
                    if (charAt != '[') {
                        i3 = i;
                    } else {
                        while (true) {
                            int i5 = i4 + 1;
                            i3 = i5;
                            if (i5 < i2) {
                                i4 = i5;
                                if (str.charAt(i5) == ']') {
                                    i3 = i5;
                                    break;
                                }
                            }
                        }
                    }
                    i = i3 + 1;
                }
                return i2;
            }

            /* JADX INFO: Access modifiers changed from: private */
            /* JADX WARN: Code restructure failed: missing block: B:8:0x0027, code lost:
                if (kotlin.jvm.internal.Intrinsics.m1828g(r0, 122) > 0) goto L_0x002a;
             */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final int schemeDelimiterOffset(java.lang.String r4, int r5, int r6) {
                /*
                    r3 = this;
                    r0 = -1
                    r7 = r0
                    r0 = r6
                    r1 = r5
                    int r0 = r0 - r1
                    r1 = 2
                    if (r0 >= r1) goto L_0x000c
                    r0 = -1
                    return r0
                L_0x000c:
                    r0 = r4
                    r1 = r5
                    char r0 = r0.charAt(r1)
                    r8 = r0
                    r0 = r8
                    r1 = 97
                    int r0 = kotlin.jvm.internal.Intrinsics.m1828g(r0, r1)
                    if (r0 < 0) goto L_0x002a
                    r0 = r5
                    r9 = r0
                    r0 = r8
                    r1 = 122(0x7a, float:1.71E-43)
                    int r0 = kotlin.jvm.internal.Intrinsics.m1828g(r0, r1)
                    if (r0 <= 0) goto L_0x004c
                L_0x002a:
                    r0 = r7
                    r9 = r0
                    r0 = r8
                    r1 = 65
                    int r0 = kotlin.jvm.internal.Intrinsics.m1828g(r0, r1)
                    if (r0 < 0) goto L_0x00cc
                    r0 = r5
                    r9 = r0
                    r0 = r8
                    r1 = 90
                    int r0 = kotlin.jvm.internal.Intrinsics.m1828g(r0, r1)
                    if (r0 <= 0) goto L_0x004c
                    r0 = r7
                    r9 = r0
                    goto L_0x00cc
                L_0x004c:
                    r0 = r9
                    r1 = 1
                    int r0 = r0 + r1
                    r5 = r0
                    r0 = r7
                    r9 = r0
                    r0 = r5
                    r1 = r6
                    if (r0 >= r1) goto L_0x00cc
                    r0 = r4
                    r1 = r5
                    char r0 = r0.charAt(r1)
                    r8 = r0
                    r0 = 97
                    r1 = r8
                    if (r0 <= r1) goto L_0x006b
                    goto L_0x0075
                L_0x006b:
                    r0 = 122(0x7a, float:1.71E-43)
                    r1 = r8
                    if (r0 < r1) goto L_0x0075
                    goto L_0x00b8
                L_0x0075:
                    r0 = 65
                    r1 = r8
                    if (r0 <= r1) goto L_0x007f
                    goto L_0x0089
                L_0x007f:
                    r0 = 90
                    r1 = r8
                    if (r0 < r1) goto L_0x0089
                    goto L_0x00b8
                L_0x0089:
                    r0 = 48
                    r1 = r8
                    if (r0 <= r1) goto L_0x0093
                    goto L_0x009d
                L_0x0093:
                    r0 = 57
                    r1 = r8
                    if (r0 < r1) goto L_0x009d
                    goto L_0x00b8
                L_0x009d:
                    r0 = r8
                    r1 = 43
                    if (r0 != r1) goto L_0x00a7
                    goto L_0x00b8
                L_0x00a7:
                    r0 = r8
                    r1 = 45
                    if (r0 != r1) goto L_0x00b1
                    goto L_0x00b8
                L_0x00b1:
                    r0 = r8
                    r1 = 46
                    if (r0 != r1) goto L_0x00be
                L_0x00b8:
                    r0 = r5
                    r9 = r0
                    goto L_0x004c
                L_0x00be:
                    r0 = r7
                    r9 = r0
                    r0 = r8
                    r1 = 58
                    if (r0 != r1) goto L_0x00cc
                    r0 = r5
                    r9 = r0
                L_0x00cc:
                    r0 = r9
                    return r0
                */
                throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.Companion.schemeDelimiterOffset(java.lang.String, int, int):int");
            }

            /* JADX INFO: Access modifiers changed from: private */
            public final int slashCount(String str, int i, int i2) {
                char charAt;
                int i3 = 0;
                while (i < i2 && ((charAt = str.charAt(i)) == '\\' || charAt == '/')) {
                    i3++;
                    i++;
                }
                return i3;
            }
        }

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.encodedPathSegments = arrayList;
            arrayList.add("");
        }

        private final Builder addPathSegments(String str, boolean z) {
            int i;
            int i2 = 0;
            do {
                int delimiterOffset = Util.delimiterOffset(str, "/\\", i2, str.length());
                push(str, i2, delimiterOffset, delimiterOffset < str.length(), z);
                i = delimiterOffset + 1;
                i2 = i;
            } while (i <= str.length());
            return this;
        }

        private final int effectivePort() {
            int i = this.port;
            if (i == -1) {
                Companion companion = HttpUrl.Companion;
                String str = this.scheme;
                Intrinsics.m1832c(str);
                i = companion.defaultPort(str);
            }
            return i;
        }

        private final boolean isDot(String str) {
            boolean p;
            boolean z = true;
            if (!Intrinsics.m1834a(str, ".")) {
                p = StringsKt__StringsJVMKt.m1487p(str, "%2e", true);
                z = p;
            }
            return z;
        }

        private final boolean isDotDot(String str) {
            boolean p;
            boolean p2;
            boolean p3;
            boolean z = true;
            if (!Intrinsics.m1834a(str, "..")) {
                z = true;
                p = StringsKt__StringsJVMKt.m1487p(str, "%2e.", true);
                if (!p) {
                    z = true;
                    p2 = StringsKt__StringsJVMKt.m1487p(str, ".%2e", true);
                    if (!p2) {
                        p3 = StringsKt__StringsJVMKt.m1487p(str, "%2e%2e", true);
                        z = p3;
                    }
                }
            }
            return z;
        }

        private final void pop() {
            List<String> list = this.encodedPathSegments;
            if (!(list.remove(list.size() - 1).length() == 0) || !(!this.encodedPathSegments.isEmpty())) {
                this.encodedPathSegments.add("");
                return;
            }
            List<String> list2 = this.encodedPathSegments;
            list2.set(list2.size() - 1, "");
        }

        private final void push(String str, int i, int i2, boolean z, boolean z2) {
            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, i, i2, HttpUrl.PATH_SEGMENT_ENCODE_SET, z2, false, false, false, null, 240, null);
            if (!isDot(canonicalize$okhttp$default)) {
                if (isDotDot(canonicalize$okhttp$default)) {
                    pop();
                    return;
                }
                List<String> list = this.encodedPathSegments;
                if (list.get(list.size() - 1).length() == 0) {
                    List<String> list2 = this.encodedPathSegments;
                    list2.set(list2.size() - 1, canonicalize$okhttp$default);
                } else {
                    this.encodedPathSegments.add(canonicalize$okhttp$default);
                }
                if (z) {
                    this.encodedPathSegments.add("");
                }
            }
        }

        private final void removeAllCanonicalQueryParameters(String str) {
            IntProgression g;
            IntProgression h;
            List<String> list = this.encodedQueryNamesAndValues;
            Intrinsics.m1832c(list);
            g = RangesKt___RangesKt.m1708g(list.size() - 2, 0);
            h = RangesKt___RangesKt.m1707h(g, 2);
            int f = h.m1738f();
            int g2 = h.m1737g();
            int h2 = h.m1736h();
            if (h2 >= 0) {
                if (f > g2) {
                    return;
                }
            } else if (f < g2) {
                return;
            }
            while (true) {
                List<String> list2 = this.encodedQueryNamesAndValues;
                Intrinsics.m1832c(list2);
                if (Intrinsics.m1834a(str, list2.get(f))) {
                    List<String> list3 = this.encodedQueryNamesAndValues;
                    Intrinsics.m1832c(list3);
                    list3.remove(f + 1);
                    List<String> list4 = this.encodedQueryNamesAndValues;
                    Intrinsics.m1832c(list4);
                    list4.remove(f);
                    List<String> list5 = this.encodedQueryNamesAndValues;
                    Intrinsics.m1832c(list5);
                    if (list5.isEmpty()) {
                        this.encodedQueryNamesAndValues = null;
                        return;
                    }
                }
                if (f != g2) {
                    f += h2;
                } else {
                    return;
                }
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:13:0x0057  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0086 -> B:11:0x0052). Please submit an issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private final void resolvePath(java.lang.String r8, int r9, int r10) {
            /*
                r7 = this;
                r0 = r9
                r1 = r10
                if (r0 != r1) goto L_0x0006
                return
            L_0x0006:
                r0 = r8
                r1 = r9
                char r0 = r0.charAt(r1)
                r11 = r0
                r0 = r11
                r1 = 47
                if (r0 == r1) goto L_0x003a
                r0 = r11
                r1 = 92
                if (r0 != r1) goto L_0x001e
                goto L_0x003a
            L_0x001e:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                r12 = r0
                r0 = r12
                r1 = r12
                int r1 = r1.size()
                r2 = 1
                int r1 = r1 - r2
                java.lang.String r2 = ""
                java.lang.Object r0 = r0.set(r1, r2)
                goto L_0x0052
            L_0x003a:
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                r0.clear()
                r0 = r7
                java.util.List<java.lang.String> r0 = r0.encodedPathSegments
                java.lang.String r1 = ""
                boolean r0 = r0.add(r1)
                goto L_0x0086
            L_0x0052:
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L_0x008c
                r0 = r8
                java.lang.String r1 = "/\\"
                r2 = r9
                r3 = r10
                int r0 = okhttp3.internal.Util.delimiterOffset(r0, r1, r2, r3)
                r11 = r0
                r0 = r11
                r1 = r10
                if (r0 >= r1) goto L_0x006d
                r0 = 1
                r13 = r0
                goto L_0x0070
            L_0x006d:
                r0 = 0
                r13 = r0
            L_0x0070:
                r0 = r7
                r1 = r8
                r2 = r9
                r3 = r11
                r4 = r13
                r5 = 1
                r0.push(r1, r2, r3, r4, r5)
                r0 = r11
                r9 = r0
                r0 = r13
                if (r0 == 0) goto L_0x0052
                r0 = r11
                r9 = r0
            L_0x0086:
                int r9 = r9 + 1
                goto L_0x0052
            L_0x008c:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.resolvePath(java.lang.String, int, int):void");
        }

        @NotNull
        public final Builder addEncodedPathSegment(@NotNull String encodedPathSegment) {
            Intrinsics.m1830e(encodedPathSegment, "encodedPathSegment");
            push(encodedPathSegment, 0, encodedPathSegment.length(), false, true);
            return this;
        }

        @NotNull
        public final Builder addEncodedPathSegments(@NotNull String encodedPathSegments) {
            Intrinsics.m1830e(encodedPathSegments, "encodedPathSegments");
            return addPathSegments(encodedPathSegments, true);
        }

        @NotNull
        public final Builder addEncodedQueryParameter(@NotNull String encodedName, @Nullable String str) {
            Intrinsics.m1830e(encodedName, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            Intrinsics.m1832c(list);
            list.add(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            Intrinsics.m1832c(list2);
            list2.add(str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null) : null);
            return this;
        }

        @NotNull
        public final Builder addPathSegment(@NotNull String pathSegment) {
            Intrinsics.m1830e(pathSegment, "pathSegment");
            push(pathSegment, 0, pathSegment.length(), false, false);
            return this;
        }

        @NotNull
        public final Builder addPathSegments(@NotNull String pathSegments) {
            Intrinsics.m1830e(pathSegments, "pathSegments");
            return addPathSegments(pathSegments, false);
        }

        @NotNull
        public final Builder addQueryParameter(@NotNull String name, @Nullable String str) {
            Intrinsics.m1830e(name, "name");
            if (this.encodedQueryNamesAndValues == null) {
                this.encodedQueryNamesAndValues = new ArrayList();
            }
            List<String> list = this.encodedQueryNamesAndValues;
            Intrinsics.m1832c(list);
            list.add(Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            List<String> list2 = this.encodedQueryNamesAndValues;
            Intrinsics.m1832c(list2);
            list2.add(str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null) : null);
            return this;
        }

        @NotNull
        public final HttpUrl build() {
            int p;
            ArrayList arrayList;
            int p2;
            String str = this.scheme;
            if (str != null) {
                String percentDecode$okhttp$default = Companion.percentDecode$okhttp$default(HttpUrl.Companion, this.encodedUsername, 0, 0, false, 7, null);
                String percentDecode$okhttp$default2 = Companion.percentDecode$okhttp$default(HttpUrl.Companion, this.encodedPassword, 0, 0, false, 7, null);
                String str2 = this.host;
                if (str2 != null) {
                    int effectivePort = effectivePort();
                    List<String> list = this.encodedPathSegments;
                    p = CollectionsKt__IterablesKt.m2164p(list, 10);
                    ArrayList arrayList2 = new ArrayList(p);
                    for (String str3 : list) {
                        arrayList2.add(Companion.percentDecode$okhttp$default(HttpUrl.Companion, str3, 0, 0, false, 7, null));
                    }
                    List<String> list2 = this.encodedQueryNamesAndValues;
                    String str4 = null;
                    if (list2 != null) {
                        p2 = CollectionsKt__IterablesKt.m2164p(list2, 10);
                        ArrayList arrayList3 = new ArrayList(p2);
                        for (String str5 : list2) {
                            arrayList3.add(str5 != null ? Companion.percentDecode$okhttp$default(HttpUrl.Companion, str5, 0, 0, true, 3, null) : null);
                        }
                        arrayList = arrayList3;
                    } else {
                        arrayList = null;
                    }
                    String str6 = this.encodedFragment;
                    if (str6 != null) {
                        str4 = Companion.percentDecode$okhttp$default(HttpUrl.Companion, str6, 0, 0, false, 7, null);
                    }
                    return new HttpUrl(str, percentDecode$okhttp$default, percentDecode$okhttp$default2, str2, effectivePort, arrayList2, arrayList, str4, toString());
                }
                throw new IllegalStateException("host == null");
            }
            throw new IllegalStateException("scheme == null");
        }

        @NotNull
        public final Builder encodedFragment(@Nullable String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", true, false, false, true, null, 179, null) : null;
            return this;
        }

        @NotNull
        public final Builder encodedPassword(@NotNull String encodedPassword) {
            Intrinsics.m1830e(encodedPassword, "encodedPassword");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPassword, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        @NotNull
        public final Builder encodedPath(@NotNull String encodedPath) {
            boolean C;
            Intrinsics.m1830e(encodedPath, "encodedPath");
            C = StringsKt__StringsJVMKt.m1491C(encodedPath, "/", false, 2, null);
            if (C) {
                resolvePath(encodedPath, 0, encodedPath.length());
                return this;
            }
            throw new IllegalArgumentException(("unexpected encodedPath: " + encodedPath).toString());
        }

        @NotNull
        public final Builder encodedQuery(@Nullable String str) {
            String canonicalize$okhttp$default;
            this.encodedQueryNamesAndValues = (str == null || (canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 211, null)) == null) ? null : HttpUrl.Companion.toQueryNamesAndValues$okhttp(canonicalize$okhttp$default);
            return this;
        }

        @NotNull
        public final Builder encodedUsername(@NotNull String encodedUsername) {
            Intrinsics.m1830e(encodedUsername, "encodedUsername");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedUsername, 0, 0, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 243, null);
            return this;
        }

        @NotNull
        public final Builder fragment(@Nullable String str) {
            this.encodedFragment = str != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, "", false, false, false, true, null, 187, null) : null;
            return this;
        }

        @Nullable
        public final String getEncodedFragment$okhttp() {
            return this.encodedFragment;
        }

        @NotNull
        public final String getEncodedPassword$okhttp() {
            return this.encodedPassword;
        }

        @NotNull
        public final List<String> getEncodedPathSegments$okhttp() {
            return this.encodedPathSegments;
        }

        @Nullable
        public final List<String> getEncodedQueryNamesAndValues$okhttp() {
            return this.encodedQueryNamesAndValues;
        }

        @NotNull
        public final String getEncodedUsername$okhttp() {
            return this.encodedUsername;
        }

        @Nullable
        public final String getHost$okhttp() {
            return this.host;
        }

        public final int getPort$okhttp() {
            return this.port;
        }

        @Nullable
        public final String getScheme$okhttp() {
            return this.scheme;
        }

        @NotNull
        public final Builder host(@NotNull String host) {
            Intrinsics.m1830e(host, "host");
            String canonicalHost = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, host, 0, 0, false, 7, null));
            if (canonicalHost != null) {
                this.host = canonicalHost;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + host);
        }

        @NotNull
        public final Builder parse$okhttp(@Nullable HttpUrl httpUrl, @NotNull String input) {
            int delimiterOffset;
            boolean z;
            boolean z2;
            Intrinsics.m1830e(input, "input");
            int indexOfFirstNonAsciiWhitespace$default = Util.indexOfFirstNonAsciiWhitespace$default(input, 0, 0, 3, null);
            int indexOfLastNonAsciiWhitespace$default = Util.indexOfLastNonAsciiWhitespace$default(input, indexOfFirstNonAsciiWhitespace$default, 0, 2, null);
            int schemeDelimiterOffset = Companion.schemeDelimiterOffset(input, indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
            if (schemeDelimiterOffset != -1) {
                z = StringsKt__StringsJVMKt.m1477z(input, "https:", indexOfFirstNonAsciiWhitespace$default, true);
                if (z) {
                    this.scheme = "https";
                    indexOfFirstNonAsciiWhitespace$default += 6;
                } else {
                    z2 = StringsKt__StringsJVMKt.m1477z(input, "http:", indexOfFirstNonAsciiWhitespace$default, true);
                    if (z2) {
                        this.scheme = "http";
                        indexOfFirstNonAsciiWhitespace$default += 5;
                    } else {
                        StringBuilder sb = new StringBuilder();
                        sb.append("Expected URL scheme 'http' or 'https' but was '");
                        String substring = input.substring(0, schemeDelimiterOffset);
                        Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        sb.append(substring);
                        sb.append("'");
                        throw new IllegalArgumentException(sb.toString());
                    }
                }
            } else if (httpUrl != null) {
                this.scheme = httpUrl.scheme();
            } else {
                throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
            }
            int slashCount = Companion.slashCount(input, indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
            if (slashCount >= 2 || httpUrl == null || (!Intrinsics.m1834a(httpUrl.scheme(), this.scheme))) {
                int i = indexOfFirstNonAsciiWhitespace$default + slashCount;
                boolean z3 = false;
                boolean z4 = false;
                while (true) {
                    delimiterOffset = Util.delimiterOffset(input, "@/\\?#", i, indexOfLastNonAsciiWhitespace$default);
                    char charAt = delimiterOffset != indexOfLastNonAsciiWhitespace$default ? input.charAt(delimiterOffset) : (char) 65535;
                    if (charAt == 65535 || charAt == '#' || charAt == '/' || charAt == '\\' || charAt == '?') {
                        break;
                    } else if (charAt == '@') {
                        if (!z3) {
                            int delimiterOffset2 = Util.delimiterOffset(input, ':', i, delimiterOffset);
                            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i, delimiterOffset2, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                            String str = canonicalize$okhttp$default;
                            if (z4) {
                                str = this.encodedUsername + "%40" + canonicalize$okhttp$default;
                            }
                            this.encodedUsername = str;
                            if (delimiterOffset2 != delimiterOffset) {
                                this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, delimiterOffset2 + 1, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                                z3 = true;
                            }
                            z4 = true;
                        } else {
                            this.encodedPassword += "%40" + Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i, delimiterOffset, " \"':;<=>@[]^`{}|/\\?#", true, false, false, false, null, 240, null);
                        }
                        i = delimiterOffset + 1;
                    }
                }
                int portColonOffset = Companion.portColonOffset(input, i, delimiterOffset);
                int i2 = portColonOffset + 1;
                if (i2 < delimiterOffset) {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, input, i, portColonOffset, false, 4, null));
                    int parsePort = Companion.parsePort(input, i2, delimiterOffset);
                    this.port = parsePort;
                    if (!(parsePort != -1)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Invalid URL port: \"");
                        String substring2 = input.substring(i2, delimiterOffset);
                        Intrinsics.m1831d(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                        sb2.append(substring2);
                        sb2.append('\"');
                        throw new IllegalArgumentException(sb2.toString().toString());
                    }
                } else {
                    this.host = HostnamesKt.toCanonicalHost(Companion.percentDecode$okhttp$default(HttpUrl.Companion, input, i, portColonOffset, false, 4, null));
                    Companion companion = HttpUrl.Companion;
                    String str2 = this.scheme;
                    Intrinsics.m1832c(str2);
                    this.port = companion.defaultPort(str2);
                }
                if (this.host != null) {
                    indexOfFirstNonAsciiWhitespace$default = delimiterOffset;
                } else {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Invalid URL host: \"");
                    String substring3 = input.substring(i, portColonOffset);
                    Intrinsics.m1831d(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    sb3.append(substring3);
                    sb3.append('\"');
                    throw new IllegalArgumentException(sb3.toString().toString());
                }
            } else {
                this.encodedUsername = httpUrl.encodedUsername();
                this.encodedPassword = httpUrl.encodedPassword();
                this.host = httpUrl.host();
                this.port = httpUrl.port();
                this.encodedPathSegments.clear();
                this.encodedPathSegments.addAll(httpUrl.encodedPathSegments());
                if (indexOfFirstNonAsciiWhitespace$default == indexOfLastNonAsciiWhitespace$default || input.charAt(indexOfFirstNonAsciiWhitespace$default) == '#') {
                    encodedQuery(httpUrl.encodedQuery());
                }
            }
            int delimiterOffset3 = Util.delimiterOffset(input, "?#", indexOfFirstNonAsciiWhitespace$default, indexOfLastNonAsciiWhitespace$default);
            resolvePath(input, indexOfFirstNonAsciiWhitespace$default, delimiterOffset3);
            int i3 = delimiterOffset3;
            if (delimiterOffset3 < indexOfLastNonAsciiWhitespace$default) {
                i3 = delimiterOffset3;
                if (input.charAt(delimiterOffset3) == '?') {
                    i3 = Util.delimiterOffset(input, '#', delimiterOffset3, indexOfLastNonAsciiWhitespace$default);
                    Companion companion2 = HttpUrl.Companion;
                    this.encodedQueryNamesAndValues = companion2.toQueryNamesAndValues$okhttp(Companion.canonicalize$okhttp$default(companion2, input, delimiterOffset3 + 1, i3, HttpUrl.QUERY_ENCODE_SET, true, false, true, false, null, 208, null));
                }
            }
            if (i3 < indexOfLastNonAsciiWhitespace$default && input.charAt(i3) == '#') {
                this.encodedFragment = Companion.canonicalize$okhttp$default(HttpUrl.Companion, input, i3 + 1, indexOfLastNonAsciiWhitespace$default, "", true, false, false, true, null, 176, null);
            }
            return this;
        }

        @NotNull
        public final Builder password(@NotNull String password) {
            Intrinsics.m1830e(password, "password");
            this.encodedPassword = Companion.canonicalize$okhttp$default(HttpUrl.Companion, password, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }

        @NotNull
        public final Builder port(int i) {
            boolean z = true;
            if (1 > i || 65535 < i) {
                z = false;
            }
            if (z) {
                this.port = i;
                return this;
            }
            throw new IllegalArgumentException(("unexpected port: " + i).toString());
        }

        @NotNull
        public final Builder query(@Nullable String str) {
            String canonicalize$okhttp$default;
            this.encodedQueryNamesAndValues = (str == null || (canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str, 0, 0, HttpUrl.QUERY_ENCODE_SET, false, false, true, false, null, 219, null)) == null) ? null : HttpUrl.Companion.toQueryNamesAndValues$okhttp(canonicalize$okhttp$default);
            return this;
        }

        @NotNull
        public final Builder reencodeForUri$okhttp() {
            String str = this.host;
            String str2 = null;
            this.host = str != null ? new Regex("[\"<>^`{|}]").m1552c(str, "") : null;
            int size = this.encodedPathSegments.size();
            for (int i = 0; i < size; i++) {
                List<String> list = this.encodedPathSegments;
                list.set(i, Companion.canonicalize$okhttp$default(HttpUrl.Companion, list.get(i), 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET_URI, true, true, false, false, null, 227, null));
            }
            List<String> list2 = this.encodedQueryNamesAndValues;
            if (list2 != null) {
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    String str3 = list2.get(i2);
                    list2.set(i2, str3 != null ? Companion.canonicalize$okhttp$default(HttpUrl.Companion, str3, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET_URI, true, true, true, false, null, 195, null) : null);
                }
            }
            String str4 = this.encodedFragment;
            if (str4 != null) {
                str2 = Companion.canonicalize$okhttp$default(HttpUrl.Companion, str4, 0, 0, HttpUrl.FRAGMENT_ENCODE_SET_URI, true, true, false, true, null, 163, null);
            }
            this.encodedFragment = str2;
            return this;
        }

        @NotNull
        public final Builder removeAllEncodedQueryParameters(@NotNull String encodedName) {
            Intrinsics.m1830e(encodedName, "encodedName");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedName, 0, 0, HttpUrl.QUERY_COMPONENT_REENCODE_SET, true, false, true, false, null, 211, null));
            return this;
        }

        @NotNull
        public final Builder removeAllQueryParameters(@NotNull String name) {
            Intrinsics.m1830e(name, "name");
            if (this.encodedQueryNamesAndValues == null) {
                return this;
            }
            removeAllCanonicalQueryParameters(Companion.canonicalize$okhttp$default(HttpUrl.Companion, name, 0, 0, HttpUrl.QUERY_COMPONENT_ENCODE_SET, false, false, true, false, null, 219, null));
            return this;
        }

        @NotNull
        public final Builder removePathSegment(int i) {
            this.encodedPathSegments.remove(i);
            if (this.encodedPathSegments.isEmpty()) {
                this.encodedPathSegments.add("");
            }
            return this;
        }

        @NotNull
        public final Builder scheme(@NotNull String scheme) {
            boolean p;
            boolean p2;
            Intrinsics.m1830e(scheme, "scheme");
            p = StringsKt__StringsJVMKt.m1487p(scheme, "http", true);
            if (p) {
                this.scheme = "http";
            } else {
                p2 = StringsKt__StringsJVMKt.m1487p(scheme, "https", true);
                if (p2) {
                    this.scheme = "https";
                } else {
                    throw new IllegalArgumentException("unexpected scheme: " + scheme);
                }
            }
            return this;
        }

        public final void setEncodedFragment$okhttp(@Nullable String str) {
            this.encodedFragment = str;
        }

        public final void setEncodedPassword$okhttp(@NotNull String str) {
            Intrinsics.m1830e(str, "<set-?>");
            this.encodedPassword = str;
        }

        @NotNull
        public final Builder setEncodedPathSegment(int i, @NotNull String encodedPathSegment) {
            Intrinsics.m1830e(encodedPathSegment, "encodedPathSegment");
            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, encodedPathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, true, false, false, false, null, 243, null);
            this.encodedPathSegments.set(i, canonicalize$okhttp$default);
            if (!isDot(canonicalize$okhttp$default) && !isDotDot(canonicalize$okhttp$default)) {
                return this;
            }
            throw new IllegalArgumentException(("unexpected path segment: " + encodedPathSegment).toString());
        }

        public final void setEncodedQueryNamesAndValues$okhttp(@Nullable List<String> list) {
            this.encodedQueryNamesAndValues = list;
        }

        @NotNull
        public final Builder setEncodedQueryParameter(@NotNull String encodedName, @Nullable String str) {
            Intrinsics.m1830e(encodedName, "encodedName");
            removeAllEncodedQueryParameters(encodedName);
            addEncodedQueryParameter(encodedName, str);
            return this;
        }

        public final void setEncodedUsername$okhttp(@NotNull String str) {
            Intrinsics.m1830e(str, "<set-?>");
            this.encodedUsername = str;
        }

        public final void setHost$okhttp(@Nullable String str) {
            this.host = str;
        }

        @NotNull
        public final Builder setPathSegment(int i, @NotNull String pathSegment) {
            Intrinsics.m1830e(pathSegment, "pathSegment");
            String canonicalize$okhttp$default = Companion.canonicalize$okhttp$default(HttpUrl.Companion, pathSegment, 0, 0, HttpUrl.PATH_SEGMENT_ENCODE_SET, false, false, false, false, null, 251, null);
            if (!isDot(canonicalize$okhttp$default) && !isDotDot(canonicalize$okhttp$default)) {
                this.encodedPathSegments.set(i, canonicalize$okhttp$default);
                return this;
            }
            throw new IllegalArgumentException(("unexpected path segment: " + pathSegment).toString());
        }

        public final void setPort$okhttp(int i) {
            this.port = i;
        }

        @NotNull
        public final Builder setQueryParameter(@NotNull String name, @Nullable String str) {
            Intrinsics.m1830e(name, "name");
            removeAllQueryParameters(name);
            addQueryParameter(name, str);
            return this;
        }

        public final void setScheme$okhttp(@Nullable String str) {
            this.scheme = str;
        }

        /* JADX WARN: Code restructure failed: missing block: B:17:0x005a, code lost:
            if ((r6.encodedPassword.length() > 0) != false) goto L_0x005d;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x00fe, code lost:
            if (r0 != r0.defaultPort(r0)) goto L_0x0101;
         */
        @org.jetbrains.annotations.NotNull
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.String toString() {
            /*
                Method dump skipped, instructions count: 354
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okhttp3.HttpUrl.Builder.toString():java.lang.String");
        }

        @NotNull
        public final Builder username(@NotNull String username) {
            Intrinsics.m1830e(username, "username");
            this.encodedUsername = Companion.canonicalize$okhttp$default(HttpUrl.Companion, username, 0, 0, " \"':;<=>@[]^`{}|/\\?#", false, false, false, false, null, 251, null);
            return this;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��f\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\u0019\n\u0002\b\r\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\bJ\u0010KJ\u0017\u0010\u0004\u001a\u00020\u00032\u0006\u0010\u0002\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\u0019\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\fH\u0007¢\u0006\u0004\b\t\u0010\u000eJ\u0017\u0010\u000b\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\t\u0010\u000fJ\u0019\u0010\u0011\u001a\u0004\u0018\u00010\b2\u0006\u0010\r\u001a\u00020\u0001H\u0007¢\u0006\u0004\b\u0010\u0010\u000fJc\u0010\u001e\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00012\b\b\u0002\u0010\u0016\u001a\u00020\u00152\b\b\u0002\u0010\u0017\u001a\u00020\u00152\b\b\u0002\u0010\u0018\u001a\u00020\u00152\b\b\u0002\u0010\u0019\u001a\u00020\u00152\n\b\u0002\u0010\u001b\u001a\u0004\u0018\u00010\u001aH��¢\u0006\u0004\b\u001c\u0010\u001dJ#\u0010\u001f\u001a\u00020\u0015*\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0003H\u0002¢\u0006\u0004\b\u001f\u0010 J1\u0010#\u001a\u00020\u0001*\u00020\u00012\b\b\u0002\u0010\u0012\u001a\u00020\u00032\b\b\u0002\u0010\u0013\u001a\u00020\u00032\b\b\u0002\u0010\u0018\u001a\u00020\u0015H��¢\u0006\u0004\b!\u0010\"J\u0013\u0010$\u001a\u00020\b*\u00020\u0001H\u0007¢\u0006\u0004\b\u000b\u0010\u000fJ\u0015\u0010%\u001a\u0004\u0018\u00010\b*\u00020\u0006H\u0007¢\u0006\u0004\b\u000b\u0010\nJ\u0015\u0010%\u001a\u0004\u0018\u00010\b*\u00020\fH\u0007¢\u0006\u0004\b\u000b\u0010\u000eJ\u0015\u0010%\u001a\u0004\u0018\u00010\b*\u00020\u0001H\u0007¢\u0006\u0004\b\u0011\u0010\u000fJ%\u0010-\u001a\u00020**\b\u0012\u0004\u0012\u00020\u00010&2\n\u0010)\u001a\u00060'j\u0002`(H��¢\u0006\u0004\b+\u0010,J\u001b\u00101\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010.*\u00020\u0001H��¢\u0006\u0004\b/\u00100J'\u00103\u001a\u00020**\n\u0012\u0006\u0012\u0004\u0018\u00010\u00010&2\n\u0010)\u001a\u00060'j\u0002`(H��¢\u0006\u0004\b2\u0010,J]\u00106\u001a\u00020**\u0002042\u0006\u00105\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u00012\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0019\u001a\u00020\u00152\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0002¢\u0006\u0004\b6\u00107J3\u00109\u001a\u00020**\u0002042\u0006\u00108\u001a\u00020\u00012\u0006\u0010\u0012\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0015H\u0002¢\u0006\u0004\b9\u0010:R\u0016\u0010;\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\b;\u0010<R\u0016\u0010=\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\b=\u0010<R\u0016\u0010>\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\b>\u0010<R\u0016\u0010@\u001a\u00020?8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b@\u0010AR\u0016\u0010B\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bB\u0010<R\u0016\u0010C\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bC\u0010<R\u0016\u0010D\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bD\u0010<R\u0016\u0010E\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bE\u0010<R\u0016\u0010F\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bF\u0010<R\u0016\u0010G\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bG\u0010<R\u0016\u0010H\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bH\u0010<R\u0016\u0010I\u001a\u00020\u00018��@��X\u0080T¢\u0006\u0006\n\u0004\bI\u0010<¨\u0006L"}, d2 = {"Lokhttp3/HttpUrl$Companion;", "", "scheme", "", "defaultPort", "(Ljava/lang/String;)I", "Ljava/net/URI;", "uri", "Lokhttp3/HttpUrl;", "-deprecated_get", "(Ljava/net/URI;)Lokhttp3/HttpUrl;", "get", "Ljava/net/URL;", "url", "(Ljava/net/URL;)Lokhttp3/HttpUrl;", "(Ljava/lang/String;)Lokhttp3/HttpUrl;", "-deprecated_parse", "parse", "pos", "limit", "encodeSet", "", "alreadyEncoded", "strict", "plusIsSpace", "unicodeAllowed", "Ljava/nio/charset/Charset;", "charset", "canonicalize$okhttp", "(Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)Ljava/lang/String;", "canonicalize", "isPercentEncoded", "(Ljava/lang/String;II)Z", "percentDecode$okhttp", "(Ljava/lang/String;IIZ)Ljava/lang/String;", "percentDecode", "toHttpUrl", "toHttpUrlOrNull", "", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "out", "", "toPathString$okhttp", "(Ljava/util/List;Ljava/lang/StringBuilder;)V", "toPathString", "", "toQueryNamesAndValues$okhttp", "(Ljava/lang/String;)Ljava/util/List;", "toQueryNamesAndValues", "toQueryString$okhttp", "toQueryString", "Lokio/Buffer;", "input", "writeCanonicalized", "(Lokio/Buffer;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;)V", "encoded", "writePercentDecoded", "(Lokio/Buffer;Ljava/lang/String;IIZ)V", "FORM_ENCODE_SET", "Ljava/lang/String;", "FRAGMENT_ENCODE_SET", "FRAGMENT_ENCODE_SET_URI", "", "HEX_DIGITS", "[C", "PASSWORD_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET", "PATH_SEGMENT_ENCODE_SET_URI", "QUERY_COMPONENT_ENCODE_SET", "QUERY_COMPONENT_ENCODE_SET_URI", "QUERY_COMPONENT_REENCODE_SET", "QUERY_ENCODE_SET", "USERNAME_ENCODE_SET", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okhttp3/HttpUrl$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ String canonicalize$okhttp$default(Companion companion, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 8) != 0) {
                z = false;
            }
            if ((i3 & 16) != 0) {
                z2 = false;
            }
            if ((i3 & 32) != 0) {
                z3 = false;
            }
            if ((i3 & 64) != 0) {
                z4 = false;
            }
            if ((i3 & 128) != 0) {
                charset = null;
            }
            return companion.canonicalize$okhttp(str, i, i2, str2, z, z2, z3, z4, charset);
        }

        private final boolean isPercentEncoded(String str, int i, int i2) {
            int i3 = i + 2;
            boolean z = true;
            if (i3 >= i2 || str.charAt(i) != '%' || Util.parseHexDigit(str.charAt(i + 1)) == -1 || Util.parseHexDigit(str.charAt(i3)) == -1) {
                z = false;
            }
            return z;
        }

        public static /* synthetic */ String percentDecode$okhttp$default(Companion companion, String str, int i, int i2, boolean z, int i3, Object obj) {
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) != 0) {
                z = false;
            }
            return companion.percentDecode$okhttp(str, i, i2, z);
        }

        private final void writeCanonicalized(Buffer buffer, String str, int i, int i2, String str2, boolean z, boolean z2, boolean z3, boolean z4, Charset charset) {
            boolean G;
            Buffer buffer2 = null;
            while (i < i2) {
                if (str != null) {
                    int codePointAt = str.codePointAt(i);
                    if (!z || !(codePointAt == 9 || codePointAt == 10 || codePointAt == 12 || codePointAt == 13)) {
                        if (codePointAt != 43 || !z3) {
                            if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || z4)) {
                                G = StringsKt__StringsKt.m1467G(str2, (char) codePointAt, false, 2, null);
                                if (!G && (codePointAt != 37 || (z && (!z2 || isPercentEncoded(str, i, i2))))) {
                                    buffer.m207O0(codePointAt);
                                }
                            }
                            Buffer buffer3 = buffer2;
                            if (buffer2 == null) {
                                buffer3 = new Buffer();
                            }
                            if (charset == null || Intrinsics.m1834a(charset, StandardCharsets.UTF_8)) {
                                buffer3.m207O0(codePointAt);
                            } else {
                                buffer3.m213K0(str, i, Character.charCount(codePointAt) + i, charset);
                            }
                            while (true) {
                                buffer2 = buffer3;
                                if (!buffer3.mo60z()) {
                                    int readByte = buffer3.readByte() & 255;
                                    buffer.m222D0(37);
                                    buffer.m222D0(HttpUrl.HEX_DIGITS[(readByte >> 4) & 15]);
                                    buffer.m222D0(HttpUrl.HEX_DIGITS[readByte & 15]);
                                }
                            }
                        } else {
                            buffer.m210M0(z ? "+" : "%2B");
                        }
                    }
                    i += Character.charCount(codePointAt);
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            }
        }

        private final void writePercentDecoded(Buffer buffer, String str, int i, int i2, boolean z) {
            int i3;
            while (i < i2) {
                if (str != null) {
                    int codePointAt = str.codePointAt(i);
                    if (codePointAt != 37 || (i3 = i + 2) >= i2) {
                        if (codePointAt == 43 && z) {
                            buffer.m222D0(32);
                            i++;
                        }
                        buffer.m207O0(codePointAt);
                        i += Character.charCount(codePointAt);
                    } else {
                        int parseHexDigit = Util.parseHexDigit(str.charAt(i + 1));
                        int parseHexDigit2 = Util.parseHexDigit(str.charAt(i3));
                        if (!(parseHexDigit == -1 || parseHexDigit2 == -1)) {
                            buffer.m222D0((parseHexDigit << 4) + parseHexDigit2);
                            i = Character.charCount(codePointAt) + i3;
                        }
                        buffer.m207O0(codePointAt);
                        i += Character.charCount(codePointAt);
                    }
                } else {
                    throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                }
            }
        }

        @Deprecated
        @JvmName
        @NotNull
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final HttpUrl m24669deprecated_get(@NotNull String url) {
            Intrinsics.m1830e(url, "url");
            return get(url);
        }

        @Deprecated
        @JvmName
        @Nullable
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final HttpUrl m24670deprecated_get(@NotNull URI uri) {
            Intrinsics.m1830e(uri, "uri");
            return get(uri);
        }

        @Deprecated
        @JvmName
        @Nullable
        /* renamed from: -deprecated_get  reason: not valid java name */
        public final HttpUrl m24671deprecated_get(@NotNull URL url) {
            Intrinsics.m1830e(url, "url");
            return get(url);
        }

        @Deprecated
        @JvmName
        @Nullable
        /* renamed from: -deprecated_parse  reason: not valid java name */
        public final HttpUrl m24672deprecated_parse(@NotNull String url) {
            Intrinsics.m1830e(url, "url");
            return parse(url);
        }

        @NotNull
        public final String canonicalize$okhttp(@NotNull String canonicalize, int i, int i2, @NotNull String encodeSet, boolean z, boolean z2, boolean z3, boolean z4, @Nullable Charset charset) {
            boolean G;
            Intrinsics.m1830e(canonicalize, "$this$canonicalize");
            Intrinsics.m1830e(encodeSet, "encodeSet");
            int i3 = i;
            while (i3 < i2) {
                int codePointAt = canonicalize.codePointAt(i3);
                if (codePointAt >= 32 && codePointAt != 127 && (codePointAt < 128 || z4)) {
                    G = StringsKt__StringsKt.m1467G(encodeSet, (char) codePointAt, false, 2, null);
                    if (!G && ((codePointAt != 37 || (z && (!z2 || isPercentEncoded(canonicalize, i3, i2)))) && (codePointAt != 43 || !z3))) {
                        i3 += Character.charCount(codePointAt);
                    }
                }
                Buffer buffer = new Buffer();
                buffer.m208N0(canonicalize, i, i3);
                writeCanonicalized(buffer, canonicalize, i3, i2, encodeSet, z, z2, z3, z4, charset);
                return buffer.m199e0();
            }
            String substring = canonicalize.substring(i, i2);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }

        @JvmStatic
        public final int defaultPort(@NotNull String scheme) {
            int i;
            Intrinsics.m1830e(scheme, "scheme");
            int hashCode = scheme.hashCode();
            if (hashCode != 3213448) {
                if (hashCode == 99617003 && scheme.equals("https")) {
                    i = 443;
                }
                i = -1;
            } else {
                if (scheme.equals("http")) {
                    i = 80;
                }
                i = -1;
            }
            return i;
        }

        @JvmStatic
        @JvmName
        @NotNull
        public final HttpUrl get(@NotNull String toHttpUrl) {
            Intrinsics.m1830e(toHttpUrl, "$this$toHttpUrl");
            return new Builder().parse$okhttp(null, toHttpUrl).build();
        }

        @JvmStatic
        @JvmName
        @Nullable
        public final HttpUrl get(@NotNull URI toHttpUrlOrNull) {
            Intrinsics.m1830e(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            String uri = toHttpUrlOrNull.toString();
            Intrinsics.m1831d(uri, "toString()");
            return parse(uri);
        }

        @JvmStatic
        @JvmName
        @Nullable
        public final HttpUrl get(@NotNull URL toHttpUrlOrNull) {
            Intrinsics.m1830e(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            String url = toHttpUrlOrNull.toString();
            Intrinsics.m1831d(url, "toString()");
            return parse(url);
        }

        @JvmStatic
        @JvmName
        @Nullable
        public final HttpUrl parse(@NotNull String toHttpUrlOrNull) {
            HttpUrl httpUrl;
            Intrinsics.m1830e(toHttpUrlOrNull, "$this$toHttpUrlOrNull");
            try {
                httpUrl = get(toHttpUrlOrNull);
            } catch (IllegalArgumentException e) {
                httpUrl = null;
            }
            return httpUrl;
        }

        @NotNull
        public final String percentDecode$okhttp(@NotNull String percentDecode, int i, int i2, boolean z) {
            Intrinsics.m1830e(percentDecode, "$this$percentDecode");
            for (int i3 = i; i3 < i2; i3++) {
                char charAt = percentDecode.charAt(i3);
                if (charAt == '%' || (charAt == '+' && z)) {
                    Buffer buffer = new Buffer();
                    buffer.m208N0(percentDecode, i, i3);
                    writePercentDecoded(buffer, percentDecode, i3, i2, z);
                    return buffer.m199e0();
                }
            }
            String substring = percentDecode.substring(i, i2);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }

        public final void toPathString$okhttp(@NotNull List<String> toPathString, @NotNull StringBuilder out) {
            Intrinsics.m1830e(toPathString, "$this$toPathString");
            Intrinsics.m1830e(out, "out");
            int size = toPathString.size();
            for (int i = 0; i < size; i++) {
                out.append('/');
                out.append(toPathString.get(i));
            }
        }

        @NotNull
        public final List<String> toQueryNamesAndValues$okhttp(@NotNull String toQueryNamesAndValues) {
            int T;
            int T2;
            Intrinsics.m1830e(toQueryNamesAndValues, "$this$toQueryNamesAndValues");
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= toQueryNamesAndValues.length()) {
                T = StringsKt__StringsKt.m1454T(toQueryNamesAndValues, '&', i, false, 4, null);
                int i2 = T;
                if (T == -1) {
                    i2 = toQueryNamesAndValues.length();
                }
                T2 = StringsKt__StringsKt.m1454T(toQueryNamesAndValues, '=', i, false, 4, null);
                if (T2 == -1 || T2 > i2) {
                    String substring = toQueryNamesAndValues.substring(i, i2);
                    Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring);
                    arrayList.add(null);
                } else {
                    String substring2 = toQueryNamesAndValues.substring(i, T2);
                    Intrinsics.m1831d(substring2, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring2);
                    String substring3 = toQueryNamesAndValues.substring(T2 + 1, i2);
                    Intrinsics.m1831d(substring3, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    arrayList.add(substring3);
                }
                i = i2 + 1;
            }
            return arrayList;
        }

        public final void toQueryString$okhttp(@NotNull List<String> toQueryString, @NotNull StringBuilder out) {
            IntRange i;
            IntProgression h;
            Intrinsics.m1830e(toQueryString, "$this$toQueryString");
            Intrinsics.m1830e(out, "out");
            i = RangesKt___RangesKt.m1706i(0, toQueryString.size());
            h = RangesKt___RangesKt.m1707h(i, 2);
            int f = h.m1738f();
            int g = h.m1737g();
            int h2 = h.m1736h();
            if (h2 >= 0) {
                if (f > g) {
                    return;
                }
            } else if (f < g) {
                return;
            }
            while (true) {
                String str = toQueryString.get(f);
                String str2 = toQueryString.get(f + 1);
                if (f > 0) {
                    out.append('&');
                }
                out.append(str);
                if (str2 != null) {
                    out.append('=');
                    out.append(str2);
                }
                if (f != g) {
                    f += h2;
                } else {
                    return;
                }
            }
        }
    }

    public HttpUrl(@NotNull String scheme, @NotNull String username, @NotNull String password, @NotNull String host, int i, @NotNull List<String> pathSegments, @Nullable List<String> list, @Nullable String str, @NotNull String url) {
        Intrinsics.m1830e(scheme, "scheme");
        Intrinsics.m1830e(username, "username");
        Intrinsics.m1830e(password, "password");
        Intrinsics.m1830e(host, "host");
        Intrinsics.m1830e(pathSegments, "pathSegments");
        Intrinsics.m1830e(url, "url");
        this.scheme = scheme;
        this.username = username;
        this.password = password;
        this.host = host;
        this.port = i;
        this.pathSegments = pathSegments;
        this.queryNamesAndValues = list;
        this.fragment = str;
        this.url = url;
        this.isHttps = Intrinsics.m1834a(scheme, "https");
    }

    @JvmStatic
    public static final int defaultPort(@NotNull String str) {
        return Companion.defaultPort(str);
    }

    @JvmStatic
    @JvmName
    @NotNull
    public static final HttpUrl get(@NotNull String str) {
        return Companion.get(str);
    }

    @JvmStatic
    @JvmName
    @Nullable
    public static final HttpUrl get(@NotNull URI uri) {
        return Companion.get(uri);
    }

    @JvmStatic
    @JvmName
    @Nullable
    public static final HttpUrl get(@NotNull URL url) {
        return Companion.get(url);
    }

    @JvmStatic
    @JvmName
    @Nullable
    public static final HttpUrl parse(@NotNull String str) {
        return Companion.parse(str);
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_encodedFragment  reason: not valid java name */
    public final String m24649deprecated_encodedFragment() {
        return encodedFragment();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_encodedPassword  reason: not valid java name */
    public final String m24650deprecated_encodedPassword() {
        return encodedPassword();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_encodedPath  reason: not valid java name */
    public final String m24651deprecated_encodedPath() {
        return encodedPath();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_encodedPathSegments  reason: not valid java name */
    public final List<String> m24652deprecated_encodedPathSegments() {
        return encodedPathSegments();
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_encodedQuery  reason: not valid java name */
    public final String m24653deprecated_encodedQuery() {
        return encodedQuery();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_encodedUsername  reason: not valid java name */
    public final String m24654deprecated_encodedUsername() {
        return encodedUsername();
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_fragment  reason: not valid java name */
    public final String m24655deprecated_fragment() {
        return this.fragment;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_host  reason: not valid java name */
    public final String m24656deprecated_host() {
        return this.host;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_password  reason: not valid java name */
    public final String m24657deprecated_password() {
        return this.password;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_pathSegments  reason: not valid java name */
    public final List<String> m24658deprecated_pathSegments() {
        return this.pathSegments;
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_pathSize  reason: not valid java name */
    public final int m24659deprecated_pathSize() {
        return pathSize();
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_port  reason: not valid java name */
    public final int m24660deprecated_port() {
        return this.port;
    }

    @Deprecated
    @JvmName
    @Nullable
    /* renamed from: -deprecated_query  reason: not valid java name */
    public final String m24661deprecated_query() {
        return query();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_queryParameterNames  reason: not valid java name */
    public final Set<String> m24662deprecated_queryParameterNames() {
        return queryParameterNames();
    }

    @Deprecated
    @JvmName
    /* renamed from: -deprecated_querySize  reason: not valid java name */
    public final int m24663deprecated_querySize() {
        return querySize();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_scheme  reason: not valid java name */
    public final String m24664deprecated_scheme() {
        return this.scheme;
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_uri  reason: not valid java name */
    public final URI m24665deprecated_uri() {
        return uri();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_url  reason: not valid java name */
    public final URL m24666deprecated_url() {
        return url();
    }

    @Deprecated
    @JvmName
    @NotNull
    /* renamed from: -deprecated_username  reason: not valid java name */
    public final String m24667deprecated_username() {
        return this.username;
    }

    @JvmName
    @Nullable
    public final String encodedFragment() {
        int T;
        if (this.fragment == null) {
            return null;
        }
        T = StringsKt__StringsKt.m1454T(this.url, '#', 0, false, 6, null);
        String str = this.url;
        if (str != null) {
            String substring = str.substring(T + 1);
            Intrinsics.m1831d(substring, "(this as java.lang.String).substring(startIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName
    @NotNull
    public final String encodedPassword() {
        int T;
        int T2;
        if (this.password.length() == 0) {
            return "";
        }
        T = StringsKt__StringsKt.m1454T(this.url, ':', this.scheme.length() + 3, false, 4, null);
        T2 = StringsKt__StringsKt.m1454T(this.url, '@', 0, false, 6, null);
        String str = this.url;
        if (str != null) {
            String substring = str.substring(T + 1, T2);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName
    @NotNull
    public final String encodedPath() {
        int T;
        T = StringsKt__StringsKt.m1454T(this.url, '/', this.scheme.length() + 3, false, 4, null);
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, "?#", T, str.length());
        String str2 = this.url;
        if (str2 != null) {
            String substring = str2.substring(T, delimiterOffset);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName
    @NotNull
    public final List<String> encodedPathSegments() {
        int T;
        T = StringsKt__StringsKt.m1454T(this.url, '/', this.scheme.length() + 3, false, 4, null);
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, "?#", T, str.length());
        ArrayList arrayList = new ArrayList();
        while (T < delimiterOffset) {
            int i = T + 1;
            T = Util.delimiterOffset(this.url, '/', i, delimiterOffset);
            String str2 = this.url;
            if (str2 != null) {
                String substring = str2.substring(i, T);
                Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                arrayList.add(substring);
            } else {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
        }
        return arrayList;
    }

    @JvmName
    @Nullable
    public final String encodedQuery() {
        int T;
        if (this.queryNamesAndValues == null) {
            return null;
        }
        T = StringsKt__StringsKt.m1454T(this.url, '?', 0, false, 6, null);
        int i = T + 1;
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, '#', i, str.length());
        String str2 = this.url;
        if (str2 != null) {
            String substring = str2.substring(i, delimiterOffset);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    @JvmName
    @NotNull
    public final String encodedUsername() {
        if (this.username.length() == 0) {
            return "";
        }
        int length = this.scheme.length() + 3;
        String str = this.url;
        int delimiterOffset = Util.delimiterOffset(str, ":@", length, str.length());
        String str2 = this.url;
        if (str2 != null) {
            String substring = str2.substring(length, delimiterOffset);
            Intrinsics.m1831d(substring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            return substring;
        }
        throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof HttpUrl) && Intrinsics.m1834a(((HttpUrl) obj).url, this.url);
    }

    @JvmName
    @Nullable
    public final String fragment() {
        return this.fragment;
    }

    public int hashCode() {
        return this.url.hashCode();
    }

    @JvmName
    @NotNull
    public final String host() {
        return this.host;
    }

    public final boolean isHttps() {
        return this.isHttps;
    }

    @NotNull
    public final Builder newBuilder() {
        Builder builder = new Builder();
        builder.setScheme$okhttp(this.scheme);
        builder.setEncodedUsername$okhttp(encodedUsername());
        builder.setEncodedPassword$okhttp(encodedPassword());
        builder.setHost$okhttp(this.host);
        builder.setPort$okhttp(this.port != Companion.defaultPort(this.scheme) ? this.port : -1);
        builder.getEncodedPathSegments$okhttp().clear();
        builder.getEncodedPathSegments$okhttp().addAll(encodedPathSegments());
        builder.encodedQuery(encodedQuery());
        builder.setEncodedFragment$okhttp(encodedFragment());
        return builder;
    }

    @Nullable
    public final Builder newBuilder(@NotNull String link) {
        Builder builder;
        Intrinsics.m1830e(link, "link");
        try {
            builder = new Builder().parse$okhttp(this, link);
        } catch (IllegalArgumentException e) {
            builder = null;
        }
        return builder;
    }

    @JvmName
    @NotNull
    public final String password() {
        return this.password;
    }

    @JvmName
    @NotNull
    public final List<String> pathSegments() {
        return this.pathSegments;
    }

    @JvmName
    public final int pathSize() {
        return this.pathSegments.size();
    }

    @JvmName
    public final int port() {
        return this.port;
    }

    @JvmName
    @Nullable
    public final String query() {
        if (this.queryNamesAndValues == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Companion.toQueryString$okhttp(this.queryNamesAndValues, sb);
        return sb.toString();
    }

    @Nullable
    public final String queryParameter(@NotNull String name) {
        IntRange i;
        IntProgression h;
        Intrinsics.m1830e(name, "name");
        List<String> list = this.queryNamesAndValues;
        if (list == null) {
            return null;
        }
        i = RangesKt___RangesKt.m1706i(0, list.size());
        h = RangesKt___RangesKt.m1707h(i, 2);
        int f = h.m1738f();
        int g = h.m1737g();
        int h2 = h.m1736h();
        if (h2 >= 0) {
            if (f > g) {
                return null;
            }
        } else if (f < g) {
            return null;
        }
        while (!Intrinsics.m1834a(name, this.queryNamesAndValues.get(f))) {
            if (f == g) {
                return null;
            }
            f += h2;
        }
        return this.queryNamesAndValues.get(f + 1);
    }

    @NotNull
    public final String queryParameterName(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            String str = list.get(i * 2);
            Intrinsics.m1832c(str);
            return str;
        }
        throw new IndexOutOfBoundsException();
    }

    @JvmName
    @NotNull
    public final Set<String> queryParameterNames() {
        IntRange i;
        IntProgression h;
        Set<String> b;
        if (this.queryNamesAndValues == null) {
            b = SetsKt__SetsKt.m2060b();
            return b;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        i = RangesKt___RangesKt.m1706i(0, this.queryNamesAndValues.size());
        h = RangesKt___RangesKt.m1707h(i, 2);
        int f = h.m1738f();
        int g = h.m1737g();
        int h2 = h.m1736h();
        if (h2 < 0 ? f >= g : f <= g) {
            while (true) {
                String str = this.queryNamesAndValues.get(f);
                Intrinsics.m1832c(str);
                linkedHashSet.add(str);
                if (f == g) {
                    break;
                }
                f += h2;
            }
        }
        Set<String> unmodifiableSet = Collections.unmodifiableSet(linkedHashSet);
        Intrinsics.m1831d(unmodifiableSet, "Collections.unmodifiableSet(result)");
        return unmodifiableSet;
    }

    @Nullable
    public final String queryParameterValue(int i) {
        List<String> list = this.queryNamesAndValues;
        if (list != null) {
            return list.get((i * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    @NotNull
    public final List<String> queryParameterValues(@NotNull String name) {
        IntRange i;
        IntProgression h;
        List<String> f;
        Intrinsics.m1830e(name, "name");
        if (this.queryNamesAndValues == null) {
            f = CollectionsKt__CollectionsKt.m2175f();
            return f;
        }
        ArrayList arrayList = new ArrayList();
        i = RangesKt___RangesKt.m1706i(0, this.queryNamesAndValues.size());
        h = RangesKt___RangesKt.m1707h(i, 2);
        int f2 = h.m1738f();
        int g = h.m1737g();
        int h2 = h.m1736h();
        if (h2 < 0 ? f2 >= g : f2 <= g) {
            while (true) {
                if (Intrinsics.m1834a(name, this.queryNamesAndValues.get(f2))) {
                    arrayList.add(this.queryNamesAndValues.get(f2 + 1));
                }
                if (f2 == g) {
                    break;
                }
                f2 += h2;
            }
        }
        List<String> unmodifiableList = Collections.unmodifiableList(arrayList);
        Intrinsics.m1831d(unmodifiableList, "Collections.unmodifiableList(result)");
        return unmodifiableList;
    }

    @JvmName
    public final int querySize() {
        List<String> list = this.queryNamesAndValues;
        return list != null ? list.size() / 2 : 0;
    }

    @NotNull
    public final String redact() {
        Builder newBuilder = newBuilder("/...");
        Intrinsics.m1832c(newBuilder);
        return newBuilder.username("").password("").build().toString();
    }

    @Nullable
    public final HttpUrl resolve(@NotNull String link) {
        Intrinsics.m1830e(link, "link");
        Builder newBuilder = newBuilder(link);
        return newBuilder != null ? newBuilder.build() : null;
    }

    @JvmName
    @NotNull
    public final String scheme() {
        return this.scheme;
    }

    @NotNull
    public String toString() {
        return this.url;
    }

    @Nullable
    public final String topPrivateDomain() {
        return Util.canParseAsIpAddress(this.host) ? null : PublicSuffixDatabase.Companion.get().getEffectiveTldPlusOne(this.host);
    }

    @JvmName
    @NotNull
    public final URI uri() {
        URI uri;
        String builder = newBuilder().reencodeForUri$okhttp().toString();
        try {
            uri = new URI(builder);
        } catch (URISyntaxException e) {
            try {
                uri = URI.create(new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").m1552c(builder, ""));
                Intrinsics.m1831d(uri, "try {\n        val stripp…e) // Unexpected!\n      }");
            } catch (Exception e2) {
                throw new RuntimeException(e);
            }
        }
        return uri;
    }

    @JvmName
    @NotNull
    public final URL url() {
        try {
            return new URL(this.url);
        } catch (MalformedURLException e) {
            throw new RuntimeException(e);
        }
    }

    @JvmName
    @NotNull
    public final String username() {
        return this.username;
    }
}
