package com.privacystar.core.p011ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.preference.PreferenceManager;
import android.support.annotation.LayoutRes;
import android.support.p001v4.content.ContextCompat;
import android.support.p001v4.text.HtmlCompat;
import android.support.p001v4.view.GravityCompat;
import android.support.p001v4.widget.DrawerLayout;
import android.support.p001v4.widget.NestedScrollView;
import android.support.p004v7.app.ActionBarDrawerToggle;
import android.support.p004v7.widget.Toolbar;
import android.text.Spanned;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.data.model.types.SubscriptionType;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import com.privacystar.core.p011ui.BaseContract;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.about.InfoItemRepository;
import com.privacystar.core.p011ui.widgets.NavDrawerItemView;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.RealmUtil;
import io.realm.Realm;
import io.realm.RealmChangeListener;
import io.realm.RealmObject;
import io.realm.RealmResults;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0094\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0016\b&\u0018�� U2\u00020\u00012\u00020\u0002:\u0001UB\u0005¢\u0006\u0002\u0010\u0003J\b\u0010\u001f\u001a\u00020 H\u0016J\b\u0010!\u001a\u00020 H\u0016J\u0010\u0010\"\u001a\u00020 2\b\u0010#\u001a\u0004\u0018\u00010$J\b\u0010%\u001a\u00020&H\u0016J\u0018\u0010'\u001a\u00020\u00172\u0006\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u000fH\u0002J\u0016\u0010+\u001a\u00020 2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020)0-H\u0016J\u0014\u0010.\u001a\u0004\u0018\u00010$2\n\u0010/\u001a\u0006\u0012\u0002\b\u000300J\u001e\u0010.\u001a\u0004\u0018\u00010$2\n\u0010/\u001a\u0006\u0012\u0002\b\u0003002\b\u00101\u001a\u0004\u0018\u000102J\b\u00103\u001a\u00020 H\u0016J\b\u00104\u001a\u00020)H\u0016J\b\u00105\u001a\u00020\rH\u0016J\b\u00106\u001a\u00020)H\u0004J\n\u00107\u001a\u0004\u0018\u00010\u001cH\u0004J\n\u00108\u001a\u0004\u0018\u00010\u0005H\u0004J\b\u00109\u001a\u00020 H\u0016J\b\u0010:\u001a\u00020&H\u0016J\b\u0010;\u001a\u00020&H\u0016J\b\u0010<\u001a\u00020)H\u0016J\b\u0010=\u001a\u00020 H\u0016J\u0012\u0010>\u001a\u00020 2\b\u0010?\u001a\u0004\u0018\u00010@H\u0014J\b\u0010A\u001a\u00020 H\u0014J\u0006\u0010B\u001a\u00020 J\u0012\u0010C\u001a\u00020 2\b\u0010?\u001a\u0004\u0018\u00010@H\u0014J\b\u0010D\u001a\u00020 H\u0016J\b\u0010E\u001a\u00020 H\u0016J\u001e\u0010F\u001a\u00020 2\u0006\u0010(\u001a\u00020)2\f\u0010,\u001a\b\u0012\u0004\u0012\u00020)0-H\u0016J\u0012\u0010G\u001a\u00020 2\b\b\u0001\u0010H\u001a\u00020)H\u0016J\b\u0010I\u001a\u00020 H\u0016J\u0010\u0010J\u001a\u00020 2\u0006\u0010K\u001a\u00020&H\u0016J\b\u0010L\u001a\u00020 H\u0016J\b\u0010M\u001a\u00020 H\u0016J\b\u0010N\u001a\u00020 H\u0016J\b\u0010O\u001a\u00020 H\u0016J\b\u0010P\u001a\u00020 H\u0016J\b\u0010Q\u001a\u00020&H\u0016J\b\u0010R\u001a\u00020&H\u0016J\b\u0010S\u001a\u00020&H\u0016J\b\u0010T\u001a\u00020&H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e¢\u0006\u0002\n��R\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��R\u0016\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0014\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n��R\u0018\u0010\u0015\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00170\u0016X\u0082.¢\u0006\u0004\n\u0002\u0010\u0018R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n��R\u0010\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0082\u000e¢\u0006\u0002\n��R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001c0\u001eX\u0082\u0004¢\u0006\u0002\n��¨\u0006V"}, m254d2 = {"Lcom/privacystar/core/ui/BaseActivity;", "Lcom/privacystar/core/ui/PSActivity;", "Lcom/privacystar/core/ui/BaseContract$View;", "()V", "baseToolbar", "Landroid/support/v7/widget/Toolbar;", "drawerButtonBadge", "Landroid/widget/ImageView;", "getDrawerButtonBadge", "()Landroid/widget/ImageView;", "setDrawerButtonBadge", "(Landroid/widget/ImageView;)V", "drawerFunctionality", "Lcom/privacystar/core/ui/BaseDrawerItemFunctionality;", "drawerItemsListGroup", "Landroid/view/ViewGroup;", "drawerLayout", "Landroid/support/v4/widget/DrawerLayout;", MessagesContract.MessagesEntry.TABLE_NAME, "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/Message;", "navDrawerItemViews", "", "Landroid/view/View;", "[Landroid/view/View;", "presenter", "Lcom/privacystar/core/ui/BasePresenter;", SubscriptionContract.SubscriptionEntry.TABLE_NAME, "Lcom/privacystar/core/data/model/Subscription;", "subscriptionListener", "Lio/realm/RealmChangeListener;", "addMessageChangeListener", "", "closeNavDrawer", "createBackStack", "intent", "Landroid/content/Intent;", "createDrawerLayout", "", "createNavDrawerItem", "itemId", "", "container", "createNavDrawerItems", "listOfItems", "", "detailIntent", "fragment", "Ljava/lang/Class;", "parcel", "Landroid/os/Parcelable;", "finishActivity", "getActiveNavDrawerItem", "getFunctionalityInstance", "getNavigationHomeItem", "getSubscription", "getToolbar", "hideSubscriptionStatusRectangle", "isApproveListEnabled", "isNavDrawerOpen", "numberOfUnreadMessages", "onBackPressed", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "onNavigationButtonClicked", "onPostCreate", "openNavDrawer", "removeSubscriptionListener", "setActiveNavDrawerItem", "setContentView", "layoutResID", "setDefaultPreferenceValues", "setDrawerButtonBadgeVisible", "visible", "setDrawerLayoutNull", "setDrawerToggleListener", "setStatusBarBackground", "setupAppVersionText", "setupNavDrawerLogoHeader", "setupNavDrawerSubscription", "shouldDrawLogoHeader", "shouldHavePurchaseView", "shouldShowFullUX", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.BaseActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseActivity.class */
public abstract class BaseActivity extends PSActivity implements BaseContract.View {
    public static final Companion Companion = new Companion(null);
    private HashMap _$_findViewCache;
    private Toolbar baseToolbar;
    @Nullable
    private ImageView drawerButtonBadge;
    private BaseDrawerItemFunctionality drawerFunctionality;
    private ViewGroup drawerItemsListGroup;
    private DrawerLayout drawerLayout;
    private RealmResults<Message> messages;
    private View[] navDrawerItemViews;
    private Subscription subscription;
    private final BasePresenter presenter = new BasePresenter(this);
    private final RealmChangeListener<Subscription> subscriptionListener = new RealmChangeListener<Subscription>() { // from class: com.privacystar.core.ui.BaseActivity$subscriptionListener$1
        public final void onChange(Subscription subscription) {
            BasePresenter basePresenter;
            Timber.m37d("SubscriptionFragment observed a Subscription change", new Object[0]);
            basePresenter = BaseActivity.this.presenter;
            basePresenter.onSubscriptionChanged();
        }
    };

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J&\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\n\u0010\u0007\u001a\u0006\u0012\u0002\b\u00030\b2\b\u0010\t\u001a\u0004\u0018\u00010\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/ui/BaseActivity$Companion;", "", "()V", "detailIntent", "Landroid/content/Intent;", "context", "Landroid/content/Context;", "fragment", "Ljava/lang/Class;", "parcel", "Landroid/os/Parcelable;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.BaseActivity$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/BaseActivity$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @Nullable
        public final Intent detailIntent(@NotNull Context context, @NotNull Class<?> fragment, @Nullable Parcelable parcelable) {
            Intent intent;
            Intrinsics.checkParameterIsNotNull(context, "context");
            Intrinsics.checkParameterIsNotNull(fragment, "fragment");
            if (Intrinsics.areEqual(fragment.getSuperclass(), DetailFragment.class)) {
                intent = new Intent(context, DetailActivity.class);
                intent.putExtra(DetailActivity.getFragmentLaunchKey(), fragment);
                intent.putExtra(DetailActivity.getFragmentPayloadKey(), parcelable);
            } else {
                Timber.m34e("The class passed to detailIntent() was not a sub-class of DetailFragment.", new Object[0]);
                intent = null;
            }
            return intent;
        }
    }

    @NotNull
    public static final /* synthetic */ View[] access$getNavDrawerItemViews$p(BaseActivity baseActivity) {
        View[] viewArr = baseActivity.navDrawerItemViews;
        if (viewArr == null) {
            Intrinsics.throwUninitializedPropertyAccessException("navDrawerItemViews");
        }
        return viewArr;
    }

    private final View createNavDrawerItem(final int i, ViewGroup viewGroup) {
        boolean z = false;
        if (this.presenter.isSeparator(i)) {
            View inflate = getLayoutInflater().inflate(C1566R.C1571layout.navigation_drawer_separator, viewGroup, false);
            Intrinsics.checkExpressionValueIsNotNull(inflate, "layoutInflater.inflate(R…arator, container, false)");
            return inflate;
        }
        Timber.m37d("ItemID: " + i, new Object[0]);
        View inflate2 = getLayoutInflater().inflate(C1566R.C1571layout.navigation_drawer_item, viewGroup, false);
        if (inflate2 == null) {
            throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.ui.widgets.NavDrawerItemView");
        }
        NavDrawerItemView navDrawerItemView = (NavDrawerItemView) inflate2;
        int checkUnreadNotifications = this.presenter.checkUnreadNotifications(i);
        int navTitle = this.presenter.getNavTitle(i);
        navDrawerItemView.setContent(this.presenter.getNavIcon(i), navTitle, checkUnreadNotifications);
        if (getActiveNavDrawerItem() == i) {
            z = true;
        }
        navDrawerItemView.setActivated(z);
        navDrawerItemView.setContentDescription(getString(navTitle));
        navDrawerItemView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.BaseActivity$createNavDrawerItem$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BasePresenter basePresenter;
                basePresenter = BaseActivity.this.presenter;
                basePresenter.onNavDrawerItemClicked(i);
            }
        });
        return navDrawerItemView;
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
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void addMessageChangeListener() {
        this.messages = MessageRealm.getMessages(getRealm());
        RealmResults<Message> realmResults = this.messages;
        if (realmResults != null) {
            realmResults.addChangeListener(new RealmChangeListener<RealmResults<Message>>() { // from class: com.privacystar.core.ui.BaseActivity$addMessageChangeListener$1
                public final void onChange(RealmResults<Message> realmResults2) {
                    BasePresenter basePresenter;
                    basePresenter = BaseActivity.this.presenter;
                    basePresenter.onMessageChanged();
                }
            });
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void closeNavDrawer() {
        DrawerLayout drawerLayout = this.drawerLayout;
        if (drawerLayout != null) {
            drawerLayout.closeDrawer(GravityCompat.START);
        }
    }

    public final void createBackStack(@Nullable Intent intent) {
        if (intent != null) {
            startActivity(intent);
        } else {
            Timber.m37d("Couldn't start activity, intent is null", new Object[0]);
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean createDrawerLayout() {
        this.drawerLayout = (DrawerLayout) findViewById(C1566R.C1569id.drawer_layout);
        return this.drawerLayout != null;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void createNavDrawerItems(@NotNull List<Integer> listOfItems) {
        Intrinsics.checkParameterIsNotNull(listOfItems, "listOfItems");
        View findViewById = findViewById(C1566R.C1569id.navigation_drawer_items_list);
        if (findViewById == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup");
        }
        this.drawerItemsListGroup = (ViewGroup) findViewById;
        ViewGroup viewGroup = this.drawerItemsListGroup;
        if (viewGroup != null) {
            this.navDrawerItemViews = new View[listOfItems.size()];
            viewGroup.removeAllViews();
            int i = 0;
            for (Number number : listOfItems) {
                int intValue = number.intValue();
                View[] viewArr = this.navDrawerItemViews;
                if (viewArr == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("navDrawerItemViews");
                }
                viewArr[i] = createNavDrawerItem(intValue, viewGroup);
                View[] viewArr2 = this.navDrawerItemViews;
                if (viewArr2 == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("navDrawerItemViews");
                }
                viewGroup.addView(viewArr2[i]);
                i++;
            }
        }
    }

    @Nullable
    public final Intent detailIntent(@NotNull Class<?> fragment) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        return detailIntent(fragment, null);
    }

    @Nullable
    public final Intent detailIntent(@NotNull Class<?> fragment, @Nullable Parcelable parcelable) {
        Intrinsics.checkParameterIsNotNull(fragment, "fragment");
        return Companion.detailIntent(this, fragment, parcelable);
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void finishActivity() {
        Timber.m28v("Finishing activity.", new Object[0]);
        finish();
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public int getActiveNavDrawerItem() {
        return this.presenter.getInvalidNavItem();
    }

    @Nullable
    public final ImageView getDrawerButtonBadge() {
        return this.drawerButtonBadge;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    @NotNull
    public BaseDrawerItemFunctionality getFunctionalityInstance() {
        if (this.drawerFunctionality == null) {
            this.drawerFunctionality = new BaseDrawerItemFunctionality(this);
        }
        BaseDrawerItemFunctionality baseDrawerItemFunctionality = this.drawerFunctionality;
        if (baseDrawerItemFunctionality == null) {
            Intrinsics.throwNpe();
        }
        return baseDrawerItemFunctionality;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final int getNavigationHomeItem() {
        return this.presenter.getHomeNavItem();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0024, code lost:
        if (r0.isValid() == false) goto L_0x0027;
     */
    @org.jetbrains.annotations.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final com.privacystar.core.data.model.Subscription getSubscription() {
        /*
            r3 = this;
            r0 = r3
            com.privacystar.core.data.model.Subscription r0 = r0.subscription
            if (r0 == 0) goto L_0x0027
            r0 = r3
            com.privacystar.core.data.model.Subscription r0 = r0.subscription
            io.realm.RealmObject r0 = (io.realm.RealmObject) r0
            boolean r0 = com.privacystar.core.util.RealmUtil.isSafe(r0)
            if (r0 == 0) goto L_0x0027
            r0 = r3
            com.privacystar.core.data.model.Subscription r0 = r0.subscription
            r4 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0020
            kotlin.jvm.internal.Intrinsics.throwNpe()
        L_0x0020:
            r0 = r4
            boolean r0 = r0.isValid()
            if (r0 != 0) goto L_0x0043
        L_0x0027:
            r0 = r3
            r1 = r3
            io.realm.Realm r1 = r1.getRealm()
            com.privacystar.core.data.model.Subscription r1 = com.privacystar.core.data.model.helper.SubscriptionRealm.getSubscription(r1)
            r0.subscription = r1
            r0 = r3
            com.privacystar.core.data.model.Subscription r0 = r0.subscription
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0043
            r0 = r4
            r1 = r3
            io.realm.RealmChangeListener<com.privacystar.core.data.model.Subscription> r1 = r1.subscriptionListener
            r0.addChangeListener(r1)
        L_0x0043:
            r0 = r3
            com.privacystar.core.data.model.Subscription r0 = r0.subscription
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.p011ui.BaseActivity.getSubscription():com.privacystar.core.data.model.Subscription");
    }

    @Nullable
    protected final Toolbar getToolbar() {
        if (this.baseToolbar == null) {
            this.baseToolbar = (Toolbar) findViewById(2131297363);
            if (this.baseToolbar != null) {
                setSupportActionBar(this.baseToolbar);
            }
        }
        return this.baseToolbar;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void hideSubscriptionStatusRectangle() {
        DrawerLayout drawerLayout = this.drawerLayout;
        FrameLayout frameLayout = null;
        NestedScrollView nestedScrollView = drawerLayout != null ? (NestedScrollView) drawerLayout.findViewById(C1566R.C1569id.navigation_drawer) : null;
        if (nestedScrollView != null) {
            frameLayout = (FrameLayout) nestedScrollView.findViewById(C1566R.C1569id.navigation_drawer_subscription_fl);
        }
        if (frameLayout != null) {
            frameLayout.setVisibility(8);
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean isApproveListEnabled() {
        return getResources().getBoolean(C1566R.bool.approved_list_enabled);
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean isNavDrawerOpen() {
        boolean z;
        if (this.drawerLayout != null) {
            DrawerLayout drawerLayout = this.drawerLayout;
            if (drawerLayout == null) {
                Intrinsics.throwNpe();
            }
            if (drawerLayout.isDrawerOpen(GravityCompat.START)) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public int numberOfUnreadMessages() {
        return (int) MessageRealm.countUnreadMessages(getRealm());
    }

    @Override // android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onBackPressed() {
        this.presenter.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        this.drawerButtonBadge = (ImageView) findViewById(C1566R.C1569id.menu_icon_badge);
        this.presenter.viewCreated();
        View findViewById = findViewById(C1566R.C1569id.menu_button);
        if (findViewById != null) {
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.BaseActivity$onCreate$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseActivity.this.onNavigationButtonClicked();
                }
            });
        }
        View findViewById2 = findViewById(C1566R.C1569id.menu_icon);
        if (findViewById2 != null) {
            findViewById2.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.BaseActivity$onCreate$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BaseActivity.this.onNavigationButtonClicked();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.privacystar.core.p011ui.PSActivity, android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.presenter.viewDestroyed();
        super.onDestroy();
    }

    public final void onNavigationButtonClicked() {
        Timber.m37d("Navigation menu button clicked.", new Object[0]);
        if (this.drawerLayout != null) {
            this.presenter.onNavButtonClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity
    public void onPostCreate(@Nullable Bundle bundle) {
        super.onPostCreate(bundle);
        this.presenter.viewPostCreated();
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void openNavDrawer() {
        DrawerLayout drawerLayout = this.drawerLayout;
        if (drawerLayout != null) {
            drawerLayout.openDrawer(GravityCompat.START);
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void removeSubscriptionListener() {
        Subscription subscription = this.subscription;
        if (subscription != null && RealmUtil.isSafe((RealmObject) subscription) && subscription.isValid()) {
            Timber.m28v("Removing change listener from Subscription.", new Object[0]);
            subscription.removeChangeListener(this.subscriptionListener);
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setActiveNavDrawerItem(int i, @NotNull List<Integer> listOfItems) {
        Intrinsics.checkParameterIsNotNull(listOfItems, "listOfItems");
        if (this.navDrawerItemViews != null) {
            View[] viewArr = this.navDrawerItemViews;
            if (viewArr == null) {
                Intrinsics.throwUninitializedPropertyAccessException("navDrawerItemViews");
            }
            int length = viewArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (i2 < listOfItems.size()) {
                    int intValue = listOfItems.get(i2).intValue();
                    View[] viewArr2 = this.navDrawerItemViews;
                    if (viewArr2 == null) {
                        Intrinsics.throwUninitializedPropertyAccessException("navDrawerItemViews");
                    }
                    View view = viewArr2[i2];
                    if (view != null) {
                        view.setActivated(i == intValue);
                    }
                }
            }
        }
    }

    @Override // android.support.p004v7.app.AppCompatActivity, android.app.Activity
    public void setContentView(@LayoutRes int i) {
        super.setContentView(i);
        getToolbar();
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setDefaultPreferenceValues() {
        PreferenceManager.setDefaultValues(this, C1566R.C1575xml.preferences, false);
    }

    public final void setDrawerButtonBadge(@Nullable ImageView imageView) {
        this.drawerButtonBadge = imageView;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setDrawerButtonBadgeVisible(boolean z) {
        ImageView imageView = this.drawerButtonBadge;
        if (imageView != null) {
            imageView.setVisibility(z ? 0 : 8);
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setDrawerLayoutNull() {
        this.drawerLayout = null;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setDrawerToggleListener() {
        DrawerLayout drawerLayout = this.drawerLayout;
        if (drawerLayout != null) {
            ActionBarDrawerToggle actionBarDrawerToggle = new ActionBarDrawerToggle(this, drawerLayout, this.baseToolbar, C1566R.string.nav_drawer_open_hint, C1566R.string.nav_drawer_close_hint);
            drawerLayout.addDrawerListener(actionBarDrawerToggle);
            actionBarDrawerToggle.syncState();
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setStatusBarBackground() {
        DrawerLayout drawerLayout = this.drawerLayout;
        if (drawerLayout != null) {
            drawerLayout.setStatusBarBackgroundColor(ContextCompat.getColor(this, 2131099752));
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setupAppVersionText() {
        DrawerLayout drawerLayout = this.drawerLayout;
        TextView textView = drawerLayout != null ? (TextView) drawerLayout.findViewById(C1566R.C1569id.navigation_drawer_app_version) : null;
        InfoItemRepository infoItemRepository = InfoItemRepository.INSTANCE;
        Context applicationContext = getApplicationContext();
        Intrinsics.checkExpressionValueIsNotNull(applicationContext, "applicationContext");
        String itemDescription = infoItemRepository.getApkVersionInfoItem$app_core(applicationContext).getItemDescription();
        if (textView != null) {
            textView.setText(getString(C1566R.string.af_app_version_label, new Object[]{itemDescription}));
        }
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public void setupNavDrawerLogoHeader() {
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean setupNavDrawerSubscription() {
        SubscriptionType subscriptionType;
        Spanned spanned;
        DrawerLayout drawerLayout = this.drawerLayout;
        NestedScrollView nestedScrollView = drawerLayout != null ? (NestedScrollView) drawerLayout.findViewById(C1566R.C1569id.navigation_drawer) : null;
        boolean z = true;
        if (nestedScrollView != null) {
            Subscription subscription = getSubscription();
            if (subscription != null) {
                z = subscription.getSubscriptionType() != null && !SubscriptionRealm.isSubscriptionActive(subscription);
                subscriptionType = subscription.getSubscriptionType();
                Intrinsics.checkExpressionValueIsNotNull(subscriptionType, "subscription.subscriptionType");
            } else {
                subscriptionType = SubscriptionType.INACTIVE;
                z = true;
            }
            int subscriptionDaysLeft = (int) SubscriptionRealm.subscriptionDaysLeft(getRealm());
            if (SubscriptionRealm.compareSubscriptionState(subscription, SubscriptionType.INACTIVE)) {
                spanned = HtmlCompat.fromHtml(getString(C1566R.string.navigation_drawer_subscription_expired), 0);
                Intrinsics.checkExpressionValueIsNotNull(spanned, "HtmlCompat.fromHtml(getS…at.FROM_HTML_MODE_LEGACY)");
            } else if (SubscriptionRealm.isSubscriptionActive(subscription)) {
                spanned = HtmlCompat.fromHtml(getString(C1566R.string.navigation_drawer_subscription_active), 0);
                Intrinsics.checkExpressionValueIsNotNull(spanned, "HtmlCompat.fromHtml(getS…at.FROM_HTML_MODE_LEGACY)");
            } else {
                String string = getString(C1566R.string.subscription_type_trial);
                spanned = HtmlCompat.fromHtml(string + ' ' + getResources().getQuantityString(C1566R.plurals.subscription_display_long, subscriptionDaysLeft, Integer.valueOf(subscriptionDaysLeft)), 0);
                Intrinsics.checkExpressionValueIsNotNull(spanned, "HtmlCompat.fromHtml(\"$su…at.FROM_HTML_MODE_LEGACY)");
            }
            Timber.m37d("Subscription is %s, setting NavDrawer header to: %s.", subscriptionType.getDisplayName(), spanned);
            View findViewById = nestedScrollView.findViewById(C1566R.C1569id.navigation_drawer_subscription_fl);
            if (findViewById == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.FrameLayout");
            }
            ((FrameLayout) findViewById).setBackgroundResource(C1566R.C1568drawable.cardview_border_highlight_green);
            View findViewById2 = nestedScrollView.findViewById(C1566R.C1569id.navigation_drawer_subscription_tv);
            if (findViewById2 == null) {
                throw new TypeCastException("null cannot be cast to non-null type android.widget.TextView");
            }
            TextView textView = (TextView) findViewById2;
            textView.setText(spanned);
            textView.setTextColor(ContextCompat.getColor(this, C1566R.color.ps3_green_300));
        }
        return z;
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean shouldDrawLogoHeader() {
        return BuildUtil.INSTANCE.doesVariantHaveLogoHeaderView(this);
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean shouldHavePurchaseView() {
        return BuildUtil.INSTANCE.doesVariantHavePurchaseView(this);
    }

    @Override // com.privacystar.core.p011ui.BaseContract.View
    public boolean shouldShowFullUX() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return BuildUtil.INSTANCE.shouldVariantInstanceShowFullUx(this, realm);
    }
}
