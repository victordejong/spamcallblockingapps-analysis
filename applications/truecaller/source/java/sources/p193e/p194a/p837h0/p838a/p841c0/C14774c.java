package p193e.p194a.p837h0.p838a.p841c0;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p837h0.AbstractC14854r;
/* renamed from: e.a.h0.a.c0.c */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/c0/c.class */
public class C14774c extends Fragment implements AbstractC14779g {
    @Inject

    /* renamed from: a */
    public AbstractC14777e f42282a;

    /* renamed from: b */
    public EditText f42283b;

    /* renamed from: c */
    public View f42284c;

    /* renamed from: e.a.h0.a.c0.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/c0/c$a.class */
    public class C14775a implements TextWatcher {
        public C14775a() {
            C14774c.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C14774c.this.f42282a.mo19676Ij(editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14779g
    /* renamed from: E5 */
    public String mo19675E5() {
        return this.f42283b.getText().toString();
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14779g
    /* renamed from: N */
    public void mo19674N(boolean z) {
        this.f42284c.setEnabled(z);
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14779g
    public void finish() {
        getActivity().finish();
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14779g
    /* renamed from: mv */
    public void mo19673mv(boolean z) {
        this.f42283b.setEnabled(z);
    }

    public void onCreate(Bundle bundle) {
        C14774c.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C14776d c14776d = new C14776d();
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC19870l mo12119z1 = mo10154s.mo12119z1();
        Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
        AbstractC19854f<AbstractC14854r> mo12693I5 = mo10154s.mo12693I5();
        Objects.requireNonNull(mo12693I5, "Cannot return null from a non-@Nullable component method");
        Objects.requireNonNull(c14776d);
        this.f42282a = new C14778f(mo12119z1.mo11845d(), mo12693I5);
        Objects.requireNonNull(mo10154s.mo11648b(), "Cannot return null from a non-@Nullable component method");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_block_name, viewGroup, false);
    }

    public void onDestroy() {
        this.f42282a.f57683a = null;
        C14774c.super.onDestroy();
    }

    public void onViewCreated(View view, Bundle bundle) {
        C14774c.super.onViewCreated(view, bundle);
        h activity = getActivity();
        Toolbar toolbar = (Toolbar) view.findViewById(2131366512);
        toolbar.setNavigationIcon(C19291g.m13535l0(getContext(), 2131231576, 2130970409));
        activity.setSupportActionBar(toolbar);
        AbstractC25393a supportActionBar = activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3543x(C2752R.string.BlockAddNameManually);
            supportActionBar.mo3553n(true);
        }
        this.f42283b = (EditText) view.findViewById(2131364884);
        this.f42284c = view.findViewById(2131362349);
        this.f42282a.mo9029Y0(this);
        this.f42284c.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.c0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14774c.this.f42282a.mo19677Hj();
            }
        });
        this.f42283b.addTextChangedListener(new C14775a());
    }

    @Override // p193e.p194a.p837h0.p838a.p841c0.AbstractC14779g
    /* renamed from: x */
    public void mo19672x() {
        Toast.makeText(getContext(), (int) C2752R.string.BlockAddSuccess, 0).show();
    }
}
