package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zza;
import com.google.android.gms.internal.measurement.zzb;
import com.google.android.gms.internal.measurement.zzp;
import java.io.UnsupportedEncodingException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzcx.class */
public final class zzcx extends zzbq {

    /* renamed from: ID */
    private static final String f181ID = zza.JOINER.toString();
    private static final String zzbbt = zzb.ARG0.toString();
    private static final String zzbcm = zzb.ITEM_SEPARATOR.toString();
    private static final String zzbcn = zzb.KEY_VALUE_SEPARATOR.toString();
    private static final String zzbco = zzb.ESCAPE.toString();

    public zzcx() {
        super(f181ID, zzbbt);
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Character;>;)Ljava/lang/String; */
    private static String zza(String str, int i, Set set) {
        switch (zzcy.zzbcp[i - 1]) {
            case 1:
                try {
                    return zzgn.zzee(str);
                } catch (UnsupportedEncodingException e) {
                    zzdi.zza("Joiner: unsupported encoding", e);
                    return str;
                }
            case 2:
                String replace = str.replace("\\", "\\\\");
                Iterator it = set.iterator();
                while (it.hasNext()) {
                    String ch = ((Character) it.next()).toString();
                    String valueOf = String.valueOf(ch);
                    replace = replace.replace(ch, valueOf.length() != 0 ? "\\".concat(valueOf) : new String("\\"));
                }
                return replace;
            default:
                return str;
        }
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Integer;Ljava/util/Set<Ljava/lang/Character;>;)V */
    private static void zza(StringBuilder sb, String str, int i, Set set) {
        sb.append(zza(str, i, set));
    }

    private static void zza(Set<Character> set, String str) {
        for (int i = 0; i < str.length(); i++) {
            set.add(Character.valueOf(str.charAt(i)));
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.tagmanager.zzbq
    public final zzp zze(Map<String, zzp> map) {
        zzp zzpVar = map.get(zzbbt);
        if (zzpVar == null) {
            return zzgj.zzqg();
        }
        zzp zzpVar2 = map.get(zzbcm);
        String zzc = zzpVar2 != null ? zzgj.zzc(zzpVar2) : "";
        zzp zzpVar3 = map.get(zzbcn);
        String zzc2 = zzpVar3 != null ? zzgj.zzc(zzpVar3) : "=";
        int i = zzcz.zzbcq;
        zzp zzpVar4 = map.get(zzbco);
        HashSet hashSet = null;
        if (zzpVar4 != null) {
            String zzc3 = zzgj.zzc(zzpVar4);
            if ("url".equals(zzc3)) {
                i = zzcz.zzbcr;
                hashSet = null;
            } else if ("backslash".equals(zzc3)) {
                i = zzcz.zzbcs;
                hashSet = new HashSet();
                zza(hashSet, zzc);
                zza(hashSet, zzc2);
                hashSet.remove('\\');
            } else {
                String valueOf = String.valueOf(zzc3);
                zzdi.m329e(valueOf.length() != 0 ? "Joiner: unsupported escape type: ".concat(valueOf) : new String("Joiner: unsupported escape type: "));
                return zzgj.zzqg();
            }
        }
        StringBuilder sb = new StringBuilder();
        switch (zzpVar.type) {
            case 2:
                zzp[] zzpVarArr = zzpVar.zzqj;
                int length = zzpVarArr.length;
                int i2 = 0;
                boolean z = true;
                while (i2 < length) {
                    zzp zzpVar5 = zzpVarArr[i2];
                    if (!z) {
                        sb.append(zzc);
                    }
                    zza(sb, zzgj.zzc(zzpVar5), i, hashSet);
                    i2++;
                    z = false;
                }
                break;
            case 3:
                for (int i3 = 0; i3 < zzpVar.zzqk.length; i3++) {
                    if (i3 > 0) {
                        sb.append(zzc);
                    }
                    String zzc4 = zzgj.zzc(zzpVar.zzqk[i3]);
                    String zzc5 = zzgj.zzc(zzpVar.zzql[i3]);
                    zza(sb, zzc4, i, hashSet);
                    sb.append(zzc2);
                    zza(sb, zzc5, i, hashSet);
                }
                break;
            default:
                zza(sb, zzgj.zzc(zzpVar), i, hashSet);
                break;
        }
        return zzgj.zzj(sb.toString());
    }

    @Override // com.google.android.gms.tagmanager.zzbq
    public final boolean zznb() {
        return true;
    }
}
