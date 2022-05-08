package com.privacystar.core.p011ui.detail_view.af_settings;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Bundle;
import android.support.design.widget.CoordinatorLayout;
import android.support.p001v4.app.FragmentManager;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.BlockHistoryFields;
import com.privacystar.core.data.model.LogItemFields;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.providers.custom.whitelabel.WLHelper;
import com.privacystar.core.p011ui.AttachSubscriptionObserver;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailActivityManagerImpl;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.about.InfoItemRepository;
import com.privacystar.core.p011ui.detail_view.af_about.AFAboutFragment;
import com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcomeDialogFragment;
import com.privacystar.core.p011ui.widgets.CategoryToggleView;
import com.privacystar.core.p011ui.widgets.ICategoryToggleView;
import com.privacystar.core.p011ui.widgets.dialog.rating.RatingDialogFragment;
import com.privacystar.core.service.googleplay.p010v3.BillingHelper;
import com.privacystar.core.service.googleplay.p010v3.IABV3Helper;
import com.privacystar.core.util.Device;
import com.privacystar.core.util.SystemUtil;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
import zendesk.commonui.UiConfig;
import zendesk.support.CustomField;
import zendesk.support.guide.HelpCenterActivity;
import zendesk.support.request.RequestActivity;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0014\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003J\u0010\u0010)\u001a\n +*\u0004\u0018\u00010*0*H\u0002J\b\u0010,\u001a\u00020*H\u0002J\b\u0010-\u001a\u00020.H\u0016J\b\u0010/\u001a\u00020*H\u0002J\b\u00100\u001a\u00020*H\u0002J\b\u00101\u001a\u000202H\u0014J\b\u00103\u001a\u000204H\u0002J\u0010\u00105\u001a\n +*\u0004\u0018\u00010*0*H\u0002J\b\u00106\u001a\u00020*H\u0002J\b\u00107\u001a\u00020\u0001H\u0016J\u0012\u00108\u001a\u00020.2\b\u00109\u001a\u0004\u0018\u00010:H\u0016J&\u0010;\u001a\u0004\u0018\u00010<2\u0006\u0010=\u001a\u00020>2\b\u0010?\u001a\u0004\u0018\u00010@2\b\u00109\u001a\u0004\u0018\u00010:H\u0016J\b\u0010A\u001a\u00020.H\u0016J\b\u0010B\u001a\u00020.H\u0016J\u001a\u0010C\u001a\u00020.2\u0006\u0010D\u001a\u00020<2\b\u00109\u001a\u0004\u0018\u00010:H\u0016J\b\u0010E\u001a\u00020*H\u0002J\b\u0010F\u001a\u00020*H\u0002J\b\u0010G\u001a\u00020.H\u0016J\u0010\u0010H\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010K\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\b\u0010L\u001a\u00020.H\u0016J\u0018\u0010M\u001a\u00020.2\u0006\u0010N\u001a\u00020*2\u0006\u0010O\u001a\u00020*H\u0016J\u0010\u0010P\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010Q\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010R\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010S\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010T\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\u0010\u0010U\u001a\u00020.2\u0006\u0010I\u001a\u00020JH\u0016J\b\u0010V\u001a\u00020.H\u0016J\b\u0010W\u001a\u00020.H\u0016J\u0018\u0010X\u001a\u00020.2\u0006\u0010Y\u001a\u00020*2\u0006\u0010Z\u001a\u00020*H\u0016J\b\u0010[\u001a\u00020.H\u0016J\b\u0010\\\u001a\u00020.H\u0016J\b\u0010]\u001a\u00020*H\u0002R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u0011\u0010\u0013\u001a\u00020\u0014¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016R\u001a\u0010\u0017\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\u0007\"\u0004\b\u0019\u0010\tR\u001c\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b!\u0010\u0007\"\u0004\b\"\u0010\tR\u001a\u0010#\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b$\u0010\u0007\"\u0004\b%\u0010\tR\u001a\u0010&\u001a\u00020\u0005X\u0086.¢\u0006\u000e\n��\u001a\u0004\b'\u0010\u0007\"\u0004\b(\u0010\t¨\u0006^"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsContract$View;", "()V", "accountServicesContainer", "Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "getAccountServicesContainer", "()Lcom/privacystar/core/ui/widgets/CategoryToggleView;", "setAccountServicesContainer", "(Lcom/privacystar/core/ui/widgets/CategoryToggleView;)V", "charityContainer", "getCharityContainer", "setCharityContainer", "nuisanceContainer", "getNuisanceContainer", "setNuisanceContainer", "politicalContainer", "getPoliticalContainer", "setPoliticalContainer", "presenter", "Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/detail_view/af_settings/AFSettingsPresenter;", "prisonContainer", "getPrisonContainer", "setPrisonContainer", "rateDialog", "Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment;", "getRateDialog", "()Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment;", "setRateDialog", "(Lcom/privacystar/core/ui/widgets/dialog/rating/RatingDialogFragment;)V", "scamContainer", "getScamContainer", "setScamContainer", "surveyContainer", "getSurveyContainer", "setSurveyContainer", "telemarketingContainer", "getTelemarketingContainer", "setTelemarketingContainer", "accountStatus", "", "kotlin.jvm.PlatformType", "appVersion", "attemptUpgrade", "", "countryISO", "deviceID", "getLayoutResId", "", "getRequestActivityUIConfig", "Lzendesk/commonui/UiConfig;", "language", "networkType", "newInstance", "onActivityCreated", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onDestroy", "onPause", "onViewCreated", Promotion.ACTION_VIEW, "operatingSystem", "platform", "rateApp", "setAccountServices", "enabled", "", "setCharity", "setClickListeners", "setLastUpdateTime", LogItemFields.DATE, BlockHistoryFields.TIME, "setNuisance", "setPolitical", "setPrison", "setScam", "setSurvey", "setTelemarketing", "setupCategories", "setupToolbar", "shareApp", "subject", "body", "showAbout", "showHelp", "whiteLabelID", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/af_settings/AFSettingsFragment.class */
public final class AFSettingsFragment extends DetailFragment implements AFSettingsContract.View {
    private HashMap _$_findViewCache;
    @NotNull
    public CategoryToggleView accountServicesContainer;
    @NotNull
    public CategoryToggleView charityContainer;
    @NotNull
    public CategoryToggleView nuisanceContainer;
    @NotNull
    public CategoryToggleView politicalContainer;
    @NotNull
    private final AFSettingsPresenter presenter = new AFSettingsPresenter(this);
    @NotNull
    public CategoryToggleView prisonContainer;
    @Nullable
    private RatingDialogFragment rateDialog;
    @NotNull
    public CategoryToggleView scamContainer;
    @NotNull
    public CategoryToggleView surveyContainer;
    @NotNull
    public CategoryToggleView telemarketingContainer;

