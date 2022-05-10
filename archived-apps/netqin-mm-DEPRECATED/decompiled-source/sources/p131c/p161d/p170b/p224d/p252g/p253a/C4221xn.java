package p131c.p161d.p170b.p224d.p252g.p253a;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.os.Bundle;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcrw;
import com.google.android.gms.internal.ads.zzcsf;
import com.google.android.gms.internal.ads.zzdrp;
import com.google.android.gms.internal.ads.zzdyr;
import com.google.android.gms.internal.ads.zzua;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.ArrayList;
/* renamed from: c.d.b.d.g.a.xn */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/xn.class */
public final class C4221xn implements zzdyr<Bundle> {

    /* renamed from: a */
    public final /* synthetic */ boolean f16058a;

    /* renamed from: b */
    public final /* synthetic */ zzcsf f16059b;

    public C4221xn(zzcsf zzcsfVar, boolean z) {
        this.f16059b = zzcsfVar;
        this.f16058a = z;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        zzbbq.m15856b("Failed to get signals bundle");
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(Bundle bundle) {
        final ArrayList c;
        final zzua.zzo.zzb b;
        final zzua.zzm a;
        zzcrw zzcrwVar;
        Bundle bundle2 = bundle;
        zzcsf zzcsfVar = this.f16059b;
        c = zzcsf.m13881c(bundle2);
        zzcsf zzcsfVar2 = this.f16059b;
        b = zzcsf.m13884b(bundle2);
        a = this.f16059b.m13890a(bundle2);
        zzcrwVar = this.f16059b.f26466e;
        final boolean z = this.f16058a;
        zzcrwVar.m13904a(new zzdrp(this, z, c, a, b) { // from class: c.d.b.d.g.a.wn

            /* renamed from: a */
            public final C4221xn f15960a;

            /* renamed from: b */
            public final boolean f15961b;

            /* renamed from: c */
            public final ArrayList f15962c;

            /* renamed from: d */
            public final zzua.zzm f15963d;

            /* renamed from: e */
            public final zzua.zzo.zzb f15964e;

            {
                this.f15960a = this;
                this.f15961b = z;
                this.f15962c = c;
                this.f15963d = a;
                this.f15964e = b;
            }

            @Override // com.google.android.gms.internal.ads.zzdrp
            public final Object apply(Object obj) {
                byte[] a2;
                C4221xn xnVar = this.f15960a;
                boolean z2 = this.f15961b;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                a2 = xnVar.f16059b.m13885a(z2, this.f15962c, this.f15963d, this.f15964e);
                ContentValues contentValues = new ContentValues();
                contentValues.put(AvidJSONUtil.KEY_TIMESTAMP, Long.valueOf(zzp.m17962j().mo17091b()));
                contentValues.put("serialized_proto_data", a2);
                sQLiteDatabase.insert("offline_signal_contents", null, contentValues);
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "total_requests"));
                if (z2) {
                    return null;
                }
                sQLiteDatabase.execSQL(String.format("UPDATE offline_signal_statistics SET value = value+1 WHERE statistic_name = '%s'", "failed_requests"));
                return null;
            }
        });
    }
}
