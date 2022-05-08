package p000a.p001a.p002a.p003a.p004a.p006b;

import java.util.Collections;
import java.util.Map;
import java.util.regex.Pattern;
import p000a.p001a.p002a.p003a.AbstractC0147l;
import p000a.p001a.p002a.p003a.p004a.p010e.AbstractC0101h;
import p000a.p001a.p002a.p003a.p004a.p010e.C0093e;
import p000a.p001a.p002a.p003a.p004a.p010e.EnumC0092d;
/* renamed from: a.a.a.a.a.b.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/b/a.class */
public abstract class AbstractC0007a {
    public static final String ACCEPT_JSON_VALUE = "application/json";
    public static final String ANDROID_CLIENT_TYPE = "android";
    public static final String CLS_ANDROID_SDK_DEVELOPER_TOKEN = "470fa2b4ae81cd56ecbcda9735803434cec591fa";
    public static final String CRASHLYTICS_USER_AGENT = "Crashlytics Android SDK/";
    public static final int DEFAULT_TIMEOUT = 10000;
    public static final String HEADER_ACCEPT = "Accept";
    public static final String HEADER_API_KEY = "X-CRASHLYTICS-API-KEY";
    public static final String HEADER_CLIENT_TYPE = "X-CRASHLYTICS-API-CLIENT-TYPE";
    public static final String HEADER_CLIENT_VERSION = "X-CRASHLYTICS-API-CLIENT-VERSION";
    public static final String HEADER_DEVELOPER_TOKEN = "X-CRASHLYTICS-DEVELOPER-TOKEN";
    public static final String HEADER_REQUEST_ID = "X-REQUEST-ID";
    public static final String HEADER_USER_AGENT = "User-Agent";
    private static final Pattern PROTOCOL_AND_HOST_PATTERN = Pattern.compile("http(s?)://[^\\/]+", 2);
    protected final AbstractC0147l kit;
    private final EnumC0092d method;
    private final String protocolAndHostOverride;
    private final AbstractC0101h requestFactory;
    private final String url;

    public AbstractC0007a(AbstractC0147l lVar, String str, String str2, AbstractC0101h hVar, EnumC0092d dVar) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        } else if (hVar != null) {
            this.kit = lVar;
            this.protocolAndHostOverride = str;
            this.url = overrideProtocolAndHost(str2);
            this.requestFactory = hVar;
            this.method = dVar;
        } else {
            throw new IllegalArgumentException("requestFactory must not be null.");
        }
    }

    private String overrideProtocolAndHost(String str) {
        String str2 = str;
        if (!C0026j.m10325d(this.protocolAndHostOverride)) {
            str2 = PROTOCOL_AND_HOST_PATTERN.matcher(str).replaceFirst(this.protocolAndHostOverride);
        }
        return str2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C0093e getHttpRequest() {
        return getHttpRequest(Collections.emptyMap());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public C0093e getHttpRequest(Map<String, String> map) {
        C0093e a = this.requestFactory.mo10200a(this.method, getUrl(), map);
        a.m10238a().setUseCaches(false);
        a.m10238a().setConnectTimeout(DEFAULT_TIMEOUT);
        return a.m10231a(HEADER_USER_AGENT, CRASHLYTICS_USER_AGENT + this.kit.getVersion()).m10231a(HEADER_DEVELOPER_TOKEN, CLS_ANDROID_SDK_DEVELOPER_TOKEN);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getUrl() {
        return this.url;
    }
}
