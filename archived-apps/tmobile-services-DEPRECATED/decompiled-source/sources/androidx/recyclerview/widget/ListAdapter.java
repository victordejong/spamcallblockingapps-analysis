package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
import androidx.recyclerview.widget.AsyncListDiffer;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerView.ViewHolder;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ListAdapter.class */
public abstract class ListAdapter<T, VH extends RecyclerView.ViewHolder> extends RecyclerView.Adapter<VH> {

    /* renamed from: a */
    final AsyncListDiffer<T> f4708a;

    /* renamed from: androidx.recyclerview.widget.ListAdapter$1 */
    /* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/ListAdapter$1.class */
    class C04751 implements AsyncListDiffer.ListListener<T> {

        /* renamed from: a */
        final /* synthetic */ ListAdapter f4709a;

        @Override // androidx.recyclerview.widget.AsyncListDiffer.ListListener
        /* renamed from: a */
        public void mo17567a(@NonNull List<T> list, @NonNull List<T> list2) {
            this.f4709a.m17568c(list, list2);
        }
    }

    /* renamed from: c */
    public void m17568c(@NonNull List<T> list, @NonNull List<T> list2) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f4708a.m17865a().size();
    }
}
