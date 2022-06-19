package p193e.p194a.p837h0;

import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import com.truecaller.filters.blockedevents.BlockDialogActivity;
import n3.b.a.h;
import p1727n3.p1734b.p1735a.AbstractC25393a;
/* renamed from: e.a.h0.g */
/* loaded from: classes9-dex2jar.jar:e/a/h0/g.class */
public abstract class AbstractC14832g extends Fragment implements AbstractC14834i {

    /* renamed from: a */
    public Toolbar f42403a;

    @Override // p193e.p194a.p837h0.AbstractC14834i
    /* renamed from: C9 */
    public void mo19611C9() {
        BlockDialogActivity.m35428pa(requireContext(), BlockDialogActivity.DialogType.COUNTRY);
    }

    /* renamed from: OA */
    public void m19612OA(int i) {
        h requireActivity = requireActivity();
        requireActivity().setSupportActionBar(this.f42403a);
        AbstractC25393a supportActionBar = requireActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.mo3553n(true);
            supportActionBar.mo3543x(i);
        }
    }

    @Override // p193e.p194a.p837h0.AbstractC14834i
    /* renamed from: d0 */
    public void mo19610d0() {
        requireActivity().finish();
    }

    public void onViewCreated(View view, Bundle bundle) {
        AbstractC14832g.super.onViewCreated(view, bundle);
        this.f42403a = (Toolbar) view.findViewById(2131366512);
    }
}
