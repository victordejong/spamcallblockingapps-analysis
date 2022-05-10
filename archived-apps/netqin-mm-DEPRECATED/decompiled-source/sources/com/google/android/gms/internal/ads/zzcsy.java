package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.Intent;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import com.google.android.gms.ads.internal.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcsy.class */
public final class zzcsy extends zzaqs {

    /* renamed from: a */
    public final Context f26491a;

    /* renamed from: b */
    public final zzbbu f26492b;

    /* renamed from: c */
    public final zzcsp f26493c;

    public zzcsy(Context context, zzcsp zzcspVar, zzbbu zzbbuVar) {
        this.f26491a = context;
        this.f26492b = zzbbuVar;
        this.f26493c = zzcspVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaqp
    /* renamed from: b */
    public final void mo13869b(Intent intent) {
        String stringExtra = intent.getStringExtra("offline_notification_action");
        if (stringExtra.equals("offline_notification_clicked") || stringExtra.equals("offline_notification_dismissed")) {
            String stringExtra2 = intent.getStringExtra("gws_query_id");
            String stringExtra3 = intent.getStringExtra("uri");
            zzp.m17969c();
            boolean q = zzayu.m16077q(this.f26491a);
            int i = zzcsq.f26481d;
            int i2 = i;
            if (stringExtra.equals("offline_notification_clicked")) {
                i2 = i;
                if (q) {
                    i2 = zzcsq.f26480c;
                }
                Context context = this.f26491a;
                Intent launchIntentForPackage = context.getPackageManager().getLaunchIntentForPackage(stringExtra3);
                Intent intent2 = launchIntentForPackage;
                if (launchIntentForPackage == null) {
                    intent2 = new Intent("android.intent.action.VIEW");
                    intent2.setData(Uri.parse(stringExtra3));
                }
                intent2.addFlags(268435456);
                context.startActivity(intent2);
            }
            try {
                SQLiteDatabase writableDatabase = this.f26493c.getWritableDatabase();
                if (i2 == zzcsq.f26480c) {
                    this.f26493c.m13871a(writableDatabase, this.f26492b, stringExtra2);
                } else {
                    writableDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{stringExtra2, Integer.toString(0)});
                }
            } catch (SQLiteException e) {
                String valueOf = String.valueOf(e);
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 51);
                sb.append("Failed to get writable offline buffering database: ");
                sb.append(valueOf);
                zzbbq.m15856b(sb.toString());
            }
        }
    }
}
