package p131c.p161d.p170b.p224d.p252g.p253a;

import android.net.Uri;
import com.google.android.gms.internal.ads.zzjv;
import com.google.android.gms.internal.ads.zzjx;
import com.google.android.gms.internal.ads.zzjy;
import com.google.android.gms.internal.ads.zzns;
import com.google.android.gms.internal.ads.zzpq;
import java.io.EOFException;
import java.io.IOException;
/* renamed from: c.d.b.d.g.a.le0 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/le0.class */
public final class le0 {

    /* renamed from: a */
    public final zzjv[] f13962a;

    /* renamed from: b */
    public final zzjx f13963b;

    /* renamed from: c */
    public zzjv f13964c;

    public le0(zzjv[] zzjvVarArr, zzjx zzjxVar) {
        this.f13962a = zzjvVarArr;
        this.f13963b = zzjxVar;
    }

    /* renamed from: a */
    public final zzjv m26691a(zzjy zzjyVar, Uri uri) throws IOException, InterruptedException {
        zzjv zzjvVar = this.f13964c;
        if (zzjvVar != null) {
            return zzjvVar;
        }
        zzjv[] zzjvVarArr = this.f13962a;
        int length = zzjvVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zzjv zzjvVar2 = zzjvVarArr[i];
            try {
            } catch (EOFException e) {
            } finally {
                zzjyVar.mo11884b();
            }
            if (zzjvVar2.mo11850a(zzjyVar)) {
                this.f13964c = zzjvVar2;
                break;
            }
            i++;
        }
        zzjv zzjvVar3 = this.f13964c;
        if (zzjvVar3 != null) {
            zzjvVar3.mo11851a(this.f13963b);
            return this.f13964c;
        }
        String a = zzpq.m11620a(this.f13962a);
        StringBuilder sb = new StringBuilder(String.valueOf(a).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(a);
        sb.append(") could read the stream.");
        throw new zzns(sb.toString(), uri);
    }

    /* renamed from: a */
    public final void m26692a() {
        zzjv zzjvVar = this.f13964c;
        if (zzjvVar != null) {
            zzjvVar.mo11854a();
            this.f13964c = null;
        }
    }
}
