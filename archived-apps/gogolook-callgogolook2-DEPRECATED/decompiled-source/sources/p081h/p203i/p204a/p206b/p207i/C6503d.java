package p081h.p203i.p204a.p206b.p207i;

import android.content.Context;
import android.content.pm.PackageManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.media2.session.SessionCommand;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.mopub.common.AdType;
import com.mopub.network.ImpressionData;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.UnknownHostException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6507a;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6533j;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6534k;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6537l;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6539m;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6541n;
import p081h.p203i.p204a.p206b.p207i.p208f.AbstractC6542o;
import p081h.p203i.p204a.p206b.p207i.p208f.EnumC6546p;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.C6570g;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6597f;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6599g;
import p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6607m;
import p081h.p203i.p204a.p206b.p209j.p215w.C6613a;
import p081h.p203i.p204a.p206b.p209j.p216x.C6615b;
import p081h.p203i.p325c.p359q.AbstractC9838a;
import p081h.p203i.p325c.p359q.C9840c;
/* renamed from: h.i.a.b.i.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/i/d.class */
public final class C6503d implements AbstractC6607m {

    /* renamed from: a */
    public final AbstractC9838a f16188a;

    /* renamed from: b */
    public final ConnectivityManager f16189b;

    /* renamed from: c */
    public final Context f16190c;

    /* renamed from: d */
    public final URL f16191d;

    /* renamed from: e */
    public final AbstractC6550a f16192e;

    /* renamed from: f */
    public final AbstractC6550a f16193f;

    /* renamed from: g */
    public final int f16194g;

    /* renamed from: h.i.a.b.i.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/d$a.class */
    public static final class C6504a {

        /* renamed from: a */
        public final URL f16195a;

        /* renamed from: b */
        public final AbstractC6533j f16196b;
        @Nullable

        /* renamed from: c */
        public final String f16197c;

        public C6504a(URL url, AbstractC6533j jVar, @Nullable String str) {
            this.f16195a = url;
            this.f16196b = jVar;
            this.f16197c = str;
        }

        /* renamed from: a */
        public C6504a m22444a(URL url) {
            return new C6504a(url, this.f16196b, this.f16197c);
        }
    }

    /* renamed from: h.i.a.b.i.d$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/i/d$b.class */
    public static final class C6505b {

        /* renamed from: a */
        public final int f16198a;
        @Nullable

        /* renamed from: b */
        public final URL f16199b;

        /* renamed from: c */
        public final long f16200c;

        public C6505b(int i, @Nullable URL url, long j) {
            this.f16198a = i;
            this.f16199b = url;
            this.f16200c = j;
        }
    }

    public C6503d(Context context, AbstractC6550a aVar, AbstractC6550a aVar2) {
        this(context, aVar, aVar2, SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD);
    }

    public C6503d(Context context, AbstractC6550a aVar, AbstractC6550a aVar2, int i) {
        this.f16188a = AbstractC6533j.m22408b();
        this.f16190c = context;
        this.f16189b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f16191d = m22448a(C6500a.f16179c);
        this.f16192e = aVar2;
        this.f16193f = aVar;
        this.f16194g = i;
    }

