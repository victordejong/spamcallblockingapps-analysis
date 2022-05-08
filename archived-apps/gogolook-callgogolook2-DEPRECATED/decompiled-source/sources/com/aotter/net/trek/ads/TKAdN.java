package com.aotter.net.trek.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import com.aotter.net.gson.Gson;
import com.aotter.net.trek.ads.click.ClcRecordHelper;
import com.aotter.net.trek.ads.impression.ImpRecordHelper;
import com.aotter.net.trek.ads.impression.ImpressionInterface;
import com.aotter.net.trek.ads.impression.ImpressionTracker;
import com.aotter.net.trek.ads.interfaces.AdListener;
import com.aotter.net.trek.ads.interfaces.MediationListenr;
import com.aotter.net.trek.ads.view.NativeVideoView;
import com.aotter.net.trek.ads.view.TrekMediaView;
import com.aotter.net.trek.api.MFTCApiClient;
import com.aotter.net.trek.common.CacheService;
import com.aotter.net.trek.common.Constants;
import com.aotter.net.trek.common.util.Utils;
import com.aotter.net.trek.global.AotterTrekApplication;
import com.aotter.net.trek.model.NativeAd;
import com.aotter.net.trek.util.TrekLog;
import java.io.File;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/TKAdN.class */
public class TKAdN implements ImpressionInterface, MediationListenr {
    @NonNull

    /* renamed from: n */
    public static ConcurrentHashMap<View, ImpressionTracker> f1158n;
    @NonNull

    /* renamed from: o */
    public static ConcurrentHashMap<View, NativeVideoView> f1159o;

    /* renamed from: a */
    public MFTCApiClient.APICallFinishedListener f1160a;

    /* renamed from: b */
    public View.OnClickListener f1161b;

    /* renamed from: c */
    public AdListener f1162c;

    /* renamed from: d */
    public Gson f1163d;

    /* renamed from: e */
    public NativeAd f1164e;

    /* renamed from: f */
    public Context f1165f;

    /* renamed from: g */
    public String f1166g;

    /* renamed from: h */
    public String f1167h;

    /* renamed from: i */
    public String[] f1168i;

    /* renamed from: j */
    public String f1169j;

    /* renamed from: k */
    public View f1170k;

    /* renamed from: l */
    public int f1171l;

    /* renamed from: m */
    public boolean f1172m;
    @NonNull

    /* renamed from: p */
    public NativeAd f1173p;

    /* renamed from: q */
    public boolean f1174q;

