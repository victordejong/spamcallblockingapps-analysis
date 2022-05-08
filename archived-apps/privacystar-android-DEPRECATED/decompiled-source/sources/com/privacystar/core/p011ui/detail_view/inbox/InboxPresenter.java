package com.privacystar.core.p011ui.detail_view.inbox;

import com.apptentive.android.sdk.module.engagement.interaction.model.TextModalInteraction;
import com.google.android.gms.analytics.ecommerce.Promotion;
import com.privacystar.core.data.model.Message;
import com.privacystar.core.data.model.helper.MessageRealm;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import com.privacystar.core.p011ui.detail_view.DetailActivityManagerImpl;
import com.privacystar.core.p011ui.detail_view.inbox.InboxContract;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.CampaignUtil;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
import java.lang.ref.WeakReference;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\u0018��2\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0010\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bH\u0002J\u0006\u0010\u001c\u001a\u00020\u001dJ\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001f\u001a\u00020\u001dH\u0002J\u0016\u0010 \u001a\u00020\u00192\u0006\u0010!\u001a\u00020\"2\u0006\u0010\u001f\u001a\u00020\u001dJ\u0006\u0010#\u001a\u00020\u0019J\u0006\u0010$\u001a\u00020\u0019J\u000e\u0010%\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u000e\u0010&\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010'\u001a\u00020\u0019J\u0006\u0010(\u001a\u00020\u0019J\u0006\u0010)\u001a\u00020\u0019J\u0006\u0010*\u001a\u00020\u0019R\u001c\u0010\u0006\u001a\u00020\u00078FX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u000bR\u001a\u0010\f\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\r\u0010\t\"\u0004\b\u000e\u0010\u000bR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0017¨\u0006+"}, m254d2 = {"Lcom/privacystar/core/ui/detail_view/inbox/InboxPresenter;", "", Promotion.ACTION_VIEW, "Ljava/lang/ref/WeakReference;", "Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$View;", "(Ljava/lang/ref/WeakReference;)V", "contentExists", "", "getContentExists", "()Z", "setContentExists", "(Z)V", "editing", "getEditing", "setEditing", MessagesContract.MessagesEntry.TABLE_NAME, "Lio/realm/RealmResults;", "Lcom/privacystar/core/data/model/Message;", "getMessages", "()Lio/realm/RealmResults;", "setMessages", "(Lio/realm/RealmResults;)V", "getView", "()Ljava/lang/ref/WeakReference;", "createMessage", "", "batchId", "", "getItemCount", "", "getMessage", TextModalInteraction.EVENT_KEY_ACTION_POSITION, "onBindViewHolder", "viewHolder", "Lcom/privacystar/core/ui/detail_view/inbox/InboxContract$ViewHolder;", "onContentRefreshed", "onEditClicked", "onIconClicked", "onMessageClicked", "onViewCreated", "onViewDestroyed", "onViewResumed", "setContent", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.detail_view.inbox.InboxPresenter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/detail_view/inbox/InboxPresenter.class */
public final class InboxPresenter {
    private boolean contentExists;
    private boolean editing;
    @NotNull
    public RealmResults<Message> messages;
    @NotNull
    private final WeakReference<InboxContract.View> view;

    public InboxPresenter(@NotNull WeakReference<InboxContract.View> view) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        this.view = view;
    }

    private final void createMessage(String str) {
        InboxContract.View view = this.view.get();
        if (view != null) {
            Message message = MessageRealm.getMessage(view.getRealmTemp(), str);
            CampaignUtil campaignUtil = CampaignUtil.INSTANCE;
            Intrinsics.checkExpressionValueIsNotNull(message, "message");
            view.launchMessage(campaignUtil.messageToTemplate(message));
        }
    }

    private final Message getMessage(int i) {
        RealmResults<Message> realmResults = this.messages;
        if (realmResults == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        if (!realmResults.isLoaded()) {
            Timber.m25w("Messages haven't been loaded", new Object[0]);
            return null;
        }
        RealmResults<Message> realmResults2 = this.messages;
        if (realmResults2 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        if (i >= realmResults2.size() || i < 0) {
            Timber.m25w("Invalid position", new Object[0]);
            return null;
        }
        RealmResults<Message> realmResults3 = this.messages;
        if (realmResults3 == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        return (Message) realmResults3.get(i);
    }

    public final boolean getContentExists() {
        boolean z;
        RealmResults<Message> realmResults = this.messages;
        if (realmResults == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        if (realmResults.isLoaded()) {
            RealmResults<Message> realmResults2 = this.messages;
            if (realmResults2 == null) {
                Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
            }
            if (realmResults2.size() > 0) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }

    public final boolean getEditing() {
        return this.editing;
    }

    public final int getItemCount() {
        RealmResults<Message> realmResults = this.messages;
        if (realmResults == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        return realmResults.size();
    }

    @NotNull
    public final RealmResults<Message> getMessages() {
        RealmResults<Message> realmResults = this.messages;
        if (realmResults == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        return realmResults;
    }

    @NotNull
    public final WeakReference<InboxContract.View> getView() {
        return this.view;
    }

    public final void onBindViewHolder(@NotNull InboxContract.ViewHolder viewHolder, int i) {
        Intrinsics.checkParameterIsNotNull(viewHolder, "viewHolder");
        Message message = getMessage(i);
        if (message == null) {
            Timber.m37d("Message ViewHolder has empty dataset", new Object[0]);
            return;
        }
        Timber.m37d("message: %s, read: %b, is being edited: %b", message.getMessageTitle(), Boolean.valueOf(message.isRead()), Boolean.valueOf(this.editing));
        String messageTitle = message.getMessageTitle();
        Intrinsics.checkExpressionValueIsNotNull(messageTitle, "entry.messageTitle");
        viewHolder.setTitle(messageTitle);
        String messageSubtitle = message.getMessageSubtitle();
        Intrinsics.checkExpressionValueIsNotNull(messageSubtitle, "entry.messageSubtitle");
        viewHolder.setSubtitle(messageSubtitle);
        String batchId = message.getBatchId();
        Intrinsics.checkExpressionValueIsNotNull(batchId, "entry.batchId");
        viewHolder.setMessage(batchId);
        viewHolder.toggleReadIcon(message.isRead(), this.editing);
    }

    public final void onContentRefreshed() {
        InboxContract.View view = this.view.get();
        if (view != null) {
            view.notifyAdapterOnUiThread();
        }
        setContent();
    }

    public final void onEditClicked() {
        this.editing = !this.editing;
        InboxContract.View view = this.view.get();
        if (view != null) {
            view.setEditButtonStatus(this.editing);
        }
        onContentRefreshed();
    }

    public final void onIconClicked(@NotNull String batchId) {
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        if (this.editing) {
            AnalyticsManager.INSTANCE.fire(Event.NotificationsMessageDelete.INSTANCE);
            InboxContract.View view = this.view.get();
            MessageRealm.delete(view != null ? view.getRealmTemp() : null, batchId);
            onContentRefreshed();
            return;
        }
        AnalyticsManager.INSTANCE.fire(Event.NotificationsMessageRead.INSTANCE);
        createMessage(batchId);
    }

    public final void onMessageClicked(@NotNull String batchId) {
        Intrinsics.checkParameterIsNotNull(batchId, "batchId");
        Timber.m37d("Message to open: %s", batchId);
        AnalyticsManager.INSTANCE.fire(Event.NotificationsMessageRead.INSTANCE);
        createMessage(batchId);
    }

    public final void onViewCreated() {
        AnalyticsManager.INSTANCE.fire(Event.NotificationsPageView.INSTANCE);
        InboxContract.View view = this.view.get();
        RealmResults<Message> messagesAsync = MessageRealm.getMessagesAsync(view != null ? view.getRealmTemp() : null);
        Intrinsics.checkExpressionValueIsNotNull(messagesAsync, "MessageRealm.getMessages…ew.get()?.getRealmTemp())");
        this.messages = messagesAsync;
        RealmResults<Message> realmResults = this.messages;
        if (realmResults == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        realmResults.addChangeListener(new RealmChangeListener<RealmResults<Message>>() { // from class: com.privacystar.core.ui.detail_view.inbox.InboxPresenter$onViewCreated$1
            public final void onChange(RealmResults<Message> realmResults2) {
                InboxPresenter.this.setContent();
            }
        });
        InboxContract.View view2 = this.view.get();
        if (view2 != null) {
            view2.setupView();
            view2.setupRecyclerView();
            if (!DetailActivityManagerImpl.INSTANCE.shouldShowEditButton() || !getContentExists()) {
                view2.setupToolbar();
            } else {
                view2.setupToolbarWithMenu();
                view2.setEditButtonStatus(this.editing);
            }
            setContent();
        }
    }

    public final void onViewDestroyed() {
        RealmResults<Message> realmResults = this.messages;
        if (realmResults == null) {
            Intrinsics.throwUninitializedPropertyAccessException(MessagesContract.MessagesEntry.TABLE_NAME);
        }
        realmResults.removeAllChangeListeners();
    }

    public final void onViewResumed() {
        InboxContract.View view;
        setContent();
        if (PreferenceUtil.getShouldInboxShowRateDialog()) {
            PreferenceUtil.putShouldInboxShowRateDialog(false);
            if (PreferenceUtil.getLastRatedVersion() < 304020059 && (view = this.view.get()) != null) {
                view.showRateDialog();
            }
        }
    }

    public final void setContent() {
        InboxContract.View view = this.view.get();
        if (view != null) {
            view.setupContent(getContentExists());
        }
    }

    public final void setContentExists(boolean z) {
        this.contentExists = z;
    }

    public final void setEditing(boolean z) {
        this.editing = z;
    }

    public final void setMessages(@NotNull RealmResults<Message> realmResults) {
        Intrinsics.checkParameterIsNotNull(realmResults, "<set-?>");
        this.messages = realmResults;
    }
}