    /* renamed from: a */
    public static int m22454a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        } catch (PackageManager.NameNotFoundException e) {
            C6613a.m22234a("CctTransportBackend", "Unable to find version code for package", (Throwable) e);
            return -1;
        }
    }

    /* renamed from: a */
    public static int m22453a(NetworkInfo networkInfo) {
        if (networkInfo == null) {
            return AbstractC6542o.EnumC6544b.UNKNOWN_MOBILE_SUBTYPE.m22356a();
        }
        int subtype = networkInfo.getSubtype();
        if (subtype == -1) {
            return AbstractC6542o.EnumC6544b.COMBINED.m22356a();
        }
        if (AbstractC6542o.EnumC6544b.m22355a(subtype) == null) {
            subtype = 0;
        }
        return subtype;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static long m22455a() {
        Calendar.getInstance();
        return TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000;
    }

    /* renamed from: a */
    public static /* synthetic */ C6504a m22451a(C6504a aVar, C6505b bVar) {
        URL url = bVar.f16199b;
        if (url == null) {
            return null;
        }
        C6613a.m22235a("CctTransportBackend", "Following redirect to: %s", url);
        return aVar.m22444a(bVar.f16199b);
    }

    /* renamed from: a */
    public static InputStream m22449a(InputStream inputStream, String str) throws IOException {
        return "gzip".equals(str) ? new GZIPInputStream(inputStream) : inputStream;
    }

    /* renamed from: a */
    public static URL m22448a(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    /* renamed from: b */
    public static int m22446b(NetworkInfo networkInfo) {
        return networkInfo == null ? AbstractC6542o.EnumC6545c.NONE.m22354a() : networkInfo.getType();
    }

    /* renamed from: b */
    public static TelephonyManager m22447b(Context context) {
        return (TelephonyManager) context.getSystemService("phone");
    }

    /* renamed from: a */
    public final C6505b m22452a(C6504a aVar) throws IOException {
        Throwable e;
        Throwable e2;
        C6613a.m22235a("CctTransportBackend", "Making request to: %s", aVar.f16195a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) FirebasePerfUrlConnection.instrument(aVar.f16195a.openConnection());
        httpURLConnection.setConnectTimeout(30000);
        httpURLConnection.setReadTimeout(this.f16194g);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("User-Agent", String.format("datatransport/%s android/", "2.3.2"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty("Content-Type", "application/json");
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = aVar.f16197c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f16188a.mo14098a(aVar.f16196b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                C6613a.m22236a("CctTransportBackend", "Status Code: " + responseCode);
                C6613a.m22236a("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField("Content-Type"));
                C6613a.m22236a("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new C6505b(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                }
                if (responseCode != 200) {
                    return new C6505b(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream a = m22449a(inputStream, httpURLConnection.getHeaderField("Content-Encoding"));
                    C6505b bVar = new C6505b(responseCode, null, AbstractC6541n.m22363a(new BufferedReader(new InputStreamReader(a))).mo22365a());
                    if (a != null) {
                        a.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return bVar;
                } catch (Throwable th) {
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable th2) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                if (outputStream != null) {
                    try {
                        outputStream.close();
                    } catch (Throwable th4) {
                    }
                }
                throw th3;
            }
        } catch (C9840c e3) {
            e2 = e3;
            C6613a.m22234a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C6505b(400, null, 0L);
        } catch (ConnectException e4) {
            e = e4;
            C6613a.m22234a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C6505b(500, null, 0L);
        } catch (UnknownHostException e5) {
            e = e5;
            C6613a.m22234a("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new C6505b(500, null, 0L);
        } catch (IOException e6) {
            e2 = e6;
            C6613a.m22234a("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new C6505b(400, null, 0L);
        }
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6607m
    /* renamed from: a */
    public AbstractC6571h mo22245a(AbstractC6571h hVar) {
        NetworkInfo activeNetworkInfo = this.f16189b.getActiveNetworkInfo();
        AbstractC6571h.AbstractC6572a h = hVar.m22326h();
        h.m22319a("sdk-version", Build.VERSION.SDK_INT);
        h.m22317a("model", Build.MODEL);
        h.m22317a("hardware", Build.HARDWARE);
        h.m22317a("device", Build.DEVICE);
        h.m22317a("product", Build.PRODUCT);
        h.m22317a("os-uild", Build.ID);
        h.m22317a("manufacturer", Build.MANUFACTURER);
        h.m22317a("fingerprint", Build.FINGERPRINT);
        h.m22318a("tz-offset", m22455a());
        h.m22319a("net-type", m22446b(activeNetworkInfo));
        h.m22319a("mobile-subtype", m22453a(activeNetworkInfo));
        h.m22317a(ImpressionData.COUNTRY, Locale.getDefault().getCountry());
        h.m22317a("locale", Locale.getDefault().getLanguage());
        h.m22317a("mcc_mnc", m22447b(this.f16190c).getSimOperator());
        h.m22317a("application_build", Integer.toString(m22454a(this.f16190c)));
        return h.mo22324a();
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p212u.AbstractC6607m
    /* renamed from: a */
    public AbstractC6599g mo22244a(AbstractC6597f fVar) {
        AbstractC6533j b = m22445b(fVar);
        URL url = this.f16191d;
        byte[] b2 = fVar.mo22269b();
        String str = null;
        String str2 = null;
        URL url2 = url;
        if (b2 != null) {
            try {
                C6500a a = C6500a.m22461a(fVar.mo22269b());
                if (a.m22459c() != null) {
                    str2 = a.m22459c();
                }
                url2 = url;
                str = str2;
                if (a.m22458d() != null) {
                    url2 = m22448a(a.m22458d());
                    str = str2;
                }
            } catch (IllegalArgumentException e) {
                return AbstractC6599g.m22261c();
            }
        }
        try {
            C6505b bVar = (C6505b) C6615b.m22231a(5, new C6504a(url2, b, str), C6501b.m22457a(this), C6502c.m22456a());
            if (bVar.f16198a == 200) {
                return AbstractC6599g.m22263a(bVar.f16200c);
            }
            if (bVar.f16198a < 500 && bVar.f16198a != 404) {
                return AbstractC6599g.m22261c();
            }
            return AbstractC6599g.m22260d();
        } catch (IOException e2) {
            C6613a.m22234a("CctTransportBackend", "Could not make request to the backend", (Throwable) e2);
            return AbstractC6599g.m22260d();
        }
    }

    /* renamed from: b */
    public final AbstractC6533j m22445b(AbstractC6597f fVar) {
        AbstractC6537l.AbstractC6538a a;
        HashMap hashMap = new HashMap();
        for (AbstractC6571h hVar : fVar.mo22270a()) {
            String f = hVar.mo22328f();
            if (!hashMap.containsKey(f)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(hVar);
                hashMap.put(f, arrayList);
            } else {
                ((List) hashMap.get(f)).add(hVar);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            AbstractC6571h hVar2 = (AbstractC6571h) ((List) entry.getValue()).get(0);
            AbstractC6539m.AbstractC6540a h = AbstractC6539m.m22376h();
            h.mo22371a(EnumC6546p.DEFAULT);
            h.mo22373a(this.f16193f.mo22344a());
            h.mo22367b(this.f16192e.mo22344a());
            AbstractC6534k.AbstractC6535a c = AbstractC6534k.m22405c();
            c.mo22402a(AbstractC6534k.EnumC6536b.ANDROID_FIREBASE);
            AbstractC6507a.AbstractC6508a m = AbstractC6507a.m22442m();
            m.mo22422a(Integer.valueOf(hVar2.m22333b("sdk-version")));
            m.mo22413i(hVar2.m22335a("model"));
            m.mo22417e(hVar2.m22335a("hardware"));
            m.mo22419c(hVar2.m22335a("device"));
            m.mo22411k(hVar2.m22335a("product"));
            m.mo22412j(hVar2.m22335a("os-uild"));
            m.mo22415g(hVar2.m22335a("manufacturer"));
            m.mo22418d(hVar2.m22335a("fingerprint"));
            m.mo22420b(hVar2.m22335a(ImpressionData.COUNTRY));
            m.mo22416f(hVar2.m22335a("locale"));
            m.mo22414h(hVar2.m22335a("mcc_mnc"));
            m.mo22421a(hVar2.m22335a("application_build"));
            c.mo22403a(m.mo22423a());
            h.mo22372a(c.mo22404a());
            try {
                h.m22374a(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException e) {
                h.m22366b((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (AbstractC6571h hVar3 : (List) entry.getValue()) {
                C6570g c2 = hVar3.mo22332c();
                C6493b b = c2.m22337b();
                if (b.equals(C6493b.m22467a("proto"))) {
                    a = AbstractC6537l.m22399a(c2.m22338a());
                } else if (b.equals(C6493b.m22467a(AdType.STATIC_NATIVE))) {
                    a = AbstractC6537l.m22400a(new String(c2.m22338a(), Charset.forName("UTF-8")));
                } else {
                    C6613a.m22232b("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b);
                }
                a.mo22390a(hVar3.mo22330d());
                a.mo22385b(hVar3.mo22327g());
                a.mo22384c(hVar3.m22331c("tz-offset"));
                AbstractC6542o.AbstractC6543a c3 = AbstractC6542o.m22360c();
                c3.mo22357a(AbstractC6542o.EnumC6545c.m22353a(hVar3.m22333b("net-type")));
                c3.mo22358a(AbstractC6542o.EnumC6544b.m22355a(hVar3.m22333b("mobile-subtype")));
                a.mo22389a(c3.mo22359a());
                if (hVar3.mo22334b() != null) {
                    a.mo22388a(hVar3.mo22334b());
                }
                arrayList3.add(a.mo22391a());
            }
            h.mo22368a(arrayList3);
            arrayList2.add(h.mo22375a());
        }
        return AbstractC6533j.m22409a(arrayList2);
    }
}
