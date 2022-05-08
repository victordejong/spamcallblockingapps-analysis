package p459j.p460a.p474c0.p483e.p487d;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import androidx.lifecycle.ViewModelProvider;
import androidx.lifecycle.ViewModelStore;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.gogolook.commonlib.view.IconFontTextView;
import gogolook.callgogolook2.MyApplication;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.p074ad.AdRequestState;
import gogolook.callgogolook2.p074ad.AdUnit;
import gogolook.callgogolook2.realm.obj.messaging.SmsUrlScanResultRealmObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p459j.p460a.p474c0.p483e.p484a.C11726c;
import p459j.p460a.p474c0.p483e.p486c.C11746a;
import p459j.p460a.p474c0.p483e.p487d.C11796r;
import p459j.p460a.p511h.AbstractC12391a;
import p459j.p460a.p572v0.p573c.AbstractC13719n;
import p459j.p460a.p572v0.p573c.EnumC13715k;
import p459j.p460a.p582w0.C14123p4;
import p459j.p460a.p582w0.C14167t;
import p459j.p460a.p582w0.C14191v;
import p459j.p460a.p612z.C14596a;
import p459j.p460a.p613z0.DialogC14618f;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.C14976h;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15010g0;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018�� 02\u00020\u0001:\u00010B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\b\u0010\u0014\u001a\u00020\u0015H\u0002J\b\u0010\u0016\u001a\u00020\u0015H\u0002J\u0010\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0018\u001a\u00020\u0019H\u0002J\b\u0010\u001a\u001a\u00020\u0015H\u0016J\b\u0010\u001b\u001a\u00020\u0015H\u0016J\b\u0010\u001c\u001a\u00020\u0015H\u0016J\u001a\u0010\u001d\u001a\u00020\u00152\u0006\u0010\u001e\u001a\u00020\u001f2\b\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0010\u0010\"\u001a\u00020\u00152\u0006\u0010#\u001a\u00020$H\u0002J\u000e\u0010%\u001a\u00020\u00152\u0006\u0010&\u001a\u00020'J\u0010\u0010(\u001a\u00020\u00152\u0006\u0010)\u001a\u00020*H\u0002J\b\u0010+\u001a\u00020\u0015H\u0002J\b\u0010,\u001a\u00020\u0015H\u0002J\u0010\u0010-\u001a\u00020\u00152\u0006\u0010.\u001a\u00020/H\u0002R\u001b\u0010\u0003\u001a\u00020\u00048BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u001b\u0010\u000b\u001a\u00020\f8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\b\u001a\u0004\b\r\u0010\u000eR\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n��¨\u00061"}, m815d2 = {"Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageFragment;", "Landroidx/fragment/app/Fragment;", "()V", "eventHelper", "Lgogolook/callgogolook2/messaging/scan/tracking/ScanResultPageEventHelper$EventHelper;", "getEventHelper", "()Lgogolook/callgogolook2/messaging/scan/tracking/ScanResultPageEventHelper$EventHelper;", "eventHelper$delegate", "Lkotlin/Lazy;", "scanResultPageRecyclerViewAdapter", "Lgogolook/callgogolook2/messaging/scan/ui/ScanResultPageRecyclerViewAdapter;", "viewModel", "Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "getViewModel", "()Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;", "viewModel$delegate", "warningDialog", "Lgogolook/callgogolook2/view/MDialog;", "getContextSafely", "Landroid/content/Context;", "observeAdObject", "", "observeAdRequestState", "onAdReadyToShow", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "onResume", "onStart", "onStop", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "showWarningDialog", "result", "Lgogolook/callgogolook2/urlscan/data/UrlScanResult$ScanResult;", "trackAction", "action", "", "trackClickUrlAction", SmsUrlScanResultRealmObject.RATING, "Lgogolook/callgogolook2/urlscan/data/UrlRating;", "tryToLoadAd", "tryToSetupAd", "updateHeader", "scanResult", "Lgogolook/callgogolook2/messaging/scan/data/SmsUrlScanResult;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.c0.e.d.p */
/* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p.class */
public final class C11780p extends Fragment {

    /* renamed from: f */
    public static final /* synthetic */ AbstractC14906i[] f26426f;

    /* renamed from: g */
    public static final C11783c f26427g = new C11783c(null);

    /* renamed from: a */
    public final AbstractC14974f f26428a = FragmentViewModelLazyKt.createViewModelLazy(this, C15131a0.m419a(C11757e.class), new C11781a(this), new C11782b(this));

    /* renamed from: b */
    public final AbstractC14974f f26429b = C14975g.m662a(C11784d.f26435a);

    /* renamed from: c */
    public C11796r f26430c;

    /* renamed from: d */
    public DialogC14618f f26431d;

    /* renamed from: e */
    public HashMap f26432e;

    /* renamed from: j.a.c0.e.d.p$a */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$a.class */
    public static final class C11781a extends AbstractC15150l implements AbstractC15107a<ViewModelStore> {

        /* renamed from: a */
        public final /* synthetic */ Fragment f26433a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11781a(Fragment fragment) {
            super(0);
            this.f26433a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelStore invoke() {
            FragmentActivity requireActivity = this.f26433a.requireActivity();
            C15149k.m383a((Object) requireActivity, "requireActivity()");
            ViewModelStore viewModelStore = requireActivity.getViewModelStore();
            C15149k.m383a((Object) viewModelStore, "requireActivity().viewModelStore");
            return viewModelStore;
        }
    }

    /* renamed from: j.a.c0.e.d.p$b */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$b.class */
    public static final class C11782b extends AbstractC15150l implements AbstractC15107a<ViewModelProvider.Factory> {

        /* renamed from: a */
        public final /* synthetic */ Fragment f26434a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C11782b(Fragment fragment) {
            super(0);
            this.f26434a = fragment;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final ViewModelProvider.Factory invoke() {
            FragmentActivity requireActivity = this.f26434a.requireActivity();
            C15149k.m383a((Object) requireActivity, "requireActivity()");
            ViewModelProvider.Factory defaultViewModelProviderFactory = requireActivity.getDefaultViewModelProviderFactory();
            C15149k.m383a((Object) defaultViewModelProviderFactory, "requireActivity().defaultViewModelProviderFactory");
            return defaultViewModelProviderFactory;
        }
    }

    /* renamed from: j.a.c0.e.d.p$c */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$c.class */
    public static final class C11783c {
        public C11783c() {
        }

        public /* synthetic */ C11783c(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C11780p m8296a() {
            return new C11780p();
        }
    }

    /* renamed from: j.a.c0.e.d.p$d */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$d.class */
    public static final class C11784d extends AbstractC15150l implements AbstractC15107a<C11746a> {

        /* renamed from: a */
        public static final C11784d f26435a = new C11784d();

        public C11784d() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C11746a invoke() {
            return new C11746a();
        }
    }

    /* renamed from: j.a.c0.e.d.p$e */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$e.class */
    public static final class C11785e<T> implements Observer<T> {
        public C11785e() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            AbstractC6207d dVar = (AbstractC6207d) t;
            if (dVar != null) {
                C11780p.this.m8300c(dVar);
            }
        }
    }

    /* renamed from: j.a.c0.e.d.p$f */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$f.class */
    public static final class C11786f<T> implements Observer<T> {
        public C11786f() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            AdRequestState adRequestState = (AdRequestState) t;
            C11780p.this.m8315M().m8353c().mo28842a(adRequestState);
            if (adRequestState instanceof AdRequestState.End) {
                C11780p.this.m8311Q();
            }
        }
    }

    /* renamed from: j.a.c0.e.d.p$g */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$g.class */
    public static final class C11787g<T> implements Observer<T> {
        public C11787g() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            List<T> list = (List) t;
            C11796r rVar = C11780p.this.f26430c;
            if (rVar != null) {
                rVar.submitList(list);
            }
            C11726c h = C11780p.this.m8315M().m8345h();
            if (h != null) {
                C11780p.this.m8310a(h);
            }
        }
    }

    /* renamed from: j.a.c0.e.d.p$h */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$h.class */
    public static final class C11788h<T> implements Observer<T> {
        public C11788h() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            C11780p.this.m8303a((AbstractC13719n.C13721b) t);
        }
    }

    /* renamed from: j.a.c0.e.d.p$i */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$i.class */
    public static final class C11789i<T> implements Observer<T> {
        public C11789i() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            String str = (String) ((C14596a) t).m1047a();
            if (str != null) {
                C14191v.m2256a(C11780p.this.getContext(), str);
            }
        }
    }

    /* renamed from: j.a.c0.e.d.p$j */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$j.class */
    public static final class C11790j<T> implements Observer<T> {
        public C11790j() {
        }

        @Override // androidx.lifecycle.Observer
        public final void onChanged(T t) {
            if (((AdUnit) t) == AdUnit.SMS_SCAN_RESULT_STICKY) {
                C11780p.this.m8297e("click_ad");
            }
        }
    }

    /* renamed from: j.a.c0.e.d.p$k */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$k.class */
    public static final class View$OnClickListenerC11791k implements View.OnClickListener {
        public View$OnClickListenerC11791k() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C11780p.this.m8316L().m8387b("cancel");
            C11780p.this.m8315M().m8335r();
        }
    }

    /* renamed from: j.a.c0.e.d.p$l */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$l.class */
    public static final class C11792l implements C11796r.AbstractC11797a {
        public C11792l() {
        }

        @Override // p459j.p460a.p474c0.p483e.p487d.C11796r.AbstractC11797a
        /* renamed from: a */
        public void mo8292a(AbstractC13719n.C13721b bVar) {
            C15149k.m377b(bVar, "scanResult");
            C11780p.this.m8304a(bVar.m3607a());
            C11780p.this.m8315M().m8354b(bVar);
        }
    }

    /* renamed from: j.a.c0.e.d.p$m */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$m.class */
    public static final class DialogInterface$OnClickListenerC11793m implements DialogInterface.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC13719n.C13721b f26445b;

        public DialogInterface$OnClickListenerC11793m(AbstractC13719n.C13721b bVar) {
            this.f26445b = bVar;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            C11780p.this.m8297e("open_malicious_url");
            C11780p.this.m8315M().m8360a(this.f26445b);
            dialogInterface.dismiss();
        }
    }

    /* renamed from: j.a.c0.e.d.p$n */
    /* loaded from: classes2-dex2jar.jar:j/a/c0/e/d/p$n.class */
    public static final class DialogInterface$OnClickListenerC11794n implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC11794n f26446a = new DialogInterface$OnClickListenerC11794n();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C11780p.class), "viewModel", "getViewModel()Lgogolook/callgogolook2/messaging/scan/ui/MessageScanViewModel;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(C11780p.class), "eventHelper", "getEventHelper()Lgogolook/callgogolook2/messaging/scan/tracking/ScanResultPageEventHelper$EventHelper;");
        C15131a0.m412a(sVar2);
        f26426f = new AbstractC14906i[]{sVar, sVar2};
    }

    public C11780p() {
        super(R$layout.fragment_scan_result_page);
    }

    /* renamed from: J */
    public void m8318J() {
        HashMap hashMap = this.f26432e;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public final Context m8317K() {
        Context o = MyApplication.m29013o();
        if (o == null) {
            FrameLayout frameLayout = (FrameLayout) m8302b(R$id.adViewResultPage);
            C15149k.m383a((Object) frameLayout, "adViewResultPage");
            o = frameLayout.getContext();
            C15149k.m383a((Object) o, "adViewResultPage.context");
        }
        return o;
    }

    /* renamed from: L */
    public final C11746a m8316L() {
        AbstractC14974f fVar = this.f26429b;
        AbstractC14906i iVar = f26426f[1];
        return (C11746a) fVar.getValue();
    }

    /* renamed from: M */
    public final C11757e m8315M() {
        AbstractC14974f fVar = this.f26428a;
        AbstractC14906i iVar = f26426f[0];
        return (C11757e) fVar.getValue();
    }

    /* renamed from: N */
    public final void m8314N() {
        MutableLiveData<AbstractC6207d> a = m8315M().m8358a(AdUnit.SMS_SCAN_RESULT_STICKY.m28821a());
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        a.observe(viewLifecycleOwner, new C11785e());
    }

    /* renamed from: O */
    public final void m8313O() {
        LiveData<AdRequestState> d = m8315M().m8351d();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        d.observe(viewLifecycleOwner, new C11786f());
    }

    /* renamed from: P */
    public final void m8312P() {
        m8315M().m8353c().mo28843a(m8317K(), AdUnit.SMS_SCAN_RESULT_STICKY, C15010g0.m613a(EnumC6184a.NATIVE));
    }

    /* renamed from: Q */
    public final void m8311Q() {
        C11757e M = m8315M();
        AdUnit adUnit = AdUnit.SMS_SCAN_RESULT_STICKY;
        FrameLayout frameLayout = (FrameLayout) m8302b(R$id.adViewResultPage);
        C15149k.m383a((Object) frameLayout, "adViewResultPage");
        M.m8367a(adUnit, frameLayout.getChildCount());
    }

    /* renamed from: a */
    public final void m8310a(C11726c cVar) {
        int i;
        int i2;
        String str;
        String str2;
        int i3 = C11795q.f26448b[cVar.m8411c().ordinal()];
        if (i3 == 1) {
            i2 = 2131100120;
            i = R$string.srp_unrated;
            List<AbstractC13719n.C13721b> d = cVar.m8410d();
            ArrayList arrayList = new ArrayList();
            for (Object obj : d) {
                if (((AbstractC13719n.C13721b) obj).m3607a() == cVar.m8411c()) {
                    arrayList.add(obj);
                }
            }
            str = getString(R$string.srp_unrated_subtitle, String.valueOf(arrayList.size()));
            C15149k.m383a((Object) str, "getString(R.string.srp_u…rating }.size.toString())");
            str2 = "url_scan_unknow.json";
        } else if (i3 == 2) {
            i2 = 2131100157;
            i = R$string.srp_safe;
            str = getString(R$string.srp_safe_subtitle);
            C15149k.m383a((Object) str, "getString(R.string.srp_safe_subtitle)");
            str2 = "url_scan_safe.json";
        } else if (i3 == 3) {
            i2 = 2131100137;
            i = R$string.srp_suspicious;
            List<AbstractC13719n.C13721b> d2 = cVar.m8410d();
            ArrayList arrayList2 = new ArrayList();
            for (Object obj2 : d2) {
                if (((AbstractC13719n.C13721b) obj2).m3607a() == cVar.m8411c()) {
                    arrayList2.add(obj2);
                }
            }
            str = getString(R$string.srp_suspicious_subtitle, String.valueOf(arrayList2.size()));
            C15149k.m383a((Object) str, "getString(R.string.srp_s…rating }.size.toString())");
            str2 = "url_scan_suspicious.json";
        } else if (i3 == 4) {
            i2 = 2131099767;
            i = R$string.srp_malicious;
            List<AbstractC13719n.C13721b> d3 = cVar.m8410d();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj3 : d3) {
                if (((AbstractC13719n.C13721b) obj3).m3607a() == cVar.m8411c()) {
                    arrayList3.add(obj3);
                }
            }
            str = getString(R$string.srp_malicious_subtitle, String.valueOf(arrayList3.size()));
            C15149k.m383a((Object) str, "getString(R.string.srp_m…rating }.size.toString())");
            str2 = "url_scan_malicious.json";
        } else {
            throw new C14976h();
        }
        int a = C14167t.m2315a(i2);
        FragmentActivity activity = getActivity();
        if (activity != null) {
            C14123p4.m2429b(activity.getWindow(), a);
        }
        View b = m8302b(R$id.v_header_background);
        if (b != null) {
            b.setBackgroundColor(a);
        }
        TextView textView = (TextView) m8302b(R$id.tv_title);
        if (textView != null) {
            textView.setText(i);
        }
        TextView textView2 = (TextView) m8302b(R$id.tv_subtitle);
        if (textView2 != null) {
            textView2.setText(str);
        }
        LottieAnimationView lottieAnimationView = (LottieAnimationView) m8302b(R$id.lav_header_icon);
        if (lottieAnimationView != null) {
            lottieAnimationView.m37035a(str2);
            lottieAnimationView.m37026e();
        }
    }

    /* renamed from: a */
    public final void m8304a(EnumC13715k kVar) {
        String str;
        int i = C11795q.f26447a[kVar.ordinal()];
        if (i == 1) {
            str = "click_unrated_url";
        } else if (i == 2) {
            str = "click_safe_url";
        } else if (i == 3) {
            str = "click_suspicious_url";
        } else if (i == 4) {
            m8316L().m8384e();
            str = null;
        } else {
            throw new C14976h();
        }
        if (str != null) {
            m8297e(str);
        }
    }

    /* renamed from: a */
    public final void m8303a(AbstractC13719n.C13721b bVar) {
        DialogC14618f fVar = this.f26431d;
        if (fVar == null || !fVar.isShowing()) {
            DialogC14618f.C14624f fVar2 = new DialogC14618f.C14624f(getContext());
            fVar2.m975d(R$string.srp_click_malicious_url_title);
            fVar2.m981b(R$string.srp_click_malicious_url_content);
            fVar2.m987a(R$string.srp_click_malicious_url_open, new DialogInterface$OnClickListenerC11793m(bVar));
            fVar2.m980b(R$string.srp_click_malicious_url_cancel, DialogInterface$OnClickListenerC11794n.f26446a);
            this.f26431d = fVar2.m982b();
        }
    }

    /* renamed from: b */
    public View m8302b(int i) {
        if (this.f26432e == null) {
            this.f26432e = new HashMap();
        }
        View view = (View) this.f26432e.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            View view3 = getView();
            if (view3 == null) {
                return null;
            }
            view2 = view3.findViewById(i);
            this.f26432e.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: c */
    public final void m8300c(AbstractC6207d dVar) {
        dVar.mo23572a(m8317K(), (FrameLayout) m8302b(R$id.adViewResultPage));
    }

    /* renamed from: e */
    public final void m8297e(String str) {
        C15149k.m377b(str, "action");
        m8316L().m8387b(str);
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        m8318J();
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        C11746a L = m8316L();
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        L.m8388b(o);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        m8315M().m8353c().mo28834f(AdUnit.SMS_SCAN_RESULT_STICKY);
    }

    @Override // androidx.fragment.app.Fragment
    public void onStop() {
        super.onStop();
        C11746a L = m8316L();
        Context o = MyApplication.m29013o();
        C15149k.m383a((Object) o, "MyApplication.getGlobalContext()");
        L.m8386c(o);
        m8315M().m8353c().mo28836d(AdUnit.SMS_SCAN_RESULT_STICKY);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        C15149k.m377b(view, "view");
        super.onViewCreated(view, bundle);
        LiveData<List<AbstractC12391a>> k = m8315M().m8342k();
        LifecycleOwner viewLifecycleOwner = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner, "viewLifecycleOwner");
        k.observe(viewLifecycleOwner, new C11787g());
        LiveData<AbstractC13719n.C13721b> n = m8315M().m8339n();
        LifecycleOwner viewLifecycleOwner2 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner2, "viewLifecycleOwner");
        n.observe(viewLifecycleOwner2, new C11788h());
        LiveData<C14596a<String>> j = m8315M().m8343j();
        LifecycleOwner viewLifecycleOwner3 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner3, "viewLifecycleOwner");
        j.observe(viewLifecycleOwner3, new C11789i());
        LiveData<AdUnit> e = m8315M().m8349e();
        LifecycleOwner viewLifecycleOwner4 = getViewLifecycleOwner();
        C15149k.m383a((Object) viewLifecycleOwner4, "viewLifecycleOwner");
        e.observe(viewLifecycleOwner4, new C11790j());
        ((IconFontTextView) m8302b(R$id.iftv_close_button)).setOnClickListener(new View$OnClickListenerC11791k());
        this.f26430c = new C11796r(new C11771i(), new C11792l());
        RecyclerView recyclerView = (RecyclerView) m8302b(R$id.rv_results);
        if (recyclerView != null) {
            recyclerView.setOverScrollMode(2);
            recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext()));
            recyclerView.setAdapter(this.f26430c);
            recyclerView.addItemDecoration(new C11778o());
        }
        m8315M().m8337p();
        m8313O();
        m8314N();
        m8312P();
    }
}
