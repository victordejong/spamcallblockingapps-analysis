package com.facebook;

import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.core.app.NotificationCompat;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.internal.C2401d0;
import com.facebook.internal.C2408g0;
import com.facebook.internal.C2416h0;
import com.facebook.internal.C2500w;
import com.facebook.internal.C2503y;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.google.i18n.phonenumbers.prefixmapper.PrefixTimeZonesMap;
import com.mopub.common.AdType;
import com.taiwanmobile.p055pt.adp.view.webview.IJSExecutor;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p081h.p154f.AbstractC6105a0;
import p081h.p154f.AsyncTaskC6144q;
import p081h.p154f.C6106b;
import p081h.p154f.C6131k;
import p081h.p154f.C6135n;
import p081h.p154f.C6145r;
import p081h.p154f.C6148s;
import p081h.p154f.C6154y;
import p081h.p154f.EnumC6149t;
import p081h.p154f.EnumC6151v;
import p459j.p460a.p582w0.p590x4.C14247d;
import zendesk.support.CreateRequest;
/* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest.class */
public class GraphRequest {

    /* renamed from: n */
    public static final String f2569n = "GraphRequest";

    /* renamed from: o */
    public static final String f2570o;

    /* renamed from: p */
    public static String f2571p;

    /* renamed from: q */
    public static Pattern f2572q = Pattern.compile("^/?v\\d+\\.\\d+/(.*)");

    /* renamed from: r */
    public static volatile String f2573r;
    @Nullable

    /* renamed from: a */
    public AccessToken f2574a;

    /* renamed from: b */
    public EnumC6149t f2575b;

    /* renamed from: c */
    public String f2576c;

    /* renamed from: d */
    public JSONObject f2577d;

    /* renamed from: e */
    public String f2578e;

    /* renamed from: f */
    public String f2579f;

    /* renamed from: g */
    public boolean f2580g;

    /* renamed from: h */
    public Bundle f2581h;

    /* renamed from: i */
    public AbstractC2230f f2582i;

    /* renamed from: j */
    public String f2583j;

    /* renamed from: k */
    public Object f2584k;

    /* renamed from: l */
    public String f2585l;

    /* renamed from: m */
    public boolean f2586m;

    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType.class */
    public static class ParcelableResourceWithMimeType<RESOURCE extends Parcelable> implements Parcelable {
        public static final Parcelable.Creator<ParcelableResourceWithMimeType> CREATOR = new C2224a();

        /* renamed from: a */
        public final String f2587a;

        /* renamed from: b */
        public final RESOURCE f2588b;

        /* renamed from: com.facebook.GraphRequest$ParcelableResourceWithMimeType$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$ParcelableResourceWithMimeType$a.class */
        public static final class C2224a implements Parcelable.Creator<ParcelableResourceWithMimeType> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableResourceWithMimeType createFromParcel(Parcel parcel) {
                return new ParcelableResourceWithMimeType(parcel, (C2225a) null);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public ParcelableResourceWithMimeType[] newArray(int i) {
                return new ParcelableResourceWithMimeType[i];
            }
        }

        public ParcelableResourceWithMimeType(Parcel parcel) {
            this.f2587a = parcel.readString();
            this.f2588b = (RESOURCE) parcel.readParcelable(C6135n.m23746e().getClassLoader());
        }

        public /* synthetic */ ParcelableResourceWithMimeType(Parcel parcel, C2225a aVar) {
            this(parcel);
        }

        public ParcelableResourceWithMimeType(RESOURCE resource, String str) {
            this.f2587a = str;
            this.f2588b = resource;
        }

        /* renamed from: a */
        public String m35406a() {
            return this.f2587a;
        }

