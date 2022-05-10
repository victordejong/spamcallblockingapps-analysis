package com.google.firebase.perf.p494v1;

import androidx.recyclerview.widget.RecyclerView;
import com.google.protobuf.GeneratedMessageLite;
import com.google.protobuf.MapFieldLite;
import com.google.protobuf.WireFormat;
import java.util.List;
import p131c.p161d.p282e.p340u.p350m.AbstractC6034r;
import p131c.p161d.p282e.p340u.p350m.C6039u;
import p131c.p161d.p367h.AbstractC6275a;
import p131c.p161d.p367h.AbstractC6376v0;
import p131c.p161d.p367h.C6319h0;
import p131c.p161d.p367h.C6381y;
/* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric.class */
public final class NetworkRequestMetric extends GeneratedMessageLite<NetworkRequestMetric, C7876b> implements AbstractC6034r {
    public static final int CLIENT_START_TIME_US_FIELD_NUMBER = 7;
    public static final int CUSTOM_ATTRIBUTES_FIELD_NUMBER = 12;
    public static final NetworkRequestMetric DEFAULT_INSTANCE;
    public static final int HTTP_METHOD_FIELD_NUMBER = 2;
    public static final int HTTP_RESPONSE_CODE_FIELD_NUMBER = 5;
    public static final int NETWORK_CLIENT_ERROR_REASON_FIELD_NUMBER = 11;
    public static volatile AbstractC6376v0<NetworkRequestMetric> PARSER;
    public static final int PERF_SESSIONS_FIELD_NUMBER = 13;
    public static final int REQUEST_PAYLOAD_BYTES_FIELD_NUMBER = 3;
    public static final int RESPONSE_CONTENT_TYPE_FIELD_NUMBER = 6;
    public static final int RESPONSE_PAYLOAD_BYTES_FIELD_NUMBER = 4;
    public static final int TIME_TO_REQUEST_COMPLETED_US_FIELD_NUMBER = 8;
    public static final int TIME_TO_RESPONSE_COMPLETED_US_FIELD_NUMBER = 10;
    public static final int TIME_TO_RESPONSE_INITIATED_US_FIELD_NUMBER = 9;
    public static final int URL_FIELD_NUMBER = 1;
    public int bitField0_;
    public long clientStartTimeUs_;
    public int httpMethod_;
    public int httpResponseCode_;
    public int networkClientErrorReason_;
    public long requestPayloadBytes_;
    public long responsePayloadBytes_;
    public long timeToRequestCompletedUs_;
    public long timeToResponseCompletedUs_;
    public long timeToResponseInitiatedUs_;
    public MapFieldLite<String, String> customAttributes_ = MapFieldLite.emptyMapField();
    public String url_ = "";
    public String responseContentType_ = "";
    public C6381y.AbstractC6390i<C6039u> perfSessions_ = GeneratedMessageLite.m6940u();

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$HttpMethod */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod.class */
    public enum HttpMethod implements C6381y.AbstractC6384c {
        HTTP_METHOD_UNKNOWN(0),
        GET(1),
        PUT(2),
        POST(3),
        DELETE(4),
        HEAD(5),
        PATCH(6),
        OPTIONS(7),
        TRACE(8),
        CONNECT(9);
        
        public static final int CONNECT_VALUE = 9;
        public static final int DELETE_VALUE = 4;
        public static final int GET_VALUE = 1;
        public static final int HEAD_VALUE = 5;
        public static final int HTTP_METHOD_UNKNOWN_VALUE = 0;
        public static final int OPTIONS_VALUE = 7;
        public static final int PATCH_VALUE = 6;
        public static final int POST_VALUE = 3;
        public static final int PUT_VALUE = 2;
        public static final int TRACE_VALUE = 8;
        public static final C6381y.AbstractC6385d<HttpMethod> internalValueMap = new C7871a();
        public final int value;

        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$HttpMethod$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod$a.class */
        public class C7871a implements C6381y.AbstractC6385d<HttpMethod> {
            @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public HttpMethod mo6797a(int i) {
                return HttpMethod.forNumber(i);
            }
        }

        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$HttpMethod$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$HttpMethod$b.class */
        public static final class C7872b implements C6381y.AbstractC6386e {

            /* renamed from: a */
            public static final C6381y.AbstractC6386e f31041a = new C7872b();

            @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
            /* renamed from: a */
            public boolean mo6796a(int i) {
                return HttpMethod.forNumber(i) != null;
            }
        }

        HttpMethod(int i) {
            this.value = i;
        }

