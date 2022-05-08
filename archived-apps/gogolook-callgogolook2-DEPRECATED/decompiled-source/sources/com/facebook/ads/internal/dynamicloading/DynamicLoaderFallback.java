package com.facebook.ads.internal.dynamicloading;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.facebook.ads.AbstractC2237Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.facebook.ads.CacheFlag;
import com.facebook.ads.InstreamVideoAdView;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.RewardedVideoAd;
import com.facebook.ads.internal.api.AdViewApi;
import com.facebook.ads.internal.api.AdViewParentApi;
import com.facebook.ads.internal.api.InstreamVideoAdViewApi;
import com.facebook.ads.internal.api.InterstitialAdApi;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.RewardedVideoAdApi;
import java.lang.reflect.Array;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
@Keep
/* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback.class */
public class DynamicLoaderFallback {
    public static final WeakHashMap<Object, AdListener> sApiProxyToAdListenersMap = new WeakHashMap<>();

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$a */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$a.class */
    public static final class C2248a implements InvocationHandler {

        /* renamed from: a */
        public final /* synthetic */ List f2626a;

        /* renamed from: b */
        public final /* synthetic */ List f2627b;

        /* renamed from: c */
        public final /* synthetic */ Map f2628c;

        /* renamed from: d */
        public final /* synthetic */ List f2629d;

        /* renamed from: e */
        public final /* synthetic */ Method f2630e;

        /* renamed from: f */
        public final /* synthetic */ Map f2631f;

        /* renamed from: g */
        public final /* synthetic */ List f2632g;

        /* renamed from: h */
        public final /* synthetic */ List f2633h;

        /* renamed from: i */
        public final /* synthetic */ List f2634i;

        /* renamed from: j */
        public final /* synthetic */ Method f2635j;

        /* renamed from: k */
        public final /* synthetic */ Method f2636k;

        public C2248a(List list, List list2, Map map, List list3, Method method, Map map2, List list4, List list5, List list6, Method method2, Method method3) {
            this.f2626a = list;
            this.f2627b = list2;
            this.f2628c = map;
            this.f2629d = list3;
            this.f2630e = method;
            this.f2631f = map2;
            this.f2632g = list4;
            this.f2633h = list5;
            this.f2634i = list6;
            this.f2635j = method2;
            this.f2636k = method3;
        }

