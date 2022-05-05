package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
/* renamed from: com.google.android.gms.internal.ads.fh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/fh.class */
final class RunnableC1870fh implements Runnable {

    /* renamed from: a */
    final /* synthetic */ Context f8463a;

    /* renamed from: b */
    private final /* synthetic */ String f8464b;

    /* renamed from: c */
    private final /* synthetic */ boolean f8465c;

    /* renamed from: d */
    private final /* synthetic */ boolean f8466d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1870fh(Context context, String str, boolean z, boolean z2) {
        this.f8463a = context;
        this.f8464b = str;
        this.f8465c = z;
        this.f8466d = z2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.f8463a);
        builder.setMessage(this.f8464b);
        builder.setTitle(this.f8465c ? "Error" : "Info");
        if (this.f8466d) {
            builder.setNeutralButton("Dismiss", (DialogInterface.OnClickListener) null);
        } else {
            builder.setPositiveButton("Learn More", new DialogInterface$OnClickListenerC1869fg(this));
            builder.setNegativeButton("Dismiss", (DialogInterface.OnClickListener) null);
        }
        builder.create().show();
    }
}