    private final String accountStatus() {
        Subscription subscription = SubscriptionRealm.getSubscription();
        Intrinsics.checkExpressionValueIsNotNull(subscription, "SubscriptionRealm.getSubscription()");
        return subscription.getSubscriptionText();
    }

    private final String appVersion() {
        InfoItemRepository infoItemRepository = InfoItemRepository.INSTANCE;
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
        return infoItemRepository.getApkVersionInfoItem$app_core(context).getItemDescription();
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0024, code lost:
        if (r4 != null) goto L_0x002d;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String countryISO() {
        /*
            r3 = this;
            r0 = r3
            android.content.Context r0 = r0.getContext()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0013
            r0 = r4
            java.lang.String r1 = "phone"
            java.lang.Object r0 = r0.getSystemService(r1)
            r4 = r0
            goto L_0x0015
        L_0x0013:
            r0 = 0
            r4 = r0
        L_0x0015:
            r0 = r4
            android.telephony.TelephonyManager r0 = (android.telephony.TelephonyManager) r0
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002a
            r0 = r4
            java.lang.String r0 = r0.getSimCountryIso()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x002a
            goto L_0x002d
        L_0x002a:
            java.lang.String r0 = "unknown"
            r4 = r0
        L_0x002d:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsFragment.countryISO():java.lang.String");
    }

    private final String deviceID() {
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        String deviceId = Device.getDeviceId(context);
        Intrinsics.checkExpressionValueIsNotNull(deviceId, "Device.getDeviceId(context!!)");
        return deviceId;
    }

    private final UiConfig getRequestActivityUIConfig() {
        List<CustomField> listOf = CollectionsKt.listOf((Object[]) new CustomField[]{new CustomField(360015419852L, whiteLabelID()), new CustomField(360015419872L, language()), new CustomField(360015419892L, networkType()), new CustomField(360015419912L, countryISO()), new CustomField(360015419932L, deviceID()), new CustomField(360015419952L, operatingSystem()), new CustomField(360015419972L, platform()), new CustomField(360017189891L, appVersion()), new CustomField(360017326212L, accountStatus())});
        Timber.m37d("white label       " + whiteLabelID(), new Object[0]);
        Timber.m37d("language          " + language(), new Object[0]);
        Timber.m37d("network type      " + networkType(), new Object[0]);
        Timber.m37d("country iso       " + countryISO(), new Object[0]);
        Timber.m37d("device id         " + deviceID(), new Object[0]);
        Timber.m37d("OS                " + operatingSystem(), new Object[0]);
        Timber.m37d("platform          " + platform(), new Object[0]);
        Timber.m37d("app version       " + appVersion(), new Object[0]);
        Timber.m37d("account status    " + accountStatus(), new Object[0]);
        UiConfig config = RequestActivity.builder().withRequestSubject("Android Ticket").withTicketForm(360000348952L, listOf).config();
        Intrinsics.checkExpressionValueIsNotNull(config, "RequestActivity.builder(…                .config()");
        return config;
    }

    private final String language() {
        Locale locale = Locale.getDefault();
        Intrinsics.checkExpressionValueIsNotNull(locale, "Locale.getDefault()");
        return locale.getDisplayLanguage();
    }

    private final String networkType() {
        String str;
        Context context = getContext();
        NetworkInfo networkInfo = null;
        NetworkCapabilities networkCapabilities = null;
        ConnectivityManager connectivityManager = (ConnectivityManager) (context != null ? context.getSystemService("connectivity") : null);
        if (Build.VERSION.SDK_INT >= 23) {
            Network activeNetwork = connectivityManager != null ? connectivityManager.getActiveNetwork() : null;
            if (connectivityManager != null) {
                networkCapabilities = connectivityManager.getNetworkCapabilities(activeNetwork);
            }
            str = networkCapabilities != null ? networkCapabilities.hasTransport(1) ? "WI-FI" : networkCapabilities.hasTransport(0) ? "Cellular" : "offline" : "offline";
        } else {
            if (connectivityManager != null) {
                networkInfo = connectivityManager.getActiveNetworkInfo();
            }
            str = networkInfo != null ? networkInfo.getType() == 1 ? "WI-FI" : networkInfo.getType() == 0 ? "Cellular" : "offline" : "offline";
        }
        return str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x009a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final java.lang.String operatingSystem() {
        /*
            r3 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r4 = r0
            r0 = r4
            java.lang.String r1 = android.os.Build.VERSION.RELEASE
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.Class<android.os.Build$VERSION_CODES> r0 = android.os.Build.VERSION_CODES.class
            java.lang.reflect.Field[] r0 = r0.getFields()
            r5 = r0
            r0 = r5
            int r0 = r0.length
            r6 = r0
            r0 = 0
            r7 = r0
        L_0x001d:
            r0 = r7
            r1 = r6
            if (r0 >= r1) goto L_0x00a0
            r0 = r5
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            java.lang.String r1 = "field"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            r0 = r8
            java.lang.String r0 = r0.getName()
            r9 = r0
            java.lang.Object r0 = new java.lang.Object     // Catch: NullPointerException -> 0x004e, IllegalAccessException -> 0x0058, IllegalArgumentException -> 0x0062
            r10 = r0
            r0 = r10
            r0.<init>()     // Catch: NullPointerException -> 0x004e, IllegalAccessException -> 0x0058, IllegalArgumentException -> 0x0062
            r0 = r8
            r1 = r10
            int r0 = r0.getInt(r1)     // Catch: NullPointerException -> 0x004e, IllegalAccessException -> 0x0058, IllegalArgumentException -> 0x0062
            r11 = r0
            goto L_0x006c
        L_0x004e:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
            goto L_0x0069
        L_0x0058:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
            goto L_0x0069
        L_0x0062:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        L_0x0069:
            r0 = -1
            r11 = r0
        L_0x006c:
            r0 = r11
            int r1 = android.os.Build.VERSION.SDK_INT
            if (r0 != r1) goto L_0x009a
            r0 = r4
            java.lang.String r1 = " : "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r1 = " : "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            java.lang.String r1 = "sdk="
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r4
            r1 = r11
            java.lang.StringBuilder r0 = r0.append(r1)
        L_0x009a:
            int r7 = r7 + 1
            goto L_0x001d
        L_0x00a0:
            r0 = r4
            java.lang.String r0 = r0.toString()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "builder.toString()"
            kotlin.jvm.internal.Intrinsics.checkExpressionValueIsNotNull(r0, r1)
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsFragment.operatingSystem():java.lang.String");
    }

    private final String platform() {
        return "Android";
    }

    private final String whiteLabelID() {
        String str;
        if (getContext() != null) {
            WLHelper wLHelper = WLHelper.INSTANCE;
            Context context = getContext();
            if (context == null) {
                Intrinsics.throwNpe();
            }
            Intrinsics.checkExpressionValueIsNotNull(context, "context!!");
            str = wLHelper.getWhiteLabelId(context);
        } else {
            str = "";
        }
        return str;
    }

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void attemptUpgrade() {
        Timber.m37d("Going to paywall", new Object[0]);
        if (DetailActivityManagerImpl.INSTANCE.shouldShowPaywall()) {
            FragmentManager fragmentManager = getFragmentManager();
            if (fragmentManager == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.support.v4.app.FragmentManager");
            }
            AFWelcomeDialogFragment.Companion.showWithCallback(fragmentManager, false, true, AFSettingsFragment$attemptUpgrade$1.INSTANCE);
            return;
        }
        BillingHelper.attemptPurchase(this.activity, getString(C1566R.string.play_store_sku_premium_annual), IABV3Helper.SkuType.SUBSCRIPTION);
    }

    @NotNull
    public final CategoryToggleView getAccountServicesContainer() {
        CategoryToggleView categoryToggleView = this.accountServicesContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getCharityContainer() {
        CategoryToggleView categoryToggleView = this.charityContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        return categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.af_settings_fragment;
    }

    @NotNull
    public final CategoryToggleView getNuisanceContainer() {
        CategoryToggleView categoryToggleView = this.nuisanceContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getPoliticalContainer() {
        CategoryToggleView categoryToggleView = this.politicalContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final AFSettingsPresenter getPresenter() {
        return this.presenter;
    }

    @NotNull
    public final CategoryToggleView getPrisonContainer() {
        CategoryToggleView categoryToggleView = this.prisonContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        return categoryToggleView;
    }

    @Nullable
    public final RatingDialogFragment getRateDialog() {
        return this.rateDialog;
    }

    @NotNull
    public final CategoryToggleView getScamContainer() {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getSurveyContainer() {
        CategoryToggleView categoryToggleView = this.surveyContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        return categoryToggleView;
    }

    @NotNull
    public final CategoryToggleView getTelemarketingContainer() {
        CategoryToggleView categoryToggleView = this.telemarketingContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        return categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new AFSettingsFragment();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onActivityCreated(@Nullable Bundle bundle) {
        super.onActivityCreated(bundle);
        if (this.activity instanceof AttachSubscriptionObserver) {
            Timber.m37d("Subscription listener attached", new Object[0]);
        } else {
            Timber.m34e("Subscription listener couldn't attach, activity is not an instance of AttachSubscriptionObserver", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        View inflate = inflater.inflate(getLayoutResId(), viewGroup, false);
        View findViewById = inflate.findViewById(C1566R.C1569id.custom_protection_list_lyt);
        View findViewById2 = findViewById.findViewById(C1566R.C1569id.custom_protection_spam);
        Intrinsics.checkExpressionValueIsNotNull(findViewById2, "listHolder.findViewById(…d.custom_protection_spam)");
        this.scamContainer = (CategoryToggleView) findViewById2;
        View findViewById3 = findViewById.findViewById(C1566R.C1569id.custom_protection_nuisance);
        Intrinsics.checkExpressionValueIsNotNull(findViewById3, "listHolder.findViewById(…stom_protection_nuisance)");
        this.nuisanceContainer = (CategoryToggleView) findViewById3;
        View findViewById4 = findViewById.findViewById(C1566R.C1569id.custom_protection_telemarketing);
        Intrinsics.checkExpressionValueIsNotNull(findViewById4, "listHolder.findViewById(…protection_telemarketing)");
        this.telemarketingContainer = (CategoryToggleView) findViewById4;
        View findViewById5 = findViewById.findViewById(C1566R.C1569id.custom_protection_account_services);
        Intrinsics.checkExpressionValueIsNotNull(findViewById5, "listHolder.findViewById(…tection_account_services)");
        this.accountServicesContainer = (CategoryToggleView) findViewById5;
        View findViewById6 = findViewById.findViewById(C1566R.C1569id.custom_protection_political);
        Intrinsics.checkExpressionValueIsNotNull(findViewById6, "listHolder.findViewById(…tom_protection_political)");
        this.politicalContainer = (CategoryToggleView) findViewById6;
        View findViewById7 = findViewById.findViewById(C1566R.C1569id.custom_protection_survey);
        Intrinsics.checkExpressionValueIsNotNull(findViewById7, "listHolder.findViewById(…custom_protection_survey)");
        this.surveyContainer = (CategoryToggleView) findViewById7;
        View findViewById8 = findViewById.findViewById(C1566R.C1569id.custom_protection_charity);
        Intrinsics.checkExpressionValueIsNotNull(findViewById8, "listHolder.findViewById(…ustom_protection_charity)");
        this.charityContainer = (CategoryToggleView) findViewById8;
        View findViewById9 = findViewById.findViewById(C1566R.C1569id.custom_protection_prison);
        Intrinsics.checkExpressionValueIsNotNull(findViewById9, "listHolder.findViewById(…custom_protection_prison)");
        this.prisonContainer = (CategoryToggleView) findViewById9;
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroy() {
        RatingDialogFragment ratingDialogFragment;
        this.presenter.onViewDestroyed();
        if (this.rateDialog != null) {
            RatingDialogFragment ratingDialogFragment2 = this.rateDialog;
            if (ratingDialogFragment2 == null) {
                Intrinsics.throwNpe();
            }
            if (ratingDialogFragment2.isResumed() && (ratingDialogFragment = this.rateDialog) != null) {
                ratingDialogFragment.dismissAllowingStateLoss();
            }
        }
        super.onDestroy();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onPause() {
        RatingDialogFragment ratingDialogFragment;
        super.onPause();
        if (this.rateDialog != null) {
            RatingDialogFragment ratingDialogFragment2 = this.rateDialog;
            if (ratingDialogFragment2 == null) {
                Intrinsics.throwNpe();
            }
            if (ratingDialogFragment2.isResumed() && (ratingDialogFragment = this.rateDialog) != null) {
                ratingDialogFragment.dismissAllowingStateLoss();
            }
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        this.presenter.onViewCreated();
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void rateApp() {
        RatingDialogFragment ratingDialogFragment;
        Timber.m31i("Rate app", new Object[0]);
        if (this.rateDialog != null) {
            RatingDialogFragment ratingDialogFragment2 = this.rateDialog;
            if (ratingDialogFragment2 == null) {
                Intrinsics.throwNpe();
            }
            if (ratingDialogFragment2.isResumed() && (ratingDialogFragment = this.rateDialog) != null) {
                ratingDialogFragment.dismissAllowingStateLoss();
            }
        }
        RatingDialogFragment.Companion companion = RatingDialogFragment.Companion;
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            Intrinsics.throwNpe();
        }
        Intrinsics.checkExpressionValueIsNotNull(fragmentManager, "fragmentManager!!");
        CoordinatorLayout settings_fragment_coordinator_layout = (CoordinatorLayout) _$_findCachedViewById(C1566R.C1569id.settings_fragment_coordinator_layout);
        Intrinsics.checkExpressionValueIsNotNull(settings_fragment_coordinator_layout, "settings_fragment_coordinator_layout");
        this.rateDialog = companion.showRatingDialog(fragmentManager, settings_fragment_coordinator_layout);
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setAccountServices(boolean z) {
        CategoryToggleView categoryToggleView = this.accountServicesContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setAccountServicesContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.accountServicesContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setCharity(boolean z) {
        CategoryToggleView categoryToggleView = this.charityContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setCharityContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.charityContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setClickListeners() {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        categoryToggleView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                Timber.m37d("Scam container clicked", new Object[0]);
                AFSettingsFragment.this.getPresenter().onScamToggle();
            }
        });
        CategoryToggleView categoryToggleView2 = this.nuisanceContainer;
        if (categoryToggleView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onNuisanceToggle();
            }
        });
        CategoryToggleView categoryToggleView3 = this.telemarketingContainer;
        if (categoryToggleView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView3.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onTelemarketingToggle();
            }
        });
        CategoryToggleView categoryToggleView4 = this.accountServicesContainer;
        if (categoryToggleView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView4.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onAccountServicesToggle();
            }
        });
        CategoryToggleView categoryToggleView5 = this.politicalContainer;
        if (categoryToggleView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView5.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onPoliticalToggle();
            }
        });
        CategoryToggleView categoryToggleView6 = this.charityContainer;
        if (categoryToggleView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView6.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onCharityToggle();
            }
        });
        CategoryToggleView categoryToggleView7 = this.surveyContainer;
        if (categoryToggleView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView7.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onSurveyToggle();
            }
        });
        CategoryToggleView categoryToggleView8 = this.prisonContainer;
        if (categoryToggleView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView8.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onPrisonToggle();
            }
        });
        ((TextView) _$_findCachedViewById(C1566R.C1569id.af_settings_about_tv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onAboutClick();
            }
        });
        ((TextView) _$_findCachedViewById(C1566R.C1569id.af_settings_help_tv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$10
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onHelpClick();
            }
        });
        ((TextView) _$_findCachedViewById(C1566R.C1569id.af_settings_share_tv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$11
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onShareClick();
            }
        });
        ((TextView) _$_findCachedViewById(C1566R.C1569id.af_settings_rate_tv)).setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.af_settings.AFSettingsFragment$setClickListeners$12
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AFSettingsFragment.this.getPresenter().onRateClick();
            }
        });
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setLastUpdateTime(@NotNull String date, @NotNull String time) {
        Intrinsics.checkParameterIsNotNull(date, "date");
        Intrinsics.checkParameterIsNotNull(time, "time");
        TextView af_settings_database_update_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.af_settings_database_update_tv);
        Intrinsics.checkExpressionValueIsNotNull(af_settings_database_update_tv, "af_settings_database_update_tv");
        af_settings_database_update_tv.setText(getString(C1566R.string.af_settings_database_update_label, date, time));
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setNuisance(boolean z) {
        CategoryToggleView categoryToggleView = this.nuisanceContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setNuisanceContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.nuisanceContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setPolitical(boolean z) {
        CategoryToggleView categoryToggleView = this.politicalContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setPoliticalContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.politicalContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setPrison(boolean z) {
        CategoryToggleView categoryToggleView = this.prisonContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setPrisonContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.prisonContainer = categoryToggleView;
    }

    public final void setRateDialog(@Nullable RatingDialogFragment ratingDialogFragment) {
        this.rateDialog = ratingDialogFragment;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setScam(boolean z) {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setScamContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.scamContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setSurvey(boolean z) {
        CategoryToggleView categoryToggleView = this.surveyContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setSurveyContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.surveyContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setTelemarketing(boolean z) {
        CategoryToggleView categoryToggleView = this.telemarketingContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView.toggle(z);
    }

    public final void setTelemarketingContainer(@NotNull CategoryToggleView categoryToggleView) {
        Intrinsics.checkParameterIsNotNull(categoryToggleView, "<set-?>");
        this.telemarketingContainer = categoryToggleView;
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setupCategories() {
        CategoryToggleView categoryToggleView = this.scamContainer;
        if (categoryToggleView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("scamContainer");
        }
        ICategoryToggleView.setContent$default(categoryToggleView, C1566R.string.category_scam_label, C1566R.string.category_scam_description, C1566R.C1568drawable.ic_cat_scam, false, 8, null);
        CategoryToggleView categoryToggleView2 = this.nuisanceContainer;
        if (categoryToggleView2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("nuisanceContainer");
        }
        categoryToggleView2.setContent(C1566R.string.category_nuisance_label, C1566R.string.category_nuisance_description, C1566R.C1568drawable.ic_cat_nuisance_gray, true);
        CategoryToggleView categoryToggleView3 = this.telemarketingContainer;
        if (categoryToggleView3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("telemarketingContainer");
        }
        categoryToggleView3.setContent(C1566R.string.category_telemarketing_label, C1566R.string.category_telemarketing_description, C1566R.C1568drawable.ic_cat_telemarketer_grey, true);
        CategoryToggleView categoryToggleView4 = this.accountServicesContainer;
        if (categoryToggleView4 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("accountServicesContainer");
        }
        categoryToggleView4.setContent(C1566R.string.account_services_label, C1566R.string.category_account_services_description, C1566R.C1568drawable.ic_cat_debt_collector, true);
        CategoryToggleView categoryToggleView5 = this.politicalContainer;
        if (categoryToggleView5 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("politicalContainer");
        }
        categoryToggleView5.setContent(C1566R.string.category_political_label, C1566R.string.category_political_description, C1566R.C1568drawable.ic_cat_political, true);
        CategoryToggleView categoryToggleView6 = this.charityContainer;
        if (categoryToggleView6 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("charityContainer");
        }
        categoryToggleView6.setContent(C1566R.string.category_charity_label, C1566R.string.category_charity_description, C1566R.C1568drawable.ic_cat_charity, true);
        CategoryToggleView categoryToggleView7 = this.surveyContainer;
        if (categoryToggleView7 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("surveyContainer");
        }
        categoryToggleView7.setContent(C1566R.string.category_survey_label, C1566R.string.category_survey_description, C1566R.C1568drawable.ic_cat_market_research, true);
        CategoryToggleView categoryToggleView8 = this.prisonContainer;
        if (categoryToggleView8 == null) {
            Intrinsics.throwUninitializedPropertyAccessException("prisonContainer");
        }
        categoryToggleView8.setContent(C1566R.string.category_prison_label, C1566R.string.category_prison_description, C1566R.C1568drawable.ic_cat_reported_telemarketer, true);
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void setupToolbar() {
        this.activity.setDetailToolbarTitle(C1566R.string.action_settings);
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void shareApp(@NotNull String subject, @NotNull String body) {
        Intrinsics.checkParameterIsNotNull(subject, "subject");
        Intrinsics.checkParameterIsNotNull(body, "body");
        Timber.m31i("Share app", new Object[0]);
        if (getContext() != null) {
            SystemUtil systemUtil = SystemUtil.INSTANCE;
            Context context = getContext();
            if (context == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.content.Context");
            }
            String string = getString(C1566R.string.share_subject);
            Intrinsics.checkExpressionValueIsNotNull(string, "getString(R.string.share_subject)");
            String string2 = getString(C1566R.string.share_message);
            Intrinsics.checkExpressionValueIsNotNull(string2, "getString(R.string.share_message)");
            systemUtil.systemShare(context, string, string2);
            return;
        }
        Timber.m25w("Context no longer exists", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void showAbout() {
        DetailActivity detailActivity = this.activity;
        if (detailActivity != null) {
            detailActivity.swapFragment(AFAboutFragment.class, null);
        }
    }

    @Override // com.privacystar.core.p011ui.detail_view.af_settings.AFSettingsContract.View
    public void showHelp() {
        startActivity(HelpCenterActivity.builder().withShowConversationsMenuButton(false).withArticlesForCategoryIds(360001538092L).withArticlesForSectionIds(360003830552L).withContactUsButtonVisible(true).intent(PSApplication.context(), getRequestActivityUIConfig()).addFlags(268435456));
    }
}
