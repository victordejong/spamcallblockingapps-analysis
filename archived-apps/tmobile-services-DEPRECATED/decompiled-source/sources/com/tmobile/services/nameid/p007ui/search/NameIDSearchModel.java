package com.tmobile.services.nameid.p007ui.search;

import android.content.Context;
import com.google.firebase.messaging.Constants;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.manage.Manage;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchedNumber;
import com.tmobile.services.nameid.p007ui.search.NameIDSearch;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.EventManager;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.SearchHelper;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Observable;
import io.realm.ImportFlag;
import io.realm.Realm;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��d\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\u0011\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018��2\u00020\u0001B\u000f\u0012\u0006\u00109\u001a\u000205¢\u0006\u0004\b:\u0010;J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0006J\u001f\u0010\n\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\u00072\u0006\u0010\t\u001a\u00020\u0004H\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u001d\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00070\r2\u0006\u0010\f\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u0017\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0015\u0010\u0016J\u0019\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0017H\u0016¢\u0006\u0004\b\u001a\u0010\u001bJ\u0019\u0010\u001f\u001a\u00020\u001e2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001cH\u0016¢\u0006\u0004\b\u001f\u0010 J\u0015\u0010!\u001a\b\u0012\u0004\u0012\u00020\u00070\rH\u0016¢\u0006\u0004\b!\u0010\"J\u000f\u0010#\u001a\u00020\u0004H\u0016¢\u0006\u0004\b#\u0010$J\u000f\u0010%\u001a\u00020\u0004H\u0016¢\u0006\u0004\b%\u0010$J\u0011\u0010&\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0004H\u0016¢\u0006\u0004\b(\u0010$J\u0017\u0010)\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b)\u0010\u0006J3\u0010-\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u00022\f\u0010+\u001a\b\u0012\u0004\u0012\u00020\u00020*2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00020*H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u0010/\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b/\u0010\u0006J\u001f\u00101\u001a\n\u0012\u0004\u0012\u000200\u0018\u00010\r2\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b1\u0010\u000fJ\u0017\u00102\u001a\u00020\u00112\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b2\u0010\u0013J\u0017\u00103\u001a\u00020\u00112\u0006\u0010\u0010\u001a\u00020\u0002H\u0016¢\u0006\u0004\b3\u0010\u0013R$\u00107\u001a\u0010\u0012\f\u0012\n 6*\u0004\u0018\u00010505048\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b7\u00108¨\u0006<"}, d2 = {"Lcom/tmobile/services/nameid/ui/search/NameIDSearchModel;", "com/tmobile/services/nameid/ui/search/NameIDSearch$Model", "", "e164Number", "", "addCallerFromSearch", "(Ljava/lang/String;)Z", "Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;", "response", "isManageSearch", "cleanUpSearchResponse", "(Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;Z)Lcom/tmobile/services/nameid/utility/SearchHelper$SearchResponse;", "query", "Lio/reactivex/Observable;", "doQuery", "(Ljava/lang/String;)Lio/reactivex/Observable;", Constants.FirelogAnalytics.PARAM_EVENT, "", "fireEvent", "(Ljava/lang/String;)V", "number", "formatNumberE164", "(Ljava/lang/String;)Ljava/lang/String;", "Lcom/tmobile/services/nameid/manage/Manage$ActivityType;", "activityType", "Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;", "getActivityPageType", "(Lcom/tmobile/services/nameid/manage/Manage$ActivityType;)Lcom/tmobile/services/nameid/model/MessageUserPreference$CommEventType;", "Lcom/tmobile/services/nameid/manage/Manage$PNBTab;", "managePage", "Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getManagePageAction", "(Lcom/tmobile/services/nameid/manage/Manage$PNBTab;)Lcom/tmobile/services/nameid/model/CallerSetting$Action;", "getRecentActivity", "()Lio/reactivex/Observable;", "isNumberLookupFeatureOwned", "()Z", "isSubscriptionInactive", "isSubscriptionPending", "()Ljava/lang/Boolean;", "isSubscriptionReducedMetro", "isUnknownNumber", "", "params", "values", "logFirebaseEvent", "(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V", "needLookupForSearchedNumber", "Lcom/tmobile/services/nameid/model/Caller;", "performLookup", "saveSearchedNumber", "userActivityEvent", "Ljava/lang/ref/WeakReference;", "Landroid/content/Context;", "kotlin.jvm.PlatformType", "contextRef", "Ljava/lang/ref/WeakReference;", "context", "<init>", "(Landroid/content/Context;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchModel */
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchModel.class */
public final class NameIDSearchModel implements NameIDSearch.Model {

    /* renamed from: a */
    private final WeakReference<Context> f14205a;

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* renamed from: com.tmobile.services.nameid.ui.search.NameIDSearchModel$WhenMappings */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/ui/search/NameIDSearchModel$WhenMappings.class */
    public final /* synthetic */ class WhenMappings {

        /* renamed from: a */
        public static final /* synthetic */ int[] f14206a;

        static {
            int[] iArr = new int[Manage.ActivityType.values().length];
            f14206a = iArr;
            iArr[Manage.ActivityType.CALLS.ordinal()] = 1;
            f14206a[Manage.ActivityType.MESSAGES.ordinal()] = 2;
        }
    }

    public NameIDSearchModel(@NotNull Context context) {
        Intrinsics.m1830e(context, "context");
        this.f14205a = new WeakReference<>(context);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: a */
    public void mo5955a(@NotNull String event) {
        Intrinsics.m1830e(event, "event");
        AnalyticsWrapper.m5883E(MainApplication.m7526n(), event);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: b */
    public boolean mo5954b() {
        return !SubscriptionHelper.m5317k();
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @NotNull
    /* renamed from: c */
    public String mo5953c(@NotNull String number) {
        Intrinsics.m1830e(number, "number");
        String d = PhoneNumberHelper.m5415d(number);
        Intrinsics.m1831d(d, "PhoneNumberHelper.formatNumberToE164(number)");
        return d;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @NotNull
    /* renamed from: d */
    public Observable<SearchHelper.SearchResponse> mo5952d(@NotNull String query) {
        Intrinsics.m1830e(query, "query");
        Context context = this.f14205a.get();
        if (context != null) {
            Observable<SearchHelper.SearchResponse> c = SearchHelper.m5373c(query, context);
            Intrinsics.m1831d(c, "SearchHelper.doQuery(query, it)");
            return c;
        }
        throw new IllegalStateException("Context does not exist");
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: e */
    public boolean mo5951e() {
        return Feature.NUMBER_LOOKUP.isOwned();
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: f */
    public boolean mo5950f(@NotNull String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        return SearchHelper.m5375a(e164Number);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: g */
    public void mo5949g(@NotNull final String e164Number) {
        Realm G0;
        Intrinsics.m1830e(e164Number, "e164Number");
        try {
            Realm.m3064G0().m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.ui.search.NameIDSearchModel$saveSearchedNumber$$inlined$use$lambda$1
                @Override // io.realm.Realm.Transaction
                /* renamed from: a */
                public final void mo3037a(Realm realm) {
                    SearchedNumber searchedNumber = new SearchedNumber();
                    searchedNumber.setE164Number(e164Number);
                    realm.m3045v0(searchedNumber, new ImportFlag[0]);
                }
            });
            Unit unit = Unit.f20447a;
            th = null;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @NotNull
    /* renamed from: h */
    public SearchHelper.SearchResponse mo5948h(@NotNull SearchHelper.SearchResponse response, boolean z) {
        Intrinsics.m1830e(response, "response");
        SearchHelper.m5374b(response, z);
        Intrinsics.m1831d(response, "SearchHelper.cleanUpSear…response, isManageSearch)");
        return response;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: i */
    public void mo5947i(@NotNull String event, @NotNull String[] params, @NotNull String[] values) {
        Intrinsics.m1830e(event, "event");
        Intrinsics.m1830e(params, "params");
        Intrinsics.m1830e(values, "values");
        MainApplication.m7553C(event, params, values);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: j */
    public boolean mo5946j(@NotNull String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        return SearchHelper.m5372d(e164Number);
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @Nullable
    /* renamed from: k */
    public Observable<Caller> mo5945k(@NotNull String e164Number) {
        Intrinsics.m1830e(e164Number, "e164Number");
        return ApiWrapper.m6773i(e164Number, Caller.shouldSuppressCategory(), Caller.shouldSuppressName());
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @NotNull
    /* renamed from: l */
    public CallerSetting.Action mo5944l(@Nullable Manage.PNBTab pNBTab) {
        return pNBTab == null ? CallerSetting.Action.NONE : pNBTab.m6572a();
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: m */
    public void mo5943m(@NotNull String event) {
        Intrinsics.m1830e(event, "event");
        Context context = this.f14205a.get();
        if (context != null) {
            EventManager.m5725a(context, event);
        }
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @NotNull
    /* renamed from: n */
    public Observable<SearchHelper.SearchResponse> mo5942n() {
        Observable<SearchHelper.SearchResponse> f = SearchHelper.m5370f();
        Intrinsics.m1831d(f, "SearchHelper.getRecentActivity()");
        return f;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @Nullable
    /* renamed from: o */
    public Boolean mo5941o() {
        SubscriptionHelper.State c = SubscriptionHelper.m5325c();
        if (!SubscriptionHelper.m5310r(c)) {
            return null;
        }
        return Boolean.valueOf(SubscriptionHelper.m5306v(c));
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    /* renamed from: p */
    public boolean mo5940p() {
        return SubscriptionHelper.m5325c() == SubscriptionHelper.State.REDUCED_METRO;
    }

    @Override // com.tmobile.services.nameid.p007ui.search.NameIDSearch.Model
    @NotNull
    /* renamed from: q */
    public MessageUserPreference.CommEventType mo5939q(@Nullable Manage.ActivityType activityType) {
        MessageUserPreference.CommEventType commEventType;
        if (activityType == null) {
            commEventType = MessageUserPreference.CommEventType.NONE;
        } else {
            int i = WhenMappings.f14206a[activityType.ordinal()];
            if (i == 1) {
                commEventType = MessageUserPreference.CommEventType.CALL;
            } else if (i == 2) {
                commEventType = MessageUserPreference.CommEventType.TEXT;
            } else {
                throw new NoWhenBranchMatchedException();
            }
        }
        return commEventType;
    }
}
