package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;
import androidx.activity.ComponentActivity;
/* loaded from: classes-dex2jar.jar:androidx/activity/ComponentActivity$b$b.class */
class ComponentActivity$b$b implements Runnable {

    /* renamed from: f */
    final /* synthetic */ int f65f;

    /* renamed from: g */
    final /* synthetic */ IntentSender.SendIntentException f66g;

    /* renamed from: h */
    final /* synthetic */ ComponentActivity.b f67h;

    ComponentActivity$b$b(ComponentActivity.b bVar, int i, IntentSender.SendIntentException sendIntentException) {
        this.f67h = bVar;
        this.f65f = i;
        this.f66g = sendIntentException;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f67h.m6968b(this.f65f, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f66g));
    }
}
