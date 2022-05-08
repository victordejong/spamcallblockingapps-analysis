package com.privacystar.core.p011ui.util;

import android.support.annotation.CallSuper;
import android.support.annotation.UiThread;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.Unbinder;
import butterknife.internal.Utils;
import com.privacystar.core.C1566R;
import com.privacystar.core.p011ui.widgets.caller_icon.CallerIconView;
/* renamed from: com.privacystar.core.ui.util.LogItemBinder_ViewBinding */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/util/LogItemBinder_ViewBinding.class */
public class LogItemBinder_ViewBinding implements Unbinder {
    private LogItemBinder target;

    @UiThread
    public LogItemBinder_ViewBinding(LogItemBinder logItemBinder, View view) {
        this.target = logItemBinder;
        logItemBinder.callerIcon = (CallerIconView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_caller_icon, "field 'callerIcon'", CallerIconView.class);
        logItemBinder.title = (TextView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_name, "field 'title'", TextView.class);
        logItemBinder.callerCategory = (TextView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_caller_category, "field 'callerCategory'", TextView.class);
        logItemBinder.recentCall1 = (ImageView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_call_icon_1, "field 'recentCall1'", ImageView.class);
        logItemBinder.callTime = (TextView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_time_elapsed, "field 'callTime'", TextView.class);
        logItemBinder.expandedView = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_ll, "field 'expandedView'", LinearLayout.class);
        logItemBinder.expandedActionReport = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_report_ll, "field 'expandedActionReport'", LinearLayout.class);
        logItemBinder.expandedActionAddContact = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_add_contact_ll, "field 'expandedActionAddContact'", LinearLayout.class);
        logItemBinder.expandedActionMessage = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_message_ll, "field 'expandedActionMessage'", LinearLayout.class);
        logItemBinder.expandedActionDetails = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_details_ll, "field 'expandedActionDetails'", LinearLayout.class);
        logItemBinder.expandedActionCall = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_call_ll, "field 'expandedActionCall'", LinearLayout.class);
        logItemBinder.rootViewTheme = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_root_theme, "field 'rootViewTheme'", LinearLayout.class);
        logItemBinder.recentCall2 = (ImageView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_call_icon_2, "field 'recentCall2'", ImageView.class);
        logItemBinder.recentCall3 = (ImageView) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_call_icon_3, "field 'recentCall3'", ImageView.class);
        logItemBinder.expandedActionUnblock = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_unblock_ll, "field 'expandedActionUnblock'", LinearLayout.class);
        logItemBinder.expandedActionBlock = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_block_ll, "field 'expandedActionBlock'", LinearLayout.class);
        logItemBinder.expandedActionUnapprove = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_unapprove_ll, "field 'expandedActionUnapprove'", LinearLayout.class);
        logItemBinder.expandedActionApprove = (LinearLayout) Utils.findOptionalViewAsType(view, C1566R.C1569id.log_item_expanded_approve_ll, "field 'expandedActionApprove'", LinearLayout.class);
    }

    @Override // butterknife.Unbinder
    @CallSuper
    public void unbind() {
        LogItemBinder logItemBinder = this.target;
        if (logItemBinder == null) {
            throw new IllegalStateException("Bindings already cleared.");
        }
        this.target = null;
        logItemBinder.callerIcon = null;
        logItemBinder.title = null;
        logItemBinder.callerCategory = null;
        logItemBinder.recentCall1 = null;
        logItemBinder.callTime = null;
        logItemBinder.expandedView = null;
        logItemBinder.expandedActionReport = null;
        logItemBinder.expandedActionAddContact = null;
        logItemBinder.expandedActionMessage = null;
        logItemBinder.expandedActionDetails = null;
        logItemBinder.expandedActionCall = null;
        logItemBinder.rootViewTheme = null;
        logItemBinder.recentCall2 = null;
        logItemBinder.recentCall3 = null;
        logItemBinder.expandedActionUnblock = null;
        logItemBinder.expandedActionBlock = null;
        logItemBinder.expandedActionUnapprove = null;
        logItemBinder.expandedActionApprove = null;
    }
}
