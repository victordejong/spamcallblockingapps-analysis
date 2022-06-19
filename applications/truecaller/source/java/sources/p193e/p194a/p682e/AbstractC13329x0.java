package p193e.p194a.p682e;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Toast;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import com.truecaller.p183ui.TruecallerInit;
import java.util.concurrent.atomic.AtomicBoolean;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p683a.DialogC12697c3;
import p193e.p194a.p937j4.p938a.AbstractC15561d;
/* renamed from: e.a.e.x0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/x0.class */
public abstract class AbstractC13329x0 extends Fragment implements AbstractC15561d, AbstractC13335y0 {

    /* renamed from: d */
    public static final /* synthetic */ int f38735d = 0;

    /* renamed from: a */
    public final AtomicBoolean f38736a = new AtomicBoolean(false);

    /* renamed from: b */
    public Dialog f38737b;

    /* renamed from: c */
    public boolean f38738c;

    /* renamed from: E */
    public void mo18687E(boolean z) {
        if (mo18684li()) {
            return;
        }
        try {
            if (this.f38737b == null) {
                this.f38737b = new DialogC12697c3(getActivity(), z);
            }
            this.f38737b.show();
        } catch (Exception e) {
            C10480a.m26057J1(e, "TCActivity Exception while showing loading dialog");
        }
    }

    /* renamed from: OA */
    public void mo21924OA() {
    }

    /* renamed from: PA */
    public void mo10110PA() {
    }

    /* renamed from: QA */
    public void m21923QA(String str) {
        if (str != null) {
            C12864a2.m22560d0(getActivity(), str, "LABEL_NUMBER");
            Toast.makeText(getContext(), 2131887876, 0).show();
        }
    }

    /* renamed from: RA */
    public void m21922RA(String str) {
        C12864a2.m22560d0(getActivity(), str, null);
        Toast.makeText(getContext(), 2131887876, 0).show();
    }

    /* renamed from: SA */
    public boolean m21921SA() {
        return getActivity() != null && !isDetached();
    }

    /* renamed from: TA */
    public void m21920TA(int i) {
        Context context = getContext();
        if (context != null) {
            Toast.makeText(context, i, 0).show();
        }
    }

    /* renamed from: UA */
    public void mo21919UA() {
    }

    /* renamed from: VA */
    public View m21918VA() {
        if (getActivity() == null) {
            return null;
        }
        return getActivity().findViewById(16908290);
    }

    /* renamed from: We */
    public void m21917We(String str) {
        synchronized (this) {
            Context context = getContext();
            if (context != null) {
                Toast.makeText(context, str, 0).show();
            }
        }
    }

    /* renamed from: b0 */
    public void mo18686b0() {
        if (mo18684li()) {
            return;
        }
        try {
            Dialog dialog = this.f38737b;
            if (dialog == null) {
                return;
            }
            dialog.dismiss();
        } catch (Exception e) {
            C10480a.m26057J1(e, "TCActivity Exception while dismissing loading dialog");
        }
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractC15561d
    /* renamed from: jf */
    public void mo18685jf(int i) {
        m21917We(getString((int) C2752R.string.ErrorConnectionGeneralWithStatusCode, new Object[]{Integer.valueOf(i)}));
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractC15561d
    /* renamed from: li */
    public boolean mo18684li() {
        return getActivity() == null || getActivity().isFinishing();
    }

    public void onAttach(Activity activity) {
        this.f38738c = ((AbstractApplicationC8442a) activity.getApplication()).mo28540W();
        AbstractC13329x0.super.onAttach(activity);
        this.f38736a.set(true);
    }

    public void onCreate(Bundle bundle) {
        AbstractC13329x0.super.onCreate(bundle);
    }

    public void onDestroyView() {
        AbstractC13329x0.super.onDestroyView();
        mo10110PA();
    }

    public void onDetach() {
        AbstractC13329x0.super.onDetach();
        this.f38736a.set(false);
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        AbstractC13329x0.super.onRequestPermissionsResult(i, strArr, iArr);
        C19291g.m13608M0(strArr, iArr);
    }

    public void onResume() {
        AbstractC13329x0.super.onResume();
        boolean mo28540W = ((AbstractApplicationC8442a) getActivity().getApplication()).mo28540W();
        this.f38738c = mo28540W;
        if (mo28540W) {
            mo21919UA();
            return;
        }
        TruecallerInit.m34564Ya(getActivity(), "search", null);
        getActivity().finish();
    }

    public void onStart() {
        AbstractC13329x0.super.onStart();
    }

    public void onStop() {
        mo18686b0();
        this.f38737b = null;
        AbstractC13329x0.super.onStop();
    }

    public void onViewCreated(View view, Bundle bundle) {
        if (!isAdded() || !this.f38736a.get()) {
            TruecallerInit.m34564Ya(getActivity(), "search", null);
            getActivity().finish();
        }
    }

    /* renamed from: or */
    public boolean mo21904or() {
        return false;
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractC15561d
    /* renamed from: zr */
    public void mo18683zr() {
        m21920TA(2131886717);
    }
}
