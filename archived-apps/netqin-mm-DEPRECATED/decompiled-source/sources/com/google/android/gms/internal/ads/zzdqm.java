package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqm.class */
public final class zzdqm implements zzdqj {

    /* renamed from: a */
    public final Object[] f27750a;

    public zzdqm(zzvg zzvgVar, String str, int i, String str2, zzvs zzvsVar) {
        HashSet hashSet = new HashSet(Arrays.asList(str2.split(",")));
        ArrayList arrayList = new ArrayList();
        arrayList.add(str2);
        arrayList.add(str);
        if (hashSet.contains("networkType")) {
            arrayList.add(Integer.valueOf(i));
        }
        if (hashSet.contains("birthday")) {
            arrayList.add(Long.valueOf(zzvgVar.f29002b));
        }
        if (hashSet.contains("extras")) {
            arrayList.add(m13309a(zzvgVar.f29003c));
        } else if (hashSet.contains("npa")) {
            arrayList.add(zzvgVar.f29003c.getString("npa"));
        }
        if (hashSet.contains("gender")) {
            arrayList.add(Integer.valueOf(zzvgVar.f29004d));
        }
        if (hashSet.contains("keywords")) {
            List<String> list = zzvgVar.f29005e;
            if (list != null) {
                arrayList.add(list.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("isTestDevice")) {
            arrayList.add(Boolean.valueOf(zzvgVar.f29006f));
        }
        if (hashSet.contains("tagForChildDirectedTreatment")) {
            arrayList.add(Integer.valueOf(zzvgVar.f29007g));
        }
        if (hashSet.contains("manualImpressionsEnabled")) {
            arrayList.add(Boolean.valueOf(zzvgVar.f29008h));
        }
        if (hashSet.contains("publisherProvidedId")) {
            arrayList.add(zzvgVar.f29009i);
        }
        if (hashSet.contains("location")) {
            Location location = zzvgVar.f29011k;
            if (location != null) {
                arrayList.add(location.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("contentUrl")) {
            arrayList.add(zzvgVar.f29012l);
        }
        if (hashSet.contains("networkExtras")) {
            arrayList.add(m13309a(zzvgVar.f29013m));
        }
        if (hashSet.contains("customTargeting")) {
            arrayList.add(m13309a(zzvgVar.f29014n));
        }
        if (hashSet.contains("categoryExclusions")) {
            List<String> list2 = zzvgVar.f29015o;
            if (list2 != null) {
                arrayList.add(list2.toString());
            } else {
                arrayList.add(null);
            }
        }
        if (hashSet.contains("requestAgent")) {
            arrayList.add(zzvgVar.f29016p);
        }
        if (hashSet.contains("requestPackage")) {
            arrayList.add(zzvgVar.f29017q);
        }
        if (hashSet.contains("isDesignedForFamilies")) {
            arrayList.add(Boolean.valueOf(zzvgVar.f29018r));
        }
        if (hashSet.contains("tagForUnderAgeOfConsent")) {
            arrayList.add(Integer.valueOf(zzvgVar.f29020t));
        }
        if (hashSet.contains("maxAdContentRating")) {
            arrayList.add(zzvgVar.f29021u);
        }
        if (hashSet.contains("orientation")) {
            if (zzvsVar != null) {
                arrayList.add(Integer.valueOf(zzvsVar.f29057a));
            } else {
                arrayList.add(null);
            }
        }
        this.f27750a = arrayList.toArray();
    }

    /* renamed from: a */
    public static String m13309a(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        while (it.hasNext()) {
            Object obj = bundle.get((String) it.next());
            sb.append(obj == null ? "null" : obj instanceof Bundle ? m13309a((Bundle) obj) : obj.toString());
        }
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzdqj
    public final boolean equals(Object obj) {
        if (!(obj instanceof zzdqm)) {
            return false;
        }
        return Arrays.equals(this.f27750a, ((zzdqm) obj).f27750a);
    }

    @Override // com.google.android.gms.internal.ads.zzdqj
    public final int hashCode() {
        return Arrays.hashCode(this.f27750a);
    }

    public final String toString() {
        int hashCode = hashCode();
        String arrays = Arrays.toString(this.f27750a);
        StringBuilder sb = new StringBuilder(String.valueOf(arrays).length() + 22);
        sb.append("[PoolKey#");
        sb.append(hashCode);
        sb.append(" ");
        sb.append(arrays);
        sb.append("]");
        return sb.toString();
    }
}
