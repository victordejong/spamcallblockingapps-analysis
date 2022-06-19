package p193e.p194a.p837h0.p838a.p840b0;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p1727n3.p1734b.p1735a.g$a;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p837h0.p838a.p842d0.C14789h;
import s1.g;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\r\u0018��2\u00020\u00012\u00020\u0002B\u0007¢\u0006\u0004\b1\u0010\u0017J\u0019\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0006\u0010\u0007J-\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\t\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\n2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\r\u0010\u000eJ!\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\f2\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u0017\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0018\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u0017J\u0017\u0010\u001c\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001aH\u0016¢\u0006\u0004\b\u001c\u0010\u001dR%\u0010$\u001a\n \u001f*\u0004\u0018\u00010\u001e0\u001e8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#R\"\u0010,\u001a\u00020%8\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b&\u0010'\u001a\u0004\b(\u0010)\"\u0004\b*\u0010+R%\u00100\u001a\n \u001f*\u0004\u0018\u00010\f0\f8B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b-\u0010!\u001a\u0004\b.\u0010/¨\u00062"}, d2 = {"Le/a/h0/a/b0/a;", "Landroidx/fragment/app/Fragment;", "Le/a/h0/a/b0/e;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", ViewAction.VIEW, "onViewCreated", "(Landroid/view/View;Landroid/os/Bundle;)V", "", "countryName", "C7", "(Ljava/lang/String;)V", "finish", "()V", "x", "onDestroy", "", "enabled", "N", "(Z)V", "Landroid/widget/Spinner;", "kotlin.jvm.PlatformType", C22021b.f61237c, "Ls1/g;", "getCountrySpinner", "()Landroid/widget/Spinner;", "countrySpinner", "Le/a/h0/a/b0/c;", "a", "Le/a/h0/a/b0/c;", "OA", "()Le/a/h0/a/b0/c;", "setPresenter", "(Le/a/h0/a/b0/c;)V", "presenter", AbstractC2405c.f7629a, "getBlockButton", "()Landroid/view/View;", "blockButton", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.h0.a.b0.a */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/a.class */
public final class C14758a extends Fragment implements AbstractC14767e {
    @Inject

    /* renamed from: a */
    public AbstractC14764c f42261a;

    /* renamed from: b */
    public final g f42262b = C19286f.m13659t(this, C2752R.C2754id.country_spinner);

    /* renamed from: c */
    public final g f42263c = C19286f.m13659t(this, 2131362349);

