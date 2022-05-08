package com.privacystar.core.p011ui.detail_view.block_list;

import com.privacystar.core.data.model.ApprovedList;
import com.privacystar.core.data.model.BlockList;
import io.realm.Realm;
import io.realm.RealmResults;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018��2\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListContract;", "", "()V", "Manager", "View", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockApproveListContract */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockApproveListContract.class */
public final class BlockApproveListContract {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$Manager;", "", "shouldAttachItselfAsCurrentFragment", "", "shouldEnableFabIcon", "shouldEnableToolbar", "shouldShowAddNumberAsDialog", "shouldShowConfirmationAsBanner", "shouldShowContextDialogOnLongClick", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockApproveListContract$Manager */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$Manager.class */
    public interface Manager {
        boolean shouldAttachItselfAsCurrentFragment();

        boolean shouldEnableFabIcon();

        boolean shouldEnableToolbar();

        boolean shouldShowAddNumberAsDialog();

        boolean shouldShowConfirmationAsBanner();

        boolean shouldShowContextDialogOnLongClick();
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u000e\n\u0002\b\u0005\bf\u0018��2\u00020\u0001J\u0016\u0010\u0002\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005H&J\u0016\u0010\u0007\u001a\u00020\u00032\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\b0\u0005H&J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH&J\b\u0010\r\u001a\u00020\nH&J\u000f\u0010\u000e\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0002\u0010\u000fJ\b\u0010\u0010\u001a\u00020\u0011H&J\u0010\u0010\u0012\u001a\u00020\n2\u0006\u0010\u0013\u001a\u00020\fH&J\u0010\u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\fH&J\b\u0010\u0016\u001a\u00020\nH&J\b\u0010\u0017\u001a\u00020\nH&J\u0010\u0010\u0018\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aH&J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u0019\u001a\u00020\u001aH&J\b\u0010\u001c\u001a\u00020\nH&J\b\u0010\u001d\u001a\u00020\nH&J\b\u0010\u001e\u001a\u00020\nH&¨\u0006\u001f"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$View;", "", "createAdapterForApproving", "", "list", "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/ApprovedList;", "createAdapterForBlocking", "Lcom/privacystar/core/data/model/BlockList;", "enableFab", "", "isVisible", "", "enableToolBar", "getItemCountInAdapter", "()Ljava/lang/Integer;", "getRealmInst", "Lio/realm/Realm;", "refreshBlockList", "isFullRefresh", "setNumberListVisible", "visible", "showAddNumberAsDialog", "showAddNumberAsFragment", "showAlreadyApproved", "number", "", "showAlreadyBlocked", "showFeatureNotAvailable", "showInvalidPhoneNumber", "showSuccessfullyAdded", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.block_list.BlockApproveListContract$View */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/block_list/BlockApproveListContract$View.class */
    public interface View {
        int createAdapterForApproving(@NotNull RealmResults<ApprovedList> realmResults);

        int createAdapterForBlocking(@NotNull RealmResults<BlockList> realmResults);

        void enableFab(boolean z);

        void enableToolBar();

        @Nullable
        Integer getItemCountInAdapter();

        @NotNull
        Realm getRealmInst();

        void refreshBlockList(boolean z);

        void setNumberListVisible(boolean z);

        void showAddNumberAsDialog();

        void showAddNumberAsFragment();

        void showAlreadyApproved(@NotNull String str);

        void showAlreadyBlocked(@NotNull String str);

        void showFeatureNotAvailable();

        void showInvalidPhoneNumber();

        void showSuccessfullyAdded();
    }
}
