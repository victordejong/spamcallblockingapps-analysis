package p131c.p161d.p170b.p224d.p252g.p253a;

import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzemc;
import java.util.ArrayDeque;
import java.util.Arrays;
/* renamed from: c.d.b.d.g.a.e90 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/e90.class */
public final class e90 {

    /* renamed from: a */
    public final ArrayDeque<zzeip> f12808a;

    public e90() {
        this.f12808a = new ArrayDeque<>();
    }

    public /* synthetic */ e90(c90 c90Var) {
        this();
    }

    /* renamed from: a */
    public static int m27051a(int i) {
        int binarySearch = Arrays.binarySearch(zzemc.zzimo, i);
        int i2 = binarySearch;
        if (binarySearch < 0) {
            i2 = (-(binarySearch + 1)) - 1;
        }
        return i2;
    }

    /* renamed from: a */
    public static /* synthetic */ zzeip m27050a(e90 e90Var, zzeip zzeipVar, zzeip zzeipVar2) {
        return e90Var.m27048a(zzeipVar, zzeipVar2);
    }

    /* renamed from: a */
    public final zzeip m27048a(zzeip zzeipVar, zzeip zzeipVar2) {
        m27049a(zzeipVar);
        m27049a(zzeipVar2);
        zzeip pop = this.f12808a.pop();
        while (!this.f12808a.isEmpty()) {
            pop = new zzemc(this.f12808a.pop(), pop, null);
        }
        return pop;
    }

    /* renamed from: a */
    public final void m27049a(zzeip zzeipVar) {
        zzeip zzeipVar2;
        while (!zzeipVar.zzbek()) {
            if (zzeipVar instanceof zzemc) {
                zzemc zzemcVar = (zzemc) zzeipVar;
                zzeipVar2 = zzemcVar.zzimq;
                m27049a(zzeipVar2);
                zzeipVar = zzemcVar.zzimr;
            } else {
                String valueOf = String.valueOf(zzeipVar.getClass());
                StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(valueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }
        int a = m27051a(zzeipVar.size());
        int zzhm = zzemc.zzhm(a + 1);
        if (this.f12808a.isEmpty() || this.f12808a.peek().size() >= zzhm) {
            this.f12808a.push(zzeipVar);
            return;
        }
        int zzhm2 = zzemc.zzhm(a);
        zzeip pop = this.f12808a.pop();
        while (!this.f12808a.isEmpty() && this.f12808a.peek().size() < zzhm2) {
            pop = new zzemc(this.f12808a.pop(), pop, null);
        }
        zzemc zzemcVar2 = new zzemc(pop, zzeipVar, null);
        while (!this.f12808a.isEmpty()) {
            if (this.f12808a.peek().size() >= zzemc.zzhm(m27051a(zzemcVar2.size()) + 1)) {
                break;
            }
            zzemcVar2 = new zzemc(this.f12808a.pop(), zzemcVar2, null);
        }
        this.f12808a.push(zzemcVar2);
    }
}
