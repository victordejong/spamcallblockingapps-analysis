package com.vladlee.easyblacklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.widget.Toast;
/* renamed from: com.vladlee.easyblacklist.fr */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fr.class */
final class C3433fr extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19605a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3433fr(SmsChatActivity smsChatActivity) {
        this.f19605a = smsChatActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (getResultCode() == -1) {
            SmsChatActivity smsChatActivity = this.f19605a;
            Toast.makeText(smsChatActivity, smsChatActivity.getString(2131624194), 0).show();
        }
    }
}
