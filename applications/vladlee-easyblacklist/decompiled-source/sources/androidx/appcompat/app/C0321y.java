package androidx.appcompat.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.appcompat.app.AppCompatDelegateImpl;
/* renamed from: androidx.appcompat.app.y */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/app/y.class */
final class C0321y extends BroadcastReceiver {

    /* renamed from: a */
    final /* synthetic */ AppCompatDelegateImpl.AbstractC0269f f1344a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0321y(AppCompatDelegateImpl.AbstractC0269f fVar) {
        this.f1344a = fVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        this.f1344a.mo9870b();
    }
}
