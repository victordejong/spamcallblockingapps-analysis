package com.privacystar.core.p011ui.widgets;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.p004v7.widget.RecyclerView;
import android.support.p004v7.widget.RecyclerView.ViewHolder;
import io.realm.OrderedCollectionChangeSet;
import io.realm.OrderedRealmCollection;
import io.realm.OrderedRealmCollectionChangeListener;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmResults;
/* renamed from: com.privacystar.core.ui.widgets.RealmRecyclerViewAdapter */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/RealmRecyclerViewAdapter.class */
public abstract class RealmRecyclerViewAdapter<T extends RealmModel, S extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<S> {
    @Nullable
    private OrderedRealmCollection<T> adapterData;
    private final boolean hasAutoUpdates;
    private final OrderedRealmCollectionChangeListener listener;

    public RealmRecyclerViewAdapter(@Nullable OrderedRealmCollection<T> orderedRealmCollection, boolean z) {
        if (orderedRealmCollection == null || orderedRealmCollection.isManaged()) {
            this.adapterData = orderedRealmCollection;
            this.hasAutoUpdates = z;
            this.listener = this.hasAutoUpdates ? createListener() : null;
            return;
        }
        throw new IllegalStateException("Only use this adapter with managed RealmCollection, for un-managed lists you can just use the BaseRecyclerViewAdapter");
    }

    private void addListener(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).addChangeListener(this.listener);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).addChangeListener(this.listener);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    private OrderedRealmCollectionChangeListener createListener() {
        return new OrderedRealmCollectionChangeListener(this) { // from class: com.privacystar.core.ui.widgets.RealmRecyclerViewAdapter$$Lambda$0
            private final RealmRecyclerViewAdapter arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
            }

            @Override // io.realm.OrderedRealmCollectionChangeListener
            public void onChange(Object obj, OrderedCollectionChangeSet orderedCollectionChangeSet) {
                this.arg$1.lambda$createListener$0$RealmRecyclerViewAdapter(obj, orderedCollectionChangeSet);
            }
        };
    }

    private boolean isDataValid() {
        return this.adapterData != null && this.adapterData.isValid();
    }

    private void removeListener(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).removeChangeListener(this.listener);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).removeChangeListener(this.listener);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    @Nullable
    public OrderedRealmCollection<T> getData() {
        return this.adapterData;
    }

    @Nullable
    public T getItem(int i) {
        return isDataValid() ? this.adapterData.get(i) : null;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public int getItemCount() {
        return isDataValid() ? this.adapterData.size() : 0;
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$createListener$0$RealmRecyclerViewAdapter(Object obj, OrderedCollectionChangeSet orderedCollectionChangeSet) {
        notifyDataSetChanged();
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        if (this.hasAutoUpdates && isDataValid()) {
            addListener(this.adapterData);
        }
    }

    @Override // android.support.p004v7.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        if (this.hasAutoUpdates && isDataValid()) {
            removeListener(this.adapterData);
        }
    }

    public void updateData(@Nullable OrderedRealmCollection<T> orderedRealmCollection) {
        if (this.hasAutoUpdates) {
            if (isDataValid()) {
                removeListener(this.adapterData);
            }
            if (orderedRealmCollection != null) {
                addListener(orderedRealmCollection);
            }
        }
        this.adapterData = orderedRealmCollection;
        notifyDataSetChanged();
    }
}
