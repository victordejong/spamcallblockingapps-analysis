package gogolook.callgogolook2.setting;

import android.view.View;
import android.widget.CheckedTextView;
import androidx.annotation.CallSuper;
import androidx.annotation.UiThread;
import butterknife.Unbinder;
import butterknife.internal.DebouncingOnClickListener;
import butterknife.internal.Utils;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.view.SizedTextView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CallConfirmSettingsActivity_ViewBinding.class */
public class CallConfirmSettingsActivity_ViewBinding implements Unbinder {

    /* renamed from: a */
    public CallConfirmSettingsActivity f12784a;

    /* renamed from: b */
    public View f12785b;

    /* renamed from: c */
    public View f12786c;

    /* renamed from: d */
    public View f12787d;

    /* renamed from: e */
    public View f12788e;

    /* renamed from: gogolook.callgogolook2.setting.CallConfirmSettingsActivity_ViewBinding$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CallConfirmSettingsActivity_ViewBinding$a.class */
    public class C5167a extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CallConfirmSettingsActivity f12789a;

        public C5167a(CallConfirmSettingsActivity_ViewBinding callConfirmSettingsActivity_ViewBinding, CallConfirmSettingsActivity callConfirmSettingsActivity) {
            this.f12789a = callConfirmSettingsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12789a.onClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CallConfirmSettingsActivity_ViewBinding$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CallConfirmSettingsActivity_ViewBinding$b.class */
    public class C5168b extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CallConfirmSettingsActivity f12790a;

        public C5168b(CallConfirmSettingsActivity_ViewBinding callConfirmSettingsActivity_ViewBinding, CallConfirmSettingsActivity callConfirmSettingsActivity) {
            this.f12790a = callConfirmSettingsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12790a.onClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CallConfirmSettingsActivity_ViewBinding$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CallConfirmSettingsActivity_ViewBinding$c.class */
    public class C5169c extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CallConfirmSettingsActivity f12791a;

        public C5169c(CallConfirmSettingsActivity_ViewBinding callConfirmSettingsActivity_ViewBinding, CallConfirmSettingsActivity callConfirmSettingsActivity) {
            this.f12791a = callConfirmSettingsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12791a.onClick(view);
        }
    }

    /* renamed from: gogolook.callgogolook2.setting.CallConfirmSettingsActivity_ViewBinding$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/setting/CallConfirmSettingsActivity_ViewBinding$d.class */
    public class C5170d extends DebouncingOnClickListener {

        /* renamed from: a */
        public final /* synthetic */ CallConfirmSettingsActivity f12792a;

        public C5170d(CallConfirmSettingsActivity_ViewBinding callConfirmSettingsActivity_ViewBinding, CallConfirmSettingsActivity callConfirmSettingsActivity) {
            this.f12792a = callConfirmSettingsActivity;
        }

        @Override // butterknife.internal.DebouncingOnClickListener
        public void doClick(View view) {
            this.f12792a.onClick(view);
        }
    }

    @UiThread
    public CallConfirmSettingsActivity_ViewBinding(CallConfirmSettingsActivity callConfirmSettingsActivity, View view) {
        this.f12784a = callConfirmSettingsActivity;
        callConfirmSettingsActivity.mTxvDialogModeInAppChoose = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.txv_dialog_mode_inapp_choose, "field 'mTxvDialogModeInAppChoose'", SizedTextView.class);
        callConfirmSettingsActivity.mTxvDialogModeOutAppChoose = (SizedTextView) Utils.findRequiredViewAsType(view, R$id.txv_dialog_mode_outapp_choose, "field 'mTxvDialogModeOutAppChoose'", SizedTextView.class);
        View findRequiredView = Utils.findRequiredView(view, R$id.cktxv_stranger_popup_dialog, "field 'mCkTxvStrangerPopupDialog' and method 'onClick'");
        callConfirmSettingsActivity.mCkTxvStrangerPopupDialog = (CheckedTextView) Utils.castView(findRequiredView, R$id.cktxv_stranger_popup_dialog, "field 'mCkTxvStrangerPopupDialog'", CheckedTextView.class);
        this.f12785b = findRequiredView;
        findRequiredView.setOnClickListener(new C5167a(this, callConfirmSettingsActivity));
        View findRequiredView2 = Utils.findRequiredView(view, R$id.cktxv_contact_popup_dialog, "field 'mCkTxvContactPopupDialog' and method 'onClick'");
        callConfirmSettingsActivity.mCkTxvContactPopupDialog = (CheckedTextView) Utils.castView(findRequiredView2, R$id.cktxv_contact_popup_dialog, "field 'mCkTxvContactPopupDialog'", CheckedTextView.class);
        this.f12786c = findRequiredView2;
        findRequiredView2.setOnClickListener(new C5168b(this, callConfirmSettingsActivity));
        View findRequiredView3 = Utils.findRequiredView(view, R$id.lnrlayout_dialog_mode_inapp, "method 'onClick'");
        this.f12787d = findRequiredView3;
        findRequiredView3.setOnClickListener(new C5169c(this, callConfirmSettingsActivity));
        View findRequiredView4 = Utils.findRequiredView(view, R$id.lnrlayout_dialog_mode_outapp, "method 'onClick'");
        this.f12788e = findRequiredView4;
        findRequiredView4.setOnClickListener(new C5170d(this, callConfirmSettingsActivity));
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        CallConfirmSettingsActivity callConfirmSettingsActivity = this.f12784a;
        if (callConfirmSettingsActivity != null) {
            this.f12784a = null;
            callConfirmSettingsActivity.mTxvDialogModeInAppChoose = null;
            callConfirmSettingsActivity.mTxvDialogModeOutAppChoose = null;
            callConfirmSettingsActivity.mCkTxvStrangerPopupDialog = null;
            callConfirmSettingsActivity.mCkTxvContactPopupDialog = null;
            this.f12785b.setOnClickListener(null);
            this.f12785b = null;
            this.f12786c.setOnClickListener(null);
            this.f12786c = null;
            this.f12787d.setOnClickListener(null);
            this.f12787d = null;
            this.f12788e.setOnClickListener(null);
            this.f12788e = null;
            return;
        }
        throw new IllegalStateException("Bindings already cleared.");
    }
}
