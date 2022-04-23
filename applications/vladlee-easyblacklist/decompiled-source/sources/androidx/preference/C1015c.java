package androidx.preference;

import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
/* renamed from: androidx.preference.c */
/* loaded from: classes-dex2jar.jar:androidx/preference/c.class */
public final class C1015c extends AbstractDialogInterface$OnClickListenerC1026n {

    /* renamed from: ae */
    private EditText f4329ae;

    /* renamed from: af */
    private CharSequence f4330af;

    /* renamed from: b */
    public static C1015c m7402b(String str) {
        C1015c cVar = new C1015c();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        cVar.setArguments(bundle);
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: b */
    public final void mo7396b(View view) {
        super.mo7396b(view);
        this.f4329ae = (EditText) view.findViewById(16908291);
        EditText editText = this.f4329ae;
        if (editText != null) {
            editText.requestFocus();
            this.f4329ae.setText(this.f4330af);
            EditText editText2 = this.f4329ae;
            editText2.setSelection(editText2.getText().length());
            if (((EditTextPreference) m7393y()).m7508l() != null) {
                m7393y();
                return;
            }
            return;
        }
        throw new IllegalStateException("Dialog view must contain an EditText with id @android:id/edit");
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: d */
    public final void mo7395d(boolean z) {
        if (z) {
            String obj = this.f4329ae.getText().toString();
            EditTextPreference editTextPreference = (EditTextPreference) m7393y();
            if (editTextPreference.m7468b(obj)) {
                editTextPreference.m7510a(obj);
            }
        }
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n, androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f4330af = bundle == null ? ((EditTextPreference) m7393y()).m7509i() : bundle.getCharSequence("EditTextPreferenceDialogFragment.text");
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n, androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putCharSequence("EditTextPreferenceDialogFragment.text", this.f4330af);
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: x */
    protected final boolean mo7394x() {
        return true;
    }
}
