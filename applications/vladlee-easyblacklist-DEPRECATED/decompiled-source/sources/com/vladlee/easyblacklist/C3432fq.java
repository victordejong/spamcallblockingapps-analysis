package com.vladlee.easyblacklist;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.widget.Toast;
import com.vladlee.p077b.p078a.C3252b;
/* renamed from: com.vladlee.easyblacklist.fq */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/fq.class */
final class C3432fq extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ SmsChatActivity f19604a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C3432fq(SmsChatActivity smsChatActivity) {
        this.f19604a = smsChatActivity;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean z;
        Uri uri;
        Bundle extras = intent.getExtras();
        if (extras != null) {
            z = extras.getBoolean("msg_last_part");
            uri = Uri.parse(extras.getString("msg_uri"));
        } else {
            uri = null;
            z = false;
        }
        if (z) {
            int resultCode = getResultCode();
            if (resultCode == -1) {
                SmsChatActivity smsChatActivity = this.f19604a;
                Toast.makeText(smsChatActivity, smsChatActivity.getString(2131624197), 0).show();
                if (Build.VERSION.SDK_INT >= 19) {
                    C3252b.m395a(this.f19604a, uri, 0);
                }
            } else if ((resultCode == 1 || resultCode == 2 || resultCode == 3 || resultCode == 4) && Build.VERSION.SDK_INT >= 19) {
                C3252b.m395a(this.f19604a, uri, 64);
            }
        }
    }
}
