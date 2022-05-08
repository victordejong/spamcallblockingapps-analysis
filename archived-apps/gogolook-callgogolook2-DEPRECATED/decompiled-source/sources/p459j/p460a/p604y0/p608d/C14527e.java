package p459j.p460a.p604y0.p608d;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.vas.main.VasDetectionActivity;
import gogolook.callgogolook2.vas.main.adapter.VasMessageItem;
import java.util.ArrayList;
import java.util.HashMap;
import kotlin.Metadata;
import p459j.p460a.p521j0.p529x.C12810o;
import p459j.p460a.p550p.AbstractC13304g;
import p459j.p460a.p582w0.p590x4.C14261f;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p604y0.p608d.p609h.C14539c;
import p459j.p460a.p604y0.p608d.p609h.C14540d;
import p459j.p460a.p604y0.p611f.C14589b;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.C14978j;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0011\u001a\u00020\u00122\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001a2\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016J\b\u0010\u001b\u001a\u00020\u0012H\u0016J\u001a\u0010\u001c\u001a\u00020\u00122\u0006\u0010\u001d\u001a\u00020\u00162\b\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u001c\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u000e\u0010\u000f\u001a\u00020\u0010X\u0082.¢\u0006\u0002\n��¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/vas/main/VasMainFragment;", "Landroidx/fragment/app/Fragment;", "()V", "recyclerView", "Landroidx/recyclerview/widget/RecyclerView;", "getRecyclerView", "()Landroidx/recyclerview/widget/RecyclerView;", "setRecyclerView", "(Landroidx/recyclerview/widget/RecyclerView;)V", "sourceFrom", "", "getSourceFrom", "()I", "setSourceFrom", "(I)V", "viewDataBinding", "Lgogolook/callgogolook2/databinding/FragmentVasMainBinding;", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "onResume", "onViewCreated", "view", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.y0.d.e */
/* loaded from: classes3-dex2jar.jar:j/a/y0/d/e.class */
public final class C14527e extends Fragment {

    /* renamed from: e */
    public static final C14528a f32462e = new C14528a(null);

    /* renamed from: a */
    public AbstractC13304g f32463a;

    /* renamed from: b */
    public RecyclerView f32464b;

    /* renamed from: c */
    public int f32465c = 3;

    /* renamed from: d */
    public HashMap f32466d;

    /* renamed from: j.a.y0.d.e$a */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/e$a.class */
    public static final class C14528a {
        public C14528a() {
        }

        public /* synthetic */ C14528a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14527e m1161a(C14978j<? extends ArrayList<VasMessageItem>, C14507a> jVar) {
            C15149k.m377b(jVar, "pair");
            Bundle bundle = new Bundle();
            bundle.putParcelableArrayList("vas_message_list", (ArrayList) jVar.m659c());
            bundle.putLong("vas_entry", jVar.m658d().m1211b());
            bundle.putString("vas_total_price", jVar.m658d().m1209d());
            bundle.putInt("vas_gf_source", jVar.m658d().m1210c());
            C14527e eVar = new C14527e();
            eVar.setArguments(bundle);
            return eVar;
        }
    }

    /* renamed from: j.a.y0.d.e$b */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/e$b.class */
    public static final class C14529b<T> implements Observer<ArrayList<VasMessageItem>> {

        /* renamed from: a */
        public final /* synthetic */ C14508b f32467a;

        /* renamed from: b */
        public final /* synthetic */ C14527e f32468b;

        public C14529b(C14508b bVar, C14527e eVar) {
            this.f32467a = bVar;
            this.f32468b = eVar;
        }

