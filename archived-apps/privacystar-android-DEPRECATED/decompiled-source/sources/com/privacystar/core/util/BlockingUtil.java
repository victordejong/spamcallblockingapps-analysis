package com.privacystar.core.util;

import android.content.Context;
import android.support.p001v4.app.FragmentActivity;
import android.support.p001v4.app.FragmentManager;
import android.support.p004v7.app.AppCompatActivity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.data.model.helper.BlockListRealm;
import com.privacystar.core.p011ui.widgets.ConfirmDialog;
import io.realm.Realm;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/BlockingUtil.class */
public class BlockingUtil {
    public static void blockNumber(Realm realm, String str) {
        blockNumberImpl(realm, str);
    }

    private static void blockNumberImpl(Realm realm, String str) {
        Timber.m37d("Blocking the number: %s", str);
        BlockListRealm.setBlockEnabled(realm, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static final /* synthetic */ void lambda$unblockNumber$0$BlockingUtil(Realm realm, String str, ConfirmDialog.OnConfirmListener onConfirmListener, View view) {
        unblockNumber(realm, str);
        onConfirmListener.onConfirm();
    }

    public static View unblockNumber(AppCompatActivity appCompatActivity, final Realm realm, final String str, final ConfirmDialog.OnConfirmListener onConfirmListener) {
        View inflate = appCompatActivity.getLayoutInflater().inflate(C1566R.C1571layout.error_banner_with_two_actions, (ViewGroup) null);
        ((TextView) inflate.findViewById(C1566R.C1569id.error_banner_two_title)).setText(appCompatActivity.getString(C1566R.string.unblock_confirm_body, new Object[]{CallerFactory.getInstance().getCaller(str).getDisplayNumber()}));
        inflate.findViewById(C1566R.C1569id.error_banner_two_yes).setOnClickListener(new View.OnClickListener(realm, str, onConfirmListener) { // from class: com.privacystar.core.util.BlockingUtil$$Lambda$0
            private final Realm arg$1;
            private final String arg$2;
            private final ConfirmDialog.OnConfirmListener arg$3;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = realm;
                this.arg$2 = str;
                this.arg$3 = onConfirmListener;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BlockingUtil.lambda$unblockNumber$0$BlockingUtil(this.arg$1, this.arg$2, this.arg$3, view);
            }
        });
        inflate.findViewById(C1566R.C1569id.error_banner_two_no).setOnClickListener(new View.OnClickListener(onConfirmListener) { // from class: com.privacystar.core.util.BlockingUtil$$Lambda$1
            private final ConfirmDialog.OnConfirmListener arg$1;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = onConfirmListener;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                this.arg$1.onCancel();
            }
        });
        return inflate;
    }

    public static void unblockNumber(FragmentActivity fragmentActivity, final Realm realm, final String str) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        ConfirmDialog newInstance = ConfirmDialog.newInstance(fragmentActivity.getString(C1566R.string.unblock_confirm_title), fragmentActivity.getString(C1566R.string.unblock_confirm_confirm), fragmentActivity.getString(C1566R.string.unblock_confirm_cancel), fragmentActivity.getString(C1566R.string.unblock_confirm_body, new Object[]{FormatUtil.getDisplayNumber(str)}), str);
        newInstance.setInputListener(new ConfirmDialog.OnConfirmListener() { // from class: com.privacystar.core.util.BlockingUtil.1
            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onCancel() {
            }

            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onConfirm() {
                BlockingUtil.unblockNumberImpl(Realm.this, str);
            }
        });
        newInstance.show(supportFragmentManager, "unblock_confirm_dialog");
    }

    public static void unblockNumber(FragmentManager fragmentManager, Context context, final Realm realm, final String str) {
        ConfirmDialog newInstance = ConfirmDialog.newInstance(context.getString(C1566R.string.unblock_confirm_title), context.getString(C1566R.string.unblock_confirm_confirm), context.getString(C1566R.string.unblock_confirm_cancel), context.getString(C1566R.string.unblock_confirm_body, FormatUtil.getDisplayNumber(str)), str);
        newInstance.setInputListener(new ConfirmDialog.OnConfirmListener() { // from class: com.privacystar.core.util.BlockingUtil.2
            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onCancel() {
            }

            @Override // com.privacystar.core.p011ui.widgets.ConfirmDialog.OnConfirmListener
            public void onConfirm() {
                BlockingUtil.unblockNumberImpl(Realm.this, str);
            }
        });
        newInstance.show(fragmentManager, "unblock_confirm_dialog");
    }

    public static void unblockNumber(Realm realm, String str) {
        unblockNumberImpl(realm, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void unblockNumberImpl(Realm realm, String str) {
        Timber.m37d("Unblocking the number: %s", str);
        BlockListRealm.setBlockDisabled(realm, str);
    }
}
