package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.C1542R;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaof.class */
public final class zzaof extends zzaoo {

    /* renamed from: a */
    private final Map<String, String> f11103a;

    /* renamed from: b */
    private final Context f11104b;

    public zzaof(zzbdi zzbdiVar, Map<String, String> map) {
        super(zzbdiVar, "storePicture");
        this.f11103a = map;
        this.f11104b = zzbdiVar.zzyn();
    }

    public final void execute() {
        if (this.f11104b == null) {
            zzds("Activity context is not available");
            return;
        }
        zzq.zzkq();
        if (!zzawb.zzas(this.f11104b).zzqd()) {
            zzds("Feature is not supported by the device.");
            return;
        }
        String str = this.f11103a.get("iurl");
        if (TextUtils.isEmpty(str)) {
            zzds("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            zzds(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            zzq.zzkq();
            if (!zzawb.zzej(lastPathSegment)) {
                String valueOf2 = String.valueOf(lastPathSegment);
                zzds(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources resources = zzq.zzku().getResources();
            zzq.zzkq();
            AlertDialog.Builder zzar = zzawb.zzar(this.f11104b);
            zzar.setTitle(resources != null ? resources.getString(C1542R.string.f5893s1) : "Save image");
            zzar.setMessage(resources != null ? resources.getString(C1542R.string.f5894s2) : "Allow Ad to store image in Picture gallery?");
            zzar.setPositiveButton(resources != null ? resources.getString(C1542R.string.f5895s3) : AbstractC0007a.HEADER_ACCEPT, new DialogInterface$OnClickListenerC1809da(this, str, lastPathSegment));
            zzar.setNegativeButton(resources != null ? resources.getString(C1542R.string.f5896s4) : "Decline", new DialogInterface$OnClickListenerC1807cz(this));
            zzar.create().show();
        }
    }
}
