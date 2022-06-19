package com.appsflyer;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.appsflyer.attribution.AppsFlyerRequestListener;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/appsflyer/AFEvent.class */
public abstract class AFEvent {

    /* renamed from: ı */
    Intent f2835;

    /* renamed from: ł */
    private byte[] f2836;

    /* renamed from: Ɩ */
    public int f2837;

    /* renamed from: ǃ */
    WeakReference<Context> f2838;

    /* renamed from: ȷ */
    private Map<String, Object> f2839;

    /* renamed from: ɨ */
    private AppsFlyerRequestListener f2840;

    /* renamed from: ɩ */
    Context f2841;

    /* renamed from: ɪ */
    boolean f2842;

    /* renamed from: ɹ */
    String f2843;

    /* renamed from: ɾ */
    private final boolean f2844;

    /* renamed from: Ι */
    String f2845;

    /* renamed from: ι */
    Map<String, Object> f2846;

    /* renamed from: І */
    String f2847;

    /* renamed from: і */
    String f2848;

    /* renamed from: Ӏ */
    String f2849;

    /* renamed from: ӏ */
    private String f2850;

    public AFEvent() {
        this(null, null, null);
    }

    public AFEvent(String str, Boolean bool, Context context) {
        this.f2843 = str;
        this.f2844 = bool != null ? bool.booleanValue() : true;
        this.f2841 = context;
    }

    protected String addChannel(String str) {
        String configuredChannel = AppsFlyerLibCore.getInstance().getConfiguredChannel(context());
        String str2 = str;
        if (configuredChannel != null) {
            str2 = Uri.parse(str).buildUpon().appendQueryParameter(AppsFlyerProperties.CHANNEL, configuredChannel).build().toString();
        }
        return str2;
    }

    public Context context() {
        Context context = this.f2841;
        if (context != null) {
            return context;
        }
        WeakReference<Context> weakReference = this.f2838;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public AFEvent context(Context context) {
        this.f2841 = context;
        return this;
    }

    public AppsFlyerRequestListener getRequestListener() {
        return this.f2840;
    }

    public Intent intent() {
        return this.f2835;
    }

    public boolean isEncrypt() {
        return this.f2844;
    }

    public AFEvent key(String str) {
        this.f2850 = str;
        return this;
    }

    public String key() {
        return this.f2850;
    }

    public AFEvent params(Map<String, ?> map) {
        this.f2839 = map;
        return this;
    }

    public Map<String, Object> params() {
        return this.f2839;
    }

    public AFEvent post(byte[] bArr) {
        this.f2836 = bArr;
        return this;
    }

    public AFEvent requestListener(AppsFlyerRequestListener appsFlyerRequestListener) {
        this.f2840 = appsFlyerRequestListener;
        return this;
    }

    public AFEvent urlString(String str) {
        this.f2849 = str;
        return this;
    }

    public String urlString() {
        return this.f2849;
    }

    public AFEvent weakContext() {
        this.f2838 = new WeakReference<>(this.f2841);
        this.f2841 = null;
        return this;
    }

    /* renamed from: ɩ */
    public final boolean m4151() {
        return this.f2842;
    }

    /* renamed from: Ι */
    final AFEvent m4150() {
        if (context() != null) {
            this.f2841 = context().getApplicationContext();
        }
        return this;
    }

    /* renamed from: ι */
    final byte[] m4149() {
        return this.f2836;
    }
}
