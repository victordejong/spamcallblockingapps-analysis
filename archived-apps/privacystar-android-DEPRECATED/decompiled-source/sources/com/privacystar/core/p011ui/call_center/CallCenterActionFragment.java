package com.privacystar.core.p011ui.call_center;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.PSFragment;
/* renamed from: com.privacystar.core.ui.call_center.CallCenterActionFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/call_center/CallCenterActionFragment.class */
public class CallCenterActionFragment extends PSFragment {
    private static String ARGS_ACTION = "actor";
    private CallCenterAction mAction;
    @BindView(C1566R.C1569id.call_center_action_layout)
    RelativeLayout mButtonArea;
    @BindView(C1566R.C1569id.call_center_action_image)
    ImageView mImageView;
    @BindView(C1566R.C1569id.call_center_action_label)
    TextView mTextView;
    private Unbinder mUnbinder;

    public static CallCenterActionFragment newInstance(CallCenterAction callCenterAction) {
        CallCenterActionFragment callCenterActionFragment = new CallCenterActionFragment();
        Bundle bundle = new Bundle();
        bundle.putSerializable(ARGS_ACTION, callCenterAction);
        callCenterActionFragment.setArguments(bundle);
        callCenterActionFragment.mAction = callCenterAction;
        return callCenterActionFragment;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getArguments() != null) {
            this.mAction = (CallCenterAction) getArguments().getSerializable(ARGS_ACTION);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.fragment_call_center_action, viewGroup, false);
        this.mUnbinder = ButterKnife.bind(this, inflate);
        this.mButtonArea.setOnTouchListener(new View.OnTouchListener() { // from class: com.privacystar.core.ui.call_center.CallCenterActionFragment.1
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                CallCenterActionFragment.this.runAction(view.getContext());
                return true;
            }
        });
        this.mImageView.setImageResource(this.mAction.getImageID());
        this.mTextView.setText(this.mAction.getLabelID());
        return inflate;
    }

    @Override // android.support.p001v4.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.mUnbinder.unbind();
    }

    public void runAction(Context context) {
        this.mAction.performAction(context);
    }

    public void setAction(CallCenterAction callCenterAction) {
        this.mAction = callCenterAction;
        Bundle bundle = new Bundle();
        bundle.putSerializable(ARGS_ACTION, this.mAction);
        setArguments(bundle);
    }

    public void update() {
        this.mImageView.setImageResource(this.mAction.getImageID());
        this.mTextView.setText(this.mAction.getLabelID());
    }
}
