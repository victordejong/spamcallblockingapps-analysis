package com.tmobile.services.nameid.api;

import android.content.Context;
import android.content.Intent;
import com.chuckerteam.chucker.api.ChuckerInterceptor;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.model.FeatureState;
import com.tmobile.services.nameid.model.LicenseResponse;
import com.tmobile.services.nameid.model.LicenseResponseItem;
import com.tmobile.services.nameid.model.MetroBlockListPullObject;
import com.tmobile.services.nameid.model.MetroBlockListPullRes;
import com.tmobile.services.nameid.model.MetroLicenseCheckObject;
import com.tmobile.services.nameid.model.MetroProcessResponse;
import com.tmobile.services.nameid.model.MetroSubscribeObject;
import com.tmobile.services.nameid.utility.BuildUtils;
import com.tmobile.services.nameid.utility.DateUtils;
import com.tmobile.services.nameid.utility.DeviceInfoUtils;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.FoRegistrationHelper;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.MetroDowngradeService;
import com.tmobile.services.nameid.utility.MetroLicenseHelper;
import com.tmobile.services.nameid.utility.MigrationHelper;
import com.tmobile.services.nameid.utility.PendingStateHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.SubscriptionUpgradeReceiver;
import com.tmobile.services.nameid.utility.SubscriptionUpgradeService;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.android.schedulers.AndroidSchedulers;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.schedulers.Schedulers;
import io.realm.Realm;
import io.realm.RealmQuery;
import java.util.Date;
import java.util.LinkedList;
import java.util.concurrent.Callable;
import javax.annotation.Nullable;
import okhttp3.OkHttpClient;
import okhttp3.logging.HttpLoggingInterceptor;
import retrofit2.HttpException;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.adapter.rxjava2.RxJava2CallAdapterFactory;
import retrofit2.converter.gson.GsonConverterFactory;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/api/MetroApiWrapper.class */
public class MetroApiWrapper {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: A */
    public static /* synthetic */ void m6746A(LicenseResponseItem licenseResponseItem, Realm realm) {
        RealmQuery Q0 = realm.m3053Q0(LicenseResponseItem.class);
        Q0.m2905R("token", licenseResponseItem.getToken());
        Q0.m2918E().m3099d();
        realm.m3056N0(licenseResponseItem);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public static /* synthetic */ void m6745B(Context context, MetroProcessResponse metroProcessResponse) throws Exception {
        LogUtil.m5643d("MetroApiWrapper#setAccountStatusMetro", "Successfully changed subscription");
        if (metroProcessResponse.isSuccess()) {
            EventManager.m5725a(context, "Subscription_Flow_Completed");
            EventManager.m5725a(context, "Subscription_Successful");
            PreferenceUtils.m5383n("PREF_METRO_STATE_PENDING", "active");
            PreferenceUtils.m5383n("PREF_METRO_SOC_PENDING", "nameid");
            m6731d(context, SubscriptionHelper.State.PREMIUM, true, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: D */
    public static /* synthetic */ void m6743D(Context context, MetroProcessResponse metroProcessResponse) throws Exception {
        if (metroProcessResponse.isSuccess()) {
            LogUtil.m5632o("MetroApiWrapper##setAccountStatusMetro", "unsubscribe success");
            MainApplication.m7555A("CNAMMPCS_CANCELED", null);
            m6736K(context);
            return;
        }
        LogUtil.m5632o("MetroApiWrapper##setAccountStatusMetro", "unsubscribe unsuccessful");
    }

    /* renamed from: G */
    public static void m6740G(Context context, Consumer<MetroBlockListPullRes> consumer, @Nullable Consumer<Throwable> consumer2) {
        LogUtil.m5643d("MetroApiWrapper#pullBlockListForMigrate", " pulling block list for migration");
        MetroBlockListPullObject create = MetroBlockListPullObject.create(context, PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"), DeviceInfoUtils.m5762b(context));
        if (BuildUtils.m5848f()) {
            Observable.defer(new Callable<ObservableSource<MetroBlockListPullRes>>() { // from class: com.tmobile.services.nameid.api.MetroApiWrapper.4
                /* renamed from: a */
                public ObservableSource<MetroBlockListPullRes> call() throws Exception {
                    MetroBlockListPullRes metroBlockListPullRes = new MetroBlockListPullRes();
                    metroBlockListPullRes.setCnt(2);
                    LinkedList linkedList = new LinkedList();
                    linkedList.add("15015551234");
                    linkedList.add("15015551235");
                    metroBlockListPullRes.setBl(linkedList);
                    return Observable.just(metroBlockListPullRes);
                }
            }).subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).share().subscribe(consumer);
            return;
        }
        Observable<MetroBlockListPullRes> share = ((MetroApi) m6728g(context, "services").create(MetroApi.class)).m6750a(create).subscribeOn(Schedulers.m3239b()).share();
        share.subscribe(consumer, C1769r1.f13416f);
        share.subscribe(C1774s1.f13421f, C1704e1.f13292f);
    }

    /* renamed from: H */
    static void m6739H(final LicenseResponseItem licenseResponseItem) {
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.i1
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    MetroApiWrapper.m6746A(LicenseResponseItem.this, realm);
                }
            });
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("MetroApiWrapper#", "Error updating LicenseResponseItem:", e);
        }
    }