        public static HttpMethod forNumber(int i) {
            switch (i) {
                case 0:
                    return HTTP_METHOD_UNKNOWN;
                case 1:
                    return GET;
                case 2:
                    return PUT;
                case 3:
                    return POST;
                case 4:
                    return DELETE;
                case 5:
                    return HEAD;
                case 6:
                    return PATCH;
                case 7:
                    return OPTIONS;
                case 8:
                    return TRACE;
                case 9:
                    return CONNECT;
                default:
                    return null;
            }
        }

        public static C6381y.AbstractC6385d<HttpMethod> internalGetValueMap() {
            return internalValueMap;
        }

        public static C6381y.AbstractC6386e internalGetVerifier() {
            return C7872b.f31041a;
        }

        @Deprecated
        public static HttpMethod valueOf(int i) {
            return forNumber(i);
        }

        @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$NetworkClientErrorReason */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason.class */
    public enum NetworkClientErrorReason implements C6381y.AbstractC6384c {
        NETWORK_CLIENT_ERROR_REASON_UNKNOWN(0),
        GENERIC_CLIENT_ERROR(1);
        
        public static final int GENERIC_CLIENT_ERROR_VALUE = 1;
        public static final int NETWORK_CLIENT_ERROR_REASON_UNKNOWN_VALUE = 0;
        public static final C6381y.AbstractC6385d<NetworkClientErrorReason> internalValueMap = new C7873a();
        public final int value;

        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$NetworkClientErrorReason$a */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason$a.class */
        public class C7873a implements C6381y.AbstractC6385d<NetworkClientErrorReason> {
            @Override // p131c.p161d.p367h.C6381y.AbstractC6385d
            /* renamed from: a  reason: avoid collision after fix types in other method */
            public NetworkClientErrorReason mo6797a(int i) {
                return NetworkClientErrorReason.forNumber(i);
            }
        }

        /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$NetworkClientErrorReason$b */
        /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$NetworkClientErrorReason$b.class */
        public static final class C7874b implements C6381y.AbstractC6386e {

            /* renamed from: a */
            public static final C6381y.AbstractC6386e f31042a = new C7874b();

            @Override // p131c.p161d.p367h.C6381y.AbstractC6386e
            /* renamed from: a */
            public boolean mo6796a(int i) {
                return NetworkClientErrorReason.forNumber(i) != null;
            }
        }

        NetworkClientErrorReason(int i) {
            this.value = i;
        }

        public static NetworkClientErrorReason forNumber(int i) {
            if (i == 0) {
                return NETWORK_CLIENT_ERROR_REASON_UNKNOWN;
            }
            if (i != 1) {
                return null;
            }
            return GENERIC_CLIENT_ERROR;
        }

        public static C6381y.AbstractC6385d<NetworkClientErrorReason> internalGetValueMap() {
            return internalValueMap;
        }

        public static C6381y.AbstractC6386e internalGetVerifier() {
            return C7874b.f31042a;
        }

        @Deprecated
        public static NetworkClientErrorReason valueOf(int i) {
            return forNumber(i);
        }

        @Override // p131c.p161d.p367h.C6381y.AbstractC6384c
        public final int getNumber() {
            return this.value;
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$a */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$a.class */
    public static /* synthetic */ class C7875a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f31043a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[GeneratedMessageLite.MethodToInvoke.values().length];
            f31043a = iArr;
            try {
                iArr[GeneratedMessageLite.MethodToInvoke.NEW_MUTABLE_INSTANCE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31043a[GeneratedMessageLite.MethodToInvoke.NEW_BUILDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31043a[GeneratedMessageLite.MethodToInvoke.BUILD_MESSAGE_INFO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31043a[GeneratedMessageLite.MethodToInvoke.GET_DEFAULT_INSTANCE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31043a[GeneratedMessageLite.MethodToInvoke.GET_PARSER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31043a[GeneratedMessageLite.MethodToInvoke.GET_MEMOIZED_IS_INITIALIZED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31043a[GeneratedMessageLite.MethodToInvoke.SET_MEMOIZED_IS_INITIALIZED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$b.class */
    public static final class C7876b extends GeneratedMessageLite.AbstractC7946a<NetworkRequestMetric, C7876b> implements AbstractC6034r {
        public C7876b() {
            super(NetworkRequestMetric.DEFAULT_INSTANCE);
        }

        public /* synthetic */ C7876b(C7875a aVar) {
            this();
        }

        /* renamed from: A */
        public boolean m7164A() {
            return ((NetworkRequestMetric) this.f31129b).m7203L();
        }

        /* renamed from: C */
        public boolean m7163C() {
            return ((NetworkRequestMetric) this.f31129b).m7199P();
        }

        /* renamed from: a */
        public C7876b m7162a(int i) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7183b(i);
            return this;
        }

        /* renamed from: a */
        public C7876b m7161a(long j) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7194a(j);
            return this;
        }

        /* renamed from: a */
        public C7876b m7160a(HttpMethod httpMethod) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7193a(httpMethod);
            return this;
        }

        /* renamed from: a */
        public C7876b m7159a(NetworkClientErrorReason networkClientErrorReason) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7192a(networkClientErrorReason);
            return this;
        }

        /* renamed from: a */
        public C7876b m7158a(Iterable<? extends C6039u> iterable) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7184a(iterable);
            return this;
        }

        /* renamed from: a */
        public C7876b m7157a(String str) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7179b(str);
            return this;
        }

        /* renamed from: b */
        public C7876b m7156b(long j) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7182b(j);
            return this;
        }

        /* renamed from: b */
        public C7876b m7155b(String str) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7176c(str);
            return this;
        }

        /* renamed from: c */
        public C7876b m7154c(long j) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7178c(j);
            return this;
        }

        /* renamed from: d */
        public C7876b m7153d(long j) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7175d(j);
            return this;
        }

