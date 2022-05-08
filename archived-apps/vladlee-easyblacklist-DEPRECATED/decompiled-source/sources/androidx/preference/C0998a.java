package androidx.preference;

import android.view.View;
import android.widget.AdapterView;
/* renamed from: androidx.preference.a */
/* loaded from: classes-dex2jar.jar:androidx/preference/a.class */
final class C0998a implements AdapterView.OnItemSelectedListener {

    /* renamed from: a */
    final /* synthetic */ DropDownPreference f4132a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0998a(DropDownPreference dropDownPreference) {
        this.f4132a = dropDownPreference;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onItemSelected(AdapterView<?> adapterView, View view, int i, long j) {
        if (i >= 0) {
            String charSequence = this.f4132a.m7502l()[i].toString();
            if (!charSequence.equals(this.f4132a.m7501n()) && this.f4132a.m7468b((Object) charSequence)) {
                this.f4132a.m7505a(charSequence);
            }
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public final void onNothingSelected(AdapterView<?> adapterView) {
    }
}
