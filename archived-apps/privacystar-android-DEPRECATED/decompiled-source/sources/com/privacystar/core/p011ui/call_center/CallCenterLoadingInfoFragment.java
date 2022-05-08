package com.privacystar.core.p011ui.call_center;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.PSFragment;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterLoadingInfoFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterLoadingInfoFragment.class */
public class CallCenterLoadingInfoFragment extends PSFragment {
    private Unbinder mUnbinder;

    public static CallCenterLoadingInfoFragment newInstance() {
        CallCenterLoadingInfoFragment callCenterLoadingInfoFragment = new CallCenterLoadingInfoFragment();
        callCenterLoadingInfoFragment.setArguments(new Bundle());
        return callCenterLoadingInfoFragment;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.fragment_call_center_loading_info, viewGroup, false);
        this.mUnbinder = ButterKnife.bind(this, inflate);
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mUnbinder.unbind();
    }
}
