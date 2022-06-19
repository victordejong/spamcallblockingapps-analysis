package p193e.p194a.p852i.p905t;

import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import java.util.List;
import p193e.p194a.p682e.C13338z0;
import p193e.p194a.p852i.AbstractC15191g;
/* renamed from: e.a.i.t.g */
/* loaded from: classes2-dex2jar.jar:e/a/i/t/g.class */
public class C15234g extends C15226a {

    /* renamed from: e */
    public final int f43356e;

    /* renamed from: f */
    public final int f43357f;

    /* renamed from: e.a.i.t.g$a */
    /* loaded from: classes2-dex2jar.jar:e/a/i/t/g$a.class */
    public class C15235a extends RecyclerView.AbstractC0313c0 implements C13338z0.AbstractC13339a {

        /* renamed from: a */
        public final RecyclerView.AbstractC0313c0 f43358a;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C15235a(p193e.p194a.p852i.p905t.C15234g r6, androidx.recyclerview.widget.RecyclerView.AbstractC0313c0 r7, android.view.ViewGroup r8) {
            /*
                r5 = this;
                r0 = r7
                android.view.View r0 = r0.itemView
                r9 = r0
                r0 = r9
                android.content.Context r0 = r0.getContext()
                android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
                r1 = r6
                int r1 = r1.f43356e
                r2 = r8
                r3 = 0
                android.view.View r0 = r0.inflate(r1, r2, r3)
                android.view.ViewGroup r0 = (android.view.ViewGroup) r0
                r8 = r0
                r0 = r8
                r1 = r6
                int r1 = r1.f43357f
                android.view.View r0 = r0.findViewById(r1)
                android.view.ViewGroup r0 = (android.view.ViewGroup) r0
                r1 = r9
                r0.addView(r1)
                r0 = r5
                r1 = r8
                r0.<init>(r1)
                r0 = r5
                r1 = r7
                r0.f43358a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p852i.p905t.C15234g.C15235a.<init>(e.a.i.t.g, androidx.recyclerview.widget.RecyclerView$c0, android.view.ViewGroup):void");
        }

        @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
        /* renamed from: B */
        public boolean mo9976B() {
            return false;
        }

        @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
        /* renamed from: F */
        public String mo9975F() {
            return null;
        }
    }

    public C15234g(int i, int i2, RecyclerView.AbstractC0317g abstractC0317g, AbstractC15191g abstractC15191g, AbstractC15228b abstractC15228b, AbstractC15231e abstractC15231e) {
        super(abstractC0317g, abstractC15191g, abstractC15228b, abstractC15231e);
        this.f43356e = i;
        this.f43357f = i2;
    }

    @Override // p193e.p194a.p852i.p905t.C15226a, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i) {
        if (abstractC0313c0 instanceof C15235a) {
            super.onBindViewHolder(((C15235a) abstractC0313c0).f43358a, i);
        } else {
            super.onBindViewHolder(abstractC0313c0, i);
        }
    }

    @Override // p193e.p194a.p852i.p905t.C15226a, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(RecyclerView.AbstractC0313c0 abstractC0313c0, int i, List list) {
        if (abstractC0313c0 instanceof C15235a) {
            super.onBindViewHolder(((C15235a) abstractC0313c0).f43358a, i, list);
        } else {
            super.onBindViewHolder(abstractC0313c0, i, list);
        }
    }

    @Override // p193e.p194a.p852i.p905t.C15226a, androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public RecyclerView.AbstractC0313c0 onCreateViewHolder(ViewGroup viewGroup, int i) {
        RecyclerView.AbstractC0313c0 onCreateViewHolder = super.onCreateViewHolder(viewGroup, i);
        return (i == 2131366871 || i == 2131366877 || i == 2131366872) ? new C15235a(this, onCreateViewHolder, viewGroup) : onCreateViewHolder;
    }
}
