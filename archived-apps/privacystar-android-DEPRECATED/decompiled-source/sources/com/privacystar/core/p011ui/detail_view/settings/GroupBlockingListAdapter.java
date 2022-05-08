package com.privacystar.core.p011ui.detail_view.settings;

import android.support.annotation.UiThread;
import android.support.p004v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.model.GroupBlock;
import com.privacystar.core.p011ui.detail_view.settings.BasicSettingsContract;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0013B\u001b\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\t\u001a\u00020\nH\u0016J\u0018\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\nH\u0016J\u0018\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\nH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0014"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter;", "Landroid/support/v7/widget/RecyclerView$Adapter;", "Lcom/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter$ViewHolder;", "groupBlockList", "", "Lcom/privacystar/core/data/model/GroupBlock;", "clickListener", "Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnUnblockClickListener;", "(Ljava/util/List;Lcom/privacystar/core/ui/detail_view/settings/BasicSettingsContract$OnUnblockClickListener;)V", "getItemCount", "", "onBindViewHolder", "", "holder", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "ViewHolder", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.settings.GroupBlockingListAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter.class */
public final class GroupBlockingListAdapter extends RecyclerView.Adapter<ViewHolder> {
    private final BasicSettingsContract.OnUnblockClickListener clickListener;
    private final List<GroupBlock> groupBlockList;

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u001e\u0010\u0005\u001a\u00020\u00068\u0006@\u0006X\u0087.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001e\u0010\u000b\u001a\u00020\f8\u0006@\u0006X\u0087.¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter$ViewHolder;", "Landroid/support/v7/widget/RecyclerView$ViewHolder;", Promotion.ACTION_VIEW, "Landroid/view/View;", "(Landroid/view/View;)V", "button", "Landroid/widget/Button;", "getButton", "()Landroid/widget/Button;", "setButton", "(Landroid/widget/Button;)V", "number", "Landroid/widget/TextView;", "getNumber", "()Landroid/widget/TextView;", "setNumber", "(Landroid/widget/TextView;)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* renamed from: com.privacystar.core.ui.detail_view.settings.GroupBlockingListAdapter$ViewHolder */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter$ViewHolder.class */
    public static final class ViewHolder extends RecyclerView.ViewHolder {
        @BindView(C1566R.C1569id.group_blocking_item_button)
        @NotNull
        public Button button;
        @BindView(C1566R.C1569id.group_blocking_item_number)
        @NotNull
        public TextView number;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ViewHolder(@NotNull View view) {
            super(view);
            Intrinsics.checkParameterIsNotNull(view, "view");
            ButterKnife.bind(this, view);
        }

        @NotNull
        public final Button getButton() {
            Button button = this.button;
            if (button == null) {
                Intrinsics.throwUninitializedPropertyAccessException("button");
            }
            return button;
        }

        @NotNull
        public final TextView getNumber() {
            TextView textView = this.number;
            if (textView == null) {
                Intrinsics.throwUninitializedPropertyAccessException("number");
            }
            return textView;
        }

        public final void setButton(@NotNull Button button) {
            Intrinsics.checkParameterIsNotNull(button, "<set-?>");
            this.button = button;
        }

        public final void setNumber(@NotNull TextView textView) {
            Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
            this.number = textView;
        }
    }

    /* renamed from: com.privacystar.core.ui.detail_view.settings.GroupBlockingListAdapter$ViewHolder_ViewBinding */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/settings/GroupBlockingListAdapter$ViewHolder_ViewBinding.class */
    public final class ViewHolder_ViewBinding implements Unbinder {
        private ViewHolder target;

        @UiThread
        public ViewHolder_ViewBinding(ViewHolder viewHolder, View view) {
            this.target = viewHolder;
            viewHolder.number = (TextView) Utils.findRequiredViewAsType(view, C1566R.C1569id.group_blocking_item_number, "field 'number'", TextView.class);
            viewHolder.button = (Button) Utils.findRequiredViewAsType(view, C1566R.C1569id.group_blocking_item_button, "field 'button'", Button.class);
        }

        @Override // butterknife.Unbinder
        public void unbind() {
            ViewHolder viewHolder = this.target;
            if (viewHolder == null) {
                throw new IllegalStateException("Bindings already cleared.");
            }
            this.target = null;
            viewHolder.number = null;
            viewHolder.button = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public GroupBlockingListAdapter(@NotNull List<? extends GroupBlock> groupBlockList, @NotNull BasicSettingsContract.OnUnblockClickListener clickListener) {
        Intrinsics.checkParameterIsNotNull(groupBlockList, "groupBlockList");
        Intrinsics.checkParameterIsNotNull(clickListener, "clickListener");
        this.groupBlockList = groupBlockList;
        this.clickListener = clickListener;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        Timber.m25w("GroupBlockList entries contains " + this.groupBlockList.size() + " entries but attempted getItemCount().", new Object[0]);
        return this.groupBlockList.size();
    }

    public void onBindViewHolder(@NotNull ViewHolder holder, int i) {
        Intrinsics.checkParameterIsNotNull(holder, "holder");
        Timber.m28v("GroupBlock ViewHolder bound to log item, populating with data at position %d.", Integer.valueOf(i));
        final GroupBlock groupBlock = this.groupBlockList.get(i);
        String prefix = groupBlock.getNumber();
        Intrinsics.checkExpressionValueIsNotNull(prefix, "prefix");
        String str = prefix;
        if (!StringsKt.contains$default((CharSequence) prefix, (CharSequence) "*", false, 2, (Object) null)) {
            str = prefix + "*";
        }
        holder.getNumber().setText(str);
        holder.getButton().setOnClickListener(new View.OnClickListener() { // from class: com.privacystar.core.ui.detail_view.settings.GroupBlockingListAdapter$onBindViewHolder$1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                BasicSettingsContract.OnUnblockClickListener onUnblockClickListener;
                onUnblockClickListener = GroupBlockingListAdapter.this.clickListener;
                String number = groupBlock.getNumber();
                Intrinsics.checkExpressionValueIsNotNull(number, "item.number");
                onUnblockClickListener.onUnblock(number);
            }
        });
        Timber.m28v("GroupBlock item data read. Rendering from data payload.", new Object[0]);
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    @NotNull
    public ViewHolder onCreateViewHolder(@NotNull ViewGroup parent, int i) {
        Intrinsics.checkParameterIsNotNull(parent, "parent");
        Timber.m37d("Creating data adapter for Call History.", new Object[0]);
        View groupBlockView = LayoutInflater.from(parent.getContext()).inflate(C1566R.C1571layout.group_blocking_list_item, parent, false);
        Timber.m28v("GroupBLock ViewHolder item inflated into %s.", parent.toString());
        Intrinsics.checkExpressionValueIsNotNull(groupBlockView, "groupBlockView");
        return new ViewHolder(groupBlockView);
    }
}
