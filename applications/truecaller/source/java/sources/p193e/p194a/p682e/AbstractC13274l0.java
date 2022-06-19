package p193e.p194a.p682e;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.e.l0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/l0.class */
public abstract class AbstractC13274l0 extends RecyclerView.AbstractC0317g {

    /* renamed from: a */
    public RecyclerView.AbstractC0317g f38578a;

    /* renamed from: e.a.e.l0$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/l0$b.class */
    public class C13276b extends RecyclerView.AbstractC0320i {
        public C13276b(C13275a c13275a) {
            AbstractC13274l0.this = r4;
        }

        /* renamed from: a */
        public final int m21963a(int i, int i2) {
            return AbstractC13274l0.this.mo19036e(i + i2) - AbstractC13274l0.this.mo19036e(i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onChanged() {
            AbstractC13274l0.this.notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeChanged(int i, int i2) {
            AbstractC13274l0 abstractC13274l0 = AbstractC13274l0.this;
            abstractC13274l0.notifyItemRangeChanged(abstractC13274l0.mo19036e(i), m21963a(i, i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeChanged(int i, int i2, Object obj) {
            AbstractC13274l0 abstractC13274l0 = AbstractC13274l0.this;
            abstractC13274l0.notifyItemRangeChanged(abstractC13274l0.mo19036e(i), m21963a(i, i2), obj);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeInserted(int i, int i2) {
            AbstractC13274l0 abstractC13274l0 = AbstractC13274l0.this;
            abstractC13274l0.notifyItemRangeInserted(abstractC13274l0.mo19036e(i), m21963a(i, i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeMoved(int i, int i2, int i3) {
            if (i3 != 1) {
                AbstractC13274l0.this.notifyDataSetChanged();
                return;
            }
            AbstractC13274l0 abstractC13274l0 = AbstractC13274l0.this;
            abstractC13274l0.notifyItemMoved(abstractC13274l0.mo19036e(i), AbstractC13274l0.this.mo19036e(i2));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0320i
        public void onItemRangeRemoved(int i, int i2) {
            AbstractC13274l0 abstractC13274l0 = AbstractC13274l0.this;
            abstractC13274l0.notifyItemRangeRemoved(abstractC13274l0.mo19036e(i), m21963a(i, i2));
        }
    }

    public AbstractC13274l0(RecyclerView.AbstractC0317g abstractC0317g) {
        this.f38578a = abstractC0317g;
        abstractC0317g.registerAdapterDataObserver(new C13276b(null));
        super.setHasStableIds(this.f38578a.hasStableIds());
    }

    /* renamed from: e */
    public int mo19036e(int i) {
        return i;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f38578a.getItemCount();
    }

    /* renamed from: h */
    public abstract boolean mo10100h(int i);

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onAttachedToRecyclerView(RecyclerView recyclerView) {
        this.f38578a.onAttachedToRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onDetachedFromRecyclerView(RecyclerView recyclerView) {
        this.f38578a.onDetachedFromRecyclerView(recyclerView);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final boolean onFailedToRecycleView(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        return !mo10100h(abstractC0313c0.getItemViewType()) && this.f38578a.onFailedToRecycleView(abstractC0313c0);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewAttachedToWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        if (!mo10100h(abstractC0313c0.getItemViewType())) {
            this.f38578a.onViewAttachedToWindow(abstractC0313c0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onViewDetachedFromWindow(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        if (!mo10100h(abstractC0313c0.getItemViewType())) {
            this.f38578a.onViewDetachedFromWindow(abstractC0313c0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public final void onViewRecycled(RecyclerView.AbstractC0313c0 abstractC0313c0) {
        if (!mo10100h(abstractC0313c0.getItemViewType())) {
            this.f38578a.onViewRecycled(abstractC0313c0);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void setHasStableIds(boolean z) {
        super.setHasStableIds(z);
        this.f38578a.setHasStableIds(z);
    }
}
