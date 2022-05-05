package com.google.android.gms.internal.ads;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.zzq;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.ads.da */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/da.class */
public final class DialogInterface$OnClickListenerC1809da implements DialogInterface.OnClickListener {

    /* renamed from: a */
    private final /* synthetic */ String f8370a;

    /* renamed from: b */
    private final /* synthetic */ String f8371b;

    /* renamed from: c */
    private final /* synthetic */ zzaof f8372c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DialogInterface$OnClickListenerC1809da(zzaof zzaofVar, String str, String str2) {
        this.f8372c = zzaofVar;
        this.f8370a = str;
        this.f8371b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        context = this.f8372c.f11104b;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.f8370a;
            String str2 = this.f8371b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzq.zzks();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f8372c.zzds("Could not store picture.");
        }
    }
}
