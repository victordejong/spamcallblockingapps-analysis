package com.privacystar.core.p011ui.widgets;

import android.graphics.Point;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.BindView;
import butterknife.ButterKnife;
import butterknife.OnClick;
import butterknife.Unbinder;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.call.call_details.CallDetails;
import com.privacystar.core.p011ui.util.LogItemBinder;
import com.privacystar.core.service.analytics.AnalyticsManager;
import com.privacystar.core.service.analytics.Event;
import com.privacystar.core.util.HomeActivityBlockingUtil;
import timber.log.Timber;
/* renamed from: com.privacystar.core.ui.widgets.LogContextDialogFragment */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/LogContextDialogFragment.class */
public class LogContextDialogFragment extends PSDialogFragment {
    View.OnClickListener boundListener = new View.OnClickListener(this) { // from class: com.privacystar.core.ui.widgets.LogContextDialogFragment$$Lambda$0
        private final LogContextDialogFragment arg$1;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.arg$1 = this;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.arg$1.lambda$new$0$LogContextDialogFragment(view);
        }
    };
    @BindView(C1566R.C1569id.log_item_expanded_call_ll)
    LinearLayout callButton;
    private CallDetails callDetails;
    private ILogContextDialogFragment callback;
    @BindView(C1566R.C1569id.log_context_dialog_cancel)
    TextView itemCancel;
    private Unbinder unbinder;

    public static LogContextDialogFragment newInstance(CallDetails callDetails, ILogContextDialogFragment iLogContextDialogFragment) {
        LogContextDialogFragment logContextDialogFragment = new LogContextDialogFragment();
        Bundle bundle = new Bundle();
        bundle.putParcelable(CallDetails.getParcelKey(), callDetails);
        logContextDialogFragment.setArguments(bundle);
        logContextDialogFragment.setContextCallback(iLogContextDialogFragment);
        return logContextDialogFragment;
    }

    public void approveEntry() {
        if (HomeActivityBlockingUtil.approveEntry(this.callDetails, getActivity(), getRealm())) {
            this.callback.triggerContentRefresh(false);
        }
        dismiss();
    }

    public void blockEntry() {
        if (HomeActivityBlockingUtil.blockEntry(this.callDetails, getActivity(), getRealm())) {
            this.callback.triggerContentRefresh(false);
        }
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$new$0$LogContextDialogFragment(View view) {
        switch (view.getId()) {
            case C1566R.C1569id.log_item_expanded_add_contact_ll /* 2131296899 */:
                onAddContact();
                return;
            case C1566R.C1569id.log_item_expanded_approve_ll /* 2131296900 */:
                approveEntry();
                return;
            case C1566R.C1569id.log_item_expanded_block_ll /* 2131296901 */:
                blockEntry();
                return;
            case C1566R.C1569id.log_item_expanded_call_ll /* 2131296902 */:
                onSendCall();
                return;
            case C1566R.C1569id.log_item_expanded_details_ll /* 2131296903 */:
                viewItem();
                return;
            case C1566R.C1569id.log_item_expanded_ll /* 2131296904 */:
            default:
                return;
            case C1566R.C1569id.log_item_expanded_message_ll /* 2131296905 */:
                onSendMessage();
                return;
            case C1566R.C1569id.log_item_expanded_report_ll /* 2131296906 */:
                onReportClick();
                return;
            case C1566R.C1569id.log_item_expanded_unapprove_ll /* 2131296907 */:
                unapproveEntry();
                return;
            case C1566R.C1569id.log_item_expanded_unblock_ll /* 2131296908 */:
                unblockEntry();
                return;
        }
    }

    public void onAddContact() {
        this.callback.launchAddContact(this.callDetails.getCaller());
        dismiss();
    }

    @OnClick({C1566R.C1569id.log_context_dialog_cancel})
    public void onCancelClick() {
        Timber.m28v("Dismissing dialog.", new Object[0]);
        dismiss();
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!restartAppIfPermissionsMissing()) {
            this.callDetails = (CallDetails) getArguments().getParcelable(CallDetails.getParcelKey());
            setStyle(1, 0);
        }
    }

    @Override // android.support.p001v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View inflate = layoutInflater.inflate(C1566R.C1571layout.log_context_dialog_fragment, viewGroup);
        this.unbinder = ButterKnife.bind(this, inflate);
        this.callButton.setVisibility(0);
        return inflate;
    }

    @Override // android.support.p001v4.app.DialogFragment, android.support.p001v4.app.Fragment
    public void onDestroyView() {
        if (this.unbinder != null) {
            this.unbinder.unbind();
        }
        super.onDestroyView();
    }

    public void onReportClick() {
        this.callback.launchReport(this.callDetails);
        AnalyticsManager.INSTANCE.fire(Event.ComplaintFromOthersEvent.INSTANCE);
        dismiss();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onResume() {
        Window window = getDialog().getWindow();
        Point point = new Point();
        window.getWindowManager().getDefaultDisplay().getSize(point);
        window.setLayout((int) (point.x * 0.92d), -2);
        window.setGravity(17);
        super.onResume();
    }

    public void onSendCall() {
        this.callback.launchSendCall(this.callDetails.getCaller());
        dismiss();
    }

    public void onSendMessage() {
        this.callback.launchSendMessage(this.callDetails.getCaller());
        dismiss();
    }

    @Override // android.support.p001v4.app.Fragment
    public void onViewCreated(View view, @Nullable Bundle bundle) {
        super.onViewCreated(view, bundle);
        if (this.callDetails != null) {
            new LogItemBinder().bindActivityLogItem(view, this.callDetails, this.boundListener, false, getContext(), getRealm());
        }
    }

    public void setContextCallback(ILogContextDialogFragment iLogContextDialogFragment) {
        this.callback = iLogContextDialogFragment;
    }

    public void unapproveEntry() {
        if (HomeActivityBlockingUtil.unapproveEntry(this.callDetails, getRealm())) {
            this.callback.triggerContentRefresh(false);
        }
        dismiss();
    }

    public void unblockEntry() {
        if (HomeActivityBlockingUtil.unblockEntry(this.callDetails, getActivity(), getRealm())) {
            this.callback.triggerContentRefresh(false);
        }
        dismiss();
    }

    public void viewItem() {
        this.callback.launchCallerDetails(this.callDetails.getCaller());
        dismiss();
    }
}
