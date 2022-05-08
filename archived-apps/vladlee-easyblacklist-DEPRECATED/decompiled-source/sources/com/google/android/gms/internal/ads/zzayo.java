package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.provider.Settings;
import android.util.JsonWriter;
import com.google.android.gms.common.util.Base64Utils;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.gass.AdShield2Logger;
import com.google.android.gms.measurement.api.AppMeasurementSdk;
import java.io.IOException;
import java.io.StringWriter;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzayo.class */
public final class zzayo {

    /* renamed from: a */
    private static Object f11549a = new Object();

    /* renamed from: b */
    private static boolean f11550b = false;

    /* renamed from: c */
    private static boolean f11551c = false;

    /* renamed from: d */
    private static Clock f11552d = DefaultClock.getInstance();

    /* renamed from: e */
    private static final Set<String> f11553e = new HashSet(Arrays.asList(new String[0]));

    /* renamed from: f */
    private final List<String> f11554f;

    public zzayo() {
        this(null);
    }

    public zzayo(String str) {
        List<String> list;
        if (!isEnabled()) {
            list = new ArrayList<>();
        } else {
            String valueOf = String.valueOf(UUID.randomUUID().toString());
            list = Arrays.asList(valueOf.length() != 0 ? "network_request_".concat(valueOf) : new String("network_request_"));
        }
        this.f11554f = list;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4206a(int i, Map map, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("code").value(i);
        jsonWriter.endObject();
        m4205a(jsonWriter, map);
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private static void m4205a(JsonWriter jsonWriter, Map<String, ?> map) {
        if (map != null) {
            jsonWriter.name("headers").beginArray();
            Iterator<Map.Entry<String, ?>> it = map.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<String, ?> next = it.next();
                String key = next.getKey();
                if (!f11553e.contains(key)) {
                    if (!(next.getValue() instanceof List)) {
                        if (!(next.getValue() instanceof String)) {
                            zzayu.zzex("Connection headers should be either Map<String, String> or Map<String, List<String>>");
                            break;
                        }
                        jsonWriter.beginObject();
                        jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                        jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.VALUE).value((String) next.getValue());
                        jsonWriter.endObject();
                    } else {
                        for (String str : (List) next.getValue()) {
                            jsonWriter.beginObject();
                            jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.NAME).value(key);
                            jsonWriter.name(AppMeasurementSdk.ConditionalUserProperty.VALUE).value(str);
                            jsonWriter.endObject();
                        }
                    }
                }
            }
            jsonWriter.endArray();
        }
    }

    /* renamed from: a */
    private final void m4204a(final String str) {
        m4202a("onNetworkRequestError", new AbstractC1886fx(str) { // from class: com.google.android.gms.internal.ads.fv

            /* renamed from: a */
            private final String f8484a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8484a = str;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC1886fx
            /* renamed from: a */
            public final void mo4727a(JsonWriter jsonWriter) {
                zzayo.m4203a(this.f8484a, jsonWriter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4203a(String str, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        if (str != null) {
            jsonWriter.name("error_description").value(str);
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private final void m4202a(String str, AbstractC1886fx fxVar) {
        StringWriter stringWriter = new StringWriter();
        JsonWriter jsonWriter = new JsonWriter(stringWriter);
        try {
            jsonWriter.beginObject();
            jsonWriter.name("timestamp").value(f11552d.currentTimeMillis());
            jsonWriter.name("event").value(str);
            jsonWriter.name("components").beginArray();
            for (String str2 : this.f11554f) {
                jsonWriter.value(str2);
            }
            jsonWriter.endArray();
            fxVar.mo4727a(jsonWriter);
            jsonWriter.endObject();
            jsonWriter.flush();
            jsonWriter.close();
        } catch (IOException e) {
            zzayu.zzc("unable to log", e);
        }
        m4197b(stringWriter.toString());
    }

    /* renamed from: a */
    private final void m4201a(final String str, final String str2, final Map<String, ?> map, final byte[] bArr) {
        m4202a("onNetworkRequest", new AbstractC1886fx(str, str2, map, bArr) { // from class: com.google.android.gms.internal.ads.fu

            /* renamed from: a */
            private final String f8480a;

            /* renamed from: b */
            private final String f8481b;

            /* renamed from: c */
            private final Map f8482c;

            /* renamed from: d */
            private final byte[] f8483d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8480a = str;
                this.f8481b = str2;
                this.f8482c = map;
                this.f8483d = bArr;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC1886fx
            /* renamed from: a */
            public final void mo4727a(JsonWriter jsonWriter) {
                zzayo.m4200a(this.f8480a, this.f8481b, this.f8482c, this.f8483d, jsonWriter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4200a(String str, String str2, Map map, byte[] bArr, JsonWriter jsonWriter) {
        jsonWriter.name("params").beginObject();
        jsonWriter.name("firstline").beginObject();
        jsonWriter.name("uri").value(str);
        jsonWriter.name("verb").value(str2);
        jsonWriter.endObject();
        m4205a(jsonWriter, map);
        if (bArr != null) {
            jsonWriter.name("body").value(Base64Utils.encode(bArr));
        }
        jsonWriter.endObject();
    }

    /* renamed from: a */
    private final void m4199a(final Map<String, ?> map, final int i) {
        m4202a("onNetworkResponse", new AbstractC1886fx(i, map) { // from class: com.google.android.gms.internal.ads.ft

            /* renamed from: a */
            private final int f8478a;

            /* renamed from: b */
            private final Map f8479b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8478a = i;
                this.f8479b = map;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC1886fx
            /* renamed from: a */
            public final void mo4727a(JsonWriter jsonWriter) {
                zzayo.m4206a(this.f8478a, this.f8479b, jsonWriter);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static final /* synthetic */ void m4198a(byte[] bArr, JsonWriter jsonWriter) {
        String str;
        jsonWriter.name("params").beginObject();
        int length = bArr.length;
        String encode = Base64Utils.encode(bArr);
        if (length < 10000) {
            str = "body";
        } else {
            encode = zzayk.zzes(encode);
            if (encode != null) {
                str = "bodydigest";
            }
            jsonWriter.name("bodylength").value(length);
            jsonWriter.endObject();
        }
        jsonWriter.name(str).value(encode);
        jsonWriter.name("bodylength").value(length);
        jsonWriter.endObject();
    }

    /* renamed from: b */
    private static void m4197b(String str) {
        synchronized (zzayo.class) {
            try {
                zzayu.zzey("GMA Debug BEGIN");
                int i = 0;
                while (i < str.length()) {
                    int i2 = i + AdShield2Logger.EVENTID_ERROR_RUN_VM_INIT;
                    String valueOf = String.valueOf(str.substring(i, Math.min(i2, str.length())));
                    zzayu.zzey(valueOf.length() != 0 ? "GMA Debug CONTENT ".concat(valueOf) : new String("GMA Debug CONTENT "));
                    i = i2;
                }
                zzayu.zzey("GMA Debug FINISH");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean isEnabled() {
        boolean z;
        synchronized (f11549a) {
            z = f11550b && f11551c;
        }
        return z;
    }

    public static void zzar(boolean z) {
        synchronized (f11549a) {
            f11550b = true;
            f11551c = z;
        }
    }

    public static boolean zzbo(Context context) {
        if (Build.VERSION.SDK_INT < 17 || !zzaax.zzctd.get().booleanValue()) {
            return false;
        }
        try {
            return Settings.Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != 0;
        } catch (Exception e) {
            zzayu.zzd("Fail to determine debug setting.", e);
            return false;
        }
    }

    public static void zzxk() {
        synchronized (f11549a) {
            f11550b = false;
            f11551c = false;
            zzayu.zzez("Ad debug logging enablement is out of date.");
        }
    }

    public static boolean zzxl() {
        boolean z;
        synchronized (f11549a) {
            z = f11550b;
        }
        return z;
    }

    public final void zza(String str, String str2, Map<String, ?> map, byte[] bArr) {
        if (isEnabled()) {
            m4201a(str, str2, map, bArr);
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, int i) {
        if (isEnabled()) {
            Map<String, List<String>> headerFields = httpURLConnection.getHeaderFields();
            String str = null;
            m4199a(headerFields == null ? null : new HashMap(httpURLConnection.getHeaderFields()), i);
            if (i < 200 || i >= 300) {
                try {
                    str = httpURLConnection.getResponseMessage();
                } catch (IOException e) {
                    String valueOf = String.valueOf(e.getMessage());
                    zzayu.zzez(valueOf.length() != 0 ? "Can not get error message from error HttpURLConnection\n".concat(valueOf) : new String("Can not get error message from error HttpURLConnection\n"));
                }
                m4204a(str);
            }
        }
    }

    public final void zza(HttpURLConnection httpURLConnection, byte[] bArr) {
        if (isEnabled()) {
            m4201a(new String(httpURLConnection.getURL().toString()), new String(httpURLConnection.getRequestMethod()), httpURLConnection.getRequestProperties() == null ? null : new HashMap(httpURLConnection.getRequestProperties()), bArr);
        }
    }

    public final void zza(Map<String, ?> map, int i) {
        if (isEnabled()) {
            m4199a(map, i);
            if (i < 200 || i >= 300) {
                m4204a(null);
            }
        }
    }

    public final void zzeu(String str) {
        if (isEnabled() && str != null) {
            zzi(str.getBytes());
        }
    }

    public final void zzi(final byte[] bArr) {
        m4202a("onNetworkResponseBody", new AbstractC1886fx(bArr) { // from class: com.google.android.gms.internal.ads.fw

            /* renamed from: a */
            private final byte[] f8485a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8485a = bArr;
            }

            @Override // com.google.android.gms.internal.ads.AbstractC1886fx
            /* renamed from: a */
            public final void mo4727a(JsonWriter jsonWriter) {
                zzayo.m4198a(this.f8485a, jsonWriter);
            }
        });
    }
}
