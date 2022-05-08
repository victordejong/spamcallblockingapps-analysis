package com.privacystar.core.p011ui.detail_view.campaign;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.DrawableRes;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.text.HtmlCompat;
import android.support.p004v7.widget.CardView;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.apptentive.android.sdk.module.engagement.interaction.model.NavigateToLinkInteraction;
import com.bumptech.glide.Glide;
import com.bumptech.glide.Priority;
import com.bumptech.glide.request.RequestOptions;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.DetailFragment;
import com.privacystar.core.p011ui.detail_view.campaign.CampaignContract;
import com.privacystar.core.p011ui.intro.af_welcome.AFWelcomeDialogFragment;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.CampaignUtil;
import io.realm.Realm;
import java.util.HashMap;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0086\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\n\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003B\u0005¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u0010\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0014J\u0006\u0010\u0018\u001a\u00020\u0017J\b\u0010\u0019\u001a\u00020\u001aH\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\b\u0010\u001c\u001a\u00020\u0012H\u0016J\u001a\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u00142\b\b\u0001\u0010\u001f\u001a\u00020\u0017H\u0016J\u001a\u0010 \u001a\u00020\u00122\u0006\u0010!\u001a\u00020\u00142\b\b\u0001\u0010\u001f\u001a\u00020\u0017H\u0016J\u0010\u0010\"\u001a\u00020\u00122\u0006\u0010#\u001a\u00020$H\u0016J&\u0010\"\u001a\u00020\u00122\n\u0010%\u001a\u0006\u0012\u0002\b\u00030&2\b\u0010'\u001a\u0004\u0018\u00010(2\u0006\u0010)\u001a\u00020*H\u0016J\b\u0010+\u001a\u00020\u0012H\u0016J\b\u0010,\u001a\u00020\u0012H\u0016J\b\u0010-\u001a\u00020\u0001H\u0016J\b\u0010.\u001a\u00020\u0012H\u0016J&\u0010/\u001a\u0004\u0018\u0001002\u0006\u00101\u001a\u0002022\b\u00103\u001a\u0004\u0018\u0001042\b\u00105\u001a\u0004\u0018\u000106H\u0016J\b\u00107\u001a\u00020\u0012H\u0016J\u0012\u00108\u001a\u00020*2\b\u00109\u001a\u0004\u0018\u00010:H\u0016J\u001a\u0010;\u001a\u00020\u00122\u0006\u0010<\u001a\u0002002\b\u00105\u001a\u0004\u0018\u000106H\u0016J\b\u0010=\u001a\u00020\u0012H\u0016J\u0010\u0010>\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u0014H\u0016J\u0010\u0010@\u001a\u00020\u00122\u0006\u0010?\u001a\u00020\u0014H\u0016J\u0018\u0010A\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010B\u001a\u00020CH\u0002J\u0010\u0010D\u001a\u00020\u00122\u0006\u0010\u001e\u001a\u00020\u0017H\u0016J\u0010\u0010E\u001a\u00020\u00122\u0006\u0010F\u001a\u00020\u0014H\u0016J\u0012\u0010G\u001a\u00020\u00122\b\b\u0001\u0010!\u001a\u00020\u0017H\u0016J\u0010\u0010H\u001a\u00020\u00122\u0006\u0010I\u001a\u00020\u0014H\u0016J\u0010\u0010J\u001a\u00020\u00122\u0006\u0010K\u001a\u00020*H\u0016J\b\u0010L\u001a\u00020\u0012H\u0016R\u001b\u0010\u0005\u001a\u00020\u00068FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u0007\u0010\bR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006M"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/campaign/CampaignFragment;", "Lcom/privacystar/core/ui/detail_view/DetailFragment;", "Lcom/privacystar/core/ui/detail_view/DetailActivity$DetailActivityContent;", "Lcom/privacystar/core/ui/detail_view/campaign/CampaignContract$CampaignView;", "()V", "presenter", "Lcom/privacystar/core/ui/detail_view/campaign/CampaignPresenter;", "getPresenter", "()Lcom/privacystar/core/ui/detail_view/campaign/CampaignPresenter;", "presenter$delegate", "Lkotlin/Lazy;", "template", "Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "getTemplate", "()Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;", "setTemplate", "(Lcom/privacystar/core/util/CampaignUtil$CampaignTemplate;)V", "addButtonOneAction", "", BlockingManager.ACTION_CONSTANT, "", "addButtonTwoAction", "getLayoutResId", "", "getMenuResId", "getRealmTemp", "Lio/realm/Realm;", "hideButtonOne", "hideButtonTwo", "loadLogo", "logo", "defaultImage", "loadSecondaryImage", "secondaryImage", NavigateToLinkInteraction.EVENT_NAME_NAVIGATE, "intent", "Landroid/content/Intent;", "className", "Ljava/lang/Class;", "parcelable", "Landroid/os/Parcelable;", "addToBackstack", "", "navigateBack", "navigateHome", "newInstance", "onButtonClicked", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onFabClicked", "onMenuItemClicked", "item", "Landroid/view/MenuItem;", "onViewCreated", Promotion.ACTION_VIEW, "refreshContent", "setButtonOneText", "text", "setButtonTwoText", "setClickListener", "button", "Landroid/support/v7/widget/CardView;", "setLogo", "setMessage", "message", "setSecondaryImage", "setTitle", "title", "setupToolbar", "showMenu", "showPaywall", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.campaign.CampaignFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/campaign/CampaignFragment.class */
public final class CampaignFragment extends DetailFragment implements DetailActivity.DetailActivityContent, CampaignContract.CampaignView {
    static final /* synthetic */ KProperty[] $$delegatedProperties = {Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass(CampaignFragment.class), "presenter", "getPresenter()Lcom/privacystar/core/ui/detail_view/campaign/CampaignPresenter;"))};
    private HashMap _$_findViewCache;
    @NotNull
    private final Lazy presenter$delegate = LazyKt.lazy(new CampaignFragment$presenter$2(this));
    @NotNull
    public CampaignUtil.CampaignTemplate template;

    private final void setClickListener(final String str, CardView cardView) {
        cardView.setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.campaign.CampaignFragment$setClickListener$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CampaignFragment.this.getPresenter().onButtonClick(str);
            }
        });
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

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void addButtonOneAction(@NotNull String action) {
        Intrinsics.checkParameterIsNotNull(action, "action");
        CardView activity_campaign_button1 = (CardView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_button1);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_button1, "activity_campaign_button1");
        setClickListener(action, activity_campaign_button1);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void addButtonTwoAction(@NotNull String action) {
        Intrinsics.checkParameterIsNotNull(action, "action");
        CardView activity_campaign_button2 = (CardView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_button2);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_button2, "activity_campaign_button2");
        setClickListener(action, activity_campaign_button2);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    protected int getLayoutResId() {
        return C1566R.C1571layout.activity_campaign;
    }

    public final int getMenuResId() {
        return C1566R.C1572menu.menu_inbox_message;
    }

    @NotNull
    public final CampaignPresenter getPresenter() {
        Lazy lazy = this.presenter$delegate;
        KProperty kProperty = $$delegatedProperties[0];
        return (CampaignPresenter) lazy.getValue();
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    @NotNull
    public Realm getRealmTemp() {
        Realm realm = getRealm();
        Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
        return realm;
    }

    @NotNull
    public final CampaignUtil.CampaignTemplate getTemplate() {
        CampaignUtil.CampaignTemplate campaignTemplate = this.template;
        if (campaignTemplate == null) {
            Intrinsics.throwUninitializedPropertyAccessException("template");
        }
        return campaignTemplate;
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void hideButtonOne() {
        CardView activity_campaign_button1 = (CardView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_button1);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_button1, "activity_campaign_button1");
        activity_campaign_button1.setVisibility(8);
        Timber.m37d("Button 1 is not visible", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void hideButtonTwo() {
        CardView activity_campaign_button2 = (CardView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_button2);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_button2, "activity_campaign_button2");
        activity_campaign_button2.setVisibility(8);
        Timber.m37d("Button 2 is not visible", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void loadLogo(@NotNull String logo, @DrawableRes int i) {
        Intrinsics.checkParameterIsNotNull(logo, "logo");
        RequestOptions priority = new RequestOptions().error(i).skipMemoryCache(true).timeout(2500).priority(Priority.HIGH);
        Intrinsics.checkExpressionValueIsNotNull(priority, "RequestOptions()\n       … .priority(Priority.HIGH)");
        Glide.with(this).load(logo).apply(priority).into((ImageView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_logo));
        Timber.m37d("Loaded image from URL", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void loadSecondaryImage(@NotNull String secondaryImage, @DrawableRes int i) {
        Intrinsics.checkParameterIsNotNull(secondaryImage, "secondaryImage");
        ImageView activity_campaign_secondary_image = (ImageView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_secondary_image);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_secondary_image, "activity_campaign_secondary_image");
        activity_campaign_secondary_image.setVisibility(0);
        RequestOptions priority = new RequestOptions().error(i).skipMemoryCache(true).timeout(2500).priority(Priority.HIGH);
        Intrinsics.checkExpressionValueIsNotNull(priority, "RequestOptions()\n       … .priority(Priority.HIGH)");
        Glide.with(this).load(secondaryImage).apply(priority).into((ImageView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_secondary_image));
        Timber.m37d("Loaded image from URL", new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void navigate(@NotNull Intent intent) {
        Intrinsics.checkParameterIsNotNull(intent, "intent");
        startActivity(intent);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void navigate(@NotNull Class<?> className, @Nullable Parcelable parcelable, boolean z) {
        Intrinsics.checkParameterIsNotNull(className, "className");
        this.activity.swapFragment(className, parcelable, z);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void navigateBack() {
        this.activity.navigateBack();
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void navigateHome() {
        this.activity.finish();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment
    @NotNull
    public DetailFragment newInstance() {
        return new CampaignFragment();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onButtonClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(inflater, "inflater");
        return inflater.inflate(getLayoutResId(), viewGroup, false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailFragment, android.support.p001v4.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        _$_clearFindViewByIdCache();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void onFabClicked() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public boolean onMenuItemClicked(@Nullable MenuItem menuItem) {
        if (menuItem != null) {
            int itemId = menuItem.getItemId();
            if (itemId == 16908332) {
                return true;
            }
            switch (itemId) {
                case C1566R.C1569id.menu_inbox_message_delete /* 2131296930 */:
                    return true;
                case C1566R.C1569id.menu_inbox_message_mark_unread /* 2131296931 */:
                    return true;
            }
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        super.onViewCreated(view, bundle);
        DetailActivity activity = this.activity;
        Intrinsics.checkExpressionValueIsNotNull(activity, "activity");
        if (activity.getPayload() != null) {
            DetailActivity activity2 = this.activity;
            Intrinsics.checkExpressionValueIsNotNull(activity2, "activity");
            if (activity2.getPayload() instanceof CampaignUtil.CampaignTemplate) {
                DetailActivity activity3 = this.activity;
                Intrinsics.checkExpressionValueIsNotNull(activity3, "activity");
                Parcelable payload = activity3.getPayload();
                if (payload == null) {
                    throw new TypeCastException("null cannot be cast to non-null type com.privacystar.core.util.CampaignUtil.CampaignTemplate");
                }
                this.template = (CampaignUtil.CampaignTemplate) payload;
                getPresenter().onViewCreated();
                return;
            }
        }
        Timber.m37d("Finishing campaign activity - no CampaignTemplate found", new Object[0]);
        navigateBack();
    }

    @Override // com.privacystar.core.p011ui.detail_view.DetailActivity.DetailActivityContent
    public void refreshContent() {
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setButtonOneText(@NotNull String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        TextView activity_campaign_button1_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_button1_tv);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_button1_tv, "activity_campaign_button1_tv");
        activity_campaign_button1_tv.setText(text);
        Timber.m37d("Button 1 text set to '" + text + '\'', new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setButtonTwoText(@NotNull String text) {
        Intrinsics.checkParameterIsNotNull(text, "text");
        TextView activity_campaign_button2_tv = (TextView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_button2_tv);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_button2_tv, "activity_campaign_button2_tv");
        activity_campaign_button2_tv.setText(text);
        Timber.m37d("Button 2 text set to '" + text + '\'', new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setLogo(int i) {
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_logo)).setImageResource(i);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setMessage(@NotNull String message) {
        Intrinsics.checkParameterIsNotNull(message, "message");
        TextView activity_campaign_message = (TextView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_message);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_message, "activity_campaign_message");
        activity_campaign_message.setText(HtmlCompat.fromHtml(message, 0));
        Timber.m37d("Set message to '" + message + '\'', new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setSecondaryImage(@DrawableRes int i) {
        ImageView activity_campaign_secondary_image = (ImageView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_secondary_image);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_secondary_image, "activity_campaign_secondary_image");
        activity_campaign_secondary_image.setVisibility(0);
        ((ImageView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_secondary_image)).setImageResource(i);
    }

    public final void setTemplate(@NotNull CampaignUtil.CampaignTemplate campaignTemplate) {
        Intrinsics.checkParameterIsNotNull(campaignTemplate, "<set-?>");
        this.template = campaignTemplate;
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setTitle(@NotNull String title) {
        Intrinsics.checkParameterIsNotNull(title, "title");
        TextView activity_campaign_title = (TextView) _$_findCachedViewById(C1566R.C1569id.activity_campaign_title);
        Intrinsics.checkExpressionValueIsNotNull(activity_campaign_title, "activity_campaign_title");
        activity_campaign_title.setText(title);
        Timber.m37d("Set title to '" + title + '\'', new Object[0]);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void setupToolbar(boolean z) {
        this.activity.setDetailToolbarTitle(C1566R.string.campaign_toolbar_title);
        if (z) {
            this.activity.setToolbarMenu(getMenuResId());
            this.activity.enableToolbarMenu(true);
            return;
        }
        this.activity.enableToolbarMenu(false);
    }

    @Override // com.privacystar.core.p011ui.detail_view.campaign.CampaignContract.CampaignView
    public void showPaywall() {
        FragmentManager fragmentManager = getFragmentManager();
        if (fragmentManager == null) {
            throw new TypeCastException("null cannot be cast to non-null type android.support.v4.app.FragmentManager");
        }
        AFWelcomeDialogFragment.Companion.showWithCallback(fragmentManager, false, true, CampaignFragment$showPaywall$1.INSTANCE);
    }
}
