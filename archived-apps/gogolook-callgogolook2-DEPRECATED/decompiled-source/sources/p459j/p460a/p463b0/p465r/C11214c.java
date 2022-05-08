package p459j.p460a.p463b0.p465r;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import androidx.appcompat.view.SupportMenuInflater;
import androidx.fragment.app.FragmentActivity;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$menu;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.realm.obj.contact.ContactRealmObject;
import gogolook.callgogolook2.search.views.view.SearchBarEditText;
import gogolook.callgogolook2.sectionindex.IndexableRecyclerView;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import kotlin.Metadata;
import p459j.p460a.p463b0.p465r.C11228e;
import p459j.p460a.p518j.AbstractC12476c;
import p459j.p460a.p533l.C12942i;
import p459j.p460a.p541n0.C13048c;
import p459j.p460a.p560q0.C13385e;
import p459j.p460a.p582w0.C13915b3;
import p459j.p460a.p582w0.C14037j3;
import p459j.p460a.p582w0.C14080m2;
import p459j.p460a.p582w0.C14088n0;
import p459j.p460a.p582w0.C14108o4;
import p459j.p460a.p582w0.C14137r4;
import p459j.p460a.p582w0.C14189u3;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p582w0.C14206w4;
import p459j.p460a.p582w0.C14217x3;
import p459j.p460a.p582w0.p585b5.C13929c;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14289m;
import p459j.p460a.p613z0.p617p.DialogC14669c;
import p626l.C14986p;
import p626l.p631e0.C14949k;
import p626l.p632u.C15021m;
import p626l.p632u.C15029u;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p660rx.Subscription;
import p660rx.functions.Action1;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��®\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\u0018�� W2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001WB\u0005¢\u0006\u0002\u0010\u0004J\b\u0010+\u001a\u00020,H\u0014J\b\u0010-\u001a\u00020.H\u0014J\n\u0010/\u001a\u0004\u0018\u000100H\u0002J\n\u00101\u001a\u0004\u0018\u000102H\u0016J\b\u00103\u001a\u000204H\u0016J\"\u00105\u001a\u00020,2\u0006\u00106\u001a\u00020.2\u0006\u00107\u001a\u00020.2\b\u00108\u001a\u0004\u0018\u000109H\u0016J\u001a\u0010:\u001a\u00020,2\u0006\u0010;\u001a\u00020<2\b\u0010=\u001a\u0004\u0018\u00010>H\u0014J\u0010\u0010?\u001a\u0002042\u0006\u0010@\u001a\u00020AH\u0016J\"\u0010B\u001a\u00020,2\u0006\u0010C\u001a\u00020D2\u0006\u0010E\u001a\u00020<2\b\u0010F\u001a\u0004\u0018\u00010GH\u0016J\b\u0010H\u001a\u00020,H\u0016J\b\u0010I\u001a\u00020,H\u0016J\b\u0010J\u001a\u00020,H\u0016J\b\u0010K\u001a\u00020,H\u0016J\b\u0010L\u001a\u00020,H\u0002J\u0010\u0010M\u001a\u00020,2\u0006\u0010N\u001a\u000204H\u0002J\u0016\u0010O\u001a\u00020,2\f\u0010P\u001a\b\u0012\u0004\u0012\u00020R0QH\u0016J\u0010\u0010S\u001a\u00020,2\u0006\u0010T\u001a\u000204H\u0016J\b\u0010U\u001a\u00020,H\u0016J\b\u0010V\u001a\u00020,H\u0002R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\t\u001a\u00020\nX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0018\"\u0004\b\u0019\u0010\u001aR\u001a\u0010\u001b\u001a\u00020\u001cX\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 R\u001a\u0010!\u001a\u00020\"X\u0086.¢\u0006\u000e\n��\u001a\u0004\b#\u0010$\"\u0004\b%\u0010&R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010)\u001a\u0004\u0018\u00010*X\u0082\u000e¢\u0006\u0002\n��¨\u0006X"}, m815d2 = {"Lgogolook/callgogolook2/main/contact/ContactFragment;", "Lgogolook/callgogolook2/app/WhoscallDeferredFragment;", "Lgogolook/callgogolook2/main/contact/ContactContract$View;", "Lgogolook/callgogolook2/util/debug/TimeProbe$ProbeListener;", "()V", "contactPresenter", "Lgogolook/callgogolook2/main/contact/ContactPresenter;", "contactRecyclerAdapter", "Lgogolook/callgogolook2/main/contact/ContactRecyclerAdapter;", "etSearch", "Landroid/widget/EditText;", "getEtSearch", "()Landroid/widget/EditText;", "setEtSearch", "(Landroid/widget/EditText;)V", "fabAddContact", "Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "getFabAddContact", "()Lcom/google/android/material/floatingactionbutton/FloatingActionButton;", "setFabAddContact", "(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V", "ivSearch", "Landroid/widget/ImageView;", "getIvSearch", "()Landroid/widget/ImageView;", "setIvSearch", "(Landroid/widget/ImageView;)V", "llEmpty", "Landroid/widget/LinearLayout;", "getLlEmpty", "()Landroid/widget/LinearLayout;", "setLlEmpty", "(Landroid/widget/LinearLayout;)V", "rvContact", "Lgogolook/callgogolook2/sectionindex/IndexableRecyclerView;", "getRvContact", "()Lgogolook/callgogolook2/sectionindex/IndexableRecyclerView;", "setRvContact", "(Lgogolook/callgogolook2/sectionindex/IndexableRecyclerView;)V", "subscription", "Lrx/Subscription;", "timeProbe", "Lgogolook/callgogolook2/util/debug/PageVisibilityTimeProbe;", "executeDeferredAction", "", "getLayoutResource", "", "getSectionIndexer", "Lgogolook/callgogolook2/sectionindex/SmartSectionIndexer;", "getViewContext", "Landroid/content/Context;", "isViewAlive", "", "onActivityResult", "requestCode", "resultCode", "data", "Landroid/content/Intent;", "onAsyncInflationFinished", "inflatedView", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "onContextItemSelected", "item", "Landroid/view/MenuItem;", "onCreateContextMenu", SupportMenuInflater.XML_MENU, "Landroid/view/ContextMenu;", "v", "menuInfo", "Landroid/view/ContextMenu$ContextMenuInfo;", "onPause", "onProbeStarted", "onProbeStopped", "onStop", "registerBus", "reloadContact", "isNeedClearCache", "setContactData", "contacts", "", "Lgogolook/callgogolook2/realm/obj/contact/ContactRealmObject;", "setUserVisibleHint", "isVisibleToUser", "showContextMenu", "unregisterBus", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.b0.r.c */
/* loaded from: classes2-dex2jar.jar:j/a/b0/r/c.class */
public final class C11214c extends AbstractC12476c implements AbstractC11213b, C13930d.AbstractC13931a {

    /* renamed from: g */
    public Subscription f25162g;

    /* renamed from: h */
    public EditText f25163h;

    /* renamed from: i */
    public ImageView f25164i;

    /* renamed from: j */
    public IndexableRecyclerView f25165j;

    /* renamed from: k */
    public LinearLayout f25166k;

    /* renamed from: l */
    public FloatingActionButton f25167l;

    /* renamed from: m */
    public C11228e f25168m;

    /* renamed from: o */
    public HashMap f25170o;

    /* renamed from: f */
    public C11222d f25161f = new C11222d(this);

    /* renamed from: n */
    public C13929c f25169n = new C13929c(this, true);

    /* renamed from: j.a.b0.r.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$a.class */
    public static final class C11215a {
        public C11215a() {
        }

        public /* synthetic */ C11215a(C15145g gVar) {
            this();
        }
    }

    /* renamed from: j.a.b0.r.c$b */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$b.class */
    public static final class C11216b implements C11228e.AbstractC11229a {
        public C11216b() {
        }

        @Override // p459j.p460a.p463b0.p465r.C11228e.AbstractC11229a
        /* renamed from: a */
        public void mo9976a(ContactRealmObject contactRealmObject) {
            C15149k.m377b(contactRealmObject, "contactRealmObject");
            C11214c.this.f25161f.m9994c(contactRealmObject);
        }

        @Override // p459j.p460a.p463b0.p465r.C11228e.AbstractC11229a
        /* renamed from: b */
        public void mo9975b(ContactRealmObject contactRealmObject) {
            C15149k.m377b(contactRealmObject, "contactRealmObject");
            C11214c.this.f25161f.m10002a(contactRealmObject);
        }
    }

    /* renamed from: j.a.b0.r.c$c */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$c.class */
    public static final class View$OnClickListenerC11217c implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ View f25172a;

        public View$OnClickListenerC11217c(View view) {
            this.f25172a = view;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14217x3.m2156c(this.f25172a.getContext(), C14217x3.m2132j());
        }
    }

    /* renamed from: j.a.b0.r.c$d */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$d.class */
    public static final class C11218d implements TextWatcher {
        public C11218d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C15149k.m377b(editable, "s");
            C11214c.this.m10004d(false);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C15149k.m377b(charSequence, "s");
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            C15149k.m377b(charSequence, "s");
        }
    }

    /* renamed from: j.a.b0.r.c$e */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$e.class */
    public static final class C11219e<T> implements Action1<Object> {
        public C11219e() {
        }

        @Override // p660rx.functions.Action1
        public final void call(Object obj) {
            if (obj instanceof C14088n0) {
                C11214c.this.m10004d(true);
            }
        }
    }

    /* renamed from: j.a.b0.r.c$f */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$f.class */
    public static final class View$OnClickListenerC11220f implements View.OnClickListener {
        public View$OnClickListenerC11220f() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11214c.this.m10014V().getText().clear();
        }
    }

    /* renamed from: j.a.b0.r.c$g */
    /* loaded from: classes2-dex2jar.jar:j/a/b0/r/c$g.class */
    public static final class View$OnClickListenerC11221g implements View.OnClickListener {
        public View$OnClickListenerC11221g() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            try {
                C11214c.this.startActivityForResult(C14217x3.m2113t(), 101);
            } catch (ActivityNotFoundException e) {
                C14080m2.m2612a((Throwable) e);
            }
        }
    }

    static {
        new C11215a(null);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: J */
    public void mo1420J() {
        HashMap hashMap = this.f25170o;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: K */
    public void mo1419K() {
        super.mo1419K();
        C13929c cVar = this.f25169n;
        if (cVar != null) {
            cVar.m3029c(isResumed());
        }
        m10012X();
        Context a = mo10010a();
        if (a != null) {
            C13048c.m4709b(a);
        }
        m10004d(true);
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: O */
    public int mo1418O() {
        return R$layout.contactlist_fragment;
    }

    /* renamed from: V */
    public final EditText m10014V() {
        EditText editText = this.f25163h;
        if (editText != null) {
            return editText;
        }
        C15149k.m373d("etSearch");
        throw null;
    }

    /* renamed from: W */
    public final C13385e m10013W() {
        List list;
        List list2;
        String b = C13915b3.m3056b("pref_section_indexs", "");
        String b2 = C13915b3.m3056b("pref_section_mapping_position", "");
        if (TextUtils.isEmpty(b) || TextUtils.isEmpty(b2)) {
            return null;
        }
        C15149k.m383a((Object) b, "sectionIndexString");
        int i = 0;
        List<String> b3 = new C14949k(" ").m745b(b, 0);
        if (!b3.isEmpty()) {
            ListIterator<String> listIterator = b3.listIterator(b3.size());
            while (listIterator.hasPrevious()) {
                if (!(listIterator.previous().length() == 0)) {
                    list = C15029u.m527d(b3, listIterator.nextIndex() + 1);
                    break;
                }
            }
        }
        list = C15021m.m565a();
        Object[] array = list.toArray(new String[0]);
        if (array != null) {
            String[] strArr = (String[]) array;
            C15149k.m383a((Object) b2, "sectionIndexPosition");
            List<String> b4 = new C14949k(" ").m745b(b2, 0);
            if (!b4.isEmpty()) {
                ListIterator<String> listIterator2 = b4.listIterator(b4.size());
                while (listIterator2.hasPrevious()) {
                    if (!(listIterator2.previous().length() == 0)) {
                        list2 = C15029u.m527d(b4, listIterator2.nextIndex() + 1);
                        break;
                    }
                }
            }
            list2 = C15021m.m565a();
            Object[] array2 = list2.toArray(new String[0]);
            if (array2 != null) {
                String[] strArr2 = (String[]) array2;
                HashMap hashMap = new HashMap();
                int length = strArr.length;
                int i2 = 0;
                while (i < length) {
                    hashMap.put(strArr[i], Integer.valueOf(Integer.parseInt(strArr2[i2])));
                    i++;
                    i2++;
                }
                return new C13385e(strArr, hashMap);
            }
            throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
        }
        throw new C14986p("null cannot be cast to non-null type kotlin.Array<T>");
    }

    /* renamed from: X */
    public final void m10012X() {
        this.f25162g = C14037j3.m2731a().mo2703a((Action1) new C11219e());
    }

    /* renamed from: Y */
    public final void m10011Y() {
        Subscription subscription = this.f25162g;
        if (subscription != null) {
            if (!(!subscription.isUnsubscribed())) {
                subscription = null;
            }
            if (subscription != null) {
                subscription.unsubscribe();
            }
        }
    }

    @Override // p459j.p460a.p463b0.p465r.AbstractC11213b
    /* renamed from: a */
    public Context mo10010a() {
        return getContext();
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: a */
    public void mo1412a(View view, Bundle bundle) {
        C15149k.m377b(view, "inflatedView");
        this.f25168m = new C11228e();
        View findViewById = view.findViewById(R$id.rl_search_bar);
        C15149k.m383a((Object) findViewById, "inflatedView.rl_search_bar");
        SearchBarEditText searchBarEditText = (SearchBarEditText) findViewById.findViewById(R$id.et_search);
        C15149k.m383a((Object) searchBarEditText, "inflatedView.rl_search_bar.et_search");
        this.f25163h = searchBarEditText;
        View findViewById2 = view.findViewById(R$id.rl_search_bar);
        C15149k.m383a((Object) findViewById2, "inflatedView.rl_search_bar");
        ImageView imageView = (ImageView) findViewById2.findViewById(R$id.iv_right_search_icon);
        C15149k.m383a((Object) imageView, "inflatedView.rl_search_bar.iv_right_search_icon");
        this.f25164i = imageView;
        IndexableRecyclerView indexableRecyclerView = (IndexableRecyclerView) view.findViewById(R$id.rv_contact);
        C15149k.m383a((Object) indexableRecyclerView, "inflatedView.rv_contact");
        this.f25165j = indexableRecyclerView;
        LinearLayout linearLayout = (LinearLayout) view.findViewById(R$id.ll_empty);
        C15149k.m383a((Object) linearLayout, "inflatedView.ll_empty");
        this.f25166k = linearLayout;
        FloatingActionButton floatingActionButton = (FloatingActionButton) view.findViewById(R$id.fab_add_contact);
        C15149k.m383a((Object) floatingActionButton, "inflatedView.fab_add_contact");
        this.f25167l = floatingActionButton;
        FloatingActionButton floatingActionButton2 = this.f25167l;
        if (floatingActionButton2 != null) {
            floatingActionButton2.setOnClickListener(new View$OnClickListenerC11217c(view));
            ImageView imageView2 = this.f25164i;
            if (imageView2 != null) {
                C14217x3.m2180a((View) imageView2, true);
                View view2 = this.f25165j;
                if (view2 != null) {
                    registerForContextMenu(view2);
                    IndexableRecyclerView indexableRecyclerView2 = this.f25165j;
                    if (indexableRecyclerView2 != null) {
                        indexableRecyclerView2.m26173b(true);
                        EditText editText = this.f25163h;
                        if (editText != null) {
                            editText.addTextChangedListener(new C11218d());
                            C11228e eVar = this.f25168m;
                            if (eVar != null) {
                                eVar.m9981a(new C11216b());
                                IndexableRecyclerView indexableRecyclerView3 = this.f25165j;
                                if (indexableRecyclerView3 != null) {
                                    indexableRecyclerView3.setLayoutManager(new LinearLayoutManager(indexableRecyclerView3.getContext()));
                                    indexableRecyclerView3.setItemViewCacheSize(10);
                                    indexableRecyclerView3.setDrawingCacheEnabled(true);
                                    indexableRecyclerView3.setDrawingCacheQuality(1048576);
                                    indexableRecyclerView3.setAdapter(eVar);
                                    registerForContextMenu(indexableRecyclerView3);
                                    indexableRecyclerView3.m26176a(m10013W());
                                    return;
                                }
                                C15149k.m373d("rvContact");
                                throw null;
                            }
                            return;
                        }
                        C15149k.m373d("etSearch");
                        throw null;
                    }
                    C15149k.m373d("rvContact");
                    throw null;
                }
                C15149k.m373d("rvContact");
                throw null;
            }
            C15149k.m373d("ivSearch");
            throw null;
        }
        C15149k.m373d("fabAddContact");
        throw null;
    }

    @Override // p459j.p460a.p463b0.p465r.AbstractC11213b
    /* renamed from: a */
    public void mo10007a(List<? extends ContactRealmObject> list) {
        C15149k.m377b(list, "contacts");
        C11228e eVar = this.f25168m;
        if (eVar != null) {
            eVar.m9978a(list, (String) null);
        }
        IndexableRecyclerView indexableRecyclerView = this.f25165j;
        if (indexableRecyclerView != null) {
            indexableRecyclerView.m26176a(m10013W());
            if (this.f25168m == null || list.isEmpty()) {
                IndexableRecyclerView indexableRecyclerView2 = this.f25165j;
                if (indexableRecyclerView2 != null) {
                    indexableRecyclerView2.setVisibility(8);
                    LinearLayout linearLayout = this.f25166k;
                    if (linearLayout != null) {
                        linearLayout.setVisibility(0);
                    } else {
                        C15149k.m373d("llEmpty");
                        throw null;
                    }
                } else {
                    C15149k.m373d("rvContact");
                    throw null;
                }
            } else {
                IndexableRecyclerView indexableRecyclerView3 = this.f25165j;
                if (indexableRecyclerView3 != null) {
                    indexableRecyclerView3.setVisibility(0);
                    LinearLayout linearLayout2 = this.f25166k;
                    if (linearLayout2 != null) {
                        linearLayout2.setVisibility(8);
                    } else {
                        C15149k.m373d("llEmpty");
                        throw null;
                    }
                } else {
                    C15149k.m373d("rvContact");
                    throw null;
                }
            }
        } else {
            C15149k.m373d("rvContact");
            throw null;
        }
    }

    @Override // p459j.p460a.p463b0.p465r.AbstractC11213b
    /* renamed from: b */
    public void mo10006b() {
        IndexableRecyclerView indexableRecyclerView = this.f25165j;
        if (indexableRecyclerView != null) {
            indexableRecyclerView.showContextMenu();
        } else {
            C15149k.m373d("rvContact");
            throw null;
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c
    /* renamed from: c */
    public View mo1408c(int i) {
        if (this.f25170o == null) {
            this.f25170o = new HashMap();
        }
        View view = (View) this.f25170o.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f25170o.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @Override // p459j.p460a.p463b0.p465r.AbstractC11213b
    /* renamed from: c */
    public boolean mo10005c() {
        return C14191v.m2262a((Activity) getActivity());
    }

    /* renamed from: d */
    public final void m10004d(boolean z) {
        EditText editText = this.f25163h;
        if (editText != null) {
            String obj = editText.getText().toString();
            if (obj.length() > 0) {
                ImageView imageView = this.f25164i;
                if (imageView != null) {
                    imageView.setImageResource(R$drawable.icon_clear_result);
                    ImageView imageView2 = this.f25164i;
                    if (imageView2 != null) {
                        imageView2.setOnClickListener(new View$OnClickListenerC11220f());
                        ImageView imageView3 = this.f25164i;
                        if (imageView3 != null) {
                            imageView3.setVisibility(0);
                            this.f25161f.m9998a(z, obj);
                            IndexableRecyclerView indexableRecyclerView = this.f25165j;
                            if (indexableRecyclerView != null) {
                                indexableRecyclerView.m26173b(false);
                            } else {
                                C15149k.m373d("rvContact");
                                throw null;
                            }
                        } else {
                            C15149k.m373d("ivSearch");
                            throw null;
                        }
                    } else {
                        C15149k.m373d("ivSearch");
                        throw null;
                    }
                } else {
                    C15149k.m373d("ivSearch");
                    throw null;
                }
            } else {
                ImageView imageView4 = this.f25164i;
                if (imageView4 != null) {
                    imageView4.setImageResource(R$drawable.icon_searchbar_mic);
                    ImageView imageView5 = this.f25164i;
                    if (imageView5 != null) {
                        imageView5.setOnClickListener(new View$OnClickListenerC11221g());
                        ImageView imageView6 = this.f25164i;
                        if (imageView6 != null) {
                            C14217x3.m2180a((View) imageView6, true);
                            this.f25161f.m9998a(z, (String) null);
                            IndexableRecyclerView indexableRecyclerView2 = this.f25165j;
                            if (indexableRecyclerView2 != null) {
                                indexableRecyclerView2.m26173b(true);
                            } else {
                                C15149k.m373d("rvContact");
                                throw null;
                            }
                        } else {
                            C15149k.m373d("ivSearch");
                            throw null;
                        }
                    } else {
                        C15149k.m373d("ivSearch");
                        throw null;
                    }
                } else {
                    C15149k.m373d("ivSearch");
                    throw null;
                }
            }
        } else {
            C15149k.m373d("etSearch");
            throw null;
        }
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: g */
    public void mo3016g() {
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0039, code lost:
        if (r8 != null) goto L_0x0042;
     */
    @Override // androidx.fragment.app.Fragment
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onActivityResult(int r6, int r7, android.content.Intent r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            super.onActivityResult(r1, r2, r3)
            r0 = r5
            boolean r0 = p459j.p460a.p582w0.C14060l2.m2706a(r0)
            if (r0 != 0) goto L_0x000f
            return
        L_0x000f:
            r0 = r6
            r1 = 101(0x65, float:1.42E-43)
            if (r0 != r1) goto L_0x0064
            r0 = r7
            r1 = -1
            if (r0 != r1) goto L_0x0064
            r0 = r8
            if (r0 == 0) goto L_0x0029
            r0 = r8
            java.lang.String r1 = "android.speech.extra.RESULTS"
            java.util.ArrayList r0 = r0.getStringArrayListExtra(r1)
            r8 = r0
            goto L_0x002b
        L_0x0029:
            r0 = 0
            r8 = r0
        L_0x002b:
            r0 = r8
            if (r0 == 0) goto L_0x003f
            r0 = r8
            r1 = 0
            java.lang.Object r0 = r0.get(r1)
            java.lang.String r0 = (java.lang.String) r0
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x003f
            goto L_0x0042
        L_0x003f:
            java.lang.String r0 = ""
            r8 = r0
        L_0x0042:
            r0 = r8
            java.lang.String r1 = "results?.get(0) ?: \"\""
            p626l.p641z.p643d.C15149k.m383a(r0, r1)
            r0 = r5
            android.widget.EditText r0 = r0.f25163h
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x005d
            r0 = r9
            r1 = r8
            r0.setText(r1)
            goto L_0x0064
        L_0x005d:
            java.lang.String r0 = "etSearch"
            p626l.p641z.p643d.C15149k.m373d(r0)
            r0 = 0
            throw r0
        L_0x0064:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p463b0.p465r.C11214c.onActivityResult(int, int, android.content.Intent):void");
    }

    @Override // androidx.fragment.app.Fragment
    public boolean onContextItemSelected(MenuItem menuItem) {
        C15149k.m377b(menuItem, "item");
        switch (menuItem.getItemId()) {
            case R$id.menu_block /* 2131362820 */:
                this.f25161f.m9993d();
                return true;
            case R$id.menu_call /* 2131362830 */:
                this.f25161f.m9992e();
                return true;
            case R$id.menu_invite /* 2131362855 */:
                this.f25161f.m9991f();
                return true;
            case R$id.menu_message /* 2131362858 */:
                this.f25161f.m9990g();
                return true;
            case R$id.menu_tele_report /* 2131362886 */:
                this.f25161f.m9989h();
                return true;
            default:
                return true;
        }
    }

    @Override // androidx.fragment.app.Fragment, android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(ContextMenu contextMenu, View view, ContextMenu.ContextMenuInfo contextMenuInfo) {
        C15149k.m377b(contextMenu, SupportMenuInflater.XML_MENU);
        C15149k.m377b(view, "v");
        super.onCreateContextMenu(contextMenu, view, contextMenuInfo);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            if (!C14217x3.m2196a((Activity) activity)) {
                activity = null;
            }
            if (activity != null) {
                C15149k.m383a((Object) activity, "activity?.takeIf { Utils…vityAlive(it) } ?: return");
                ContactRealmObject b = this.f25161f.m9997b();
                if (b != null) {
                    activity.getMenuInflater().inflate(R$menu.context_contacts, contextMenu);
                    MenuItem findItem = contextMenu.findItem(R$id.menu_block);
                    MenuItem findItem2 = contextMenu.findItem(R$id.menu_tele_report);
                    MenuItem findItem3 = contextMenu.findItem(R$id.menu_invite);
                    if (findItem3 != null) {
                        findItem3.setVisible(false);
                    }
                    MenuItem findItem4 = contextMenu.findItem(R$id.menu_message);
                    if (findItem4 != null) {
                        findItem4.setVisible(C14108o4.m2477i(b.getNumber()));
                    }
                    boolean z = true;
                    if (findItem != null) {
                        C12942i c = this.f25161f.m9995c();
                        findItem.setTitle(C14206w4.m2225a((c == null || !c.m4960d()) ? R$string.title_block : R$string.title_unblock));
                    }
                    if (findItem2 != null) {
                        if (!C14189u3.m2264c().m2272a(b.getNumber()) || !C14137r4.m2372f()) {
                            z = false;
                        }
                        findItem2.setVisible(z);
                    }
                    new DialogC14669c.C14674d(activity, contextMenu).m891a();
                }
            }
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo1420J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        C13929c cVar = this.f25169n;
        if (cVar != null) {
            cVar.m3029c(false);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        m10011Y();
        this.f25161f.m9988i();
    }

    @Override // p459j.p460a.p582w0.p585b5.C13930d.AbstractC13931a
    /* renamed from: r */
    public void mo3015r() {
        C13929c cVar = this.f25169n;
        if (cVar != null) {
            C14289m.m1892a("contact", cVar.m3022b());
        }
    }

    @Override // p459j.p460a.p518j.AbstractC12476c, p459j.p460a.p518j.AbstractC12478d, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        C13929c cVar = this.f25169n;
        if (cVar != null) {
            cVar.m3028d(z);
        }
    }
}
