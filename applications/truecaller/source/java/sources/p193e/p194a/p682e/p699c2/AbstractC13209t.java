package p193e.p194a.p682e.p699c2;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.log.AssertionUtil;
import p193e.p194a.p682e.p699c2.AbstractC13209t.C13211b;
/* renamed from: e.a.e.c2.t */
/* loaded from: classes15-dex2jar.jar:e/a/e/c2/t.class */
public abstract class AbstractC13209t<VH extends C13211b> extends RecyclerView.AbstractC0317g<VH> {

    /* renamed from: a */
    public AbstractC13210a f38359a;

    /* renamed from: e.a.e.c2.t$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/t$a.class */
    public interface AbstractC13210a {
        /* renamed from: a */
        void mo10041a(int i, long j);
    }

    /* renamed from: e.a.e.c2.t$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c2/t$b.class */
    public static class C13211b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public int f38360a;

        public C13211b(View view) {
            super(view);
        }
    }

    /* renamed from: e */
    public abstract void mo10012e(VH vh, int i);

    /* renamed from: g */
    public abstract VH mo10011g(ViewGroup viewGroup, int i);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        C13211b c13211b = (C13211b) abstractC0313c0;
        c13211b.f38360a = i;
        mo10012e(c13211b, i);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        VH mo10011g = mo10011g(viewGroup, i);
        AssertionUtil.isTrue(!mo10011g.itemView.hasOnClickListeners(), "This item view can not have an OnClickListener, it will interfere with any OnItemClickListener");
        mo10011g.itemView.setOnClickListener(new View$OnClickListenerC13207r(this, mo10011g));
        mo10011g.itemView.setOnLongClickListener(new View$OnLongClickListenerC13208s(this, mo10011g));
        return mo10011g;
    }
}
