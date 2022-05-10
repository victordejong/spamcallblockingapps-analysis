package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.ads.impl.C7217R;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3717k3;
import p131c.p161d.p170b.p224d.p252g.p253a.DialogInterface$OnClickListenerC3754l3;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqi.class */
public final class zzaqi extends zzaqn {

    /* renamed from: c */
    public final Map<String, String> f24283c;

    /* renamed from: d */
    public final Context f24284d;

    public zzaqi(zzbgj zzbgjVar, Map<String, String> map) {
        super(zzbgjVar, "storePicture");
        this.f24283c = map;
        this.f24284d = zzbgjVar.mo15528b();
    }

    /* renamed from: a */
    public final void m16443a() {
        if (this.f24284d == null) {
            m16428a("Activity context is not available");
            return;
        }
        zzp.m17969c();
        if (!zzayu.m16093e(this.f24284d).m16945c()) {
            m16428a("Feature is not supported by the device.");
            return;
        }
        String str = this.f24283c.get("iurl");
        if (TextUtils.isEmpty(str)) {
            m16428a("Image url cannot be empty.");
        } else if (!URLUtil.isValidUrl(str)) {
            String valueOf = String.valueOf(str);
            m16428a(valueOf.length() != 0 ? "Invalid image url: ".concat(valueOf) : new String("Invalid image url: "));
        } else {
            String lastPathSegment = Uri.parse(str).getLastPathSegment();
            zzp.m17969c();
            if (!zzayu.m16095d(lastPathSegment)) {
                String valueOf2 = String.valueOf(lastPathSegment);
                m16428a(valueOf2.length() != 0 ? "Image type not recognized: ".concat(valueOf2) : new String("Image type not recognized: "));
                return;
            }
            Resources b = zzp.m17965g().m16187b();
            zzp.m17969c();
            AlertDialog.Builder d = zzayu.m16097d(this.f24284d);
            d.setTitle(b != null ? b.getString(C7217R.string.f22722s1) : "Save image");
            d.setMessage(b != null ? b.getString(C7217R.string.f22723s2) : "Allow Ad to store image in Picture gallery?");
            d.setPositiveButton(b != null ? b.getString(C7217R.string.f22724s3) : "Accept", new DialogInterface$OnClickListenerC3717k3(this, str, lastPathSegment));
            d.setNegativeButton(b != null ? b.getString(C7217R.string.f22725s4) : "Decline", new DialogInterface$OnClickListenerC3754l3(this));
            d.create().show();
        }
    }
}