        /* renamed from: b */
        public RESOURCE m35405b() {
            return this.f2588b;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 1;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f2587a);
            parcel.writeParcelable(this.f2588b, i);
        }
    }

    /* renamed from: com.facebook.GraphRequest$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$a.class */
    public static final class C2225a implements AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2231g f2589a;

        public C2225a(AbstractC2231g gVar) {
            this.f2589a = gVar;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            AbstractC2231g gVar = this.f2589a;
            if (gVar != null) {
                gVar.mo2985a(sVar.m23698b(), sVar);
            }
        }
    }

    /* renamed from: com.facebook.GraphRequest$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$b.class */
    public class C2226b implements AbstractC2230f {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2230f f2590a;

        public C2226b(GraphRequest graphRequest, AbstractC2230f fVar) {
            this.f2590a = fVar;
        }

        @Override // com.facebook.GraphRequest.AbstractC2230f
        /* renamed from: a */
        public void mo23821a(C6148s sVar) {
            JSONObject b = sVar.m23698b();
            JSONObject optJSONObject = b != null ? b.optJSONObject("__debug__") : null;
            JSONArray optJSONArray = optJSONObject != null ? optJSONObject.optJSONArray(NotificationCompat.CarExtender.KEY_MESSAGES) : null;
            if (optJSONArray != null) {
                for (int i = 0; i < optJSONArray.length(); i++) {
                    JSONObject optJSONObject2 = optJSONArray.optJSONObject(i);
                    String optString = optJSONObject2 != null ? optJSONObject2.optString("message") : null;
                    String optString2 = optJSONObject2 != null ? optJSONObject2.optString("type") : null;
                    String optString3 = optJSONObject2 != null ? optJSONObject2.optString("link") : null;
                    if (!(optString == null || optString2 == null)) {
                        EnumC6151v vVar = EnumC6151v.GRAPH_API_DEBUG_INFO;
                        if (optString2.equals("warning")) {
                            vVar = EnumC6151v.GRAPH_API_DEBUG_WARNING;
                        }
                        String str = optString;
                        if (!C2408g0.m34816d(optString3)) {
                            str = optString + " Link: " + optString3;
                        }
                        C2503y.m34557a(vVar, GraphRequest.f2569n, str);
                    }
                }
            }
            AbstractC2230f fVar = this.f2590a;
            if (fVar != null) {
                fVar.mo23821a(sVar);
            }
        }
    }

    /* renamed from: com.facebook.GraphRequest$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$c.class */
    public static final class RunnableC2227c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f2591a;

        /* renamed from: b */
        public final /* synthetic */ C6145r f2592b;

        public RunnableC2227c(ArrayList arrayList, C6145r rVar) {
            this.f2591a = arrayList;
            this.f2592b = rVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = this.f2591a.iterator();
            while (it.hasNext()) {
                Pair pair = (Pair) it.next();
                ((AbstractC2230f) pair.first).mo23821a((C6148s) pair.second);
            }
            for (C6145r.AbstractC6146a aVar : this.f2592b.m23711u()) {
                aVar.mo23707a(this.f2592b);
            }
        }
    }

    /* renamed from: com.facebook.GraphRequest$d */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$d.class */
    public class C2228d implements AbstractC2232h {

        /* renamed from: a */
        public final /* synthetic */ ArrayList f2593a;

        public C2228d(GraphRequest graphRequest, ArrayList arrayList) {
            this.f2593a = arrayList;
        }

        @Override // com.facebook.GraphRequest.AbstractC2232h
        /* renamed from: a */
        public void mo35396a(String str, String str2) throws IOException {
            this.f2593a.add(String.format(Locale.US, "%s=%s", str, URLEncoder.encode(str2, "UTF-8")));
        }
    }

    /* renamed from: com.facebook.GraphRequest$e */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$e.class */
    public static class C2229e {

        /* renamed from: a */
        public final GraphRequest f2594a;

        /* renamed from: b */
        public final Object f2595b;

        public C2229e(GraphRequest graphRequest, Object obj) {
            this.f2594a = graphRequest;
            this.f2595b = obj;
        }

        /* renamed from: a */
        public GraphRequest m35404a() {
            return this.f2594a;
        }

        /* renamed from: b */
        public Object m35403b() {
            return this.f2595b;
        }
    }

    /* renamed from: com.facebook.GraphRequest$f */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$f.class */
    public interface AbstractC2230f {
        /* renamed from: a */
        void mo23821a(C6148s sVar);
    }

    /* renamed from: com.facebook.GraphRequest$g */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$g.class */
    public interface AbstractC2231g {
        /* renamed from: a */
        void mo2985a(JSONObject jSONObject, C6148s sVar);
    }

    /* renamed from: com.facebook.GraphRequest$h */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$h.class */
    public interface AbstractC2232h {
        /* renamed from: a */
        void mo35396a(String str, String str2) throws IOException;
    }

    /* renamed from: com.facebook.GraphRequest$i */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$i.class */
    public interface AbstractC2233i extends AbstractC2230f {
        /* renamed from: a */
        void m35402a(long j, long j2);
    }

    /* renamed from: com.facebook.GraphRequest$j */
    /* loaded from: classes-dex2jar.jar:com/facebook/GraphRequest$j.class */
    public static class C2234j implements AbstractC2232h {

        /* renamed from: a */
        public final OutputStream f2596a;

        /* renamed from: b */
        public final C2503y f2597b;

        /* renamed from: c */
        public boolean f2598c = true;

        /* renamed from: d */
        public boolean f2599d;

        public C2234j(OutputStream outputStream, C2503y yVar, boolean z) {
            this.f2599d = false;
            this.f2596a = outputStream;
            this.f2597b = yVar;
            this.f2599d = z;
        }

        /* renamed from: a */
        public final RuntimeException m35401a() {
            return new IllegalArgumentException("value is not a supported type.");
        }

        /* renamed from: a */
        public void m35400a(String str, Bitmap bitmap) throws IOException {
            m35395a(str, str, "image/png");
            bitmap.compress(Bitmap.CompressFormat.PNG, 100, this.f2596a);
            m35390b("", new Object[0]);
            m35391b();
            C2503y yVar = this.f2597b;
            if (yVar != null) {
                yVar.m34554a("    " + str, (Object) "<Image>");
            }
        }

        /* renamed from: a */
        public void m35399a(String str, Uri uri, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m35395a(str, str, str3);
            if (this.f2596a instanceof C6154y) {
                ((C6154y) this.f2596a).m23678g(C2408g0.m34871a(uri));
                i = 0;
            } else {
                i = C2408g0.m34860a(C6135n.m23746e().getContentResolver().openInputStream(uri), this.f2596a) + 0;
            }
            m35390b("", new Object[0]);
            m35391b();
            C2503y yVar = this.f2597b;
            if (yVar != null) {
                yVar.m34554a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        /* renamed from: a */
        public void m35398a(String str, ParcelFileDescriptor parcelFileDescriptor, String str2) throws IOException {
            int i;
            String str3 = str2;
            if (str2 == null) {
                str3 = "content/unknown";
            }
            m35395a(str, str, str3);
            OutputStream outputStream = this.f2596a;
            if (outputStream instanceof C6154y) {
                ((C6154y) outputStream).m23678g(parcelFileDescriptor.getStatSize());
                i = 0;
            } else {
                i = C2408g0.m34860a((InputStream) new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor), this.f2596a) + 0;
            }
            m35390b("", new Object[0]);
            m35391b();
            C2503y yVar = this.f2597b;
            if (yVar != null) {
                yVar.m34554a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(i)));
            }
        }

        /* renamed from: a */
        public void m35397a(String str, Object obj, GraphRequest graphRequest) throws IOException {
            OutputStream outputStream = this.f2596a;
            if (outputStream instanceof AbstractC6105a0) {
                ((AbstractC6105a0) outputStream).mo23676a(graphRequest);
            }
            if (GraphRequest.m35422e(obj)) {
                mo35396a(str, GraphRequest.m35419f(obj));
            } else if (obj instanceof Bitmap) {
                m35400a(str, (Bitmap) obj);
            } else if (obj instanceof byte[]) {
                m35393a(str, (byte[]) obj);
            } else if (obj instanceof Uri) {
                m35399a(str, (Uri) obj, (String) null);
            } else if (obj instanceof ParcelFileDescriptor) {
                m35398a(str, (ParcelFileDescriptor) obj, (String) null);
            } else if (obj instanceof ParcelableResourceWithMimeType) {
                ParcelableResourceWithMimeType parcelableResourceWithMimeType = (ParcelableResourceWithMimeType) obj;
                Parcelable b = parcelableResourceWithMimeType.m35405b();
                String a = parcelableResourceWithMimeType.m35406a();
                if (b instanceof ParcelFileDescriptor) {
                    m35398a(str, (ParcelFileDescriptor) b, a);
                } else if (b instanceof Uri) {
                    m35399a(str, (Uri) b, a);
                } else {
                    throw m35401a();
                }
            } else {
                throw m35401a();
            }
        }

        @Override // com.facebook.GraphRequest.AbstractC2232h
        /* renamed from: a */
        public void mo35396a(String str, String str2) throws IOException {
            m35395a(str, (String) null, (String) null);
            m35390b("%s", str2);
            m35391b();
            C2503y yVar = this.f2597b;
            if (yVar != null) {
                yVar.m34554a("    " + str, (Object) str2);
            }
        }

        /* renamed from: a */
        public void m35395a(String str, String str2, String str3) throws IOException {
            if (!this.f2599d) {
                m35392a("Content-Disposition: form-data; name=\"%s\"", str);
                if (str2 != null) {
                    m35392a("; filename=\"%s\"", str2);
                }
                m35390b("", new Object[0]);
                if (str3 != null) {
                    m35390b("%s: %s", "Content-Type", str3);
                }
                m35390b("", new Object[0]);
                return;
            }
            this.f2596a.write(String.format("%s=", str).getBytes());
        }

        /* renamed from: a */
        public void m35394a(String str, JSONArray jSONArray, Collection<GraphRequest> collection) throws IOException, JSONException {
            OutputStream outputStream = this.f2596a;
            if (!(outputStream instanceof AbstractC6105a0)) {
                mo35396a(str, jSONArray.toString());
                return;
            }
            AbstractC6105a0 a0Var = (AbstractC6105a0) outputStream;
            m35395a(str, (String) null, (String) null);
            m35392a("[", new Object[0]);
            int i = 0;
            for (GraphRequest graphRequest : collection) {
                JSONObject jSONObject = jSONArray.getJSONObject(i);
                a0Var.mo23676a(graphRequest);
                if (i > 0) {
                    m35392a(",%s", jSONObject.toString());
                } else {
                    m35392a("%s", jSONObject.toString());
                }
                i++;
            }
            m35392a("]", new Object[0]);
            C2503y yVar = this.f2597b;
            if (yVar != null) {
                yVar.m34554a("    " + str, (Object) jSONArray.toString());
            }
        }

        /* renamed from: a */
        public void m35393a(String str, byte[] bArr) throws IOException {
            m35395a(str, str, "content/unknown");
            this.f2596a.write(bArr);
            m35390b("", new Object[0]);
            m35391b();
            C2503y yVar = this.f2597b;
            if (yVar != null) {
                yVar.m34554a("    " + str, (Object) String.format(Locale.ROOT, "<Data: %d>", Integer.valueOf(bArr.length)));
            }
        }

        /* renamed from: a */
        public void m35392a(String str, Object... objArr) throws IOException {
            if (!this.f2599d) {
                if (this.f2598c) {
                    this.f2596a.write("--".getBytes());
                    this.f2596a.write(GraphRequest.f2570o.getBytes());
                    this.f2596a.write("\r\n".getBytes());
                    this.f2598c = false;
                }
                this.f2596a.write(String.format(str, objArr).getBytes());
                return;
            }
            this.f2596a.write(URLEncoder.encode(String.format(Locale.US, str, objArr), "UTF-8").getBytes());
        }

        /* renamed from: b */
        public void m35391b() throws IOException {
            if (!this.f2599d) {
                m35390b("--%s", GraphRequest.f2570o);
            } else {
                this.f2596a.write(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR.getBytes());
            }
        }

        /* renamed from: b */
        public void m35390b(String str, Object... objArr) throws IOException {
            m35392a(str, objArr);
            if (!this.f2599d) {
                m35392a("\r\n", new Object[0]);
            }
        }
    }

    static {
        char[] charArray = "-_1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ".toCharArray();
        StringBuilder sb = new StringBuilder();
        SecureRandom secureRandom = new SecureRandom();
        int nextInt = secureRandom.nextInt(11);
        for (int i = 0; i < nextInt + 30; i++) {
            sb.append(charArray[secureRandom.nextInt(charArray.length)]);
        }
        f2570o = sb.toString();
    }

    public GraphRequest() {
        this(null, null, null, null, null);
    }

    public GraphRequest(@Nullable AccessToken accessToken, String str, Bundle bundle, EnumC6149t tVar) {
        this(accessToken, str, bundle, tVar, null);
    }

    public GraphRequest(@Nullable AccessToken accessToken, String str, Bundle bundle, EnumC6149t tVar, AbstractC2230f fVar) {
        this(accessToken, str, bundle, tVar, fVar, null);
    }

    public GraphRequest(@Nullable AccessToken accessToken, String str, Bundle bundle, EnumC6149t tVar, AbstractC2230f fVar, String str2) {
        this.f2580g = true;
        this.f2586m = false;
        this.f2574a = accessToken;
        this.f2576c = str;
        this.f2585l = str2;
        m35459a(fVar);
        m35452a(tVar);
        if (bundle != null) {
            this.f2581h = new Bundle(bundle);
        } else {
            this.f2581h = new Bundle();
        }
        if (this.f2585l == null) {
            this.f2585l = C6135n.m23735p();
        }
    }

    /* renamed from: a */
    public static GraphRequest m35462a(@Nullable AccessToken accessToken, AbstractC2231g gVar) {
        return new GraphRequest(accessToken, "me", null, null, new C2225a(gVar));
    }

    /* renamed from: a */
    public static GraphRequest m35461a(@Nullable AccessToken accessToken, String str, AbstractC2230f fVar) {
        return new GraphRequest(accessToken, str, null, null, fVar);
    }

    /* renamed from: a */
    public static GraphRequest m35460a(@Nullable AccessToken accessToken, String str, JSONObject jSONObject, AbstractC2230f fVar) {
        GraphRequest graphRequest = new GraphRequest(accessToken, str, null, EnumC6149t.POST, fVar);
        graphRequest.m35441a(jSONObject);
        return graphRequest;
    }

    /* renamed from: a */
    public static C6148s m35457a(GraphRequest graphRequest) {
        List<C6148s> a = m35438a(graphRequest);
        if (a != null && a.size() == 1) {
            return a.get(0);
        }
        throw new C6131k("invalid state: expected a single response");
    }

    /* renamed from: a */
    public static HttpURLConnection m35445a(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(url.openConnection());
        httpURLConnection.setRequestProperty("User-Agent", m35407q());
        httpURLConnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpURLConnection.setChunkedStreamingMode(0);
        return httpURLConnection;
    }

    /* renamed from: a */
    public static List<C6148s> m35456a(C6145r rVar) {
        C2416h0.m34782c(rVar, "requests");
        HttpURLConnection httpURLConnection = null;
        try {
            return m35447a(m35420f(rVar), rVar);
        } catch (Exception e) {
            List<C6148s> a = C6148s.m23699a(rVar.m23709w(), (HttpURLConnection) null, new C6131k(e));
            m35453a(rVar, a);
            httpURLConnection = null;
            return a;
        } finally {
            C2408g0.m34847a(httpURLConnection);
        }
    }

    /* renamed from: a */
    public static List<C6148s> m35447a(HttpURLConnection httpURLConnection, C6145r rVar) {
        List<C6148s> a = C6148s.m23701a(httpURLConnection, rVar);
        C2408g0.m34847a(httpURLConnection);
        int size = rVar.size();
        if (size == a.size()) {
            m35453a(rVar, a);
            C6106b.m23822g().m23829b();
            return a;
        }
        throw new C6131k(String.format(Locale.US, "Received %d responses while expecting %d", Integer.valueOf(a.size()), Integer.valueOf(size)));
    }

    /* renamed from: a */
    public static List<C6148s> m35444a(Collection<GraphRequest> collection) {
        return m35456a(new C6145r(collection));
    }

    /* renamed from: a */
    public static List<C6148s> m35438a(GraphRequest... graphRequestArr) {
        C2416h0.m34791a(graphRequestArr, "requests");
        return m35444a((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    /* renamed from: a */
    public static void m35463a(Bundle bundle, C2234j jVar, GraphRequest graphRequest) throws IOException {
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (m35422e(obj)) {
                jVar.m35397a(str, obj, graphRequest);
            }
        }
    }

    /* renamed from: a */
    public static void m35458a(C2234j jVar, Collection<GraphRequest> collection, Map<String, C2229e> map) throws JSONException, IOException {
        JSONArray jSONArray = new JSONArray();
        for (GraphRequest graphRequest : collection) {
            graphRequest.m35442a(jSONArray, map);
        }
        jVar.m35394a("batch", jSONArray, collection);
    }

    /* renamed from: a */
    public static void m35455a(C6145r rVar, C2503y yVar, int i, URL url, OutputStream outputStream, boolean z) throws IOException, JSONException {
        C2234j jVar = new C2234j(outputStream, yVar, z);
        if (i == 1) {
            GraphRequest graphRequest = rVar.get(0);
            HashMap hashMap = new HashMap();
            for (String str : graphRequest.f2581h.keySet()) {
                Object obj = graphRequest.f2581h.get(str);
                if (m35425d(obj)) {
                    hashMap.put(str, new C2229e(graphRequest, obj));
                }
            }
            if (yVar != null) {
                yVar.m34555a("  Parameters:\n");
            }
            m35463a(graphRequest.f2581h, jVar, graphRequest);
            if (yVar != null) {
                yVar.m34555a("  Attachments:\n");
            }
            m35443a(hashMap, jVar);
            JSONObject jSONObject = graphRequest.f2577d;
            if (jSONObject != null) {
                m35440a(jSONObject, url.getPath(), jVar);
                return;
            }
            return;
        }
        String c = m35429c(rVar);
        if (!C2408g0.m34816d(c)) {
            jVar.mo35396a("batch_app_id", c);
            HashMap hashMap2 = new HashMap();
            m35458a(jVar, rVar, hashMap2);
            if (yVar != null) {
                yVar.m34555a("  Attachments:\n");
            }
            m35443a(hashMap2, jVar);
            return;
        }
        throw new C6131k("App ID was not specified at the request or Settings.");
    }

    /* JADX WARN: Removed duplicated region for block: B:47:0x015b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m35454a(p081h.p154f.C6145r r7, java.net.HttpURLConnection r8) throws java.io.IOException, org.json.JSONException {
        /*
            Method dump skipped, instructions count: 354
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m35454a(h.f.r, java.net.HttpURLConnection):void");
    }

    /* renamed from: a */
    public static void m35453a(C6145r rVar, List<C6148s> list) {
        int size = rVar.size();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < size; i++) {
            AbstractC2230f fVar = rVar.get(i).f2582i;
            if (fVar != null) {
                arrayList.add(new Pair(fVar, list.get(i)));
            }
        }
        if (arrayList.size() > 0) {
            RunnableC2227c cVar = new RunnableC2227c(arrayList, rVar);
            Handler t = rVar.m23712t();
            if (t == null) {
                cVar.run();
            } else {
                t.post(cVar);
            }
        }
    }

    /* renamed from: a */
    public static void m35448a(String str, Object obj, AbstractC2232h hVar, boolean z) throws IOException {
        Class<?> cls = obj.getClass();
        if (JSONObject.class.isAssignableFrom(cls)) {
            JSONObject jSONObject = (JSONObject) obj;
            if (z) {
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    m35448a(String.format("%s[%s]", str, next), jSONObject.opt(next), hVar, z);
                }
            } else if (jSONObject.has("id")) {
                m35448a(str, jSONObject.optString("id"), hVar, z);
            } else if (jSONObject.has("url")) {
                m35448a(str, jSONObject.optString("url"), hVar, z);
            } else if (jSONObject.has("fbsdk:create_object")) {
                m35448a(str, jSONObject.toString(), hVar, z);
            }
        } else if (JSONArray.class.isAssignableFrom(cls)) {
            JSONArray jSONArray = (JSONArray) obj;
            int length = jSONArray.length();
            for (int i = 0; i < length; i++) {
                m35448a(String.format(Locale.ROOT, "%s[%d]", str, Integer.valueOf(i)), jSONArray.opt(i), hVar, z);
            }
        } else if (String.class.isAssignableFrom(cls) || Number.class.isAssignableFrom(cls) || Boolean.class.isAssignableFrom(cls)) {
            hVar.mo35396a(str, obj.toString());
        } else if (Date.class.isAssignableFrom(cls)) {
            hVar.mo35396a(str, new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format((Date) obj));
        }
    }

    /* renamed from: a */
    public static void m35446a(HttpURLConnection httpURLConnection, boolean z) {
        if (z) {
            httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
            return;
        }
        httpURLConnection.setRequestProperty("Content-Type", m35408p());
    }

    /* renamed from: a */
    public static void m35443a(Map<String, C2229e> map, C2234j jVar) throws IOException {
        for (String str : map.keySet()) {
            C2229e eVar = map.get(str);
            if (m35425d(eVar.m35403b())) {
                jVar.m35397a(str, eVar.m35403b(), eVar.m35404a());
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0042  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m35440a(org.json.JSONObject r5, java.lang.String r6, com.facebook.GraphRequest.AbstractC2232h r7) throws java.io.IOException {
        /*
            r0 = r6
            boolean r0 = m35433b(r0)
            if (r0 == 0) goto L_0x002f
            r0 = r6
            java.lang.String r1 = ":"
            int r0 = r0.indexOf(r1)
            r8 = r0
            r0 = r6
            java.lang.String r1 = "?"
            int r0 = r0.indexOf(r1)
            r9 = r0
            r0 = r8
            r1 = 3
            if (r0 <= r1) goto L_0x002f
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0029
            r0 = r8
            r1 = r9
            if (r0 >= r1) goto L_0x002f
        L_0x0029:
            r0 = 1
            r9 = r0
            goto L_0x0032
        L_0x002f:
            r0 = 0
            r9 = r0
        L_0x0032:
            r0 = r5
            java.util.Iterator r0 = r0.keys()
            r10 = r0
        L_0x0038:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x007a
            r0 = r10
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r11 = r0
            r0 = r5
            r1 = r11
            java.lang.Object r0 = r0.opt(r1)
            r6 = r0
            r0 = r9
            if (r0 == 0) goto L_0x006b
            r0 = r11
            java.lang.String r1 = "image"
            boolean r0 = r0.equalsIgnoreCase(r1)
            if (r0 == 0) goto L_0x006b
            r0 = 1
            r12 = r0
            goto L_0x006e
        L_0x006b:
            r0 = 0
            r12 = r0
        L_0x006e:
            r0 = r11
            r1 = r6
            r2 = r7
            r3 = r12
            m35448a(r0, r1, r2, r3)
            goto L_0x0038
        L_0x007a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m35440a(org.json.JSONObject, java.lang.String, com.facebook.GraphRequest$h):void");
    }

    /* renamed from: b */
    public static AsyncTaskC6144q m35435b(C6145r rVar) {
        C2416h0.m34782c(rVar, "requests");
        AsyncTaskC6144q qVar = new AsyncTaskC6144q(rVar);
        qVar.executeOnExecutor(C6135n.m23737n(), new Void[0]);
        return qVar;
    }

    /* renamed from: b */
    public static AsyncTaskC6144q m35432b(Collection<GraphRequest> collection) {
        return m35435b(new C6145r(collection));
    }

    /* renamed from: b */
    public static AsyncTaskC6144q m35431b(GraphRequest... graphRequestArr) {
        C2416h0.m34791a(graphRequestArr, "requests");
        return m35432b((Collection<GraphRequest>) Arrays.asList(graphRequestArr));
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x003b, code lost:
        if (java.lang.Integer.parseInt(r0[0]) <= 2) goto L_0x003e;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final boolean m35436b(com.facebook.GraphRequest r3) {
        /*
            r0 = r3
            java.lang.String r0 = r0.m35410n()
            r4 = r0
            r0 = r4
            boolean r0 = com.facebook.internal.C2408g0.m34816d(r0)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0012
            r0 = 1
            return r0
        L_0x0012:
            r0 = r4
            r3 = r0
            r0 = r4
            java.lang.String r1 = "v"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x0024
            r0 = r4
            r1 = 1
            java.lang.String r0 = r0.substring(r1)
            r3 = r0
        L_0x0024:
            r0 = r3
            java.lang.String r1 = "\\."
            java.lang.String[] r0 = r0.split(r1)
            r3 = r0
            r0 = r3
            int r0 = r0.length
            r1 = 2
            if (r0 < r1) goto L_0x003e
            r0 = r6
            r5 = r0
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            if (r0 > r1) goto L_0x0059
        L_0x003e:
            r0 = r3
            r1 = 0
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 2
            if (r0 < r1) goto L_0x0057
            r0 = r3
            r1 = 1
            r0 = r0[r1]
            int r0 = java.lang.Integer.parseInt(r0)
            r1 = 4
            if (r0 < r1) goto L_0x0057
            r0 = r6
            r5 = r0
            goto L_0x0059
        L_0x0057:
            r0 = 0
            r5 = r0
        L_0x0059:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.GraphRequest.m35436b(com.facebook.GraphRequest):boolean");
    }

    /* renamed from: b */
    public static boolean m35433b(String str) {
        Matcher matcher = f2572q.matcher(str);
        if (matcher.matches()) {
            str = matcher.group(1);
        }
        return str.startsWith("me/") || str.startsWith("/me/");
    }

    /* renamed from: c */
    public static String m35429c(C6145r rVar) {
        String a;
        if (!C2408g0.m34816d(rVar.m23713s())) {
            return rVar.m23713s();
        }
        Iterator<GraphRequest> it = rVar.iterator();
        while (it.hasNext()) {
            AccessToken accessToken = it.next().f2574a;
            if (accessToken != null && (a = accessToken.m35505a()) != null) {
                return a;
            }
        }
        return !C2408g0.m34816d(f2571p) ? f2571p : C6135n.m23745f();
    }

    /* renamed from: d */
    public static boolean m35426d(C6145r rVar) {
        for (C6145r.AbstractC6146a aVar : rVar.m23711u()) {
            if (aVar instanceof C6145r.AbstractC6147b) {
                return true;
            }
        }
        Iterator<GraphRequest> it = rVar.iterator();
        while (it.hasNext()) {
            if (it.next().m35424e() instanceof AbstractC2233i) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: d */
    public static boolean m35425d(Object obj) {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof Uri) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelableResourceWithMimeType);
    }

    /* renamed from: e */
    public static boolean m35423e(C6145r rVar) {
        Iterator<GraphRequest> it = rVar.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            for (String str : next.f2581h.keySet()) {
                if (m35425d(next.f2581h.get(str))) {
                    return false;
                }
            }
        }
        return true;
    }

    /* renamed from: e */
    public static boolean m35422e(Object obj) {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    /* renamed from: f */
    public static String m35419f(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number)) {
            return obj.toString();
        }
        if (obj instanceof Date) {
            return new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US).format(obj);
        }
        throw new IllegalArgumentException("Unsupported parameter type.");
    }

    /* renamed from: f */
    public static HttpURLConnection m35420f(C6145r rVar) {
        Throwable e;
        m35417g(rVar);
        try {
            HttpURLConnection httpURLConnection = null;
            httpURLConnection = null;
            try {
                HttpURLConnection a = m35445a(rVar.size() == 1 ? new URL(rVar.get(0).m35411m()) : new URL(C2401d0.m34896c()));
                httpURLConnection = a;
                httpURLConnection = a;
                m35454a(rVar, a);
                return a;
            } catch (IOException e2) {
                e = e2;
                C2408g0.m34847a(httpURLConnection);
                throw new C6131k("could not construct request body", e);
            } catch (JSONException e3) {
                e = e3;
                C2408g0.m34847a(httpURLConnection);
                throw new C6131k("could not construct request body", e);
            }
        } catch (MalformedURLException e4) {
            throw new C6131k("could not construct URL for request", e4);
        }
    }

    /* renamed from: g */
    public static final void m35417g(C6145r rVar) {
        Iterator<GraphRequest> it = rVar.iterator();
        while (it.hasNext()) {
            GraphRequest next = it.next();
            if (EnumC6149t.GET.equals(next.m35415i()) && m35436b(next)) {
                Bundle j = next.m35414j();
                if (!j.containsKey("fields") || C2408g0.m34816d(j.getString("fields"))) {
                    C2503y.m34558a(EnumC6151v.DEVELOPER_ERRORS, 5, "Request", "starting with Graph API v2.4, GET requests for /%s should contain an explicit \"fields\" parameter.", next.m35418g());
                }
            }
        }
    }

    /* renamed from: p */
    public static String m35408p() {
        return String.format("multipart/form-data; boundary=%s", f2570o);
    }

    /* renamed from: q */
    public static String m35407q() {
        if (f2573r == null) {
            f2573r = String.format("%s.%s", "FBAndroidSDK", "5.11.2");
            String a = C2500w.m34566a();
            if (!C2408g0.m34816d(a)) {
                f2573r = String.format(Locale.ROOT, "%s/%s", f2573r, a);
            }
        }
        return f2573r;
    }

    /* renamed from: a */
    public final String m35449a(String str, Boolean bool) {
        if (!bool.booleanValue() && this.f2575b == EnumC6149t.POST) {
            return str;
        }
        Uri.Builder buildUpon = Uri.parse(str).buildUpon();
        for (String str2 : this.f2581h.keySet()) {
            Object obj = this.f2581h.get(str2);
            Object obj2 = obj;
            if (obj == null) {
                obj2 = "";
            }
            if (m35422e(obj2)) {
                buildUpon.appendQueryParameter(str2, m35419f(obj2).toString());
            } else if (this.f2575b == EnumC6149t.GET) {
                throw new IllegalArgumentException(String.format(Locale.US, "Unsupported parameter type for GET request: %s", obj2.getClass().getSimpleName()));
            }
        }
        return buildUpon.toString();
    }

    /* renamed from: a */
    public final void m35465a() {
        if (this.f2574a != null) {
            if (!this.f2581h.containsKey("access_token")) {
                String v = this.f2574a.m35491v();
                C2503y.m34549c(v);
                this.f2581h.putString("access_token", v);
            }
        } else if (!this.f2586m && !this.f2581h.containsKey("access_token")) {
            String f = C6135n.m23745f();
            String l = C6135n.m23739l();
            if (C2408g0.m34816d(f) || C2408g0.m34816d(l)) {
                C2408g0.m34821c(f2569n, "Warning: Request without access token missing application ID or client token.");
            } else {
                this.f2581h.putString("access_token", f + "|" + l);
            }
        }
        this.f2581h.putString(CreateRequest.METADATA_SDK_KEY, IJSExecutor.JS_FUNCTION_GROUP);
        this.f2581h.putString("format", AdType.STATIC_NATIVE);
        if (C6135n.m23752b(EnumC6151v.GRAPH_API_DEBUG_INFO)) {
            this.f2581h.putString("debug", UserProfile.KEY_CONTACT_INFO_VALUE);
        } else if (C6135n.m23752b(EnumC6151v.GRAPH_API_DEBUG_WARNING)) {
            this.f2581h.putString("debug", "warning");
        }
    }

    /* renamed from: a */
    public final void m35464a(Bundle bundle) {
        this.f2581h = bundle;
    }

    /* renamed from: a */
    public final void m35459a(AbstractC2230f fVar) {
        if (C6135n.m23752b(EnumC6151v.GRAPH_API_DEBUG_INFO) || C6135n.m23752b(EnumC6151v.GRAPH_API_DEBUG_WARNING)) {
            this.f2582i = new C2226b(this, fVar);
        } else {
            this.f2582i = fVar;
        }
    }

    /* renamed from: a */
    public final void m35452a(EnumC6149t tVar) {
        if (this.f2583j == null || tVar == EnumC6149t.GET) {
            if (tVar == null) {
                tVar = EnumC6149t.GET;
            }
            this.f2575b = tVar;
            return;
        }
        throw new C6131k("Can't change HTTP method on request with overridden URL.");
    }

    /* renamed from: a */
    public final void m35451a(Object obj) {
        this.f2584k = obj;
    }

    /* renamed from: a */
    public final void m35450a(String str) {
        this.f2585l = str;
    }

    /* renamed from: a */
    public final void m35442a(JSONArray jSONArray, Map<String, C2229e> map) throws JSONException, IOException {
        JSONObject jSONObject = new JSONObject();
        String str = this.f2578e;
        if (str != null) {
            jSONObject.put("name", str);
            jSONObject.put("omit_response_on_success", this.f2580g);
        }
        String str2 = this.f2579f;
        if (str2 != null) {
            jSONObject.put("depends_on", str2);
        }
        String k = m35413k();
        jSONObject.put("relative_url", k);
        jSONObject.put("method", this.f2575b);
        AccessToken accessToken = this.f2574a;
        if (accessToken != null) {
            C2503y.m34549c(accessToken.m35491v());
        }
        ArrayList arrayList = new ArrayList();
        for (String str3 : this.f2581h.keySet()) {
            Object obj = this.f2581h.get(str3);
            if (m35425d(obj)) {
                String format = String.format(Locale.ROOT, "%s%d", "file", Integer.valueOf(map.size()));
                arrayList.add(format);
                map.put(format, new C2229e(this, obj));
            }
        }
        if (!arrayList.isEmpty()) {
            jSONObject.put("attached_files", TextUtils.join(",", arrayList));
        }
        if (this.f2577d != null) {
            ArrayList arrayList2 = new ArrayList();
            m35440a(this.f2577d, k, new C2228d(this, arrayList2));
            jSONObject.put("body", TextUtils.join(PrefixTimeZonesMap.RAW_STRING_TIMEZONES_SEPARATOR, arrayList2));
        }
        jSONArray.put(jSONObject);
    }

    /* renamed from: a */
    public final void m35441a(JSONObject jSONObject) {
        this.f2577d = jSONObject;
    }

    /* renamed from: a */
    public final void m35439a(boolean z) {
        this.f2586m = z;
    }

    /* renamed from: b */
    public final C6148s m35437b() {
        return m35457a(this);
    }

    /* renamed from: c */
    public final AsyncTaskC6144q m35430c() {
        return m35431b(this);
    }

    @Nullable
    /* renamed from: d */
    public final AccessToken m35427d() {
        return this.f2574a;
    }

    /* renamed from: e */
    public final AbstractC2230f m35424e() {
        return this.f2582i;
    }

    /* renamed from: f */
    public final JSONObject m35421f() {
        return this.f2577d;
    }

    /* renamed from: g */
    public final String m35418g() {
        return this.f2576c;
    }

    /* renamed from: h */
    public final String m35416h() {
        return f2572q.matcher(this.f2576c).matches() ? this.f2576c : String.format("%s/%s", this.f2585l, this.f2576c);
    }

    /* renamed from: i */
    public final EnumC6149t m35415i() {
        return this.f2575b;
    }

    /* renamed from: j */
    public final Bundle m35414j() {
        return this.f2581h;
    }

    /* renamed from: k */
    public final String m35413k() {
        if (this.f2583j == null) {
            String format = String.format("%s/%s", C2401d0.m34896c(), m35416h());
            m35465a();
            Uri parse = Uri.parse(m35449a(format, (Boolean) true));
            return String.format("%s?%s", parse.getPath(), parse.getQuery());
        }
        throw new C6131k("Can't override URL for a batch request");
    }

    /* renamed from: l */
    public final Object m35412l() {
        return this.f2584k;
    }

    /* renamed from: m */
    public final String m35411m() {
        String str;
        String str2 = this.f2583j;
        if (str2 != null) {
            return str2.toString();
        }
        String format = String.format("%s/%s", (m35415i() != EnumC6149t.POST || (str = this.f2576c) == null || !str.endsWith("/videos")) ? C2401d0.m34896c() : C2401d0.m34895d(), m35416h());
        m35465a();
        return m35449a(format, (Boolean) false);
    }

    /* renamed from: n */
    public final String m35410n() {
        return this.f2585l;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("{Request: ");
        sb.append(" accessToken: ");
        AccessToken accessToken = this.f2574a;
        Object obj = accessToken;
        if (accessToken == null) {
            obj = C14247d.f31851f;
        }
        sb.append(obj);
        sb.append(", graphPath: ");
        sb.append(this.f2576c);
        sb.append(", graphObject: ");
        sb.append(this.f2577d);
        sb.append(", httpMethod: ");
        sb.append(this.f2575b);
        sb.append(", parameters: ");
        sb.append(this.f2581h);
        sb.append(CssParser.BLOCK_END);
        return sb.toString();
    }
}
