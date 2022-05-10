package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.DownloadManager;
import android.content.Context;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Environment;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzaqi;
/* renamed from: c.d.b.d.g.a.k3 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/k3.class */
public final class DialogInterface$OnClickListenerC3717k3 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ String f13831a;

    /* renamed from: b */
    public final /* synthetic */ String f13832b;

    /* renamed from: c */
    public final /* synthetic */ zzaqi f13833c;

    public DialogInterface$OnClickListenerC3717k3(zzaqi zzaqiVar, String str, String str2) {
        this.f13833c = zzaqiVar;
        this.f13831a = str;
        this.f13832b = str2;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        Context context;
        context = this.f13833c.f24284d;
        DownloadManager downloadManager = (DownloadManager) context.getSystemService("download");
        try {
            String str = this.f13831a;
            String str2 = this.f13832b;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(str));
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
            zzp.m17967e();
            request.allowScanningByMediaScanner();
            request.setNotificationVisibility(1);
            downloadManager.enqueue(request);
        } catch (IllegalStateException e) {
            this.f13833c.m16428a("Could not store picture.");
        }
    }
}
