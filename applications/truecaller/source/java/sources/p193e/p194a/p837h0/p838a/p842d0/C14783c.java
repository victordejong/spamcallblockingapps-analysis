package p193e.p194a.p837h0.p838a.p842d0;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RadioGroup;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import com.truecaller.blocking.FiltersContract;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1114o5.AbstractC19132z;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19870l;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p837h0.AbstractC14854r;
/* renamed from: e.a.h0.a.d0.c */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/d0/c.class */
public class C14783c extends Fragment implements AbstractC14788g {
    @Inject

    /* renamed from: a */
    public AbstractC14786e f42291a;

    /* renamed from: b */
    public Spinner f42292b;

    /* renamed from: c */
    public EditText f42293c;

    /* renamed from: d */
    public EditText f42294d;

    /* renamed from: e */
    public View f42295e;

    /* renamed from: f */
    public RadioGroup f42296f;

    /* renamed from: e.a.h0.a.d0.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/d0/c$a.class */
    public class C14784a implements TextWatcher {
        public C14784a() {
            C14783c.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C14783c.this.f42291a.mo19670Ij(editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: E5 */
    public String mo19668E5() {
        return this.f42294d.getText().toString();
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: N */
    public void mo19667N(boolean z) {
        this.f42295e.setEnabled(z);
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: Pb */
    public void mo19666Pb(int i) {
        this.f42292b.setSelection(i);
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: R1 */
    public void mo19665R1(boolean z) {
        this.f42292b.setEnabled(z);
        this.f42293c.setEnabled(z);
        this.f42294d.setEnabled(z);
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    public void finish() {
        getActivity().finish();
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: nh */
    public int mo19664nh() {
        return this.f42292b.getSelectedItemPosition();
    }

    public void onCreate(Bundle bundle) {
        C14783c.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C14785d c14785d = new C14785d();
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC19870l mo12119z1 = mo10154s.mo12119z1();
        Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
        AbstractC19854f<AbstractC14854r> mo12693I5 = mo10154s.mo12693I5();
        Objects.requireNonNull(mo12693I5, "Cannot return null from a non-@Nullable component method");
        AbstractC19132z mo12720G6 = mo10154s.mo12720G6();
        Objects.requireNonNull(mo12720G6, "Cannot return null from a non-@Nullable component method");
        AbstractC8621z mo12296m = mo10154s.mo12296m();
        Objects.requireNonNull(mo12296m, "Cannot return null from a non-@Nullable component method");
        Objects.requireNonNull(c14785d);
        this.f42291a = new C14787f(mo12119z1.mo11845d(), mo12693I5, mo12720G6, mo12296m);
        Objects.requireNonNull(mo10154s.mo11648b(), "Cannot return null from a non-@Nullable component method");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_block_number, viewGroup, false);
    }

    public void onDestroy() {
        this.f42291a.f57683a = null;
        C14783c.super.onDestroy();
    }

    public void onViewCreated(View view, Bundle bundle) {
        C14783c.super.onViewCreated(view, bundle);
        h activity = getActivity();
        Toolbar toolbar = (Toolbar) view.findViewById(2131366512);
        toolbar.setNavigationIcon(C19291g.m13535l0(getContext(), 2131231576, 2130970409));
        activity.setSupportActionBar(toolbar);
        AbstractC25393a supportActionBar = activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3543x(C2752R.string.BlockAddNumberManually);
            supportActionBar.mo3553n(true);
        }
        this.f42292b = (Spinner) view.findViewById(C2752R.C2754id.country_spinner);
        this.f42293c = (EditText) view.findViewById(C2752R.C2754id.number_text);
        this.f42294d = (EditText) view.findViewById(2131364884);
        this.f42295e = view.findViewById(2131362349);
        this.f42296f = (RadioGroup) view.findViewById(2131365328);
        this.f42292b.setAdapter((SpinnerAdapter) new C14789h(this.f42291a));
        this.f42291a.mo9029Y0(this);
        this.f42295e.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.d0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14783c.this.f42291a.mo19671Hj();
            }
        });
        this.f42293c.addTextChangedListener(new C14784a());
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: t2 */
    public String mo19663t2() {
        return this.f42293c.getText().toString();
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: tp */
    public FiltersContract.Filters.EntityType mo19662tp() {
        return this.f42296f.getCheckedRadioButtonId() == 2131362474 ? FiltersContract.Filters.EntityType.BUSINESS : FiltersContract.Filters.EntityType.PERSON;
    }

    @Override // p193e.p194a.p837h0.p838a.p842d0.AbstractC14788g
    /* renamed from: x */
    public void mo19661x() {
        Toast.makeText(getContext(), (int) C2752R.string.BlockAddSuccess, 0).show();
    }
}
