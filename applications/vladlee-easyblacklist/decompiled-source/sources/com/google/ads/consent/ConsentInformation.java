package com.google.ads.consent;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import com.google.p051a.C1507k;
import com.google.p051a.p052a.AbstractC1371c;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentInformation.class */
public class ConsentInformation {
    private static final String CONSENT_DATA_KEY = "consent_string";
    private static final String MOBILE_ADS_SERVER_URL = "https://adservice.google.com/getconfig/pubvendors";
    private static final String PREFERENCES_FILE_KEY = "mobileads_consent";
    private static final String TAG = "ConsentInformation";
    private static ConsentInformation instance;
    private final Context context;
    private DebugGeography debugGeography = DebugGeography.DEBUG_GEOGRAPHY_DISABLED;
    private List<String> testDevices = new ArrayList();
    private String hashedDeviceId = m6116b();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentInformation$AdNetworkLookupResponse.class */
    public static class AdNetworkLookupResponse {
        @AbstractC1371c(m6359a = "company_ids")
        private List<String> companyIds;
        @AbstractC1371c(m6359a = "ad_network_id")

        /* renamed from: id */
        private String f5785id;
        @AbstractC1371c(m6359a = "is_npa")
        private boolean isNPA;
        @AbstractC1371c(m6359a = "lookup_failed")
        private boolean lookupFailed;
        @AbstractC1371c(m6359a = "not_found")
        private boolean notFound;

        private AdNetworkLookupResponse() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentInformation$ConsentInfoUpdateResponse.class */
    public static class ConsentInfoUpdateResponse {
        String responseInfo;
        boolean success;

        ConsentInfoUpdateResponse(boolean z, String str) {
            this.success = z;
            this.responseInfo = str;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentInformation$ConsentInfoUpdateTask.class */
    private static class ConsentInfoUpdateTask extends AsyncTask<Void, Void, ConsentInfoUpdateResponse> {
        private static final String UPDATE_SUCCESS = "Consent update successful.";
        private final ConsentInformation consentInformation;
        private final ConsentInfoUpdateListener listener;
        private final List<String> publisherIds;
        private final String url;

        ConsentInfoUpdateTask(String str, ConsentInformation consentInformation, List<String> list, ConsentInfoUpdateListener consentInfoUpdateListener) {
            this.url = str;
            this.listener = consentInfoUpdateListener;
            this.publisherIds = list;
            this.consentInformation = consentInformation;
        }

        /* renamed from: a */
        private ConsentInfoUpdateResponse m6108a(String str) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                if (httpURLConnection.getResponseCode() != 200) {
                    return new ConsentInfoUpdateResponse(false, httpURLConnection.getResponseMessage());
                }
                String a = m6109a(httpURLConnection.getInputStream());
                httpURLConnection.disconnect();
                this.consentInformation.m6118a(a, this.publisherIds);
                return new ConsentInfoUpdateResponse(true, UPDATE_SUCCESS);
            } catch (Exception e) {
                return new ConsentInfoUpdateResponse(false, e.getLocalizedMessage());
            }
        }

        /* renamed from: a */
        private static String m6109a(InputStream inputStream) {
            byte[] bArr = new byte[1024];
            StringBuilder sb = new StringBuilder();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(inputStream);
            while (true) {
                try {
                    try {
                        int read = bufferedInputStream.read(bArr);
                        if (read != -1) {
                            sb.append(new String(bArr, 0, read));
                        } else {
                            try {
                                break;
                            } catch (IOException e) {
                                Log.e(ConsentInformation.TAG, e.getLocalizedMessage());
                            }
                        }
                    } catch (Throwable th) {
                        try {
                            bufferedInputStream.close();
                        } catch (IOException e2) {
                            Log.e(ConsentInformation.TAG, e2.getLocalizedMessage());
                        }
                        throw th;
                    }
                } catch (IOException e3) {
                    Log.e(ConsentInformation.TAG, e3.getLocalizedMessage());
                    try {
                        bufferedInputStream.close();
                        return null;
                    } catch (IOException e4) {
                        Log.e(ConsentInformation.TAG, e4.getLocalizedMessage());
                        return null;
                    }
                }
            }
            bufferedInputStream.close();
            return sb.toString();
        }

        @Override // android.os.AsyncTask
        public /* synthetic */ ConsentInfoUpdateResponse doInBackground(Void[] voidArr) {
            String join = TextUtils.join(",", this.publisherIds);
            ConsentData a = this.consentInformation.m6123a();
            Uri.Builder appendQueryParameter = Uri.parse(this.url).buildUpon().appendQueryParameter("pubs", join).appendQueryParameter("es", "2").appendQueryParameter("plat", a.m6138h()).appendQueryParameter("v", a.m6139g());
            Uri.Builder builder = appendQueryParameter;
            if (this.consentInformation.isTestDevice()) {
                builder = appendQueryParameter;
                if (this.consentInformation.getDebugGeography() != DebugGeography.DEBUG_GEOGRAPHY_DISABLED) {
                    builder = appendQueryParameter.appendQueryParameter("debug_geo", this.consentInformation.getDebugGeography().getCode().toString());
                }
            }
            return m6108a(builder.build().toString());
        }

