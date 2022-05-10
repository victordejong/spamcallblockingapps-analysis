package p131c.p161d.p170b.p224d.p252g.p253a;

import android.database.sqlite.SQLiteDatabase;
import com.google.android.gms.internal.ads.zzbbq;
import com.google.android.gms.internal.ads.zzcrw;
import com.google.android.gms.internal.ads.zzdrp;
import com.google.android.gms.internal.ads.zzdyr;
/* renamed from: c.d.b.d.g.a.un */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/un.class */
public final class C4110un implements zzdyr<SQLiteDatabase> {

    /* renamed from: a */
    public final /* synthetic */ zzdrp f15658a;

    public C4110un(zzcrw zzcrwVar, zzdrp zzdrpVar) {
        this.f15658a = zzdrpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    /* renamed from: a */
    public final void mo12980a(Throwable th) {
        String valueOf = String.valueOf(th.getMessage());
        zzbbq.m15856b(valueOf.length() != 0 ? "Failed to get offline signal database: ".concat(valueOf) : new String("Failed to get offline signal database: "));
    }

    @Override // com.google.android.gms.internal.ads.zzdyr
    public final /* synthetic */ void onSuccess(SQLiteDatabase sQLiteDatabase) {
        try {
            this.f15658a.apply(sQLiteDatabase);
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbbq.m15856b(valueOf.length() != 0 ? "Error executing function on offline signal database: ".concat(valueOf) : new String("Error executing function on offline signal database: "));
        }
    }
}
