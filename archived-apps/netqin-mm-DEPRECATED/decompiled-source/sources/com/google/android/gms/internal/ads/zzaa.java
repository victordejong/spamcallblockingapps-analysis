package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzaq;
import java.util.Collections;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p253a.AbstractC3935q;
import p131c.p161d.p170b.p224d.p252g.p253a.RunnableC4086u;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaa.class */
public abstract class zzaa<T> implements Comparable<zzaa<T>> {

    /* renamed from: a */
    public final zzaq.C7243a f23609a;

    /* renamed from: b */
    public final int f23610b;

    /* renamed from: c */
    public final String f23611c;

    /* renamed from: d */
    public final int f23612d;

    /* renamed from: e */
    public final Object f23613e;

    /* renamed from: f */
    public zzai f23614f;

    /* renamed from: g */
    public Integer f23615g;

    /* renamed from: h */
    public zzae f23616h;

    /* renamed from: i */
    public boolean f23617i;

    /* renamed from: j */
    public boolean f23618j;

    /* renamed from: k */
    public zzan f23619k;

    /* renamed from: l */
    public zzn f23620l;

    /* renamed from: m */
    public AbstractC3935q f23621m;

    public zzaa(int i, String str, zzai zzaiVar) {
        this.f23609a = zzaq.C7243a.f24252c ? new zzaq.C7243a() : null;
        this.f23613e = new Object();
        this.f23617i = true;
        this.f23618j = false;
        this.f23620l = null;
        this.f23610b = i;
        this.f23611c = str;
        this.f23614f = zzaiVar;
        this.f23619k = new zzq();
        int i2 = 0;
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            i2 = 0;
            if (parse != null) {
                String host = parse.getHost();
                i2 = 0;
                if (host != null) {
                    i2 = host.hashCode();
                }
            }
        }
        this.f23612d = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final zzaa<?> m16968a(zzae zzaeVar) {
        this.f23616h = zzaeVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final zzaa<?> m16965a(zzn zznVar) {
        this.f23620l = zznVar;
        return this;
    }

    /* renamed from: a */
    public abstract zzaj<T> mo15542a(zzy zzyVar);

    /* renamed from: a */
    public Map<String, String> mo16972a() throws zzl {
        return Collections.emptyMap();
    }

    /* renamed from: a */
    public final void m16971a(int i) {
        zzae zzaeVar = this.f23616h;
        if (zzaeVar != null) {
            zzaeVar.m16837a(this, i);
        }
    }

    /* renamed from: a */
    public final void m16970a(AbstractC3935q qVar) {
        synchronized (this.f23613e) {
            this.f23621m = qVar;
        }
    }

    /* renamed from: a */
    public final void m16967a(zzaj<?> zzajVar) {
        AbstractC3935q qVar;
        synchronized (this.f23613e) {
            qVar = this.f23621m;
        }
        if (qVar != null) {
            qVar.mo26237a(this, zzajVar);
        }
    }

    /* renamed from: a */
    public final void m16966a(zzao zzaoVar) {
        zzai zzaiVar;
        synchronized (this.f23613e) {
            zzaiVar = this.f23614f;
        }
        if (zzaiVar != null) {
            zzaiVar.mo16743a(zzaoVar);
        }
    }

    /* renamed from: a */
    public abstract void mo15541a(T t);

    /* renamed from: a */
    public final void m16964a(String str) {
        if (zzaq.C7243a.f24252c) {
            this.f23609a.m16455a(str, Thread.currentThread().getId());
        }
    }

    /* renamed from: b */
    public final int m16963b() {
        return this.f23610b;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public final zzaa<?> m16962b(int i) {
        this.f23615g = Integer.valueOf(i);
        return this;
    }

    /* renamed from: b */
    public final void m16961b(String str) {
        zzae zzaeVar = this.f23616h;
        if (zzaeVar != null) {
            zzaeVar.m16836b(this);
        }
        if (zzaq.C7243a.f24252c) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new RunnableC4086u(this, str, id));
                return;
            }
            this.f23609a.m16455a(str, id);
            this.f23609a.m16456a(toString());
        }
    }

    /* renamed from: c */
    public final String m16960c() {
        String str = this.f23611c;
        int i = this.f23610b;
        String str2 = str;
        if (i != 0) {
            if (i == -1) {
                str2 = str;
            } else {
                String num = Integer.toString(i);
                StringBuilder sb = new StringBuilder(String.valueOf(num).length() + 1 + String.valueOf(str).length());
                sb.append(num);
                sb.append('-');
                sb.append(str);
                str2 = sb.toString();
            }
        }
        return str2;
    }

    @Override // java.lang.Comparable
    public /* synthetic */ int compareTo(Object obj) {
        zzaf zzafVar = zzaf.NORMAL;
        return this.f23615g.intValue() - ((zzaa) obj).f23615g.intValue();
    }

    /* renamed from: d */
    public final String m16959d() {
        return this.f23611c;
    }

    /* renamed from: e */
    public final boolean m16958e() {
        synchronized (this.f23613e) {
        }
        return false;
    }

    /* renamed from: f */
    public final zzn m16957f() {
        return this.f23620l;
    }

    /* renamed from: g */
    public byte[] mo16956g() throws zzl {
        return null;
    }

    /* renamed from: h */
    public final boolean m16955h() {
        return this.f23617i;
    }

    /* renamed from: i */
    public final int m16954i() {
        return this.f23619k.zzb();
    }

    /* renamed from: l */
    public final zzan m16953l() {
        return this.f23619k;
    }

    /* renamed from: o */
    public final void m16952o() {
        synchronized (this.f23613e) {
            this.f23618j = true;
        }
    }

    /* renamed from: p */
    public final boolean m16951p() {
        boolean z;
        synchronized (this.f23613e) {
            z = this.f23618j;
        }
        return z;
    }

    /* renamed from: r */
    public final void m16950r() {
        AbstractC3935q qVar;
        synchronized (this.f23613e) {
            qVar = this.f23621m;
        }
        if (qVar != null) {
            qVar.mo26238a(this);
        }
    }

    public String toString() {
        String valueOf = String.valueOf(Integer.toHexString(this.f23612d));
        String concat = valueOf.length() != 0 ? "0x".concat(valueOf) : new String("0x");
        m16958e();
        String str = this.f23611c;
        String valueOf2 = String.valueOf(zzaf.NORMAL);
        String valueOf3 = String.valueOf(this.f23615g);
        StringBuilder sb = new StringBuilder("[ ] ".length() + 3 + String.valueOf(str).length() + String.valueOf(concat).length() + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length());
        sb.append("[ ] ");
        sb.append(str);
        sb.append(" ");
        sb.append(concat);
        sb.append(" ");
        sb.append(valueOf2);
        sb.append(" ");
        sb.append(valueOf3);
        return sb.toString();
    }

    public final int zzd() {
        return this.f23612d;
    }
}