    public TKAdN(Context context, String str) {
        this.f1163d = new Gson();
        this.f1166g = Constants.AD_TYPE_NATIVE;
        this.f1171l = 4;
        this.f1172m = false;
        this.f1160a = new C1668g(this);
        this.f1161b = new View$OnClickListenerC1670i(this);
        this.f1165f = context.getApplicationContext();
        this.f1167h = str;
        if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE)) {
            f1158n = new ConcurrentHashMap<>();
        } else if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_VIDEO)) {
            f1159o = new ConcurrentHashMap<>();
        }
        AdCache.m36602a(this.f1165f);
    }

    public TKAdN(Context context, String str, String str2) {
        this.f1163d = new Gson();
        this.f1166g = Constants.AD_TYPE_NATIVE;
        this.f1171l = 4;
        this.f1172m = false;
        this.f1160a = new C1668g(this);
        this.f1161b = new View$OnClickListenerC1670i(this);
        this.f1166g = str2;
        this.f1165f = context.getApplicationContext();
        this.f1167h = str;
        if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE) || TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_INTERACTIVE)) {
            f1158n = new ConcurrentHashMap<>();
        } else if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_VIDEO)) {
            f1159o = new ConcurrentHashMap<>();
        }
        AdCache.m36602a(this.f1165f);
    }

    public TKAdN(Context context, String str, String[] strArr, String str2) {
        this.f1163d = new Gson();
        this.f1166g = Constants.AD_TYPE_NATIVE;
        this.f1171l = 4;
        this.f1172m = false;
        this.f1160a = new C1668g(this);
        this.f1161b = new View$OnClickListenerC1670i(this);
        this.f1165f = context.getApplicationContext();
        this.f1167h = str;
        this.f1166g = str2;
        this.f1168i = strArr;
        m36572a(strArr);
        if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE) || TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_INTERACTIVE)) {
            f1158n = new ConcurrentHashMap<>();
        } else if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_VIDEO)) {
            f1159o = new ConcurrentHashMap<>();
        }
        AdCache.m36602a(this.f1165f);
    }

    /* renamed from: a */
    private void m36579a() {
        String[] strArr = this.f1168i;
        if (strArr == null || strArr.length <= 0) {
            this.f1164e = AdCache.m36597a(this.f1166g, this.f1167h, null, this.f1174q);
        } else {
            for (String str : strArr) {
                this.f1164e = AdCache.m36597a(this.f1166g, this.f1167h, str, this.f1174q);
            }
        }
        if (this.f1164e == null && this.f1165f != null) {
            String RenderPayloadJson = Utils.RenderPayloadJson(this.f1166g, this.f1167h, this.f1169j, this.f1171l);
            if (this.f1174q) {
                MFTCApiClient.getSharedInstance(this.f1165f).getMFTCHouseAd(RenderPayloadJson, this.f1160a);
            } else {
                MFTCApiClient.getSharedInstance(this.f1165f).getMFTCAd(RenderPayloadJson, this.f1160a);
            }
        }
        m36574a(this.f1164e);
    }

    /* renamed from: a */
    private void m36577a(@NonNull Activity activity, @NonNull View view) {
        if (view instanceof TrekMediaView) {
            TrekMediaView trekMediaView = (TrekMediaView) view;
            trekMediaView.setActivity(activity);
            trekMediaView.setAdapter(this.f1162c);
            trekMediaView.setNativeAd(this.f1173p);
            trekMediaView.setMediaBackgroundBlack(this.f1172m);
        } else {
            view.setOnClickListener(this.f1161b);
        }
        NativeAd nativeAd = this.f1173p;
        if (nativeAd != null) {
            f1158n.put(view, new ImpressionTracker(activity, view, nativeAd, this));
        }
    }

    /* renamed from: a */
    private void m36576a(@NonNull Activity activity, @NonNull View view, @NonNull Map<View, ImpressionTracker> map, @NonNull NativeAd nativeAd) {
        if (view == null) {
            throw new IllegalArgumentException("Must provide a View");
        } else if (nativeAd == null) {
            throw new IllegalArgumentException("Must provide a nativeAd");
        } else if (f1158n != null) {
            this.f1173p = nativeAd;
            Utils.disableOnClick((ViewGroup) view);
            if (f1158n.size() == 0) {
                m36577a(activity, view);
                return;
            }
            for (Map.Entry<View, ImpressionTracker> entry : f1158n.entrySet()) {
                View key = entry.getKey();
                if (key.equals(view)) {
                    String str = AotterTrekApplication.TAG;
                    clear(key);
                } else {
                    m36577a(activity, view);
                }
            }
        } else {
            throw new IllegalArgumentException("Invalid set of clickable views");
        }
    }

    /* renamed from: a */
    private void m36574a(NativeAd nativeAd) {
        if (this.f1162c == null || nativeAd == null) {
            AdListener adListener = this.f1162c;
            if (adListener == null || nativeAd != null) {
                Log.e(TKAdN.class.getSimpleName(), "Need set setAdListener");
            } else {
                adListener.onAdFail();
            }
        } else if (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE) || TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_INTERACTIVE) || (TextUtils.equals(this.f1166g, Constants.AD_TYPE_NATIVE_VIDEO) && m36569b(nativeAd))) {
            m36567c(nativeAd);
        }
    }

    /* renamed from: a */
    private void m36573a(NativeAd nativeAd, String str, String str2) {
        if (nativeAd != null) {
            str = nativeAd.getUrlOriginal();
            str2 = nativeAd.getAdUrl();
        }
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str.replace(" ", ""));
            try {
                if (!TextUtils.isEmpty(str2)) {
                    ClcRecordHelper.sendClc(this.f1165f, this.f1162c, nativeAd);
                }
                Intent intent = new Intent("android.intent.action.VIEW", parse);
                intent.setFlags(268435456);
                this.f1165f.startActivity(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
        } else {
            TrekLog.m36319d("OnClick without url!");
        }
    }

    /* renamed from: a */
    private void m36572a(String[] strArr) {
        this.f1169j = strArr != null ? TextUtils.join(",", strArr) : "";
    }

    /* renamed from: b */
    private void m36571b() {
        if (this.f1170k != null) {
            this.f1170k = null;
            return;
        }
        throw new IllegalStateException("View not registered with this NativeAd");
    }

    /* renamed from: b */
    private boolean m36569b(NativeAd nativeAd) {
        try {
            if (new File(CacheService.getFilePathDiskCache(nativeAd.getSrc().getVideoId())).exists()) {
                return true;
            }
            TrekLog.m36317e("AotterTrek has no Video now.");
            this.f1162c.onAdFail();
            return false;
        } catch (Exception e) {
            TrekLog.m36317e("AotterTrek has no Video now. " + e);
            this.f1162c.onAdFail();
            return false;
        }
    }

    /* renamed from: c */
    private void m36567c(NativeAd nativeAd) {
        this.f1162c.onAdLoaded(nativeAd);
        try {
            String urlPop = nativeAd.getUrlPop();
            if (!TextUtils.isEmpty(urlPop)) {
                MFTCApiClient.getSharedInstance(this.f1165f).sendPOPURL(urlPop);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void clear(View view) {
        f1158n.remove(view);
    }

    public static void clearVideo(View view) {
        f1159o.remove(view);
    }

    /* renamed from: a */
    public Activity m36578a(Activity activity) {
        if (activity == null) {
            destroy();
        }
        return activity;
    }

    public void clearAllCache() {
        try {
            AdCache.clear();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clearCacheByPlace(String str) {
        try {
            if (!TextUtils.isEmpty(str)) {
                AdCache.clear(str);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void clickRegNativeAd(NativeAd nativeAd) {
        m36573a(nativeAd, null, null);
    }

    public void clickRegNativeAd(String str, String str2) {
        m36573a(null, str, str2);
    }

    public void destroy() {
        f1158n.clear();
        if (this.f1162c != null) {
            this.f1162c = null;
        }
    }

    public boolean isMediaBackgroundBlack() {
        return this.f1172m;
    }

    @Override // com.aotter.net.trek.ads.impression.ImpressionInterface
    public void recordImpression(Context context, NativeAd nativeAd, View view) {
        if (context != null && nativeAd != null) {
            if (view == null || !(view instanceof TrekMediaView)) {
                ImpRecordHelper.sendImp(context, this.f1162c, nativeAd);
            } else {
                ImpRecordHelper.sendImpWithInterActiveAd(context, this.f1162c, nativeAd, view);
            }
        }
    }

    @Override // com.aotter.net.trek.ads.interfaces.MediationListenr
    public void recordTrekClick(NativeAd nativeAd) {
        if (nativeAd != null) {
            String adTrekUrl = nativeAd.getAdTrekUrl();
            if (this.f1165f != null && !TextUtils.isEmpty(adTrekUrl)) {
                ClcRecordHelper.sendClc(this.f1165f, this.f1162c, nativeAd);
                return;
            }
            return;
        }
        TrekLog.m36319d("urlTrek OnClick without url!");
    }

    @Override // com.aotter.net.trek.ads.interfaces.MediationListenr
    public void recordTrekImp(NativeAd nativeAd) {
        Context context = this.f1165f;
        if (context != null && nativeAd != null) {
            ImpRecordHelper.sendImp(context, this.f1162c, nativeAd);
        }
    }

    public void registerVideoViewForInteraction(@NonNull Activity activity, @NonNull View view, @NonNull NativeVideoView nativeVideoView, @NonNull NativeAd nativeAd) {
        if (m36578a(activity) == null) {
            throw new IllegalArgumentException("Activity may not be null.");
        } else if (view == null) {
            throw new IllegalArgumentException("Must provide a View");
        } else if (nativeVideoView == null) {
            throw new IllegalArgumentException("Must provide a NativeVideoView");
        } else if (nativeAd == null) {
            throw new IllegalArgumentException("Must provide a nativeAd");
        } else if (f1159o != null) {
            this.f1173p = nativeAd;
            Utils.disableOnClick((ViewGroup) view);
            if (f1159o.size() == 0) {
                nativeVideoView.setActivity(activity);
                nativeVideoView.setAdapter(this.f1162c);
                nativeVideoView.setVideoSrc(this.f1173p, this);
                view.setOnClickListener(this.f1161b);
                f1159o.put(view, nativeVideoView);
                return;
            }
            for (Map.Entry<View, NativeVideoView> entry : f1159o.entrySet()) {
                View key = entry.getKey();
                if (key.equals(view)) {
                    String str = AotterTrekApplication.TAG;
                    clearVideo(key);
                } else {
                    nativeVideoView.setActivity(activity);
                    nativeVideoView.setVideoSrc(this.f1173p, this);
                    view.setOnClickListener(this.f1161b);
                    f1159o.put(view, nativeVideoView);
                }
            }
        } else {
            throw new IllegalArgumentException("Invalid set of clickable views");
        }
    }

    public void registerViewForInteraction(@NonNull Activity activity, @NonNull View view, @NonNull NativeAd nativeAd) {
        Activity a = m36578a(activity);
        if (a != null) {
            m36576a(a, view, f1158n, nativeAd);
            return;
        }
        throw new IllegalArgumentException("Activity may not be null.");
    }

    public void resume() {
        try {
            AdCache.checkCacheState();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void setAdListener(AdListener adListener) {
        this.f1162c = adListener;
        m36579a();
    }

    public void setCacheNumber(int i) {
        if (i == 0 || i > 5) {
            Log.e(TKAdN.class.getSimpleName(), "CacheNumber need set 1~5");
        } else {
            this.f1171l = i;
        }
    }

    public void setMediaBackgroundBlack(boolean z) {
        this.f1172m = z;
    }

    public void setTKMyAppListener(AdListener adListener) {
        this.f1162c = adListener;
        this.f1174q = true;
        m36579a();
    }

    @Override // com.aotter.net.trek.ads.interfaces.MediationListenr
    public String urlClick(NativeAd nativeAd) {
        return nativeAd != null ? nativeAd.getUrlOriginal() : "";
    }

    @Override // com.aotter.net.trek.ads.interfaces.MediationListenr
    public String urlImpression(NativeAd nativeAd) {
        return nativeAd != null ? nativeAd.getAdurl_imp() : "";
    }

    @Override // com.aotter.net.trek.ads.interfaces.MediationListenr
    public String urlTrek(NativeAd nativeAd) {
        String str;
        if (nativeAd != null) {
            str = nativeAd.getAdUrl();
        } else {
            TrekLog.m36319d("urlTrek OnClick without url!");
            str = "";
        }
        return str;
    }
}
