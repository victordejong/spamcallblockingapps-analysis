package androidx.preference;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import androidx.preference.C1001ac;
/* loaded from: classes-dex2jar.jar:androidx/preference/DropDownPreference.class */
public class DropDownPreference extends ListPreference {

    /* renamed from: a */
    private final Context f4030a;

    /* renamed from: b */
    private final ArrayAdapter f4031b;

    /* renamed from: c */
    private Spinner f4032c;

    /* renamed from: d */
    private final AdapterView.OnItemSelectedListener f4033d;

    public DropDownPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, C1001ac.C1002a.f4140d);
    }

    public DropDownPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, (byte) 0);
    }

    private DropDownPreference(Context context, AttributeSet attributeSet, int i, byte b) {
        super(context, attributeSet, i, (byte) 0);
        this.f4033d = new C0998a(this);
        this.f4030a = context;
        this.f4031b = new ArrayAdapter(this.f4030a, 17367049);
        m7511L();
    }

    /* renamed from: L */
    private void m7511L() {
        this.f4031b.clear();
        if (m7503i() != null) {
            for (CharSequence charSequence : m7503i()) {
                this.f4031b.add(charSequence.toString());
            }
        }
    }

    @Override // androidx.preference.Preference
    /* renamed from: a */
    public final void mo7401a(C1000ab abVar) {
        int i;
        this.f4032c = (Spinner) abVar.f4658a.findViewById(C1001ac.C1005d.f4156e);
        this.f4032c.setAdapter((SpinnerAdapter) this.f4031b);
        this.f4032c.setOnItemSelectedListener(this.f4033d);
        Spinner spinner = this.f4032c;
        String n = m7501n();
        CharSequence[] l = m7502l();
        if (!(n == null || l == null)) {
            i = l.length - 1;
            while (i >= 0) {
                if (l[i].equals(n)) {
                    break;
                }
                i--;
            }
        }
        i = -1;
        spinner.setSelection(i);
        super.mo7401a(abVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.DialogPreference, androidx.preference.Preference
    /* renamed from: g */
    public final void mo7411g() {
        this.f4032c.performClick();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.Preference
    /* renamed from: h */
    public final void mo7456h() {
        super.mo7456h();
        ArrayAdapter arrayAdapter = this.f4031b;
        if (arrayAdapter != null) {
            arrayAdapter.notifyDataSetChanged();
        }
    }
}
