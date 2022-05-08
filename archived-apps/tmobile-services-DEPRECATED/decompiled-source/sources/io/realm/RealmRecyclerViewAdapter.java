package io.realm;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import io.realm.OrderedCollectionChangeSet;
import io.realm.RealmModel;
/* loaded from: classes2-dex2jar.jar:io/realm/RealmRecyclerViewAdapter.class */
public abstract class RealmRecyclerViewAdapter<T extends RealmModel, S extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<S> {

    /* renamed from: a */
    private final boolean f19963a;

    /* renamed from: b */
    private final boolean f19964b;

    /* renamed from: c */
    private final OrderedRealmCollectionChangeListener f19965c;
    @Nullable

    /* renamed from: d */
    private OrderedRealmCollection<T> f19966d;

    /* renamed from: io.realm.RealmRecyclerViewAdapter$1 */
    /* loaded from: classes2-dex2jar.jar:io/realm/RealmRecyclerViewAdapter$1.class */
    class C21541 implements OrderedRealmCollectionChangeListener {

        /* renamed from: a */
        final /* synthetic */ RealmRecyclerViewAdapter f19967a;

        @Override // io.realm.OrderedRealmCollectionChangeListener
        /* renamed from: a */
        public void mo2503a(Object obj, OrderedCollectionChangeSet orderedCollectionChangeSet) {
            OrderedCollectionChangeSet.Range[] a;
            OrderedCollectionChangeSet.Range[] b;
            if (orderedCollectionChangeSet == null) {
                this.f19967a.notifyDataSetChanged();
                return;
            }
            OrderedCollectionChangeSet.Range[] c = orderedCollectionChangeSet.mo2679c();
            for (int length = c.length - 1; length >= 0; length--) {
                OrderedCollectionChangeSet.Range range = c[length];
                this.f19967a.notifyItemRangeRemoved(range.f19835a, range.f19836b);
            }
            for (OrderedCollectionChangeSet.Range range2 : orderedCollectionChangeSet.mo2681a()) {
                this.f19967a.notifyItemRangeInserted(range2.f19835a, range2.f19836b);
            }
            if (this.f19967a.f19964b) {
                for (OrderedCollectionChangeSet.Range range3 : orderedCollectionChangeSet.mo2680b()) {
                    this.f19967a.notifyItemRangeChanged(range3.f19835a, range3.f19836b);
                }
            }
        }
    }

    /* renamed from: d */
    private void m2874d(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).m2866u(this.f19965c);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).m2957j(this.f19965c);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    /* renamed from: e */
    private boolean m2873e() {
        OrderedRealmCollection<T> orderedRealmCollection = this.f19966d;
        return orderedRealmCollection != null && orderedRealmCollection.isValid();
    }

    /* renamed from: f */
    private void m2872f(@NonNull OrderedRealmCollection<T> orderedRealmCollection) {
        if (orderedRealmCollection instanceof RealmResults) {
            ((RealmResults) orderedRealmCollection).m2869C(this.f19965c);
        } else if (orderedRealmCollection instanceof RealmList) {
            ((RealmList) orderedRealmCollection).m2945z(this.f19965c);
        } else {
            throw new IllegalArgumentException("RealmCollection not supported: " + orderedRealmCollection.getClass());
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return m2873e() ? this.f19966d.size() : 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public long getItemId(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        super.onAttachedToRecyclerView(recyclerView);
        if (this.f19963a && m2873e()) {
            m2874d(this.f19966d);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        super.onDetachedFromRecyclerView(recyclerView);
        if (this.f19963a && m2873e()) {
            m2872f(this.f19966d);
        }
    }
}