        /* renamed from: e */
        public C7876b m7152e(long j) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7173e(j);
            return this;
        }

        /* renamed from: f */
        public C7876b m7151f(long j) {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7171f(j);
            return this;
        }

        /* renamed from: w */
        public C7876b m7150w() {
            m6930s();
            ((NetworkRequestMetric) this.f31129b).m7169v();
            return this;
        }

        /* renamed from: x */
        public long m7149x() {
            return ((NetworkRequestMetric) this.f31129b).m7207H();
        }

        /* renamed from: z */
        public boolean m7148z() {
            return ((NetworkRequestMetric) this.f31129b).m7205J();
        }
    }

    /* renamed from: com.google.firebase.perf.v1.NetworkRequestMetric$c */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/v1/NetworkRequestMetric$c.class */
    public static final class C7877c {

        /* renamed from: a */
        public static final C6319h0<String, String> f31044a;

        static {
            WireFormat.FieldType fieldType = WireFormat.FieldType.STRING;
            f31044a = C6319h0.m21476a(fieldType, "", fieldType, "");
        }
    }

    static {
        NetworkRequestMetric networkRequestMetric = new NetworkRequestMetric();
        DEFAULT_INSTANCE = networkRequestMetric;
        GeneratedMessageLite.m6949a(NetworkRequestMetric.class, networkRequestMetric);
    }

    /* renamed from: S */
    public static NetworkRequestMetric m7196S() {
        return DEFAULT_INSTANCE;
    }

    /* renamed from: T */
    public static C7876b m7195T() {
        return DEFAULT_INSTANCE.m6945i();
    }

    /* renamed from: A */
    public List<C6039u> m7213A() {
        return this.perfSessions_;
    }

    /* renamed from: C */
    public long m7212C() {
        return this.requestPayloadBytes_;
    }

    /* renamed from: D */
    public String m7211D() {
        return this.responseContentType_;
    }

    /* renamed from: E */
    public long m7210E() {
        return this.responsePayloadBytes_;
    }

    /* renamed from: F */
    public long m7209F() {
        return this.timeToRequestCompletedUs_;
    }

    /* renamed from: G */
    public long m7208G() {
        return this.timeToResponseCompletedUs_;
    }

    /* renamed from: H */
    public long m7207H() {
        return this.timeToResponseInitiatedUs_;
    }

    /* renamed from: I */
    public String m7206I() {
        return this.url_;
    }

    /* renamed from: J */
    public boolean m7205J() {
        return (this.bitField0_ & 128) != 0;
    }

    /* renamed from: K */
    public boolean m7204K() {
        return (this.bitField0_ & 2) != 0;
    }

    /* renamed from: L */
    public boolean m7203L() {
        return (this.bitField0_ & 32) != 0;
    }

    /* renamed from: M */
    public boolean m7202M() {
        return (this.bitField0_ & 4) != 0;
    }

    /* renamed from: N */
    public boolean m7201N() {
        return (this.bitField0_ & 8) != 0;
    }

    /* renamed from: O */
    public boolean m7200O() {
        return (this.bitField0_ & 256) != 0;
    }

    /* renamed from: P */
    public boolean m7199P() {
        return (this.bitField0_ & 1024) != 0;
    }

    /* renamed from: Q */
    public boolean m7198Q() {
        return (this.bitField0_ & RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN) != 0;
    }

