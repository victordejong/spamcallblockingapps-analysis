package gogolook.callgogolook2.messaging.p078ui.conversation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.TranslateAnimation;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorItemView;
import java.util.ArrayList;
import java.util.List;
import p459j.p460a.p474c0.p475c.p478y.C11634p;
import p459j.p460a.p474c0.p499h.C12212s0;
/* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorView */
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorView.class */
public class SimSelectorView extends FrameLayout implements SimSelectorItemView.AbstractC4771b {

    /* renamed from: a */
    public ListView f11771a;

    /* renamed from: b */
    public final C4774c f11772b = new C4774c(getContext());

    /* renamed from: c */
    public boolean f11773c;

    /* renamed from: d */
    public AbstractC4775d f11774d;

    /* renamed from: e */
    public int f11775e;

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorView$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorView$a.class */
    public class View$OnClickListenerC4772a implements View.OnClickListener {
        public View$OnClickListenerC4772a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            SimSelectorView.this.m27071a(false, true);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorView$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorView$b.class */
    public class RunnableC4773b implements Runnable {
        public RunnableC4773b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            SimSelectorView.this.setAlpha(1.0f);
            SimSelectorView simSelectorView = SimSelectorView.this;
            simSelectorView.setVisibility(simSelectorView.f11773c ? 0 : 8);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorView$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorView$c.class */
    public class C4774c extends ArrayAdapter<C11634p.C11635a> {
        public C4774c(Context context) {
            super(context, (int) R$layout.sim_selector_item_view, new ArrayList());
        }

        /* renamed from: a */
        public void m27069a(List<C11634p.C11635a> list) {
            clear();
            addAll(list);
            notifyDataSetChanged();
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            SimSelectorItemView simSelectorItemView;
            if (view == null || !(view instanceof SimSelectorItemView)) {
                simSelectorItemView = (SimSelectorItemView) ((LayoutInflater) getContext().getSystemService("layout_inflater")).inflate(SimSelectorView.this.f11775e, viewGroup, false);
                simSelectorItemView.m27081a(SimSelectorView.this);
            } else {
                simSelectorItemView = (SimSelectorItemView) view;
            }
            simSelectorItemView.m27079a(getItem(i));
            return simSelectorItemView;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.conversation.SimSelectorView$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/messaging/ui/conversation/SimSelectorView$d.class */
    public interface AbstractC4775d {
        /* renamed from: a */
        void mo7691a(C11634p.C11635a aVar);

        /* renamed from: a */
        void mo7690a(boolean z);
    }

    public SimSelectorView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public void m27076a(int i) {
        this.f11775e = i;
    }

    /* renamed from: a */
    public void m27075a(AbstractC4775d dVar) {
        this.f11774d = dVar;
    }

    @Override // gogolook.callgogolook2.messaging.p078ui.conversation.SimSelectorItemView.AbstractC4771b
    /* renamed from: a */
    public void mo27073a(C11634p.C11635a aVar) {
        this.f11774d.mo7691a(aVar);
        m27071a(false, true);
    }

    /* renamed from: a */
    public void m27072a(C11634p pVar) {
        this.f11772b.m27069a(pVar.m8749a());
    }

    /* renamed from: a */
    public void m27071a(boolean z, boolean z2) {
        boolean z3 = this.f11773c;
        boolean z4 = true;
        if (!z || this.f11772b.getCount() <= 1) {
            z4 = false;
        }
        this.f11773c = z4;
        boolean z5 = this.f11773c;
        if (z3 != z5) {
            AbstractC4775d dVar = this.f11774d;
            if (dVar != null) {
                dVar.mo7690a(z5);
            }
            int i = 8;
            if (z2) {
                setVisibility(0);
                setAlpha(this.f11773c ? 0.0f : 1.0f);
                animate().alpha(this.f11773c ? 1.0f : 0.0f).setDuration(C12212s0.f27371c).withEndAction(new RunnableC4773b());
            } else {
                setVisibility(this.f11773c ? 0 : 8);
            }
            ListView listView = this.f11771a;
            if (this.f11773c) {
                i = 0;
            }
            listView.setVisibility(i);
            if (z2) {
                this.f11771a.clearAnimation();
                TranslateAnimation translateAnimation = new TranslateAnimation(1, 0.0f, 1, 0.0f, 1, this.f11773c ? 1.0f : 0.0f, 1, this.f11773c ? 0.0f : 1.0f);
                translateAnimation.setInterpolator(C12212s0.f27374f);
                translateAnimation.setDuration(C12212s0.f27371c);
                this.f11771a.startAnimation(translateAnimation);
            }
        }
    }

    /* renamed from: a */
    public boolean m27077a() {
        return this.f11773c;
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11771a = (ListView) findViewById(R$id.sim_list);
        this.f11771a.setAdapter((ListAdapter) this.f11772b);
        setOnClickListener(new View$OnClickListenerC4772a());
    }
}
