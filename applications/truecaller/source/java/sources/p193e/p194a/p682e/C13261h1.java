package p193e.p194a.p682e;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.truecaller.C2752R;
import com.truecaller.common.network.userarchive.DownloadDto;
import java.lang.ref.WeakReference;
import s1.z.c.l;
import x3.a0;
import x3.b;
import x3.d;
/* renamed from: e.a.e.h1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/h1.class */
public final class C13261h1 implements d<DownloadDto> {

    /* renamed from: a */
    public final WeakReference<Dialog> f38558a;

    public C13261h1(Dialog dialog) {
        l.e(dialog, "dialog");
        this.f38558a = new WeakReference<>(dialog);
    }

    /* renamed from: a */
    public final void m21970a(String str) {
        Dialog dialog = this.f38558a.get();
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        if (str == null) {
            Toast.makeText(dialog.getContext(), 2131886717, 0).show();
        } else {
            try {
                dialog.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            } catch (ActivityNotFoundException e) {
                Toast.makeText(dialog.getContext(), (int) C2752R.string.DownloadMyDataNoBrowser, 0).show();
            }
        }
        dialog.dismiss();
    }

    public void onFailure(b<DownloadDto> bVar, Throwable th) {
        m21970a(null);
    }

    public void onResponse(b<DownloadDto> bVar, a0<DownloadDto> a0Var) {
        DownloadDto downloadDto;
        m21970a((a0Var == null || (downloadDto = (DownloadDto) a0Var.b) == null) ? null : downloadDto.url);
    }
}