        /* renamed from: a */
        public final void onChanged(ArrayList<VasMessageItem> arrayList) {
            Double d;
            if (arrayList != null) {
                ArrayList<VasMessageItem> arrayList2 = new ArrayList();
                for (T t : arrayList) {
                    VasMessageItem vasMessageItem = (VasMessageItem) t;
                    boolean z = true;
                    if (vasMessageItem.m25942u() != 0) {
                        z = vasMessageItem.m25942u() == 1;
                    }
                    if (z) {
                        arrayList2.add(t);
                    }
                }
                double d2 = 0.0d;
                for (VasMessageItem vasMessageItem2 : arrayList2) {
                    d2 += vasMessageItem2.m25945r();
                }
                d = Double.valueOf(d2);
            } else {
                d = null;
            }
            String valueOf = String.valueOf(d);
            RecyclerView K = this.f32468b.m1163K();
            RecyclerView.Adapter adapter = K != null ? K.getAdapter() : null;
            if (adapter != null) {
                C14540d dVar = (C14540d) adapter;
                Context context = this.f32468b.getContext();
                if (context != null) {
                    C15149k.m383a((Object) context, "context!!");
                    dVar.m1143a(context, arrayList, this.f32467a.m1181p(), valueOf);
                    return;
                }
                C15149k.m378b();
                throw null;
            }
            throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.adapter.VasAdapter");
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\b\u0010\u0006\u001a\u00020\u0003H\u0016¨\u0006\u0007¸\u0006\b"}, m815d2 = {"gogolook/callgogolook2/vas/main/VasMainFragment$onViewCreated$1$1$1", "Lgogolook/callgogolook2/vas/main/adapter/VasAdapter$onVasMsgActionListener;", "onCancelBtnClicked", "", "number", "", "onLearnMoreDisclaimer", "whoscall_rcRelease", "gogolook/callgogolook2/vas/main/VasMainFragment$$special$$inlined$let$lambda$1"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.y0.d.e$c */
    /* loaded from: classes3-dex2jar.jar:j/a/y0/d/e$c.class */
    public static final class C14530c implements C14540d.AbstractC14543c {

        /* renamed from: j.a.y0.d.e$c$a */
        /* loaded from: classes3-dex2jar.jar:j/a/y0/d/e$c$a.class */
        public static final class DialogInterface$OnClickListenerC14531a implements DialogInterface.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ String f32471b;

            public DialogInterface$OnClickListenerC14531a(String str) {
                this.f32471b = str;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i) {
                FragmentActivity activity = C14527e.this.getActivity();
                if (activity != null) {
                    C15149k.m383a((Object) activity, "activity!!");
                    C12810o.m5266a(activity, -1, this.f32471b, null, false, 0, 56, null);
                    C14289m.m1842l(16);
                    return;
                }
                C15149k.m378b();
                throw null;
            }
        }

        public C14530c() {
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.C14540d.AbstractC14543c
        /* renamed from: a */
        public void mo1141a() {
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(C14527e.this.getActivity());
            fVar.m981b(R$string.vas_result_subscription_explanation_dialog);
            fVar.m980b(R$string.vas_result_subscription_explanation_dialog_btn, (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }

        @Override // p459j.p460a.p604y0.p608d.p609h.C14540d.AbstractC14543c
        /* renamed from: a */
        public void mo1140a(String str) {
            C15149k.m377b(str, "number");
            DialogC14618f.C14624f fVar = new DialogC14618f.C14624f(C14527e.this.getActivity());
            fVar.m975d(R$string.vas_cancel_dialog_content);
            fVar.m981b(R$string.vas_cancel_dialog_description);
            fVar.m980b(R$string.vas_cancel_dialog_description_btn2, new DialogInterface$OnClickListenerC14531a(str));
            fVar.m987a(R$string.vas_cancel_dialog_description_btn1, (DialogInterface.OnClickListener) null);
            fVar.m982b();
        }
    }

    /* renamed from: J */
    public void m1164J() {
        HashMap hashMap = this.f32466d;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final RecyclerView m1163K() {
        return this.f32464b;
    }

    /* renamed from: b */
    public View m1162b(int i) {
        if (this.f32466d == null) {
            this.f32466d = new HashMap();
        }
        View view = (View) this.f32466d.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f32466d.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        C15149k.m377b(layoutInflater, "inflater");
        AbstractC13304g a = AbstractC13304g.m4297a(layoutInflater, viewGroup, false);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            C14508b G = ((VasDetectionActivity) activity).m25968G();
            C14589b<ArrayList<VasMessageItem>> d = G.m1194d();
            FragmentActivity activity2 = getActivity();
            if (activity2 != null) {
                C15149k.m383a((Object) activity2, "activity!!");
                d.observe(activity2, new C14529b(G, this));
                a.mo4295a(G);
                C15149k.m383a((Object) a, "FragmentVasMainBinding.i…)\n            }\n        }");
                this.f32463a = a;
                AbstractC13304g gVar = this.f32463a;
                if (gVar != null) {
                    return gVar.getRoot();
                }
                C15149k.m373d("viewDataBinding");
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.VasDetectionActivity");
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m1164J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Bundle arguments = getArguments();
        String str = null;
        if (arguments != null) {
            ArrayList<VasMessageItem> parcelableArrayList = arguments.getParcelableArrayList("vas_message_list");
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                long j = arguments2.getLong("vas_entry");
                Bundle arguments3 = getArguments();
                if (arguments3 != null) {
                    String string = arguments3.getString("vas_total_price", VasDetectionActivity.f12989f.m25954a());
                    if (parcelableArrayList == null || j == 2) {
                        AbstractC13304g gVar = this.f32463a;
                        if (gVar != null) {
                            C14508b a = gVar.m4298a();
                            if (a != null) {
                                a.m1207a(this.f32465c);
                                return;
                            }
                            return;
                        }
                        C15149k.m373d("viewDataBinding");
                        throw null;
                    }
                    RecyclerView recyclerView = this.f32464b;
                    RecyclerView.Adapter adapter = recyclerView != null ? recyclerView.getAdapter() : null;
                    if (adapter != null) {
                        C14540d dVar = (C14540d) adapter;
                        dVar.m1146a(getResources().getColor(2131099975));
                        Context context = getContext();
                        if (context != null) {
                            C15149k.m383a((Object) context, "context!!");
                            AbstractC13304g gVar2 = this.f32463a;
                            if (gVar2 != null) {
                                C14508b a2 = gVar2.m4298a();
                                if (a2 != null) {
                                    str = a2.m1181p();
                                }
                                C15149k.m383a((Object) string, "price");
                                dVar.m1143a(context, parcelableArrayList, str, string);
                                return;
                            }
                            C15149k.m373d("viewDataBinding");
                            throw null;
                        }
                        C15149k.m378b();
                        throw null;
                    }
                    throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.adapter.VasAdapter");
                }
                C15149k.m378b();
                throw null;
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        this.f32464b = (RecyclerView) m1162b(R$id.main_list);
        RecyclerView recyclerView = this.f32464b;
        if (recyclerView != null) {
            recyclerView.setLayoutManager(new LinearLayoutManager(getActivity()));
            AbstractC13304g gVar = this.f32463a;
            if (gVar != null) {
                recyclerView.setAdapter(new C14540d(gVar.m4298a()));
                RecyclerView.Adapter adapter = recyclerView.getAdapter();
                if (adapter != null) {
                    if (adapter != null) {
                        ((C14540d) adapter).m1142a(new C14530c());
                    } else {
                        throw new C14986p("null cannot be cast to non-null type gogolook.callgogolook2.vas.main.adapter.VasAdapter");
                    }
                }
                recyclerView.addItemDecoration(new C14539c(24));
            } else {
                C15149k.m373d("viewDataBinding");
                throw null;
            }
        }
        Bundle arguments = getArguments();
        if (arguments != null) {
            this.f32465c = arguments.getInt("vas_gf_source");
            Bundle arguments2 = getArguments();
            if (arguments2 != null) {
                ArrayList parcelableArrayList = arguments2.getParcelableArrayList("vas_message_list");
                if (parcelableArrayList != null && (!parcelableArrayList.isEmpty())) {
                    C14289m.m1866c((Integer) 4, Integer.valueOf(this.f32465c));
                    C14261f.m1961f();
                    return;
                }
                return;
            }
            C15149k.m378b();
            throw null;
        }
        C15149k.m378b();
        throw null;
    }
}
