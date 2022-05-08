package androidx.preference;

import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.DialogInterfaceC0308m;
/* renamed from: androidx.preference.f */
/* loaded from: classes-dex2jar.jar:androidx/preference/f.class */
public final class C1018f extends AbstractDialogInterface$OnClickListenerC1026n {

    /* renamed from: ae */
    int f4332ae;

    /* renamed from: af */
    private CharSequence[] f4333af;

    /* renamed from: ag */
    private CharSequence[] f4334ag;

    /* renamed from: b */
    public static C1018f m7399b(String str) {
        C1018f fVar = new C1018f();
        Bundle bundle = new Bundle(1);
        bundle.putString("key", str);
        fVar.setArguments(bundle);
        return fVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: a */
    public final void mo7397a(DialogInterfaceC0308m.C0309a aVar) {
        super.mo7397a(aVar);
        aVar.m9795a(this.f4333af, this.f4332ae, new DialogInterface$OnClickListenerC1019g(this));
        aVar.m9796a((CharSequence) null, (DialogInterface.OnClickListener) null);
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n
    /* renamed from: d */
    public final void mo7395d(boolean z) {
        int i;
        if (z && (i = this.f4332ae) >= 0) {
            String charSequence = this.f4334ag[i].toString();
            ListPreference listPreference = (ListPreference) m7393y();
            if (listPreference.m7468b((Object) charSequence)) {
                listPreference.m7505a(charSequence);
            }
        }
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n, androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            ListPreference listPreference = (ListPreference) m7393y();
            if (listPreference.m7503i() == null || listPreference.m7502l() == null) {
                throw new IllegalStateException("ListPreference requires an entries array and an entryValues array.");
            }
            this.f4332ae = listPreference.m7504b(listPreference.m7501n());
            this.f4333af = listPreference.m7503i();
            this.f4334ag = listPreference.m7502l();
            return;
        }
        this.f4332ae = bundle.getInt("ListPreferenceDialogFragment.index", 0);
        this.f4333af = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entries");
        this.f4334ag = bundle.getCharSequenceArray("ListPreferenceDialogFragment.entryValues");
    }

    @Override // androidx.preference.AbstractDialogInterface$OnClickListenerC1026n, androidx.fragment.app.DialogInterface$OnCancelListenerC0887c, androidx.fragment.app.Fragment
    public final void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putInt("ListPreferenceDialogFragment.index", this.f4332ae);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entries", this.f4333af);
        bundle.putCharSequenceArray("ListPreferenceDialogFragment.entryValues", this.f4334ag);
    }
}
