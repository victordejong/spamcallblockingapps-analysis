package com.vladlee.easyblacklist;

import android.content.Context;
import android.widget.Toast;
/* renamed from: com.vladlee.easyblacklist.at */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/at.class */
final class RunnableC3279at implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f19326a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3279at(Context context) {
        this.f19326a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f19326a;
        Toast.makeText(context, context.getString(2131623998), 0).show();
    }
}
