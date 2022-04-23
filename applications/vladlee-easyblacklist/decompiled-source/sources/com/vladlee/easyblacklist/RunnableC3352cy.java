package com.vladlee.easyblacklist;

import android.app.ProgressDialog;
import com.vladlee.easyblacklist.EasyBlacklistActivity;
/* renamed from: com.vladlee.easyblacklist.cy */
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/cy.class */
final class RunnableC3352cy implements Runnable {

    /* renamed from: a */
    final /* synthetic */ RunnableC3350cw f19468a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC3352cy(RunnableC3350cw cwVar) {
        this.f19468a = cwVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        EasyBlacklistActivity.AsyncTaskC3255a aVar;
        if (!this.f19468a.f19462b.isFinishing()) {
            this.f19468a.f19462b.f19259u = ProgressDialog.show(this.f19468a.f19462b, "", this.f19468a.f19462b.getString(2131624216));
            this.f19468a.f19462b.f19258t = new EasyBlacklistActivity.AsyncTaskC3255a();
            aVar = this.f19468a.f19462b.f19258t;
            aVar.execute(new Void[0]);
        }
    }
}