        @Override // java.lang.reflect.InvocationHandler
        @Nullable
        public Object invoke(Object obj, Method method, Object[] objArr) {
            if (method.getReturnType().isPrimitive()) {
                if (!method.getReturnType().equals(Void.TYPE)) {
                    return Array.get(Array.newInstance(method.getReturnType(), 1), 0);
                }
                Iterator it = this.f2626a.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (DynamicLoaderFallback.equalsMethods(method, (Method) it.next())) {
                            DynamicLoaderFallback.sApiProxyToAdListenersMap.put(obj, (AdListener) objArr[0]);
                            break;
                        }
                    } else {
                        break;
                    }
                }
                Iterator it2 = this.f2627b.iterator();
                while (it2.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it2.next()) || !DynamicLoaderFallback.reportError(obj, this.f2628c))) {
                }
                Iterator it3 = this.f2629d.iterator();
                while (it3.hasNext() && (!DynamicLoaderFallback.equalsMethods(method, (Method) it3.next()) || !DynamicLoaderFallback.reportError(obj, this.f2628c))) {
                }
                if (!DynamicLoaderFallback.equalsMethods(method, this.f2630e)) {
                    return null;
                }
                DynamicLoaderFallback.reportError(this.f2631f.get(obj), this.f2628c);
                return null;
            } else if (method.getReturnType().equals(String.class)) {
                return "";
            } else {
                Object newProxyInstance = method.getReturnType().equals(obj.getClass().getInterfaces()[0]) ? obj : Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{method.getReturnType()}, this);
                Iterator it4 = this.f2632g.iterator();
                while (true) {
                    if (it4.hasNext()) {
                        if (DynamicLoaderFallback.equalsMethods(method, (Method) it4.next())) {
                            DynamicLoaderFallback.sApiProxyToAdListenersMap.put(this.f2631f.get(obj), (AdListener) objArr[0]);
                            break;
                        }
                    } else {
                        break;
                    }
                }
                for (Method method2 : this.f2633h) {
                    if (DynamicLoaderFallback.equalsMethods(method, method2)) {
                        this.f2631f.put(newProxyInstance, obj);
                    }
                }
                for (Method method3 : this.f2634i) {
                    if (DynamicLoaderFallback.equalsMethods(method, method3)) {
                        for (Object obj2 : objArr) {
                            if (obj2 instanceof AbstractC2237Ad) {
                                this.f2628c.put(newProxyInstance, (AbstractC2237Ad) obj2);
                            }
                        }
                    }
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.f2635j)) {
                    this.f2628c.put(objArr[1], (AbstractC2237Ad) objArr[0]);
                }
                if (DynamicLoaderFallback.equalsMethods(method, this.f2636k)) {
                    this.f2628c.put(objArr[1], (AbstractC2237Ad) objArr[0]);
                }
                return newProxyInstance;
            }
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$b */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$b.class */
    public static final class RunnableC2249b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AdListener f2637a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC2237Ad f2638b;

        public RunnableC2249b(AdListener adListener, AbstractC2237Ad ad) {
            this.f2637a = adListener;
            this.f2638b = ad;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f2637a.onError(this.f2638b, new AdError(-1, DynamicLoaderFactory.DEX_LOADING_ERROR_MESSAGE));
        }
    }

    /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$c */
    /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$c.class */
    public static class C2250c {
        @Nullable

        /* renamed from: a */
        public Method f2639a;

        /* renamed from: b */
        public final InvocationHandler f2640b;

        /* renamed from: com.facebook.ads.internal.dynamicloading.DynamicLoaderFallback$c$a */
        /* loaded from: classes-dex2jar.jar:com/facebook/ads/internal/dynamicloading/DynamicLoaderFallback$c$a.class */
        public class C2251a implements InvocationHandler {
            public C2251a() {
            }

            @Override // java.lang.reflect.InvocationHandler
            @Nullable
            public Object invoke(Object obj, Method method, Object[] objArr) {
                if ("toString".equals(method.getName())) {
                    return null;
                }
                C2250c.this.f2639a = method;
                return null;
            }
        }

        public C2250c() {
            this.f2640b = new C2251a();
        }

        public /* synthetic */ C2250c(C2248a aVar) {
            this();
        }

        /* renamed from: a */
        public <T> T m35378a(Class<T> cls) {
            return cls.cast(Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{cls}, this.f2640b));
        }

        @Nullable
        /* renamed from: a */
        public Method m35380a() {
            return this.f2639a;
        }
    }

    public static boolean equalsMethodParams(Method method, Method method2) {
        return Arrays.equals(method.getParameterTypes(), method2.getParameterTypes());
    }

    public static boolean equalsMethods(Method method, Method method2) {
        return method != null && method2 != null && method.getDeclaringClass().equals(method2.getDeclaringClass()) && method.getName().equals(method2.getName()) && equalsMethodParams(method, method2);
    }

    @SuppressLint({"Parameter Not Nullable", "CatchGeneralException"})
    public static DynamicLoader makeFallbackLoader() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        ArrayList arrayList6 = new ArrayList();
        HashMap hashMap = new HashMap();
        HashMap hashMap2 = new HashMap();
        C2250c cVar = new C2250c(null);
        DynamicLoader dynamicLoader = (DynamicLoader) cVar.m35378a(DynamicLoader.class);
        dynamicLoader.createInterstitialAd(null, null, null);
        arrayList6.add(cVar.m35380a());
        dynamicLoader.createRewardedVideoAd(null, null, null);
        arrayList6.add(cVar.m35380a());
        dynamicLoader.createInstreamVideoAdViewApi(null, null, null, null);
        arrayList6.add(cVar.m35380a());
        dynamicLoader.createAdViewApi((Context) null, (String) null, (AdSize) null, (AdViewParentApi) null, (AdView) null);
        arrayList6.add(cVar.m35380a());
        try {
            dynamicLoader.createAdViewApi((Context) null, (String) null, (String) null, (AdViewParentApi) null, (AdView) null);
        } catch (Exception e) {
        }
        arrayList6.add(cVar.m35380a());
        dynamicLoader.createNativeAdApi(null, null);
        Method a = cVar.m35380a();
        dynamicLoader.createNativeBannerAdApi(null, null);
        Method a2 = cVar.m35380a();
        NativeAdBaseApi nativeAdBaseApi = (NativeAdBaseApi) cVar.m35378a(NativeAdBaseApi.class);
        nativeAdBaseApi.loadAd();
        arrayList.add(cVar.m35380a());
        nativeAdBaseApi.loadAd((NativeAdBase.NativeLoadAdConfig) null);
        arrayList2.add(cVar.m35380a());
        nativeAdBaseApi.loadAd((NativeAdBase.MediaCacheFlag) null);
        arrayList.add(cVar.m35380a());
        nativeAdBaseApi.loadAdFromBid(null);
        arrayList.add(cVar.m35380a());
        nativeAdBaseApi.loadAdFromBid(null, null);
        arrayList.add(cVar.m35380a());
        nativeAdBaseApi.buildLoadAdConfig(null);
        arrayList5.add(cVar.m35380a());
        nativeAdBaseApi.setAdListener(null, null);
        arrayList3.add(cVar.m35380a());
        InterstitialAdApi interstitialAdApi = (InterstitialAdApi) cVar.m35378a(InterstitialAdApi.class);
        interstitialAdApi.loadAd();
        arrayList.add(cVar.m35380a());
        interstitialAdApi.loadAd((EnumSet<CacheFlag>) null);
        arrayList.add(cVar.m35380a());
        interstitialAdApi.loadAd((InterstitialAd.InterstitialLoadAdConfig) null);
        arrayList2.add(cVar.m35380a());
        interstitialAdApi.loadAdFromBid(null, null);
        arrayList.add(cVar.m35380a());
        interstitialAdApi.setAdListener(null);
        arrayList3.add(cVar.m35380a());
        interstitialAdApi.buildLoadAdConfig();
        arrayList5.add(cVar.m35380a());
        RewardedVideoAdApi rewardedVideoAdApi = (RewardedVideoAdApi) cVar.m35378a(RewardedVideoAdApi.class);
        rewardedVideoAdApi.loadAd();
        arrayList.add(cVar.m35380a());
        rewardedVideoAdApi.loadAd((RewardedVideoAd.RewardedVideoLoadAdConfig) null);
        arrayList2.add(cVar.m35380a());
        rewardedVideoAdApi.loadAd(false);
        arrayList.add(cVar.m35380a());
        rewardedVideoAdApi.loadAdFromBid(null, false);
        arrayList.add(cVar.m35380a());
        rewardedVideoAdApi.setAdListener(null);
        arrayList3.add(cVar.m35380a());
        rewardedVideoAdApi.buildLoadAdConfig();
        arrayList5.add(cVar.m35380a());
        InstreamVideoAdViewApi instreamVideoAdViewApi = (InstreamVideoAdViewApi) cVar.m35378a(InstreamVideoAdViewApi.class);
        instreamVideoAdViewApi.loadAd();
        arrayList.add(cVar.m35380a());
        instreamVideoAdViewApi.loadAd(null);
        arrayList2.add(cVar.m35380a());
        instreamVideoAdViewApi.loadAdFromBid(null);
        arrayList.add(cVar.m35380a());
        instreamVideoAdViewApi.setAdListener(null);
        arrayList3.add(cVar.m35380a());
        instreamVideoAdViewApi.buildLoadAdConfig();
        arrayList5.add(cVar.m35380a());
        AdViewApi adViewApi = (AdViewApi) cVar.m35378a(AdViewApi.class);
        adViewApi.loadAd();
        arrayList.add(cVar.m35380a());
        adViewApi.loadAd(null);
        arrayList2.add(cVar.m35380a());
        adViewApi.loadAdFromBid(null);
        arrayList.add(cVar.m35380a());
        adViewApi.setAdListener(null);
        arrayList3.add(cVar.m35380a());
        adViewApi.buildLoadAdConfig();
        arrayList5.add(cVar.m35380a());
        ((AdView.AdViewLoadConfigBuilder) cVar.m35378a(AdView.AdViewLoadConfigBuilder.class)).withAdListener(null);
        arrayList4.add(cVar.m35380a());
        NativeAdBase.NativeAdLoadConfigBuilder nativeAdLoadConfigBuilder = (NativeAdBase.NativeAdLoadConfigBuilder) cVar.m35378a(NativeAdBase.NativeAdLoadConfigBuilder.class);
        nativeAdLoadConfigBuilder.withAdListener(null);
        arrayList4.add(cVar.m35380a());
        ((InterstitialAd.InterstitialAdLoadConfigBuilder) cVar.m35378a(InterstitialAd.InterstitialAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList4.add(cVar.m35380a());
        ((RewardedVideoAd.RewardedVideoAdLoadConfigBuilder) cVar.m35378a(RewardedVideoAd.RewardedVideoAdLoadConfigBuilder.class)).withAdListener(null);
        arrayList4.add(cVar.m35380a());
        ((InstreamVideoAdView.InstreamVideoLoadConfigBuilder) cVar.m35378a(InstreamVideoAdView.InstreamVideoLoadConfigBuilder.class)).withAdListener(null);
        arrayList4.add(cVar.m35380a());
        nativeAdLoadConfigBuilder.loadAd();
        return (DynamicLoader) Proxy.newProxyInstance(DynamicLoaderFallback.class.getClassLoader(), new Class[]{DynamicLoader.class}, new C2248a(arrayList3, arrayList, hashMap, arrayList2, cVar.m35380a(), hashMap2, arrayList4, arrayList5, arrayList6, a, a2));
    }

    public static boolean reportError(@Nullable Object obj, Map<Object, AbstractC2237Ad> map) {
        if (obj == null) {
            return false;
        }
        AdListener adListener = sApiProxyToAdListenersMap.get(obj);
        AbstractC2237Ad ad = map.get(obj);
        if (adListener == null) {
            return false;
        }
        new Handler(Looper.getMainLooper()).postDelayed(new RunnableC2249b(adListener, ad), 500L);
        return true;
    }
}
