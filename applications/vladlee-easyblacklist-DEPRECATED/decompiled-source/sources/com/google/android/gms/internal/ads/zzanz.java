package com.google.android.gms.internal.ads;

import android.app.AlertDialog;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.provider.CalendarContract;
import android.text.TextUtils;
import com.google.android.gms.ads.impl.C1542R;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
import p000a.p001a.p002a.p003a.p004a.p006b.AbstractC0007a;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanz.class */
public final class zzanz extends zzaoo {

    /* renamed from: a */
    private final Map<String, String> f11077a;

    /* renamed from: b */
    private final Context f11078b;

    /* renamed from: c */
    private String f11079c = m4331a("description");

    /* renamed from: f */
    private String f11082f = m4331a("summary");

    /* renamed from: d */
    private long f11080d = m4330b("start_ticks");

    /* renamed from: e */
    private long f11081e = m4330b("end_ticks");

    /* renamed from: g */
    private String f11083g = m4331a("location");

    public zzanz(zzbdi zzbdiVar, Map<String, String> map) {
        super(zzbdiVar, "createCalendarEvent");
        this.f11077a = map;
        this.f11078b = zzbdiVar.zzyn();
    }

    /* renamed from: a */
    private final String m4331a(String str) {
        return TextUtils.isEmpty(this.f11077a.get(str)) ? "" : this.f11077a.get(str);
    }

    /* renamed from: b */
    private final long m4330b(String str) {
        String str2 = this.f11077a.get(str);
        if (str2 == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1L;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final Intent m4333a() {
        Intent data = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
        data.putExtra("title", this.f11079c);
        data.putExtra("eventLocation", this.f11083g);
        data.putExtra("description", this.f11082f);
        long j = this.f11080d;
        if (j > -1) {
            data.putExtra("beginTime", j);
        }
        long j2 = this.f11081e;
        if (j2 > -1) {
            data.putExtra("endTime", j2);
        }
        data.setFlags(268435456);
        return data;
    }

    public final void execute() {
        if (this.f11078b == null) {
            zzds("Activity context is not available.");
            return;
        }
        zzq.zzkq();
        if (!zzawb.zzas(this.f11078b).zzqe()) {
            zzds("This feature is not available on the device.");
            return;
        }
        zzq.zzkq();
        AlertDialog.Builder zzar = zzawb.zzar(this.f11078b);
        Resources resources = zzq.zzku().getResources();
        zzar.setTitle(resources != null ? resources.getString(C1542R.string.f5897s5) : "Create calendar event");
        zzar.setMessage(resources != null ? resources.getString(C1542R.string.f5898s6) : "Allow Ad to create a calendar event?");
        zzar.setPositiveButton(resources != null ? resources.getString(C1542R.string.f5895s3) : AbstractC0007a.HEADER_ACCEPT, new DialogInterface$OnClickListenerC1805cx(this));
        zzar.setNegativeButton(resources != null ? resources.getString(C1542R.string.f5896s4) : "Decline", new DialogInterface$OnClickListenerC1804cw(this));
        zzar.create().show();
    }
}