    /* renamed from: e.a.h0.a.b0.a$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/a$a.class */
    public static final class C14759a implements AdapterView.OnItemSelectedListener {
        public C14759a() {
            C14758a.this = r4;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
            C14758a.this.m19684OA().mo19681Jj(i);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* renamed from: e.a.h0.a.b0.a$b */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/a$b.class */
    public static final class View$OnClickListenerC14760b implements View.OnClickListener {
        public View$OnClickListenerC14760b() {
            C14758a.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C14758a.this.m19684OA().mo19683Hj();
        }
    }

    /* renamed from: e.a.h0.a.b0.a$c */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/a$c.class */
    public static final class DialogInterface$OnClickListenerC14761c implements DialogInterface.OnClickListener {
        public DialogInterface$OnClickListenerC14761c() {
            C14758a.this = r4;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
            C14758a.this.m19684OA().mo19682Ij();
        }
    }

    /* renamed from: e.a.h0.a.b0.a$d */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/b0/a$d.class */
    public static final class DialogInterface$OnClickListenerC14762d implements DialogInterface.OnClickListener {

        /* renamed from: a */
        public static final DialogInterface$OnClickListenerC14762d f42267a = new DialogInterface$OnClickListenerC14762d();

        @Override // android.content.DialogInterface.OnClickListener
        public final void onClick(DialogInterface dialogInterface, int i) {
            dialogInterface.dismiss();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14767e
    /* renamed from: C7 */
    public void mo19680C7(String str) {
        l.e(str, "countryName");
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: return");
            g$a g_a = new g$a(context);
            g_a.f70854a.f156f = getString((int) C2752R.string.BlockAddCountryAreYouSure, new Object[]{str});
            g_a.m3660i(2131886118, new DialogInterface$OnClickListenerC14761c());
            g_a.m3662g(2131887867, DialogInterface$OnClickListenerC14762d.f42267a);
            g_a.m3668a().show();
        }
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14767e
    /* renamed from: N */
    public void mo19679N(boolean z) {
        View view = (View) this.f42263c.getValue();
        l.d(view, "blockButton");
        view.setEnabled(z);
    }

    /* renamed from: OA */
    public final AbstractC14764c m19684OA() {
        AbstractC14764c abstractC14764c = this.f42261a;
        if (abstractC14764c != null) {
            return abstractC14764c;
        }
        l.l("presenter");
        throw null;
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14767e
    public void finish() {
        n3.r.a.l activity = getActivity();
        if (activity != null) {
            activity.finish();
        }
    }

    public void onCreate(Bundle bundle) {
        C14758a.super.onCreate(bundle);
        Context context = getContext();
        if (context != null) {
            l.d(context, "context ?: throw Runtime…ountryFragment onCreate\")");
            Context applicationContext = context.getApplicationContext();
            Objects.requireNonNull(applicationContext, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            AbstractC15539j2 mo10154s = ((AbstractC21187w1) applicationContext).mo10154s();
            Objects.requireNonNull(mo10154s);
            C14763b c14763b = new C14763b();
            C25225a.m3846s(mo10154s, AbstractC15539j2.class);
            C14768f c14768f = new C14768f(c14763b, mo10154s, null);
            this.f42261a = (AbstractC14764c) c14768f.f42277d.get();
            Objects.requireNonNull(c14768f.f42275b.mo11648b(), "Cannot return null from a non-@Nullable component method");
            return;
        }
        throw new RuntimeException("Null context in BlockCountryFragment onCreate");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_block_country_tcx, viewGroup, false);
    }

    public void onDestroy() {
        AbstractC14764c abstractC14764c = this.f42261a;
        if (abstractC14764c == null) {
            l.l("presenter");
            throw null;
        }
        abstractC14764c.f57683a = null;
        C14758a.super.onDestroy();
    }

    public void onViewCreated(View view, Bundle bundle) {
        l.e(view, ViewAction.VIEW);
        h activity = getActivity();
        Objects.requireNonNull(activity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        h hVar = activity;
        View findViewById = view.findViewById(2131366512);
        Objects.requireNonNull(findViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
        Toolbar toolbar = (Toolbar) findViewById;
        toolbar.setNavigationIcon(C19291g.m13535l0(hVar, 2131231576, 2130970409));
        hVar.setSupportActionBar(toolbar);
        AbstractC25393a supportActionBar = hVar.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3543x(C2752R.string.BlockAddCountry);
            supportActionBar.mo3553n(true);
        }
        AbstractC14764c abstractC14764c = this.f42261a;
        if (abstractC14764c == null) {
            l.l("presenter");
            throw null;
        }
        abstractC14764c.mo9029Y0(this);
        Spinner spinner = (Spinner) this.f42262b.getValue();
        l.d(spinner, "countrySpinner");
        AbstractC14764c abstractC14764c2 = this.f42261a;
        if (abstractC14764c2 == null) {
            l.l("presenter");
            throw null;
        }
        spinner.setAdapter((SpinnerAdapter) new C14789h(abstractC14764c2));
        Spinner spinner2 = (Spinner) this.f42262b.getValue();
        l.d(spinner2, "countrySpinner");
        spinner2.setOnItemSelectedListener(new C14759a());
        ((View) this.f42263c.getValue()).setOnClickListener(new View$OnClickListenerC14760b());
    }

    @Override // p193e.p194a.p837h0.p838a.p840b0.AbstractC14767e
    /* renamed from: x */
    public void mo19678x() {
        Toast.makeText(getContext(), (int) C2752R.string.BlockAddSuccess, 0).show();
    }
}