    @Override // com.google.protobuf.GeneratedMessageLite
    /* renamed from: a */
    public final Object mo6954a(GeneratedMessageLite.MethodToInvoke methodToInvoke, Object obj, Object obj2) {
        switch (C7875a.f31043a[methodToInvoke.ordinal()]) {
            case 1:
                return new NetworkRequestMetric();
            case 2:
                return new C7876b(null);
            case 3:
                return GeneratedMessageLite.m6960a(DEFAULT_INSTANCE, "\u0001\r��\u0001\u0001\r\r\u0001\u0001��\u0001\b��\u0002\f\u0001\u0003\u0002\u0002\u0004\u0002\u0003\u0005\u0004\u0005\u0006\b\u0006\u0007\u0002\u0007\b\u0002\b\t\u0002\t\n\u0002\n\u000b\f\u0004\f2\r\u001b", new Object[]{"bitField0_", "url_", "httpMethod_", HttpMethod.internalGetVerifier(), "requestPayloadBytes_", "responsePayloadBytes_", "httpResponseCode_", "responseContentType_", "clientStartTimeUs_", "timeToRequestCompletedUs_", "timeToResponseInitiatedUs_", "timeToResponseCompletedUs_", "networkClientErrorReason_", NetworkClientErrorReason.internalGetVerifier(), "customAttributes_", C7877c.f31044a, "perfSessions_", C6039u.class});
            case 4:
                return DEFAULT_INSTANCE;
            case 5:
                AbstractC6376v0<NetworkRequestMetric> v0Var = PARSER;
                AbstractC6376v0<NetworkRequestMetric> v0Var2 = v0Var;
                if (v0Var == null) {
                    synchronized (NetworkRequestMetric.class) {
                        try {
                            AbstractC6376v0<NetworkRequestMetric> v0Var3 = PARSER;
                            v0Var2 = v0Var3;
                            if (v0Var3 == null) {
                                v0Var2 = new GeneratedMessageLite.C7947b<>(DEFAULT_INSTANCE);
                                PARSER = v0Var2;
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                }
                return v0Var2;
            case 6:
                return (byte) 1;
            case 7:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }

    /* renamed from: a */
    public final void m7194a(long j) {
        this.bitField0_ |= 128;
        this.clientStartTimeUs_ = j;
    }

    /* renamed from: a */
    public final void m7193a(HttpMethod httpMethod) {
        this.httpMethod_ = httpMethod.getNumber();
        this.bitField0_ |= 2;
    }

    /* renamed from: a */
    public final void m7192a(NetworkClientErrorReason networkClientErrorReason) {
        this.networkClientErrorReason_ = networkClientErrorReason.getNumber();
        this.bitField0_ |= 16;
    }

    /* renamed from: a */
    public final void m7184a(Iterable<? extends C6039u> iterable) {
        m7168w();
        AbstractC6275a.m21695a(iterable, this.perfSessions_);
    }

    /* renamed from: b */
    public final void m7183b(int i) {
        this.bitField0_ |= 32;
        this.httpResponseCode_ = i;
    }

    /* renamed from: b */
    public final void m7182b(long j) {
        this.bitField0_ |= 4;
        this.requestPayloadBytes_ = j;
    }

    /* renamed from: b */
    public final void m7179b(String str) {
        str.getClass();
        this.bitField0_ |= 64;
        this.responseContentType_ = str;
    }

    /* renamed from: c */
    public final void m7178c(long j) {
        this.bitField0_ |= 8;
        this.responsePayloadBytes_ = j;
    }

    /* renamed from: c */
    public final void m7176c(String str) {
        str.getClass();
        this.bitField0_ |= 1;
        this.url_ = str;
    }

    /* renamed from: d */
    public final void m7175d(long j) {
        this.bitField0_ |= 256;
        this.timeToRequestCompletedUs_ = j;
    }

    /* renamed from: e */
    public final void m7173e(long j) {
        this.bitField0_ |= 1024;
        this.timeToResponseCompletedUs_ = j;
    }

    /* renamed from: f */
    public final void m7171f(long j) {
        this.bitField0_ |= RecyclerView.AbstractC0495b0.FLAG_ADAPTER_POSITION_UNKNOWN;
        this.timeToResponseInitiatedUs_ = j;
    }

    /* renamed from: v */
    public final void m7169v() {
        this.bitField0_ &= -65;
        this.responseContentType_ = m7196S().m7211D();
    }

    /* renamed from: w */
    public final void m7168w() {
        if (!this.perfSessions_.mo21000L()) {
            this.perfSessions_ = GeneratedMessageLite.m6958a(this.perfSessions_);
        }
    }

    /* renamed from: x */
    public long m7167x() {
        return this.clientStartTimeUs_;
    }

    /* renamed from: y */
    public HttpMethod m7166y() {
        HttpMethod forNumber = HttpMethod.forNumber(this.httpMethod_);
        HttpMethod httpMethod = forNumber;
        if (forNumber == null) {
            httpMethod = HttpMethod.HTTP_METHOD_UNKNOWN;
        }
        return httpMethod;
    }

    /* renamed from: z */
    public int m7165z() {
        return this.httpResponseCode_;
    }
}
