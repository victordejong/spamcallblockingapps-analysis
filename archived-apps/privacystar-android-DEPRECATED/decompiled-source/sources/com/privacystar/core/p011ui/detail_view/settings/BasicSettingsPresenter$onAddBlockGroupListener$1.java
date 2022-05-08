package com.privacystar.core.p011ui.detail_view.settings;

import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m254d2 = {"com/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter$onAddBlockGroupListener$1", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnAddBlockGroupListener;", "onAddBlockGroup", "", "blockGroup", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.BasicSettingsPresenter$onAddBlockGroupListener$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/BasicSettingsPresenter$onAddBlockGroupListener$1.class */
public final class BasicSettingsPresenter$onAddBlockGroupListener$1 implements BasicSettingsContract.OnAddBlockGroupListener {
    final /* synthetic */ BasicSettingsPresenter this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BasicSettingsPresenter$onAddBlockGroupListener$1(BasicSettingsPresenter basicSettingsPresenter) {
        this.this$0 = basicSettingsPresenter;
    }

    @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.OnAddBlockGroupListener
    public void onAddBlockGroup(@NotNull String blockGroup) {
        Intrinsics.checkParameterIsNotNull(blockGroup, "blockGroup");
        Timber.m37d("Adding [%s] to group block list.", blockGroup);
        this.this$0.getModel().saveBlockingGroup(blockGroup, new BasicSettingsContract.OnAddBlockGroupCompleteListener() { // from class: com.privacystar.core.ui.detail_view.settings.BasicSettingsPresenter$onAddBlockGroupListener$1$onAddBlockGroup$1
            @Override // com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract.OnAddBlockGroupCompleteListener
            public void onAddBlockGroupComplete() {
                WeakReference weakReference;
                weakReference = BasicSettingsPresenter$onAddBlockGroupListener$1.this.this$0.view;
                BasicSettingsContract.View view = (BasicSettingsContract.View) weakReference.get();
                if (view != null) {
                    view.refreshGroupBlockList();
                }
            }
        });
    }
}
