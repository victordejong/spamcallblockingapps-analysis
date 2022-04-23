package androidx.preference;

import android.os.Bundle;
import androidx.appcompat.app.DialogInterfaceC0308m;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* renamed from: androidx.preference.i */
/* loaded from: classes-dex2jar.jar:androidx/preference/i.class */
public final class C1021i extends AbstractDialogInterface$OnClickListenerC1026n {

    /* renamed from: ae */
    Set<String> f4336ae = new HashSet();

    /* renamed from: af */
    boolean f4337af;

    /* renamed from: ag */
    CharSequence[] f4338ag;

    /* renamed from: ah */
    CharSequence[] f4339ah;

    /* renamed from: b */
    public static C1021i m7398b(String str) {
        C1021i iVar = new C1021i();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        iVar.setArguments(bundle);
        return iVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: a */
    public final void mo7397a(DialogInterfaceC0308m.C0309a aVar) {
        super.mo7397a(aVar);
        int length = this.f4339ah.length;
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            zArr[i] = this.f4336ae.contains(this.f4339ah[i].toString());
        }
        aVar.m9793a(this.f4338ag, zArr, new DialogInterface$OnMultiChoiceClickListenerC1022j(this));
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: d */
    public final void mo7395d(boolean z) {
        if (z && this.f4337af) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) m7393y();
            if (multiSelectListPreference.m7468b((Object) this.f4336ae)) {
                multiSelectListPreference.m7498a(this.f4336ae);
            }
        }
        this.f4337af = false;
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n, androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            MultiSelectListPreference multiSelectListPreference = (MultiSelectListPreference) m7393y();
            if (multiSelectListPreference.m7497i() == null || multiSelectListPreference.m7496l() == null) {
                throw new IllegalStateException("MultiSelectListPreference requires an entries array and an entryValues array.");
            }
            this.f4336ae.clear();
            this.f4336ae.addAll(multiSelectListPreference.m7495n());
            this.f4337af = false;
            this.f4338ag = multiSelectListPreference.m7497i();
            this.f4339ah = multiSelectListPreference.m7496l();
            return;
        }
        this.f4336ae.clear();
        this.f4336ae.addAll(bundle.getStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values"));
        this.f4337af = bundle.getBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", false);
        this.f4338ag = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries");
        this.f4339ah = bundle.getCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues");
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n, androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putStringArrayList("MultiSelectListPreferenceDialogFragmentCompat.values", new ArrayList<>(this.f4336ae));
        bundle.putBoolean("MultiSelectListPreferenceDialogFragmentCompat.changed", this.f4337af);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entries", this.f4338ag);
        bundle.putCharSequenceArray("MultiSelectListPreferenceDialogFragmentCompat.entryValues", this.f4339ah);
    }
}
