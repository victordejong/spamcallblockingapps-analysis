package com.vladlee.easyblacklist;

import android.content.Context;
import android.widget.Toast;
/* renamed from: com.vladlee.easyblacklist.au */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/au.class */
final class RunnableC3280au implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f19327a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3280au(Context context) {
        this.f19327a = context;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Context context = this.f19327a;
        Toast.makeText(context, context.getString(2131623997), 0).show();
    }
}