        @Override // android.os.AsyncTask
        protected /* synthetic */ void onPostExecute(ConsentInfoUpdateResponse consentInfoUpdateResponse) {
            ConsentInfoUpdateResponse consentInfoUpdateResponse2 = consentInfoUpdateResponse;
            if (consentInfoUpdateResponse2.success) {
                this.listener.onConsentInfoUpdated(this.consentInformation.getConsentStatus());
            } else {
                this.listener.onFailedToUpdateConsentInfo(consentInfoUpdateResponse2.responseInfo);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes-dex2jar.jar:com/google/ads/consent/ConsentInformation$ServerResponse.class */
    public static class ServerResponse {
        @AbstractC1371c(m6359a = "ad_network_ids")
        List<AdNetworkLookupResponse> adNetworkLookupResponses;
        List<AdProvider> companies;
        @AbstractC1371c(m6359a = "is_request_in_eea_or_unknown")
        Boolean isRequestLocationInEeaOrUnknown;

        protected ServerResponse() {
        }
    }

    private ConsentInformation(Context context) {
        this.context = context.getApplicationContext();
    }

    /* renamed from: a */
    private static String m6119a(String str) {
        for (int i = 0; i < 3; i++) {
            try {
                MessageDigest instance2 = MessageDigest.getInstance("MD5");
                instance2.update(str.getBytes());
                return String.format("%032X", new BigInteger(1, instance2.digest()));
            } catch (ArithmeticException e) {
                return null;
            } catch (NoSuchAlgorithmException e2) {
            }
        }
        return null;
    }

    /* renamed from: a */
    private static HashSet<AdProvider> m6117a(List<AdProvider> list, HashSet<String> hashSet) {
        ArrayList arrayList = new ArrayList();
        for (AdProvider adProvider : list) {
            if (hashSet.contains(adProvider.getId())) {
                arrayList.add(adProvider);
            }
        }
        return new HashSet<>(arrayList);
    }

    /* renamed from: a */
    private void m6122a(ConsentData consentData) {
        SharedPreferences.Editor edit = this.context.getSharedPreferences(PREFERENCES_FILE_KEY, 0).edit();
        edit.putString(CONSENT_DATA_KEY, new C1507k().m6178a(consentData));
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: a */
    public void m6118a(String str, List<String> list) {
        boolean z;
        synchronized (this) {
            ServerResponse serverResponse = (ServerResponse) new C1507k().m6177a(str, ServerResponse.class);
            if (serverResponse.isRequestLocationInEeaOrUnknown != null) {
                if (serverResponse.companies == null && serverResponse.isRequestLocationInEeaOrUnknown.booleanValue()) {
                    throw new Exception("Could not parse Event FE preflight response.");
                }
                boolean z2 = true;
                if (serverResponse.isRequestLocationInEeaOrUnknown.booleanValue()) {
                    HashSet hashSet = new HashSet();
                    HashSet hashSet2 = new HashSet();
                    for (AdNetworkLookupResponse adNetworkLookupResponse : serverResponse.adNetworkLookupResponses) {
                        if (adNetworkLookupResponse.lookupFailed) {
                            hashSet.add(adNetworkLookupResponse.f5785id);
                        }
                        if (adNetworkLookupResponse.notFound) {
                            hashSet2.add(adNetworkLookupResponse.f5785id);
                        }
                    }
                    if (!hashSet.isEmpty() || !hashSet2.isEmpty()) {
                        StringBuilder sb = new StringBuilder("Response error.");
                        if (!hashSet.isEmpty()) {
                            sb.append(String.format(" Lookup failure for: %s.", TextUtils.join(",", hashSet)));
                        }
                        if (!hashSet2.isEmpty()) {
                            sb.append(String.format(" Publisher Ids not found: %s", TextUtils.join(",", hashSet2)));
                        }
                        throw new Exception(sb.toString());
                    }
                }
                HashSet hashSet3 = new HashSet();
                if (serverResponse.adNetworkLookupResponses != null) {
                    Iterator<AdNetworkLookupResponse> it = serverResponse.adNetworkLookupResponses.iterator();
                    boolean z3 = false;
                    while (true) {
                        z = z3;
                        if (!it.hasNext()) {
                            break;
                        }
                        AdNetworkLookupResponse next = it.next();
                        if (next.isNPA) {
                            List list2 = next.companyIds;
                            if (list2 != null) {
                                hashSet3.addAll(list2);
                            }
                            z3 = true;
                        }
                    }
                } else {
                    z = false;
                }
                HashSet<AdProvider> hashSet4 = serverResponse.companies == null ? new HashSet<>() : z ? m6117a(serverResponse.companies, hashSet3) : new HashSet<>(serverResponse.companies);
                ConsentData a = m6123a();
                if (a.m6140f() == z) {
                    z2 = false;
                }
                a.m6143c(z);
                a.m6148b(str);
                a.m6147b(new HashSet<>(list));
                a.m6151a(hashSet4);
                a.m6146b(serverResponse.isRequestLocationInEeaOrUnknown.booleanValue());
                if (!serverResponse.isRequestLocationInEeaOrUnknown.booleanValue()) {
                    m6122a(a);
                    return;
                }
                if (!a.m6149b().equals(a.m6141e()) || z2) {
                    a.m6152a("sdk");
                    a.m6153a(ConsentStatus.UNKNOWN);
                    a.m6144c(new HashSet<>());
                }
                m6122a(a);
                return;
            }
            throw new Exception("Could not parse Event FE preflight response.");
        }
    }

    /* renamed from: b */
    private String m6116b() {
        ContentResolver contentResolver = this.context.getContentResolver();
        String string = contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id");
        if (string == null || m6115c()) {
            string = "emulator";
        }
        return m6119a(string);
    }

    /* renamed from: c */
    private static boolean m6115c() {
        if (Build.FINGERPRINT.startsWith("generic") || Build.FINGERPRINT.startsWith("unknown") || Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK built for x86") || Build.MANUFACTURER.contains("Genymotion")) {
            return true;
        }
        return (Build.BRAND.startsWith("generic") && Build.DEVICE.startsWith("generic")) || "google_sdk".equals(Build.PRODUCT);
    }

    public static ConsentInformation getInstance(Context context) {
        ConsentInformation consentInformation;
        synchronized (ConsentInformation.class) {
            try {
                if (instance == null) {
                    instance = new ConsentInformation(context);
                }
                consentInformation = instance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return consentInformation;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final ConsentData m6123a() {
        String string = this.context.getSharedPreferences(PREFERENCES_FILE_KEY, 0).getString(CONSENT_DATA_KEY, "");
        return TextUtils.isEmpty(string) ? new ConsentData() : (ConsentData) new C1507k().m6177a(string, ConsentData.class);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final void m6120a(ConsentStatus consentStatus, String str) {
        synchronized (this) {
            ConsentData a = m6123a();
            a.m6144c(consentStatus == ConsentStatus.UNKNOWN ? new HashSet<>() : a.m6149b());
            a.m6152a(str);
            a.m6153a(consentStatus);
            m6122a(a);
        }
    }

    public void addTestDevice(String str) {
        this.testDevices.add(str);
    }

    public List<AdProvider> getAdProviders() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(m6123a().m6149b());
        }
        return arrayList;
    }

    public ConsentStatus getConsentStatus() {
        ConsentStatus c;
        synchronized (this) {
            c = m6123a().m6145c();
        }
        return c;
    }

    public DebugGeography getDebugGeography() {
        return this.debugGeography;
    }

    public boolean isRequestLocationInEeaOrUnknown() {
        return m6123a().m6142d();
    }

    public boolean isTaggedForUnderAgeOfConsent() {
        boolean a;
        synchronized (this) {
            a = m6123a().m6154a();
        }
        return a;
    }

    public boolean isTestDevice() {
        return m6115c() || this.testDevices.contains(this.hashedDeviceId);
    }

    public void requestConsentInfoUpdate(String[] strArr, ConsentInfoUpdateListener consentInfoUpdateListener) {
        String str;
        if (isTestDevice()) {
            str = "This request is sent from a test device.";
        } else {
            String b = m6116b();
            StringBuilder sb = new StringBuilder(String.valueOf(b).length() + 93);
            sb.append("Use ConsentInformation.getInstance(context).addTestDevice(\"");
            sb.append(b);
            sb.append("\") to get test ads on this device.");
            str = sb.toString();
        }
        Log.i(TAG, str);
        new ConsentInfoUpdateTask(MOBILE_ADS_SERVER_URL, this, Arrays.asList(strArr), consentInfoUpdateListener).execute(new Void[0]);
    }

    public void reset() {
        synchronized (this) {
            SharedPreferences.Editor edit = this.context.getSharedPreferences(PREFERENCES_FILE_KEY, 0).edit();
            edit.clear();
            edit.apply();
            this.testDevices = new ArrayList();
        }
    }

    public void setConsentStatus(ConsentStatus consentStatus) {
        m6120a(consentStatus, "programmatic");
    }

    public void setDebugGeography(DebugGeography debugGeography) {
        this.debugGeography = debugGeography;
    }

    public void setTagForUnderAgeOfConsent(boolean z) {
        synchronized (this) {
            ConsentData a = m6123a();
            a.m6150a(z);
            m6122a(a);
        }
    }
}
