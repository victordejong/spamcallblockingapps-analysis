package com.google.android.datatransport.cct;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import androidx.annotation.Nullable;
import com.facebook.stetho.common.Utf8Charset;
import com.facebook.stetho.server.http.HttpHeaders;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.cct.p006a.zza;
import com.google.android.datatransport.cct.p006a.zzo;
import com.google.android.datatransport.cct.p006a.zzp;
import com.google.android.datatransport.cct.p006a.zzq;
import com.google.android.datatransport.cct.p006a.zzr;
import com.google.android.datatransport.cct.p006a.zzs;
import com.google.android.datatransport.cct.p006a.zzt;
import com.google.android.datatransport.cct.p006a.zzu;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.retries.Retries;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.appindexing.Indexable;
import com.google.firebase.crashlytics.internal.common.AbstractSpiCall;
import com.google.firebase.encoders.DataEncoder;
import com.google.firebase.encoders.EncodingException;
import com.google.firebase.encoders.json.JsonDataEncoderBuilder;
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
import java.util.Map;
import java.util.TimeZone;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/zzc.class */
public final class zzc implements TransportBackend {

    /* renamed from: b */
    private final ConnectivityManager f6585b;

    /* renamed from: d */
    private final Clock f6587d;

    /* renamed from: e */
    private final Clock f6588e;

    /* renamed from: a */
    private final DataEncoder f6584a = new JsonDataEncoderBuilder().configureWith(com.google.android.datatransport.cct.p006a.zzb.f6521a).ignoreNullValues(true).build();

    /* renamed from: c */
    final URL f6586c = m15476f(CCTDestination.f6514c);

    /* renamed from: f */
    private final int f6589f = 40000;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/zzc$zza.class */
    public static final class zza {

        /* renamed from: a */
        final URL f6590a;

        /* renamed from: b */
        final zzo f6591b;
        @Nullable

        /* renamed from: c */
        final String f6592c;

        zza(URL url, zzo zzoVar, @Nullable String str) {
            this.f6590a = url;
            this.f6591b = zzoVar;
            this.f6592c = str;
        }

