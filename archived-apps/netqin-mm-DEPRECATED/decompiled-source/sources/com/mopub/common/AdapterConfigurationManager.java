package com.mopub.common;

import android.content.Context;
import android.os.AsyncTask;
import android.text.TextUtils;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.Reflection;
import com.mopub.mobileads.MoPubErrorCode;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p421j.p422a.AbstractC6629a;
/* loaded from: classes2-dex2jar.jar:com/mopub/common/AdapterConfigurationManager.class */
public class AdapterConfigurationManager implements AbstractC6629a {

    /* renamed from: a */
    public volatile Map<String, AdapterConfiguration> f33639a;

    /* renamed from: b */
    public SdkInitializationListener f33640b;

    /* renamed from: com.mopub.common.AdapterConfigurationManager$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/common/AdapterConfigurationManager$a.class */
    public static class AsyncTaskC8687a extends AsyncTask<Void, Void, Map<String, AdapterConfiguration>> {

        /* renamed from: a */
        public final WeakReference<Context> f33641a;

        /* renamed from: b */
        public final Set<String> f33642b;

        /* renamed from: c */
        public final Map<String, Map<String, String>> f33643c;

        /* renamed from: d */
        public final Map<String, Map<String, String>> f33644d;

        /* renamed from: e */
        public final AbstractC6629a f33645e;

        public AsyncTaskC8687a(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2, AbstractC6629a aVar) {
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(set);
            Preconditions.checkNotNull(map);
            Preconditions.checkNotNull(map2);
            Preconditions.checkNotNull(aVar);
            this.f33641a = new WeakReference<>(context);
            this.f33642b = set;
            this.f33643c = map;
            this.f33644d = map2;
            this.f33645e = aVar;
        }

        /* renamed from: a */
        public Map<String, AdapterConfiguration> doInBackground(Void... voidArr) {
            HashMap hashMap = new HashMap();
            for (String str : this.f33642b) {
                try {
                    AdapterConfiguration adapterConfiguration = (AdapterConfiguration) Reflection.instantiateClassWithEmptyConstructor(str, AdapterConfiguration.class);
                    Context context = this.f33641a.get();
                    if (context == null) {
                        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent, "Context null. Unable to initialize adapter configuration " + str);
                    } else {
                        Map<String, String> map = this.f33643c.get(str);
                        HashMap hashMap2 = new HashMap(adapterConfiguration.getCachedInitializationParameters(context));
                        if (map != null) {
                            hashMap2.putAll(map);
                            adapterConfiguration.setCachedInitializationParameters(context, hashMap2);
                        }
                        Map<String, String> map2 = this.f33644d.get(str);
                        if (map2 != null) {
                            adapterConfiguration.setMoPubRequestOptions(map2);
                        }
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format(Locale.US, "Initializing %s version %s with network sdk version %s and with params %s", str, adapterConfiguration.getAdapterVersion(), adapterConfiguration.getNetworkSdkVersion(), hashMap2));
                        adapterConfiguration.initializeNetwork(context, hashMap2, this.f33645e);
                        hashMap.put(str, adapterConfiguration);
                    }
                } catch (Exception e) {
                    MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE;
                    MoPubLog.log(sdkLogEvent2, "Unable to find class " + str, e);
                }
            }
            return hashMap;
        }

        /* renamed from: a */
        public void onPostExecute(Map<String, AdapterConfiguration> map) {
            this.f33645e.onAdapterConfigurationsInitialized(map);
        }
    }

    public AdapterConfigurationManager(SdkInitializationListener sdkInitializationListener) {
        this.f33640b = sdkInitializationListener;
    }

    /* renamed from: a */
    public final JSONObject m4720a(Context context) {
        Preconditions.checkNotNull(context);
        Map<String, AdapterConfiguration> map = this.f33639a;
        JSONObject jSONObject = null;
        JSONObject jSONObject2 = null;
        if (map != null) {
            if (!map.isEmpty()) {
                Iterator<AdapterConfiguration> it = map.values().iterator();
                while (true) {
                    jSONObject2 = jSONObject;
                    if (!it.hasNext()) {
                        break;
                    }
                    AdapterConfiguration next = it.next();
                    try {
                        String biddingToken = next.getBiddingToken(context);
                        if (!TextUtils.isEmpty(biddingToken)) {
                            JSONObject jSONObject3 = new JSONObject();
                            jSONObject3.put("token", biddingToken);
                            JSONObject jSONObject4 = jSONObject;
                            if (jSONObject == null) {
                                jSONObject4 = new JSONObject();
                            }
                            jSONObject4.put(next.getMoPubNetworkName(), jSONObject3);
                            jSONObject = jSONObject4;
                        }
                    } catch (JSONException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.ERROR, "JSON parsing failed for MoPub network name: " + next.getMoPubNetworkName());
                        jSONObject = jSONObject;
                    }
                }
            } else {
                jSONObject2 = null;
            }
        }
        return jSONObject2;
    }

    /* renamed from: b */
    public String m4719b(Context context) {
        Preconditions.checkNotNull(context);
        JSONObject a = m4720a(context);
        if (a == null) {
            return null;
        }
        return a.toString();
    }

    public List<String> getAdapterConfigurationInfo() {
        Map<String, AdapterConfiguration> map = this.f33639a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, AdapterConfiguration> entry : map.entrySet()) {
            StringBuilder sb = new StringBuilder();
            String key = entry.getKey();
            sb.append(key.substring(key.lastIndexOf(".") + 1));
            sb.append(": Adapter version ");
            sb.append(entry.getValue().getAdapterVersion());
            sb.append(", SDK version ");
            sb.append(entry.getValue().getNetworkSdkVersion());
            arrayList.add(sb.toString());
        }
        return arrayList;
    }

    public List<String> getAdvancedBidderNames() {
        Map<String, AdapterConfiguration> map = this.f33639a;
        if (map == null || map.isEmpty()) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (AdapterConfiguration adapterConfiguration : map.values()) {
            arrayList.add(adapterConfiguration.getMoPubNetworkName());
        }
        return arrayList;
    }

    public void initialize(Context context, Set<String> set, Map<String, Map<String, String>> map, Map<String, Map<String, String>> map2) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(set);
        Preconditions.checkNotNull(map);
        Preconditions.checkNotNull(map2);
        AsyncTasks.safeExecuteOnExecutor(new AsyncTaskC8687a(context.getApplicationContext(), set, map, map2, this), new Void[0]);
    }

    @Override // p131c.p421j.p422a.AbstractC6629a
    public void onAdapterConfigurationsInitialized(Map<String, AdapterConfiguration> map) {
        Preconditions.checkNotNull(map);
        this.f33639a = map;
        SdkInitializationListener sdkInitializationListener = this.f33640b;
        if (sdkInitializationListener != null) {
            sdkInitializationListener.onInitializationFinished();
            this.f33640b = null;
        }
    }

    @Override // com.mopub.common.OnNetworkInitializationFinishedListener
    public void onNetworkInitializationFinished(Class<? extends AdapterConfiguration> cls, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(cls);
        Preconditions.checkNotNull(moPubErrorCode);
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, cls + " initialized with error code " + moPubErrorCode);
    }
}
