package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.facebook.ads.AdError;
import com.google.android.gms.internal.ads.zzcf;
import com.google.android.gms.internal.ads.zzcm;
import com.google.android.gms.internal.ads.zzdtc;
import com.google.android.gms.internal.ads.zzdtf;
import com.google.android.gms.internal.ads.zzdus;
import com.google.android.gms.internal.ads.zzdvc;
import com.google.android.gms.internal.ads.zzdve;
import com.google.android.gms.internal.ads.zzeip;
import com.google.android.gms.internal.ads.zzejz;
import com.inmobi.ads.C8310v;
import java.util.HashMap;
import java.util.Map;
/* renamed from: c.d.b.d.g.a.s00 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/s00.class */
public final class s00 implements zzdtf {

    /* renamed from: a */
    public final Object f15055a;

    /* renamed from: b */
    public final zzdus f15056b;

    /* renamed from: c */
    public final zzdve f15057c;

    /* renamed from: d */
    public final zzdtc f15058d;

    public s00(Object obj, zzdus zzdusVar, zzdve zzdveVar, zzdtc zzdtcVar) {
        this.f15055a = obj;
        this.f15056b = zzdusVar;
        this.f15057c = zzdveVar;
        this.f15058d = zzdtcVar;
    }

    /* renamed from: a */
    public static String m26399a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzcf.zzf.zza m = zzcf.zzf.m14364m();
        m.m14362a(zzcm.DG);
        m.m14361a(zzeip.zzu(bArr));
        return Base64.encodeToString(((zzcf.zzf) ((zzejz) m.mo12342K())).mo12349c(), 11);
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    /* renamed from: a */
    public final String mo13209a(Context context, String str) {
        String a;
        synchronized (this) {
            Map<String, Object> c = this.f15057c.mo13111c();
            c.put("f", "q");
            c.put("ctx", context);
            c.put("aid", null);
            a = m26399a(m26400a((Map<String, String>) null, c));
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    /* renamed from: a */
    public final String mo13208a(Context context, String str, View view, Activity activity) {
        String a;
        synchronized (this) {
            Map<String, Object> b = this.f15057c.mo13112b();
            b.put("f", C8310v.f32322d);
            b.put("ctx", context);
            b.put("aid", null);
            b.put("view", view);
            b.put("act", activity);
            a = m26399a(m26400a((Map<String, String>) null, b));
        }
        return a;
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    /* renamed from: a */
    public final String mo13207a(Context context, String str, String str2, View view, Activity activity) {
        String a;
        synchronized (this) {
            Map<String, Object> a2 = this.f15057c.mo13113a();
            a2.put("f", "c");
            a2.put("ctx", context);
            a2.put("cs", str2);
            a2.put("aid", null);
            a2.put("view", view);
            a2.put("act", activity);
            a = m26399a(m26400a((Map<String, String>) null, a2));
        }
        return a;
    }

    /* renamed from: a */
    public final void m26401a() throws zzdvc {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                this.f15055a.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.f15055a, new Object[0]);
                this.f15058d.m13222a(AdError.MEDIATION_ERROR_CODE, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdvc((int) AdError.INTERNAL_ERROR_2003, e);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdtf
    /* renamed from: a */
    public final void mo13206a(String str, MotionEvent motionEvent) throws zzdvc {
        synchronized (this) {
            try {
                long currentTimeMillis = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("aid", null);
                hashMap.put("evt", motionEvent);
                this.f15055a.getClass().getDeclaredMethod("he", Map.class).invoke(this.f15055a, hashMap);
                this.f15058d.m13222a(3003, System.currentTimeMillis() - currentTimeMillis);
            } catch (Exception e) {
                throw new zzdvc(2005, e);
            }
        }
    }

    /* renamed from: a */
    public final byte[] m26400a(Map<String, String> map, Map<String, Object> map2) {
        byte[] bArr;
        synchronized (this) {
            long currentTimeMillis = System.currentTimeMillis();
            try {
                bArr = (byte[]) this.f15055a.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.f15055a, null, map2);
            } catch (Exception e) {
                this.f15058d.m13221a(2007, System.currentTimeMillis() - currentTimeMillis, e);
                return null;
            }
        }
        return bArr;
    }

    /* renamed from: b */
    public final zzdus m26398b() {
        return this.f15056b;
    }

    /* renamed from: c */
    public final boolean m26397c() throws zzdvc {
        boolean booleanValue;
        synchronized (this) {
            try {
                booleanValue = ((Boolean) this.f15055a.getClass().getDeclaredMethod("init", new Class[0]).invoke(this.f15055a, new Object[0])).booleanValue();
            } catch (Exception e) {
                throw new zzdvc((int) AdError.INTERNAL_ERROR_CODE, e);
            }
        }
        return booleanValue;
    }

    /* renamed from: d */
    public final int m26396d() throws zzdvc {
        int intValue;
        synchronized (this) {
            try {
                intValue = ((Integer) this.f15055a.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.f15055a, new Object[0])).intValue();
            } catch (Exception e) {
                throw new zzdvc((int) AdError.INTERNAL_ERROR_2006, e);
            }
        }
        return intValue;
    }
}
