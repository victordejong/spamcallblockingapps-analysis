package com.privacystar.core.p011ui.util;

import android.support.p004v7.app.AppCompatActivity;
import android.view.View;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import com.privacystar.core.feature.FeatureManagerImpl;
import com.privacystar.core.p011ui.detail_view.DetailActivity;
import com.privacystar.core.p011ui.detail_view.subscription.SubscriptionFragment;
import com.privacystar.core.p011ui.widgets.FeatureDialog;
import com.privacystar.core.p011ui.widgets.PSSnackBars;
import com.privacystar.core.service.PreferenceUtil;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0003\u0018�� \u00032\u00020\u0001:\u0001\u0003B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0004"}, m254d2 = {"Lcom/privacystar/core/ui/util/StartupMessagingUtil;", "", "()V", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.util.StartupMessagingUtil */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/StartupMessagingUtil.class */
public final class StartupMessagingUtil {
    public static final Companion Companion = new Companion(null);

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bJ\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002¨\u0006\n"}, m254d2 = {"Lcom/privacystar/core/ui/util/StartupMessagingUtil$Companion;", "", "()V", "handleStartupMessaging", "", "root", "Landroid/view/View;", "context", "Landroid/support/v7/app/AppCompatActivity;", "showNeighborhoodSpoofingMessage", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.util.StartupMessagingUtil$Companion */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/StartupMessagingUtil$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void showNeighborhoodSpoofingMessage(final View view, final AppCompatActivity appCompatActivity) {
            final FeatureDialog featureDialog = new FeatureDialog();
            featureDialog.icon(Integer.valueOf((int) C1566R.C1568drawable.ic_spoofing_bell));
            String string = appCompatActivity.getString(C1566R.string.neighborhood_spoofing_title);
            Intrinsics.checkExpressionValueIsNotNull(string, "context.getString(R.stri…ghborhood_spoofing_title)");
            featureDialog.title(string);
            String string2 = appCompatActivity.getString(C1566R.string.neighborhood_spoofing_subtitle);
            Intrinsics.checkExpressionValueIsNotNull(string2, "context.getString(R.stri…orhood_spoofing_subtitle)");
            featureDialog.subtitle(string2);
            String string3 = appCompatActivity.getString(C1566R.string.general_enable_now);
            Intrinsics.checkExpressionValueIsNotNull(string3, "context.getString(R.string.general_enable_now)");
            featureDialog.posButton(string3, new View.OnClickListener() { // from class: com.privacystar.core.ui.util.StartupMessagingUtil$Companion$showNeighborhoodSpoofingMessage$$inlined$apply$lambda$1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    if (SubscriptionRealm.isSubscriptionOngoing(Realm.getDefaultInstance())) {
                        PreferenceUtil.putIsSpoofBlockingEnabled(true);
                        PSSnackBars.INSTANCE.getNeighborhoodSpoofingEnabledSnack(view, appCompatActivity).show();
                    } else {
                        appCompatActivity.startActivity(DetailActivity.detailIntent(appCompatActivity, SubscriptionFragment.class));
                    }
                    PreferenceUtil.putNewFeatureExplained(true);
                    FeatureDialog.this.getDialog().dismiss();
                }
            });
            String string4 = appCompatActivity.getString(C1566R.string.general_not_now);
            Intrinsics.checkExpressionValueIsNotNull(string4, "context.getString(R.string.general_not_now)");
            featureDialog.negButton(string4, new View.OnClickListener() { // from class: com.privacystar.core.ui.util.StartupMessagingUtil$Companion$showNeighborhoodSpoofingMessage$dialog$1$2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    PreferenceUtil.putNewFeatureExplained(false);
                    FeatureDialog.this.getDialog().dismiss();
                }
            });
            featureDialog.setCancelable(false);
            featureDialog.show(appCompatActivity.getSupportFragmentManager(), "");
        }

        public final void handleStartupMessaging(@NotNull View root, @NotNull AppCompatActivity context) {
            Intrinsics.checkParameterIsNotNull(root, "root");
            Intrinsics.checkParameterIsNotNull(context, "context");
            if (FeatureManagerImpl.INSTANCE.getNeighborHoodSpoofing()) {
                showNeighborhoodSpoofingMessage(root, context);
            }
        }
    }
}
