package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.MotionEvent;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbcg.class */
public final class zzbcg implements zzafn<zzbaz> {

    /* renamed from: a */
    private boolean f11706a;

    /* renamed from: a */
    private static int m4133a(Context context, Map<String, String> map, String str, int i) {
        String str2 = map.get(str);
        int i2 = i;
        if (str2 != null) {
            try {
                zzve.zzou();
                i2 = zzayk.zza(context, Integer.parseInt(str2));
            } catch (NumberFormatException e) {
                StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(str2).length());
                sb.append("Could not parse ");
                sb.append(str);
                sb.append(" in a video GMSG: ");
                sb.append(str2);
                zzavs.zzez(sb.toString());
                i2 = i;
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static void m4132a(zzbai zzbaiVar, Map<String, String> map) {
        String str = map.get("minBufferMs");
        String str2 = map.get("maxBufferMs");
        String str3 = map.get("bufferForPlaybackMs");
        String str4 = map.get("bufferForPlaybackAfterRebufferMs");
        String str5 = map.get("socketReceiveBufferSize");
        if (str != null) {
            try {
                zzbaiVar.zzcv(Integer.parseInt(str));
            } catch (NumberFormatException e) {
                zzavs.zzez(String.format("Could not parse buffer parameters in loadControl video GMSG: (%s, %s)", str, str2));
                return;
            }
        }
        if (str2 != null) {
            zzbaiVar.zzcw(Integer.parseInt(str2));
        }
        if (str3 != null) {
            zzbaiVar.zzcx(Integer.parseInt(str3));
        }
        if (str4 != null) {
            zzbaiVar.zzcy(Integer.parseInt(str4));
        }
        if (str5 != null) {
            zzbaiVar.zzcz(Integer.parseInt(str5));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzafn
    public final /* synthetic */ void zza(zzbaz zzbazVar, Map map) {
        String[] split;
        zzbaz zzbazVar2 = zzbazVar;
        String str = (String) map.get("action");
        if (str == null) {
            zzavs.zzez("Action missing from video GMSG.");
            return;
        }
        if (zzavs.isLoggable(3)) {
            JSONObject jSONObject = new JSONObject(map);
            jSONObject.remove("google.afma.Notify_dt");
            String jSONObject2 = jSONObject.toString();
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(jSONObject2).length());
            sb.append("Video GMSG: ");
            sb.append(str);
            sb.append(" ");
            sb.append(jSONObject2);
            zzavs.zzea(sb.toString());
        }
        if ("background".equals(str)) {
            String str2 = (String) map.get("color");
            if (TextUtils.isEmpty(str2)) {
                zzavs.zzez("Color parameter missing from color video GMSG.");
                return;
            }
            try {
                zzbazVar2.setBackgroundColor(Color.parseColor(str2));
            } catch (IllegalArgumentException e) {
                zzavs.zzez("Invalid color parameter in video GMSG.");
            }
        } else {
            int i = 0;
            if ("decoderProps".equals(str)) {
                String str3 = (String) map.get("mimeTypes");
                if (str3 == null) {
                    zzavs.zzez("No MIME types specified for decoder properties inspection.");
                    zzbai.zza(zzbazVar2, "missingMimeTypes");
                } else if (Build.VERSION.SDK_INT < 16) {
                    zzavs.zzez("Video decoder properties available on API versions >= 16.");
                    zzbai.zza(zzbazVar2, "deficientApiVersion");
                } else {
                    HashMap hashMap = new HashMap();
                    for (String str4 : str3.split(",")) {
                        hashMap.put(str4, zzayi.zzer(str4.trim()));
                    }
                    zzbai.zza(zzbazVar2, hashMap);
                }
            } else {
                zzbao zzyk = zzbazVar2.zzyk();
                if (zzyk == null) {
                    zzavs.zzez("Could not get underlay container for a video GMSG.");
                    return;
                }
                boolean equals = "new".equals(str);
                boolean equals2 = "position".equals(str);
                if (equals || equals2) {
                    Context context = zzbazVar2.getContext();
                    int a = m4133a(context, map, "x", 0);
                    int a2 = m4133a(context, map, "y", 0);
                    int a3 = m4133a(context, map, "w", -1);
                    int a4 = m4133a(context, map, "h", -1);
                    int min = Math.min(a3, zzbazVar2.zzyt() - a);
                    int min2 = Math.min(a4, zzbazVar2.zzys() - a2);
                    try {
                        i = Integer.parseInt((String) map.get("player"));
                    } catch (NumberFormatException e2) {
                    }
                    boolean parseBoolean = Boolean.parseBoolean((String) map.get("spherical"));
                    if (!equals || zzyk.zzye() != null) {
                        zzyk.zze(a, a2, min, min2);
                        return;
                    }
                    zzyk.zza(a, a2, min, min2, i, parseBoolean, new zzbaw((String) map.get("flags")));
                    zzbai zzye = zzyk.zzye();
                    if (zzye != null) {
                        m4132a(zzye, map);
                        return;
                    }
                    return;
                }
                zzbed zzyl = zzbazVar2.zzyl();
                if (zzyl != null) {
                    if ("timeupdate".equals(str)) {
                        String str5 = (String) map.get("currentTime");
                        if (str5 == null) {
                            zzavs.zzez("currentTime parameter missing from timeupdate video GMSG.");
                            return;
                        }
                        try {
                            zzyl.zze(Float.parseFloat(str5));
                            return;
                        } catch (NumberFormatException e3) {
                            String valueOf = String.valueOf(str5);
                            zzavs.zzez(valueOf.length() != 0 ? "Could not parse currentTime parameter from timeupdate video GMSG: ".concat(valueOf) : new String("Could not parse currentTime parameter from timeupdate video GMSG: "));
                            return;
                        }
                    } else if ("skip".equals(str)) {
                        zzyl.zzabo();
                        return;
                    }
                }
                zzbai zzye2 = zzyk.zzye();
                if (zzye2 == null) {
                    zzbai.zza(zzbazVar2);
                } else if ("click".equals(str)) {
                    Context context2 = zzbazVar2.getContext();
                    int a5 = m4133a(context2, map, "x", 0);
                    int a6 = m4133a(context2, map, "y", 0);
                    long uptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent obtain = MotionEvent.obtain(uptimeMillis, uptimeMillis, 0, a5, a6, 0);
                    zzye2.zze(obtain);
                    obtain.recycle();
                } else if ("currentTime".equals(str)) {
                    String str6 = (String) map.get("time");
                    if (str6 == null) {
                        zzavs.zzez("Time parameter missing from currentTime video GMSG.");
                        return;
                    }
                    try {
                        zzye2.seekTo((int) (Float.parseFloat(str6) * 1000.0f));
                    } catch (NumberFormatException e4) {
                        String valueOf2 = String.valueOf(str6);
                        zzavs.zzez(valueOf2.length() != 0 ? "Could not parse time parameter from currentTime video GMSG: ".concat(valueOf2) : new String("Could not parse time parameter from currentTime video GMSG: "));
                    }
                } else if ("hide".equals(str)) {
                    zzye2.setVisibility(4);
                } else if ("load".equals(str)) {
                    zzye2.zzhq();
                } else if ("loadControl".equals(str)) {
                    m4132a(zzye2, map);
                } else if ("muted".equals(str)) {
                    if (Boolean.parseBoolean((String) map.get("muted"))) {
                        zzye2.zzxy();
                    } else {
                        zzye2.zzxz();
                    }
                } else if ("pause".equals(str)) {
                    zzye2.pause();
                } else if ("play".equals(str)) {
                    zzye2.play();
                } else if ("show".equals(str)) {
                    zzye2.setVisibility(0);
                } else if ("src".equals(str)) {
                    String str7 = (String) map.get("src");
                    String[] strArr = {str7};
                    String str8 = (String) map.get("demuxed");
                    if (str8 != null) {
                        try {
                            JSONArray jSONArray = new JSONArray(str8);
                            strArr = new String[jSONArray.length()];
                            for (int i2 = 0; i2 < jSONArray.length(); i2++) {
                                strArr[i2] = jSONArray.getString(i2);
                            }
                        } catch (JSONException e5) {
                            String valueOf3 = String.valueOf(str8);
                            zzavs.zzez(valueOf3.length() != 0 ? "Malformed demuxed URL list for playback: ".concat(valueOf3) : new String("Malformed demuxed URL list for playback: "));
                            strArr = new String[]{str7};
                        }
                    }
                    zzye2.zzc(str7, strArr);
                } else if ("touchMove".equals(str)) {
                    Context context3 = zzbazVar2.getContext();
                    zzye2.zza(m4133a(context3, map, "dx", 0), m4133a(context3, map, "dy", 0));
                    if (!this.f11706a) {
                        zzbazVar2.zzts();
                        this.f11706a = true;
                    }
                } else if ("volume".equals(str)) {
                    String str9 = (String) map.get("volume");
                    if (str9 == null) {
                        zzavs.zzez("Level parameter missing from volume video GMSG.");
                        return;
                    }
                    try {
                        zzye2.setVolume(Float.parseFloat(str9));
                    } catch (NumberFormatException e6) {
                        String valueOf4 = String.valueOf(str9);
                        zzavs.zzez(valueOf4.length() != 0 ? "Could not parse volume parameter from volume video GMSG: ".concat(valueOf4) : new String("Could not parse volume parameter from volume video GMSG: "));
                    }
                } else if ("watermark".equals(str)) {
                    zzye2.zzya();
                } else {
                    String valueOf5 = String.valueOf(str);
                    zzavs.zzez(valueOf5.length() != 0 ? "Unknown video action: ".concat(valueOf5) : new String("Unknown video action: "));
                }
            }
        }
    }
}
