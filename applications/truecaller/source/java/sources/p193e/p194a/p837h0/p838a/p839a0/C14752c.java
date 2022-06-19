package p193e.p194a.p837h0.p838a.p839a0;

import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.Toast;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView;
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
/* renamed from: e.a.h0.a.a0.c */
/* loaded from: classes9-dex2jar.jar:e/a/h0/a/a0/c.class */
public class C14752c extends Fragment implements BlockAdvancedPresenterView {
    @Inject

    /* renamed from: a */
    public AbstractC14755e f42253a;

    /* renamed from: b */
    public Spinner f42254b;

    /* renamed from: c */
    public EditText f42255c;

    /* renamed from: d */
    public View f42256d;

    /* renamed from: e.a.h0.a.a0.c$a */
    /* loaded from: classes9-dex2jar.jar:e/a/h0/a/a0/c$a.class */
    public class C14753a implements TextWatcher {
        public C14753a() {
            C14752c.this = r4;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            C14752c.this.f42253a.mo19685Ij(editable.toString());
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    @Override // com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView
    /* renamed from: N */
    public void mo19691N(boolean z) {
        this.f42256d.setEnabled(z);
    }

    @Override // com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView
    /* renamed from: O7 */
    public BlockAdvancedPresenterView.AdvancedType mo19690O7() {
        return BlockAdvancedPresenterView.AdvancedType.values()[this.f42254b.getSelectedItemPosition()];
    }

    @Override // com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView
    /* renamed from: R1 */
    public void mo19689R1(boolean z) {
        this.f42254b.setEnabled(z);
        this.f42255c.setEnabled(z);
    }

    @Override // com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView
    public void finish() {
        getActivity().finish();
    }

    public void onCreate(Bundle bundle) {
        C14752c.super.onCreate(bundle);
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) getContext().getApplicationContext()).mo10154s();
        Objects.requireNonNull(mo10154s);
        C14754d c14754d = new C14754d();
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        AbstractC19870l mo12119z1 = mo10154s.mo12119z1();
        Objects.requireNonNull(mo12119z1, "Cannot return null from a non-@Nullable component method");
        AbstractC19854f<AbstractC14854r> mo12693I5 = mo10154s.mo12693I5();
        Objects.requireNonNull(mo12693I5, "Cannot return null from a non-@Nullable component method");
        Objects.requireNonNull(c14754d);
        this.f42253a = new C14756f(mo12119z1.mo11845d(), mo12693I5);
        Objects.requireNonNull(mo10154s.mo11648b(), "Cannot return null from a non-@Nullable component method");
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return C17422k.m16050u0(layoutInflater, true).inflate(C2752R.layout.fragment_block_advanced, viewGroup, false);
    }

    public void onDestroy() {
        this.f42253a.f57683a = null;
        C14752c.super.onDestroy();
    }

    public void onViewCreated(View view, Bundle bundle) {
        C14752c.super.onViewCreated(view, bundle);
        h activity = getActivity();
        Toolbar toolbar = (Toolbar) view.findViewById(2131366512);
        toolbar.setNavigationIcon(C19291g.m13535l0(getContext(), 2131231576, 2130970409));
        activity.setSupportActionBar(toolbar);
        AbstractC25393a supportActionBar = activity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3543x(C2752R.string.BlockAddNumberAdvanced);
            supportActionBar.mo3553n(true);
        }
        this.f42254b = (Spinner) view.findViewById(C2752R.C2754id.type_spinner);
        this.f42255c = (EditText) view.findViewById(C2752R.C2754id.number_text);
        this.f42256d = view.findViewById(2131362349);
        this.f42254b.setAdapter((SpinnerAdapter) new ArrayAdapter(getContext(), 17367049, getResources().getStringArray(C2752R.array.BlockAdvancedTypes)));
        this.f42253a.mo9029Y0(this);
        this.f42256d.setOnClickListener(new View.OnClickListener() { // from class: e.a.h0.a.a0.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                C14752c.this.f42253a.mo19686Hj();
            }
        });
        this.f42255c.addTextChangedListener(new C14753a());
    }

    @Override // com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView
    /* renamed from: t2 */
    public String mo19688t2() {
        return this.f42255c.getText().toString();
    }

    @Override // com.truecaller.filters.blockedevents.blockadvanced.BlockAdvancedPresenterView
    /* renamed from: x */
    public void mo19687x() {
        Toast.makeText(getContext(), (int) C2752R.string.BlockAddSuccess, 0).show();
    }
}