    /* renamed from: I */
    public static void m6738I(Consumer<MetroProcessResponse> consumer, Consumer<Throwable> consumer2, String str, String str2, String str3, final Context context) {
        Observable<MetroProcessResponse> observable;
        MetroSubscribeObject create = MetroSubscribeObject.create(context, PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"), DeviceInfoUtils.m5762b(context), str, str2, str3);
        LogUtil.m5643d("MetroApiWrapper#setAccountStatusMetro", "Request Object = " + create.toString());
        if (!str2.equals("cancel")) {
            EventManager.m5725a(context, "Subscription_Flow_Started");
        }
        if (BuildUtils.m5848f()) {
            Observable<MetroProcessResponse> share = Observable.defer(new Callable<ObservableSource<MetroProcessResponse>>() { // from class: com.tmobile.services.nameid.api.MetroApiWrapper.1
                /* renamed from: a */
                public ObservableSource<MetroProcessResponse> call() throws Exception {
                    MetroProcessResponse metroProcessResponse = new MetroProcessResponse();
                    metroProcessResponse.setSuccess(true);
                    metroProcessResponse.setError("");
                    return Observable.just(metroProcessResponse);
                }
            }).subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).share();
            share.subscribe(consumer);
            observable = share;
        } else {
            LogUtil.m5643d("MetroApiWrapper#setAccountStatusMetro", " sending request to change account status");
            Observable<MetroProcessResponse> share2 = ((MetroApi) m6728g(context, "license").create(MetroApi.class)).m6748c(create).subscribeOn(Schedulers.m3239b()).share();
            share2.subscribe(consumer, consumer2);
            observable = share2;
        }
        if (!str2.equals("cancel")) {
            observable.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.c1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MetroApiWrapper.m6745B(context, (MetroProcessResponse) obj);
                }
            }, C1788v1.f13442f);
        } else {
            observable.subscribe(new Consumer() { // from class: com.tmobile.services.nameid.api.o1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MetroApiWrapper.m6743D(context, (MetroProcessResponse) obj);
                }
            }, C1709f1.f13299f);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* renamed from: J */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m6737J() {
        /*
            io.realm.Realm r0 = io.realm.Realm.m3064G0()
            r3 = r0
            r0 = r3
            java.lang.Class<com.tmobile.services.nameid.model.LicenseResponseItem> r1 = com.tmobile.services.nameid.model.LicenseResponseItem.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x002f
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x002f
            com.tmobile.services.nameid.model.LicenseResponseItem r0 = (com.tmobile.services.nameid.model.LicenseResponseItem) r0     // Catch: all -> 0x002f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            boolean r0 = r0.isPending()     // Catch: all -> 0x002f
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            r0 = 1
            r5 = r0
            goto L_0x0025
        L_0x0023:
            r0 = 0
            r5 = r0
        L_0x0025:
            r0 = r3
            if (r0 == 0) goto L_0x002d
            r0 = r3
            r0.close()
        L_0x002d:
            r0 = r5
            return r0
        L_0x002f:
            r6 = move-exception
            r0 = r6
            throw r0     // Catch: all -> 0x0032
        L_0x0032:
            r4 = move-exception
            r0 = r3
            if (r0 == 0) goto L_0x0044
            r0 = r3
            r0.close()     // Catch: all -> 0x003e
            goto L_0x0044
        L_0x003e:
            r3 = move-exception
            r0 = r6
            r1 = r3
            r0.addSuppressed(r1)
        L_0x0044:
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.api.MetroApiWrapper.m6737J():boolean");
    }

    /* renamed from: K */
    public static void m6736K(Context context) {
        PreferenceUtils.m5384m("PREF_METRO_UNSUBSCRIBED_AT", System.currentTimeMillis());
        if (!PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
            LogUtil.m5631p("MetroApiWrapper#", "Cannot start service from background");
            return;
        }
        boolean b = MetroDowngradeService.m5537b(context);
        LogUtil.m5643d("MetroApiWrapper#", "Is Metro downgrade service already running? " + b);
        if (!b) {
            context.startService(new Intent(context, MetroDowngradeService.class));
        }
    }

    /* renamed from: L */
    static void m6735L(Context context, SubscriptionHelper.State state) {
        Realm G0 = Realm.m3064G0();
        try {
            final LicenseResponseItem licenseResponseItem = (LicenseResponseItem) G0.m3053Q0(LicenseResponseItem.class).m2916G();
            if (licenseResponseItem != null) {
                LogUtil.m5643d("MetroApiWrapper#startCheckingForNonPendingState", "setting license to pending");
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.api.t1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        LicenseResponseItem.this.setPending(true);
                    }
                });
            }
            if (G0 != null) {
                G0.close();
            }
            if (!PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false)) {
                LogUtil.m5631p("MetroApiWrapper#startCheckingForNonPendingState", "Cannot start service from background");
            } else if (!SubscriptionUpgradeService.m5299b(context)) {
                Intent intent = new Intent(context, SubscriptionUpgradeService.class);
                LogUtil.m5643d("MetroApiWrapper#startCheckingForNonPendingState", "desired subscription intent extra: " + state.name());
                intent.putExtra("KEY_DESIRED_SUBSCRIPTION_STATE", state);
                context.startService(intent);
            }
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                }
                throw th2;
            }
        }
    }

    /* renamed from: a */
    public static void m6734a(Consumer<MetroProcessResponse> consumer, Consumer<Throwable> consumer2, String str, String str2, Context context) {
        MetroSubscribeObject create = MetroSubscribeObject.create(context, PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"), DeviceInfoUtils.m5762b(context), "", str, str2);
        LogUtil.m5643d("MetroApiWrapper#setAccountStatusMetro", "Request Object = " + create.toString());
        if (!str.equals("cancel")) {
            EventManager.m5725a(context, "Subscription_Flow_Started");
        }
        if (BuildUtils.m5848f()) {
            Observable.defer(new Callable<ObservableSource<MetroProcessResponse>>() { // from class: com.tmobile.services.nameid.api.MetroApiWrapper.2
                /* renamed from: a */
                public ObservableSource<MetroProcessResponse> call() throws Exception {
                    MetroProcessResponse metroProcessResponse = new MetroProcessResponse();
                    metroProcessResponse.setSuccess(true);
                    metroProcessResponse.setError("");
                    return Observable.just(metroProcessResponse);
                }
            }).subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c()).share().subscribe(consumer);
            return;
        }
        LogUtil.m5643d("MetroApiWrapper#setAccountStatusMetro", " sending request to change account status");
        ((MetroApi) m6728g(context, "license").create(MetroApi.class)).m6748c(create).subscribeOn(Schedulers.m3239b()).share().subscribe(consumer, consumer2);
    }

    /* renamed from: b */
    public static void m6733b(Context context) {
        SubscriptionHelper.State C = SubscriptionHelper.m5331C();
        if (C == SubscriptionHelper.State.NONE) {
            LogUtil.m5643d("MetroApiWrapper#restartSubscriptionChecks", "attempted to check subscription but state is NONE");
            return;
        }
        try {
            Realm G0 = Realm.m3064G0();
            LicenseResponseItem licenseResponseItem = (LicenseResponseItem) G0.m3053Q0(LicenseResponseItem.class).m2916G();
            if (licenseResponseItem != null && !DateUtils.m5788g(licenseResponseItem.getLastUpdated())) {
                m6732c(context, C, licenseResponseItem.isPending());
                if (G0 != null) {
                    G0.close();
                    return;
                }
                return;
            }
            if (G0 != null) {
                G0.close();
            }
        } catch (Exception e) {
            LogUtil.m5641f("MetroApiWrapper#", "Error checking LicenseResponseItem:", e);
        }
    }

    /* renamed from: c */
    public static void m6732c(Context context, SubscriptionHelper.State state, boolean z) {
        m6731d(context, state, z, true);
    }

    /* renamed from: d */
    public static void m6731d(final Context context, final SubscriptionHelper.State state, final boolean z, final boolean z2) {
        ApiWrapper.m6760q(new Consumer() { // from class: com.tmobile.services.nameid.api.l1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MetroApiWrapper.m6724k(r4, state, context, z, z2, (FeatureState) obj);
            }
        }, new Consumer() { // from class: com.tmobile.services.nameid.api.n1
            @Override // io.reactivex.functions.Consumer
            public final void accept(Object obj) {
                MetroApiWrapper.m6723l(r4, z2, context, state, (Throwable) obj);
            }
        });
    }

    /* renamed from: e */
    public static void m6730e(@Nullable Consumer<LicenseResponseItem> consumer, @Nullable Consumer<Throwable> consumer2, final boolean z) {
        final Context l = MainApplication.m7528l();
        if (l != null) {
            if (BuildUtils.m5848f()) {
                Observable observeOn = Observable.defer(new Callable<ObservableSource<LicenseResponseItem>>() { // from class: com.tmobile.services.nameid.api.MetroApiWrapper.3
                    /* renamed from: a */
                    public ObservableSource<LicenseResponseItem> call() throws Exception {
                        LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
                        licenseResponseItem.setToken("5c403ff0-7879-11e7-b218-121e8a0f1fa0");
                        licenseResponseItem.setTokenTtl(604800);
                        licenseResponseItem.setLicenseState("active");
                        licenseResponseItem.setLicenseTrialEnd(new Date(System.currentTimeMillis() + 172800000));
                        licenseResponseItem.setLicenseExpireDate(new Date(System.currentTimeMillis() + 86400000));
                        licenseResponseItem.setLicenseFeatures("19");
                        licenseResponseItem.setBillingSoc("BLK");
                        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
                        licenseResponseItem.setAdsAvailable(false);
                        licenseResponseItem.setPendingCheckError(false);
                        licenseResponseItem.setPending(MetroApiWrapper.m6737J());
                        boolean i = MetroApiWrapper.m6726i();
                        if (i) {
                            licenseResponseItem.setPending(true);
                        }
                        MetroLicenseHelper.m5532d(licenseResponseItem);
                        if (!PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING").equals("")) {
                            LogUtil.m5643d("MetroApiWrapper#doLicenseCheckSync", "overriding state and soc with 'active' 'PREMIUM'");
                            licenseResponseItem.setLicenseState(PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING"));
                            licenseResponseItem.setBillingSoc(PreferenceUtils.m5390g("PREF_METRO_SOC_PENDING"));
                        }
                        if (MetroApiWrapper.m6725j()) {
                            licenseResponseItem.setLicenseState("inactive");
                            licenseResponseItem.setBillingSoc(null);
                        }
                        LicenseResponseItem copy = licenseResponseItem.copy();
                        MetroApiWrapper.m6739H(licenseResponseItem);
                        if (i) {
                            new TmoSubscriptionCheck().m6587k(l, SubscriptionHelper.m5331C());
                        } else if (z) {
                            MetroApiWrapper.m6733b(l);
                        }
                        return Observable.just(copy);
                    }
                }).subscribeOn(Schedulers.m3239b()).observeOn(AndroidSchedulers.m4448c());
                if (consumer != null) {
                    observeOn.subscribe(consumer);
                } else {
                    observeOn.subscribe(C1784u1.f13434f);
                }
            } else {
                Observable retry = ((MetroApi) m6728g(l, "license").create(MetroApi.class)).m6747d(MetroLicenseCheckObject.create(l, PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"), DeviceInfoUtils.m5762b(l))).observeOn(AndroidSchedulers.m4448c()).subscribeOn(Schedulers.m3239b()).map(new Function() { // from class: com.tmobile.services.nameid.api.m1
                    @Override // io.reactivex.functions.Function
                    public final Object apply(Object obj) {
                        return MetroApiWrapper.m6721n(l, z, (LicenseResponse) obj);
                    }
                }).share().retry(2L);
                if (consumer != null && consumer2 != null) {
                    retry.subscribe(consumer, consumer2);
                } else if (consumer != null) {
                    retry.subscribe(consumer, C1689b1.f13268f);
                } else {
                    retry.subscribe(C1699d1.f13285f, C1759p1.f13398f);
                }
                retry.subscribe(C1719h1.f13319f, new Consumer() { // from class: com.tmobile.services.nameid.api.k1
                    @Override // io.reactivex.functions.Consumer
                    public final void accept(Object obj) {
                        MetroApiWrapper.m6716s(l, (Throwable) obj);
                    }
                });
            }
        }
    }

    @Nullable
    /* renamed from: f */
    public static LicenseResponseItem m6729f() {
        Context l = MainApplication.m7528l();
        if (l == null) {
            return null;
        }
        if (BuildUtils.m5848f()) {
            LicenseResponse licenseResponse = new LicenseResponse();
            licenseResponse.setLicTrialEnd(new Date(System.currentTimeMillis() + 604800000));
            licenseResponse.setLicExpireDate(new Date(System.currentTimeMillis() + 86400000));
            licenseResponse.setAdsAvailable(Boolean.FALSE);
            licenseResponse.setBillingSoc("BLK");
            licenseResponse.setToken("22222222222");
            licenseResponse.setLicState(LicenseResponse.LicenseState.ACTIVE);
            LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
            licenseResponseItem.setToken("123456");
            licenseResponseItem.setTokenTtl(123);
            licenseResponseItem.setLicenseState(licenseResponse.getLicState().getDisplayName());
            licenseResponseItem.setLicenseTrialEnd(licenseResponse.getLicTrialEnd());
            licenseResponseItem.setLicenseExpireDate(licenseResponse.getLicExpireDate());
            licenseResponseItem.setLicenseFeatures("123");
            licenseResponseItem.setBillingSoc(licenseResponse.getBillingSoc());
            licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
            licenseResponseItem.setAdsAvailable(false);
            licenseResponseItem.setPendingCheckError(false);
            licenseResponseItem.setPending(m6737J());
            boolean i = m6726i();
            if (i) {
                licenseResponseItem.setPending(true);
            }
            MetroLicenseHelper.m5532d(licenseResponseItem);
            if (!PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING").equals("")) {
                LogUtil.m5643d("MetroApiWrapper#doLicenseCheckSync", "overriding state and soc with 'active' 'PREMIUM'");
                licenseResponseItem.setLicenseState(PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING"));
                licenseResponseItem.setBillingSoc(PreferenceUtils.m5390g("PREF_METRO_SOC_PENDING"));
            }
            if (m6725j()) {
                LogUtil.m5643d("MetroApiWrapper#doLicenseCheckSync", "Just unsubscribed, ignoring retrieved license");
                licenseResponseItem.setLicenseState("inactive");
                licenseResponseItem.setBillingSoc(null);
            }
            LicenseResponseItem copy = licenseResponseItem.copy();
            m6739H(licenseResponseItem);
            if (i) {
                new TmoSubscriptionCheck().m6587k(l, SubscriptionHelper.m5331C());
            }
            return copy;
        }
        MetroLicenseCheckObject create = MetroLicenseCheckObject.create(l, PreferenceUtils.m5390g("PREF_PSTAR_USER_TOKEN"), DeviceInfoUtils.m5762b(l));
        try {
            Retrofit g = m6728g(l, "license");
            if (g == null) {
                return null;
            }
            Response<LicenseResponse> execute = ((MetroApi) g.create(MetroApi.class)).m6749b(create).execute();
            LicenseResponseItem licenseResponseItem2 = new LicenseResponseItem();
            licenseResponseItem2.setToken(execute.body().getToken());
            licenseResponseItem2.setTokenTtl(execute.body().getTokenTtl());
            licenseResponseItem2.setLicenseState(execute.body().getLicState().getDisplayName());
            licenseResponseItem2.setLicenseTrialEnd(execute.body().getLicTrialEnd());
            licenseResponseItem2.setLicenseExpireDate(execute.body().getLicExpireDate());
            licenseResponseItem2.setLicenseFeatures(execute.body().getLicFeatures());
            licenseResponseItem2.setBillingSoc(execute.body().getBillingSoc());
            licenseResponseItem2.setLastUpdated(new Date(System.currentTimeMillis()));
            licenseResponseItem2.setAdsAvailable(execute.body().getAdsAvailable().booleanValue());
            licenseResponseItem2.setPendingCheckError(false);
            licenseResponseItem2.setPending(m6737J());
            boolean i2 = m6726i();
            if (i2) {
                licenseResponseItem2.setPending(true);
            }
            MetroLicenseHelper.m5532d(licenseResponseItem2);
            LicenseResponseItem copy2 = licenseResponseItem2.copy();
            if (BuildUtils.m5850d() && SubscriptionHelper.m5315m(SubscriptionHelper.m5325c()) && !SubscriptionHelper.m5315m(SubscriptionHelper.m5326b(copy2))) {
                EventManager.m5725a(l, "License_Active_To_Expired");
            }
            if (!PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING").equals("")) {
                LogUtil.m5643d("MetroApiWrapper#doLicenseCheckSync", "overriding state and soc with 'active' 'PREMIUM'");
                licenseResponseItem2.setLicenseState(PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING"));
                licenseResponseItem2.setBillingSoc(PreferenceUtils.m5390g("PREF_METRO_SOC_PENDING"));
            }
            if (m6725j()) {
                LogUtil.m5643d("MetroApiWrapper#doLicenseCheckSync", "Just unsubscribed, ignoring retrieved license");
                licenseResponseItem2.setLicenseState("inactive");
                licenseResponseItem2.setBillingSoc(null);
            }
            m6739H(licenseResponseItem2);
            if (i2) {
                new TmoSubscriptionCheck().m6587k(l, SubscriptionHelper.m5331C());
            }
            ApiUtils.m6841p0();
            if ("trial".equalsIgnoreCase(licenseResponseItem2.getLicenseState())) {
                PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 1);
            } else if ("active".equalsIgnoreCase(licenseResponseItem2.getLicenseState())) {
                PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 2);
            }
            return copy2;
        } catch (Exception e) {
            LogUtil.m5641f("MetroApiWrapper#", "", e);
            return null;
        }
    }

    /* renamed from: g */
    static Retrofit m6728g(Context context, String str) {
        HttpLoggingInterceptor httpLoggingInterceptor = new HttpLoggingInterceptor(C1764q1.f13410a);
        httpLoggingInterceptor.setLevel(HttpLoggingInterceptor.Level.BODY);
        return new Retrofit.Builder().baseUrl("license".equals(str) ? BuildUtils.m5847g() ? "https://license.fosrvt.com" : "https://tst-license.fosrvt.com" : "services".equals(str) ? BuildUtils.m5847g() ? "https://services.fosrvt.com/" : "https://tst-services.fosrvt.com" : "").addConverterFactory(GsonConverterFactory.create()).client(new OkHttpClient.Builder().addInterceptor(new ChuckerInterceptor(context)).addInterceptor(httpLoggingInterceptor).build()).addCallAdapterFactory(RxJava2CallAdapterFactory.create()).build();
    }

    /* renamed from: h */
    public static boolean m6727h(@Nullable LicenseResponseItem licenseResponseItem, SubscriptionHelper.State state) {
        if (licenseResponseItem == null) {
            return false;
        }
        if (!state.equals(SubscriptionHelper.State.TRIAL) || licenseResponseItem.getLicenseState() == null) {
            if (!state.equals(SubscriptionHelper.State.PREMIUM) || licenseResponseItem.getLicenseState() == null) {
                if (!state.equals(SubscriptionHelper.State.REDUCED_METRO) || licenseResponseItem.getLicenseState() == null) {
                    if (state.equals(SubscriptionHelper.State.NONE) && licenseResponseItem.getLicenseState() != null && "inactive".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
                        LogUtil.m5643d("MetroApiWrapper#isLicenseStateUpdated", "License check matches Inactive");
                        return true;
                    }
                } else if ("active".equalsIgnoreCase(licenseResponseItem.getLicenseState()) && licenseResponseItem.getBillingSoc() != null && "BLK".equalsIgnoreCase(licenseResponseItem.getBillingSoc())) {
                    LogUtil.m5643d("MetroApiWrapper#isLicenseStateUpdated", "License check matches BLK (Reduced Metro)");
                    return true;
                }
            } else if ("active".equalsIgnoreCase(licenseResponseItem.getLicenseState()) && licenseResponseItem.getBillingSoc() != null && ("BLK2".equalsIgnoreCase(licenseResponseItem.getBillingSoc()) || "nameid".equalsIgnoreCase(licenseResponseItem.getBillingSoc()) || "CMGR".equalsIgnoreCase(licenseResponseItem.getBillingSoc()))) {
                LogUtil.m5643d("MetroApiWrapper#isLicenseStateUpdated", "License check matches BLK2 (Metro Premium)");
                return true;
            }
        } else if ("trial".equalsIgnoreCase(licenseResponseItem.getLicenseState()) || "temp".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
            LogUtil.m5643d("MetroApiWrapper#isLicenseStateUpdated", "License check matches Trial (Metro Trial)");
            return true;
        }
        LogUtil.m5643d("MetroApiWrapper#isLicenseStateUpdated", "License state does not match " + state.name());
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static boolean m6726i() {
        /*
            io.realm.Realm r0 = io.realm.Realm.m3064G0()
            r3 = r0
            r0 = r3
            java.lang.Class<com.tmobile.services.nameid.model.LicenseResponseItem> r1 = com.tmobile.services.nameid.model.LicenseResponseItem.class
            io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x002f
            java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x002f
            com.tmobile.services.nameid.model.LicenseResponseItem r0 = (com.tmobile.services.nameid.model.LicenseResponseItem) r0     // Catch: all -> 0x002f
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0023
            r0 = r4
            boolean r0 = r0.isPendingCheckError()     // Catch: all -> 0x002f
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0023
            r0 = 1
            r5 = r0
            goto L_0x0025
        L_0x0023:
            r0 = 0
            r5 = r0
        L_0x0025:
            r0 = r3
            if (r0 == 0) goto L_0x002d
            r0 = r3
            r0.close()
        L_0x002d:
            r0 = r5
            return r0
        L_0x002f:
            r4 = move-exception
            r0 = r4
            throw r0     // Catch: all -> 0x0032
        L_0x0032:
            r6 = move-exception
            r0 = r3
            if (r0 == 0) goto L_0x0044
            r0 = r3
            r0.close()     // Catch: all -> 0x003e
            goto L_0x0044
        L_0x003e:
            r3 = move-exception
            r0 = r4
            r1 = r3
            r0.addSuppressed(r1)
        L_0x0044:
            r0 = r6
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.api.MetroApiWrapper.m6726i():boolean");
    }

    /* renamed from: j */
    public static boolean m6725j() {
        long j = 1860;
        long d = PreferenceUtils.m5393d("PREF_METRO_UNSUBSCRIBED_AT");
        if (d == 0 || System.currentTimeMillis() - d >= j * 1000) {
            PreferenceUtils.m5384m("PREF_METRO_UNSUBSCRIBED_AT", 0L);
            return false;
        }
        LogUtil.m5643d("MetroApiWrapper#justUnsubscribed", "User unsubscribed recently. Overwriting license with expected expired license");
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static /* synthetic */ void m6724k(final String str, final SubscriptionHelper.State state, final Context context, boolean z, final boolean z2, final FeatureState featureState) throws Exception {
        LogUtil.m5632o("MetroApiWrapper#" + str, "got feature state");
        if (!ApiUtils.m6894E(featureState, state)) {
            LogUtil.m5632o("MetroApiWrapper#" + str, "/featurestate does not match Subscription. Starting check service.");
            m6735L(context, state);
        } else if (z) {
            m6730e(new Consumer() { // from class: com.tmobile.services.nameid.api.g1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MetroApiWrapper.m6713v(SubscriptionHelper.State.this, str, context, featureState, (LicenseResponseItem) obj);
                }
            }, new Consumer() { // from class: com.tmobile.services.nameid.api.j1
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    MetroApiWrapper.m6712w(str, z2, context, state, (Throwable) obj);
                }
            }, false);
        }
        LogUtil.m5643d("MetroApiWrapper#restartSubscriptionChecks", "checking if we can do a migration");
        if (MigrationHelper.m5531a()) {
            LogUtil.m5643d("MetroApiWrapper#restartSubscriptionChecks", "Can do migration, attempting migration now.");
            MigrationHelper.m5517o(MainApplication.m7527m(), PreferenceUtils.m5395b("PREF_IS_APP_RESUMED", false));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ void m6723l(String str, boolean z, Context context, SubscriptionHelper.State state, Throwable th) throws Exception {
        LogUtil.m5641f("MetroApiWrapper#" + str, "Error occurred getting /featurestate. Starting check service.", th);
        if (!z) {
            m6735L(context, state);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static /* synthetic */ LicenseResponseItem m6721n(Context context, boolean z, LicenseResponse licenseResponse) throws Exception {
        LicenseResponseItem licenseResponseItem = new LicenseResponseItem();
        licenseResponseItem.setToken(licenseResponse.getToken());
        licenseResponseItem.setTokenTtl(licenseResponse.getTokenTtl());
        licenseResponseItem.setLicenseState(licenseResponse.getLicState().getDisplayName());
        licenseResponseItem.setLicenseTrialEnd(licenseResponse.getLicTrialEnd());
        licenseResponseItem.setLicenseExpireDate(licenseResponse.getLicExpireDate());
        licenseResponseItem.setLicenseFeatures(licenseResponse.getLicFeatures());
        licenseResponseItem.setBillingSoc(licenseResponse.getBillingSoc());
        licenseResponseItem.setLastUpdated(new Date(System.currentTimeMillis()));
        licenseResponseItem.setAdsAvailable(licenseResponse.getAdsAvailable().booleanValue());
        licenseResponseItem.setPendingCheckError(false);
        licenseResponseItem.setPending(m6737J());
        boolean i = m6726i();
        if (i) {
            licenseResponseItem.setPending(true);
        }
        MetroLicenseHelper.m5532d(licenseResponseItem);
        LicenseResponseItem copy = licenseResponseItem.copy();
        if (BuildUtils.m5850d() && SubscriptionHelper.m5315m(SubscriptionHelper.m5325c()) && !SubscriptionHelper.m5315m(SubscriptionHelper.m5326b(copy))) {
            EventManager.m5725a(context, "License_Active_To_Expired");
            if (SubscriptionHelper.m5325c() == SubscriptionHelper.State.TRIAL) {
                MainApplication.m7555A("cnammpcs-free_expired", null);
            }
        }
        if (!PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING").equals("")) {
            LogUtil.m5643d("MetroApiWrapper#doLicenseCheckSync", "overriding state and soc with 'active' 'PREMIUM'");
            licenseResponseItem.setLicenseState(PreferenceUtils.m5390g("PREF_METRO_STATE_PENDING"));
            licenseResponseItem.setBillingSoc(PreferenceUtils.m5390g("PREF_METRO_SOC_PENDING"));
        }
        if (m6725j()) {
            licenseResponseItem.setLicenseState("inactive");
            licenseResponseItem.setBillingSoc(null);
        }
        m6739H(licenseResponseItem);
        if (i) {
            new TmoSubscriptionCheck().m6587k(context, SubscriptionHelper.m5331C());
        } else if (z) {
            m6733b(context);
        }
        if ("trial".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 1);
        } else if ("active".equalsIgnoreCase(licenseResponseItem.getLicenseState())) {
            PreferenceUtils.m5385l("PREF_LAST_ACCOUNT_TYPE", 2);
        }
        ApiUtils.m6841p0();
        return copy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static /* synthetic */ void m6717r(LicenseResponseItem licenseResponseItem) throws Exception {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static /* synthetic */ void m6716s(Context context, Throwable th) throws Exception {
        int code;
        if ((th instanceof HttpException) && (code = ((HttpException) th).code()) >= 400 && code < 500) {
            LogUtil.m5643d("MetroApiWrapper#doLicenseCheckMetro", "Got error code: " + code);
            LogUtil.m5643d("MetroApiWrapper#doLicenseCheckMetro", "Registering with FO backend - License Check resulted in HTTP error code");
            FoRegistrationHelper.m5693m(context);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static /* synthetic */ void m6714u(Realm realm) {
        LicenseResponseItem licenseResponseItem = (LicenseResponseItem) realm.m3053Q0(LicenseResponseItem.class).m2916G();
        if (licenseResponseItem != null) {
            licenseResponseItem.setPending(false);
            licenseResponseItem.setPendingCheckError(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public static /* synthetic */ void m6713v(SubscriptionHelper.State state, String str, Context context, FeatureState featureState, LicenseResponseItem licenseResponseItem) throws Exception {
        if (!m6727h(licenseResponseItem, state)) {
            LogUtil.m5632o("MetroApiWrapper#" + str, "/featurestate does not match Subscription. Starting check service.");
            m6735L(context, state);
            return;
        }
        try {
            Realm G0 = Realm.m3064G0();
            G0.m3067D0(C1792w1.f13448a);
            if (G0 != null) {
                G0.close();
            }
            ApiUtils.m6841p0();
            PendingStateHelper.m5429a();
            MainApplication.m7555A(featureState.getActualNapFeatures(), licenseResponseItem.getLicenseTrialEnd());
            SubscriptionUpgradeReceiver.m5301a(context);
            PreferenceUtils.m5383n("PREF_METRO_STATE_PENDING", "");
            PreferenceUtils.m5383n("PREF_METRO_SOC_PENDING", "");
        } catch (Exception e) {
            LogUtil.m5641f("MetroApiWrapper#", "Error updating LicenseResponseItem:", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public static /* synthetic */ void m6712w(String str, boolean z, Context context, SubscriptionHelper.State state, Throwable th) throws Exception {
        LogUtil.m5641f("MetroApiWrapper#" + str, "Error occurred retrieving license check", th);
        if (!z) {
            m6735L(context, state);
        }
    }
}
