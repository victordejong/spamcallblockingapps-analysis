package com.privacystar.core.p011ui.intro;

import com.privacystar.core.data.model.RegistrationData;
import com.privacystar.core.data.model.types.RegistrationDataStatus;
import io.realm.RealmResults;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\n¢\u0006\u0002\b\u0005"}, m254d2 = {"<anonymous>", "", "obs", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/RegistrationData;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.intro.PrivacyNoticeFragment$registrationListener$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/intro/PrivacyNoticeFragment$registrationListener$1.class */
final class PrivacyNoticeFragment$registrationListener$1 extends Lambda implements Function1<RealmResults<RegistrationData>, Unit> {
    final /* synthetic */ PrivacyNoticeFragment this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PrivacyNoticeFragment$registrationListener$1(PrivacyNoticeFragment privacyNoticeFragment) {
        super(1);
        this.this$0 = privacyNoticeFragment;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(RealmResults<RegistrationData> realmResults) {
        invoke2(realmResults);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull RealmResults<RegistrationData> obs) {
        boolean z;
        Intrinsics.checkParameterIsNotNull(obs, "obs");
        RealmResults<RegistrationData> realmResults = obs;
        if (!(realmResults instanceof Collection) || !realmResults.isEmpty()) {
            Iterator<RegistrationData> it = realmResults.iterator();
            while (true) {
                z = false;
                if (!it.hasNext()) {
                    break;
                }
                RegistrationData data = it.next();
                Intrinsics.checkExpressionValueIsNotNull(data, "data");
                if (Intrinsics.areEqual(data.getDataStatus(), RegistrationDataStatus.ACTIVE.getStatus())) {
                    z = true;
                    break;
                }
            }
        } else {
            z = false;
        }
        if (z) {
            this.this$0.transition();
        }
    }
}
