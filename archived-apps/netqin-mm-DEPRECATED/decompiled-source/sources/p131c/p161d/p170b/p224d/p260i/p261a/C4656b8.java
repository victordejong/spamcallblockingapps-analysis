package p131c.p161d.p170b.p224d.p260i.p261a;

import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.internal.measurement.zzcd;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.measurement.internal.zzkr;
import java.util.ArrayList;
import java.util.List;
/* renamed from: c.d.b.d.i.a.b8 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/i/a/b8.class */
public final class C4656b8 {

    /* renamed from: a */
    public zzcd.zzc f16985a;

    /* renamed from: b */
    public Long f16986b;

    /* renamed from: c */
    public long f16987c;

    /* renamed from: d */
    public final /* synthetic */ C4646a8 f16988d;

    public C4656b8(C4646a8 a8Var) {
        this.f16988d = a8Var;
    }

    public /* synthetic */ C4656b8(C4646a8 a8Var, C4876z7 z7Var) {
        this(a8Var);
    }

    /* renamed from: a */
    public final zzcd.zzc m25105a(String str, zzcd.zzc zzcVar) {
        List<zzcd.zze> list;
        String str2;
        Object obj;
        String q = zzcVar.m10264q();
        List<zzcd.zze> zza = zzcVar.zza();
        this.f16988d.m24896i();
        Long l = (Long) zzkr.m8749b(zzcVar, "_eid");
        boolean z = l != null;
        if (z && q.equals("_ep")) {
            this.f16988d.m24896i();
            str2 = (String) zzkr.m8749b(zzcVar, "_en");
            if (TextUtils.isEmpty(str2)) {
                this.f16988d.mo8789p().m9151r().m9142a("Extra parameter without an event name. eventId", l);
                return null;
            }
            if (this.f16985a == null || this.f16986b == null || l.longValue() != this.f16986b.longValue()) {
                Pair<zzcd.zzc, Long> a = this.f16988d.m24895k().m25073a(str, l);
                if (a == null || (obj = a.first) == null) {
                    this.f16988d.mo8789p().m9151r().m9141a("Extra parameter without existing main event. eventName, eventId", str2, l);
                    return null;
                }
                this.f16985a = (zzcd.zzc) obj;
                this.f16987c = ((Long) a.second).longValue();
                this.f16988d.m24896i();
                this.f16986b = (Long) zzkr.m8749b(this.f16985a, "_eid");
            }
            long j = this.f16987c - 1;
            this.f16987c = j;
            if (j <= 0) {
                C4657c k = this.f16988d.m24895k();
                k.mo9085c();
                k.mo8789p().m9144y().m9142a("Clearing complex main event info. appId", str);
                try {
                    k.m25044s().execSQL("delete from main_event_params where app_id=?", new String[]{str});
                } catch (SQLiteException e) {
                    k.mo8789p().m9152q().m9142a("Error clearing complex main event", e);
                }
            } else {
                this.f16988d.m24895k().m25072a(str, l, this.f16987c, this.f16985a);
            }
            list = new ArrayList<>();
            for (zzcd.zze zzeVar : this.f16985a.zza()) {
                this.f16988d.m24896i();
                if (zzkr.m8771a(zzcVar, zzeVar.m10216p()) == null) {
                    list.add(zzeVar);
                }
            }
            if (!list.isEmpty()) {
                list.addAll(zza);
            } else {
                this.f16988d.mo8789p().m9151r().m9142a("No unique parameters in main event. eventName", str2);
                list = zza;
            }
        } else {
            str2 = q;
            list = zza;
            if (z) {
                this.f16986b = l;
                this.f16985a = zzcVar;
                this.f16988d.m24896i();
                Object obj2 = 0L;
                Object b = zzkr.m8749b(zzcVar, "_epc");
                if (b != null) {
                    obj2 = b;
                }
                long longValue = ((Long) obj2).longValue();
                this.f16987c = longValue;
                if (longValue <= 0) {
                    this.f16988d.mo8789p().m9151r().m9142a("Complex event with zero extra param count. eventName", q);
                    str2 = q;
                    list = zza;
                } else {
                    this.f16988d.m24895k().m25072a(str, l, this.f16987c, zzcVar);
                    list = zza;
                    str2 = q;
                }
            }
        }
        zzcd.zzc.zza l2 = zzcVar.m9662l();
        l2.mo9794a(str2);
        l2.m10244p();
        l2.m10248a(list);
        return (zzcd.zzc) ((zzhy) l2.mo9619b());
    }
}