        /* renamed from: a */
        zza m15475a(URL url) {
            return new zza(url, this.f6591b, this.f6592c);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/zzc$zzb.class */
    public static final class zzb {

        /* renamed from: a */
        final int f6593a;
        @Nullable

        /* renamed from: b */
        final URL f6594b;

        /* renamed from: c */
        final long f6595c;

        zzb(int i, @Nullable URL url, long j) {
            this.f6593a = i;
            this.f6594b = url;
            this.f6595c = j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(Context context, Clock clock, Clock clock2) {
        this.f6585b = (ConnectivityManager) context.getSystemService("connectivity");
        this.f6587d = clock2;
        this.f6588e = clock;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public static /* synthetic */ zza m15479c(zza zzaVar, zzb zzbVar) {
        URL url = zzbVar.f6594b;
        if (url == null) {
            return null;
        }
        Logging.m15376a("CctTransportBackend", "Following redirect to: %s", url);
        return zzaVar.m15475a(zzbVar.f6594b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: d */
    public zzb m15478d(zza zzaVar) throws IOException {
        Throwable e;
        Throwable e2;
        Logging.m15376a("CctTransportBackend", "Making request to: %s", zzaVar.f6590a);
        HttpURLConnection httpURLConnection = (HttpURLConnection) zzaVar.f6590a.openConnection();
        httpURLConnection.setConnectTimeout(Indexable.MAX_BYTE_SIZE);
        httpURLConnection.setReadTimeout(this.f6589f);
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setInstanceFollowRedirects(false);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty(AbstractSpiCall.HEADER_USER_AGENT, String.format("datatransport/%s android/", "2.3.1"));
        httpURLConnection.setRequestProperty("Content-Encoding", "gzip");
        httpURLConnection.setRequestProperty(HttpHeaders.CONTENT_TYPE, AbstractSpiCall.ACCEPT_JSON_VALUE);
        httpURLConnection.setRequestProperty("Accept-Encoding", "gzip");
        String str = zzaVar.f6592c;
        if (str != null) {
            httpURLConnection.setRequestProperty("X-Goog-Api-Key", str);
        }
        try {
            OutputStream outputStream = httpURLConnection.getOutputStream();
            try {
                GZIPOutputStream gZIPOutputStream = new GZIPOutputStream(outputStream);
                this.f6584a.encode(zzaVar.f6591b, new BufferedWriter(new OutputStreamWriter(gZIPOutputStream)));
                gZIPOutputStream.close();
                if (outputStream != null) {
                    outputStream.close();
                }
                int responseCode = httpURLConnection.getResponseCode();
                Logging.m15372e("CctTransportBackend", "Status Code: " + responseCode);
                Logging.m15372e("CctTransportBackend", "Content-Type: " + httpURLConnection.getHeaderField(HttpHeaders.CONTENT_TYPE));
                Logging.m15372e("CctTransportBackend", "Content-Encoding: " + httpURLConnection.getHeaderField("Content-Encoding"));
                if (responseCode == 302 || responseCode == 301 || responseCode == 307) {
                    return new zzb(responseCode, new URL(httpURLConnection.getHeaderField("Location")), 0L);
                }
                if (responseCode != 200) {
                    return new zzb(responseCode, null, 0L);
                }
                InputStream inputStream = httpURLConnection.getInputStream();
                try {
                    InputStream gZIPInputStream = "gzip".equals(httpURLConnection.getHeaderField("Content-Encoding")) ? new GZIPInputStream(inputStream) : inputStream;
                    zzb zzbVar = new zzb(responseCode, null, zzs.m15488b(new BufferedReader(new InputStreamReader(gZIPInputStream))).mo15489a());
                    if (gZIPInputStream != null) {
                        gZIPInputStream.close();
                    }
                    if (inputStream != null) {
                        inputStream.close();
                    }
                    return zzbVar;
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
        } catch (EncodingException e3) {
            e2 = e3;
            Logging.m15374c("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new zzb(400, null, 0L);
        } catch (ConnectException e4) {
            e = e4;
            Logging.m15374c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new zzb(500, null, 0L);
        } catch (UnknownHostException e5) {
            e = e5;
            Logging.m15374c("CctTransportBackend", "Couldn't open connection, returning with 500", e);
            return new zzb(500, null, 0L);
        } catch (IOException e6) {
            e2 = e6;
            Logging.m15374c("CctTransportBackend", "Couldn't encode request, returning with 400", e2);
            return new zzb(400, null, 0L);
        }
    }

    /* renamed from: f */
    private static URL m15476f(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException("Invalid url: " + str, e);
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    /* renamed from: a */
    public BackendResponse mo15378a(BackendRequest backendRequest) {
        zzq.zza b;
        HashMap hashMap = new HashMap();
        for (EventInternal eventInternal : backendRequest.mo15402b()) {
            String j = eventInternal.mo15458j();
            if (!hashMap.containsKey(j)) {
                ArrayList arrayList = new ArrayList();
                arrayList.add(eventInternal);
                hashMap.put(j, arrayList);
            } else {
                ((List) hashMap.get(j)).add(eventInternal);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        for (Map.Entry entry : hashMap.entrySet()) {
            EventInternal eventInternal2 = (EventInternal) ((List) entry.getValue()).get(0);
            zzr.zza a = zzr.m15507a();
            a.mo15496d(zzu.zza);
            a.mo15498b(this.f6588e.mo15188a());
            a.mo15491i(this.f6587d.mo15188a());
            zzp.zza a2 = zzp.m15528a();
            a2.mo15524b(zzp.zzb.zzb);
            zza.AbstractC2475zza a3 = com.google.android.datatransport.cct.p006a.zza.m15550a();
            a3.mo15541a(Integer.valueOf(eventInternal2.m15461g("sdk-version")));
            a3.mo15535g(eventInternal2.m15466b("model"));
            a3.mo15537e(eventInternal2.m15466b("hardware"));
            a3.mo15540b(eventInternal2.m15466b("device"));
            a3.mo15533i(eventInternal2.m15466b("product"));
            a3.mo15534h(eventInternal2.m15466b("os-uild"));
            a3.mo15536f(eventInternal2.m15466b("manufacturer"));
            a3.mo15538d(eventInternal2.m15466b("fingerprint"));
            a2.mo15525a(a3.mo15539c());
            a.mo15497c(a2.mo15523c());
            try {
                a.m15499a(Integer.parseInt((String) entry.getKey()));
            } catch (NumberFormatException e) {
                a.m15490j((String) entry.getKey());
            }
            ArrayList arrayList3 = new ArrayList();
            for (EventInternal eventInternal3 : (List) entry.getValue()) {
                EncodedPayload e2 = eventInternal3.mo15463e();
                Encoding b2 = e2.m15468b();
                if (b2.equals(Encoding.m15560b("proto"))) {
                    b = zzq.m15521b(e2.m15469a());
                } else if (b2.equals(Encoding.m15560b("json"))) {
                    b = zzq.m15522a(new String(e2.m15469a(), Charset.forName(Utf8Charset.NAME)));
                } else {
                    Logging.m15371f("CctTransportBackend", "Received event of unsupported encoding %s. Skipping...", b2);
                }
                b.mo15513a(eventInternal3.mo15462f());
                b.mo15509e(eventInternal3.mo15457k());
                b.mo15508f(eventInternal3.m15460h("tz-offset"));
                zzt.zza a4 = zzt.m15487a();
                a4.mo15483b(zzt.zzc.zza(eventInternal3.m15461g("net-type")));
                a4.mo15484a(zzt.zzb.zza(eventInternal3.m15461g("mobile-subtype")));
                b.mo15512b(a4.mo15482c());
                if (eventInternal3.mo15464d() != null) {
                    b.mo15511c(eventInternal3.mo15464d());
                }
                arrayList3.add(b.mo15510d());
            }
            a.mo15493g(arrayList3);
            arrayList2.add(a.mo15492h());
        }
        zzo a5 = zzo.m15530a(arrayList2);
        String str = null;
        String str2 = null;
        URL url = this.f6586c;
        URL url2 = url;
        if (backendRequest.mo15401c() != null) {
            try {
                CCTDestination c = CCTDestination.m15553c(backendRequest.mo15401c());
                if (c.m15552d() != null) {
                    str2 = c.m15552d();
                }
                str = str2;
                url2 = url;
                if (c.m15551e() != null) {
                    url2 = m15476f(c.m15551e());
                    str = str2;
                }
            } catch (IllegalArgumentException e3) {
                return BackendResponse.m15397a();
            }
        }
        try {
            zzb zzbVar = (zzb) Retries.m15370a(5, new zza(url2, a5, str), com.google.android.datatransport.cct.zza.m15481a(this), com.google.android.datatransport.cct.zzb.m15480b());
            if (zzbVar.f6593a == 200) {
                return BackendResponse.m15394d(zzbVar.f6595c);
            }
            int i = zzbVar.f6593a;
            return (i >= 500 || i == 404) ? BackendResponse.m15393e() : BackendResponse.m15397a();
        } catch (IOException e4) {
            Logging.m15374c("CctTransportBackend", "Could not make request to the backend", e4);
            return BackendResponse.m15393e();
        }
    }

    @Override // com.google.android.datatransport.runtime.backends.TransportBackend
    /* renamed from: b */
    public EventInternal mo15377b(EventInternal eventInternal) {
        int i;
        NetworkInfo activeNetworkInfo = this.f6585b.getActiveNetworkInfo();
        EventInternal.Builder l = eventInternal.m15456l();
        l.m15455a("sdk-version", Build.VERSION.SDK_INT);
        l.m15453c("model", Build.MODEL);
        l.m15453c("hardware", Build.HARDWARE);
        l.m15453c("device", Build.DEVICE);
        l.m15453c("product", Build.PRODUCT);
        l.m15453c("os-uild", Build.ID);
        l.m15453c("manufacturer", Build.MANUFACTURER);
        l.m15453c("fingerprint", Build.FINGERPRINT);
        Calendar.getInstance();
        l.m15454b("tz-offset", TimeZone.getDefault().getOffset(Calendar.getInstance().getTimeInMillis()) / 1000);
        l.m15455a("net-type", activeNetworkInfo == null ? zzt.zzc.zzs.zza() : activeNetworkInfo.getType());
        if (activeNetworkInfo == null) {
            i = zzt.zzb.zza.zza();
        } else {
            i = activeNetworkInfo.getSubtype();
            if (i == -1) {
                i = zzt.zzb.zzu.zza();
            } else if (zzt.zzb.zza(i) == null) {
                i = 0;
            }
        }
        l.m15455a("mobile-subtype", i);
        return l.mo15452d();
    }
}
