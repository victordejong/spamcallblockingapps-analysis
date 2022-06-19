package p193e.p194a.p682e.p683a;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.LinearLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.google.android.material.button.MaterialButton;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import com.truecaller.utils.viewbinding.ViewBindingProperty;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1059m3.C18184s;
import p193e.p194a.p1129p5.p1137x0.C19350a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p437c.p578p.C10480a;
import s1.a.l;
import s1.f0.r;
import s1.u.i;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0007\u0018��2\u00020\u0001:\u0001$B\u0007¢\u0006\u0004\b\"\u0010#J-\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ!\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\b2\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8F@\u0006X\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0010\u0010\u0011\u001a\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00160\u00158\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006%"}, d2 = {"Le/a/e/a/f2;", "Ln3/r/a/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "Ls1/s;", "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "Le/a/m3/s;", "f", "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;", "getBinding", "()Le/a/m3/s;", "binding", "", "Le/a/e/a/f2$c;", "g", "Ljava/util/List;", "countryCodes", "Le/a/b0/e/r/a;", "e", "Le/a/b0/e/r/a;", "getAccountSettings", "()Le/a/b0/e/r/a;", "setAccountSettings", "(Le/a/b0/e/r/a;)V", "accountSettings", "<init>", "()V", AbstractC2405c.f7629a, "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.f2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/f2.class */
public final class C12725f2 extends AbstractC12786n2 {

    /* renamed from: h */
    public static final /* synthetic */ l[] f37089h = {C22128a.m8621g0(C12725f2.class, "binding", "getBinding()Lcom/truecaller/databinding/DialogChangeCountryCodeBinding;", 0)};
    @Inject

    /* renamed from: e */
    public AbstractC8438a f37090e;

    /* renamed from: f */
    public final ViewBindingProperty f37091f = new C19350a(new C12727b());

    /* renamed from: g */
    public final List<C12728c> f37092g;

    /* renamed from: e.a.e.a.f2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/f2$a.class */
    public static final class C12726a<T> implements Comparator {
        @Override // java.util.Comparator
        public final int compare(T t, T t2) {
            return C25225a.m4000K(((C12728c) t).f37094b, ((C12728c) t2).f37094b);
        }
    }

    /* renamed from: e.a.e.a.f2$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/f2$b.class */
    public static final class C12727b extends m implements s1.z.b.l<C12725f2, C18184s> {
        public C12727b() {
            super(1);
        }

        /* renamed from: d */
        public Object m22715d(Object obj) {
            Fragment fragment = (Fragment) obj;
            s1.z.c.l.e(fragment, "fragment");
            View requireView = fragment.requireView();
            int i = 2131362982;
            Spinner spinner = (Spinner) requireView.findViewById(C2752R.C2754id.countryDropdown);
            if (spinner != null) {
                i = 2131365684;
                MaterialButton findViewById = requireView.findViewById(C2752R.C2754id.setCountryButton);
                if (findViewById != null) {
                    i = 2131366343;
                    TextView textView = (TextView) requireView.findViewById(C2752R.C2754id.textView8);
                    if (textView != null) {
                        return new C18184s((LinearLayout) requireView, spinner, findViewById, textView);
                    }
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(requireView.getResources().getResourceName(i)));
        }
    }

    /* renamed from: e.a.e.a.f2$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/f2$c.class */
    public static final class C12728c {

        /* renamed from: a */
        public final String f37093a;

        /* renamed from: b */
        public final String f37094b;

        public C12728c(String str, String str2) {
            s1.z.c.l.e(str, "code");
            s1.z.c.l.e(str2, AnalyticsConstants.NAME);
            this.f37093a = str;
            this.f37094b = str2;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof C12728c)) {
                    return false;
                }
                C12728c c12728c = (C12728c) obj;
                return s1.z.c.l.a(this.f37093a, c12728c.f37093a) && s1.z.c.l.a(this.f37094b, c12728c.f37094b);
            }
            return true;
        }

        public int hashCode() {
            String str = this.f37093a;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f37094b;
            if (str2 != null) {
                i = str2.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.f37094b);
            sb.append(" (");
            return C22128a.m8630e(sb, this.f37093a, ')');
        }
    }

    /* renamed from: e.a.e.a.f2$d */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/f2$d.class */
    public static final class View$OnClickListenerC12729d implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ C18184s f37095a;

        /* renamed from: b */
        public final /* synthetic */ C12725f2 f37096b;

        /* renamed from: e.a.e.a.f2$d$a */
        /* loaded from: classes15-dex2jar.jar:e/a/e/a/f2$d$a.class */
        public static final class RunnableC12730a implements Runnable {
            public RunnableC12730a() {
                View$OnClickListenerC12729d.this = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C12725f2 c12725f2 = View$OnClickListenerC12729d.this.f37096b;
                l[] lVarArr = C12725f2.f37089h;
                n3.r.a.l requireActivity = c12725f2.requireActivity();
                Intent addFlags = new Intent((Context) requireActivity, (Class<?>) TruecallerInit.class).addFlags(335577088);
                s1.z.c.l.d(addFlags, "Intent(this, TruecallerI…t.FLAG_ACTIVITY_NEW_TASK)");
                requireActivity.finishAffinity();
                requireActivity.startActivity(addFlags);
                System.exit(0);
                throw new RuntimeException("System.exit returned normally, while it was supposed to halt JVM.");
            }
        }

        public View$OnClickListenerC12729d(C18184s c18184s, C12725f2 c12725f2) {
            this.f37095a = c18184s;
            this.f37096b = c12725f2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Spinner spinner = this.f37095a.f51406a;
            s1.z.c.l.d(spinner, "countryDropdown");
            Object selectedItem = spinner.getSelectedItem();
            Object obj = selectedItem;
            if (!(selectedItem instanceof C12728c)) {
                obj = null;
            }
            C12728c c12728c = (C12728c) obj;
            if (c12728c != null) {
                AbstractC8438a abstractC8438a = this.f37096b.f37090e;
                if (abstractC8438a == null) {
                    s1.z.c.l.l("accountSettings");
                    throw null;
                }
                abstractC8438a.putString("profileCountryIso", c12728c.f37093a);
                this.f37095a.f51407b.postDelayed(new RunnableC12730a(), 100L);
            }
        }
    }

    public C12725f2() {
        Locale[] availableLocales = Locale.getAvailableLocales();
        s1.z.c.l.d(availableLocales, "Locale.getAvailableLocales()");
        ArrayList arrayList = new ArrayList(availableLocales.length);
        for (Locale locale : availableLocales) {
            s1.z.c.l.d(locale, "it");
            String country = locale.getCountry();
            s1.z.c.l.d(country, "it.country");
            String displayCountry = locale.getDisplayCountry();
            s1.z.c.l.d(displayCountry, "it.displayCountry");
            arrayList.add(new C12728c(country, displayCountry));
        }
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : arrayList) {
            C12728c c12728c = (C12728c) obj;
            boolean z = true;
            if ((!(r.p(c12728c.f37093a) ^ true) || !(r.p(c12728c.f37094b) ^ true)) ? false : z) {
                arrayList2.add(obj);
            }
        }
        this.f37092g = i.F0(i.r(arrayList2), new C12726a());
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        s1.z.c.l.e(layoutInflater, "inflater");
        return C10480a.m25972d3(layoutInflater).inflate(C2752R.layout.dialog_change_country_code, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        s1.z.c.l.e(view, ViewAction.VIEW);
        int i = 0;
        C18184s c18184s = (C18184s) this.f37091f.m34468b(this, f37089h[0]);
        Spinner spinner = c18184s.f51406a;
        s1.z.c.l.d(spinner, "countryDropdown");
        spinner.setAdapter((SpinnerAdapter) new ArrayAdapter(requireContext(), 17367049, this.f37092g));
        AbstractC8438a abstractC8438a = this.f37090e;
        if (abstractC8438a == null) {
            s1.z.c.l.l("accountSettings");
            throw null;
        }
        String string = abstractC8438a.getString("profileCountryIso");
        Iterator<C12728c> it = this.f37092g.iterator();
        while (true) {
            if (!it.hasNext()) {
                i = -1;
                break;
            } else if (s1.z.c.l.a(it.next().f37093a, string)) {
                break;
            } else {
                i++;
            }
        }
        if (i != -1) {
            c18184s.f51406a.setSelection(i);
        }
        c18184s.f51407b.setOnClickListener(new View$OnClickListenerC12729d(c18184s, this));
    }
}
