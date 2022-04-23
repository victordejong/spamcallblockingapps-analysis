package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbaw.class */
public final class zzbaw {

    /* renamed from: a */
    private final String f11603a;
    public final boolean zzdze;
    public final int zzdzf;
    public final int zzdzg;
    public final int zzdzh;
    public final int zzdzj;
    public final int zzdzk;
    public final int zzdzl;
    public final int zzdzm;
    public final boolean zzdzn;
    public final int zzdzo;

    public zzbaw(String str) {
        JSONObject jSONObject = null;
        if (str != null) {
            try {
                jSONObject = new JSONObject(str);
            } catch (JSONException e) {
                jSONObject = null;
            }
        }
        this.zzdze = m4175a(jSONObject, "aggressive_media_codec_release", zzzn.zzchh);
        this.zzdzf = m4173b(jSONObject, "byte_buffer_precache_limit", zzzn.zzcgq);
        this.zzdzg = m4173b(jSONObject, "exo_cache_buffer_size", zzzn.zzcgw);
        this.zzdzh = m4173b(jSONObject, "exo_connect_timeout_millis", zzzn.zzcgm);
        this.f11603a = m4172c(jSONObject, "exo_player_version", zzzn.zzcgl);
        this.zzdzj = m4173b(jSONObject, "exo_read_timeout_millis", zzzn.zzcgn);
        this.zzdzk = m4173b(jSONObject, "load_check_interval_bytes", zzzn.zzcgo);
        this.zzdzl = m4173b(jSONObject, "player_precache_limit", zzzn.zzcgp);
        this.zzdzm = m4173b(jSONObject, "socket_receive_buffer_size", zzzn.zzcgr);
        this.zzdzn = m4175a(jSONObject, "use_cache_data_source", zzzn.zzcnc);
        this.zzdzo = m4173b(jSONObject, "min_retry_count", zzzn.zzcgt);
    }

    /* renamed from: a */
    private static boolean m4175a(JSONObject jSONObject, String str, zzzc<Boolean> zzzcVar) {
        return m4174a(jSONObject, str, ((Boolean) zzve.zzoy().zzd(zzzcVar)).booleanValue());
    }

    /* renamed from: a */
    private static boolean m4174a(JSONObject jSONObject, String str, boolean z) {
        if (jSONObject != null) {
            try {
                return jSONObject.getBoolean(str);
            } catch (JSONException e) {
            }
        }
        return z;
    }

    /* renamed from: b */
    private static int m4173b(JSONObject jSONObject, String str, zzzc<Integer> zzzcVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getInt(str);
            } catch (JSONException e) {
            }
        }
        return ((Integer) zzve.zzoy().zzd(zzzcVar)).intValue();
    }

    /* renamed from: c */
    private static String m4172c(JSONObject jSONObject, String str, zzzc<String> zzzcVar) {
        if (jSONObject != null) {
            try {
                return jSONObject.getString(str);
            } catch (JSONException e) {
            }
        }
        return (String) zzve.zzoy().zzd(zzzcVar);
    }
}
