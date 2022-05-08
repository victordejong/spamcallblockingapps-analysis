package com.privacystar.core.p011ui.detail_view.about;

import com.privacystar.core.data.model.Subscription;
import com.privacystar.core.data.model.helper.SubscriptionRealm;
import io.realm.Realm;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\n\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, m254d2 = {"<anonymous>", "Lcom/privacystar/core/data/model/Subscription;", "kotlin.jvm.PlatformType", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.about.AccountInformationFragment$subscription$2 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/about/AccountInformationFragment$subscription$2.class */
public final class AccountInformationFragment$subscription$2 extends Lambda implements Function0<Subscription> {
    final /* synthetic */ AccountInformationFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AccountInformationFragment$subscription$2(AccountInformationFragment accountInformationFragment) {
        super(0);
        this.this$0 = accountInformationFragment;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final Subscription invoke() {
        Realm realm;
        realm = this.this$0.getRealm();
        return SubscriptionRealm.getSubscription(realm);
    }
}
