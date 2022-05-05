package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.ht */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/ht.class */
public final class C2847ht extends AbstractC2837hj {

    /* renamed from: b */
    private String f17043b;

    /* renamed from: c */
    private Set<Integer> f17044c;

    /* renamed from: d */
    private Map<Integer, C2848hu> f17045d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2847ht(zzke zzkeVar) {
        super(zzkeVar);
    }

    /* renamed from: a */
    private final C2848hu m2021a(int i) {
        if (this.f17045d.containsKey(Integer.valueOf(i))) {
            return this.f17045d.get(Integer.valueOf(i));
        }
        C2848hu huVar = new C2848hu(this, this.f17043b, (byte) 0);
        this.f17045d.put(Integer.valueOf(i), huVar);
        return huVar;
    }

    /* renamed from: a */
    private final boolean m2020a(int i, int i2) {
        if (this.f17045d.get(Integer.valueOf(i)) == null) {
            return false;
        }
        return C2848hu.m2017a(this.f17045d.get(Integer.valueOf(i))).get(i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:190:0x090e, code lost:
        zzr().zzi();
        r0 = com.google.android.gms.measurement.internal.zzew.m1855a(r18.f17043b).zza();
     */
    /* JADX WARN: Code restructure failed: missing block: B:191:0x0925, code lost:
        if (r0 == 0) goto L_0x0934;
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x0928, code lost:
        r0 = r0.zzb();
        r20 = java.lang.Integer.valueOf(r0);
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:193:0x0934, code lost:
        r20 = null;
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:194:0x0936, code lost:
        r0.zza("Invalid property filter ID. appId, id", r0, java.lang.String.valueOf(r20));
        r24 = false;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x043e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0456  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0467 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:253:0x044b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x03e1  */
    /* JADX WARN: Type inference failed for: r0v101, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v102, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v105, types: [com.google.android.gms.internal.measurement.zzbr$zzc] */
    /* JADX WARN: Type inference failed for: r0v106 */
    /* JADX WARN: Type inference failed for: r0v108, types: [com.google.android.gms.internal.measurement.zzbr$zzc, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v109, types: [com.google.android.gms.measurement.internal.eo, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v110, types: [java.lang.String, com.google.android.gms.measurement.internal.zzx] */
    /* JADX WARN: Type inference failed for: r0v111, types: [com.google.android.gms.internal.measurement.zzbr$zzc, boolean, java.lang.String, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r0v112, types: [com.google.android.gms.measurement.internal.eo, com.google.android.gms.measurement.internal.h] */
    /* JADX WARN: Type inference failed for: r0v114, types: [com.google.android.gms.internal.measurement.zzbr$zzc, long] */
    /* JADX WARN: Type inference failed for: r0v120, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v121, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v125, types: [int, java.util.Set, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v127 */
    /* JADX WARN: Type inference failed for: r0v129, types: [int, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v134, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v135 */
    /* JADX WARN: Type inference failed for: r0v136, types: [int, java.util.Set, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v138, types: [int, com.google.android.gms.internal.measurement.zzbj$zzb] */
    /* JADX WARN: Type inference failed for: r0v139, types: [int, com.google.android.gms.internal.measurement.zzbr$zzc, com.google.android.gms.measurement.internal.hw, long, com.google.android.gms.internal.measurement.zzbj$zzb] */
    /* JADX WARN: Type inference failed for: r0v142, types: [com.google.android.gms.measurement.internal.hu, com.google.android.gms.measurement.internal.hz] */
    /* JADX WARN: Type inference failed for: r0v143, types: [int, java.util.Set, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v144, types: [java.lang.String, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r0v147, types: [com.google.android.gms.measurement.internal.eo, com.google.android.gms.internal.measurement.zzbr$zzc, java.lang.String, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v148, types: [java.util.Map, boolean] */
    /* JADX WARN: Type inference failed for: r0v153, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v162 */
    /* JADX WARN: Type inference failed for: r0v163, types: [int, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v164, types: [java.util.Map, java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r0v166, types: [int, java.util.Map, java.util.Map<java.lang.Integer, com.google.android.gms.measurement.internal.hu>, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v167, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v168 */
    /* JADX WARN: Type inference failed for: r0v17, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v171, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v174, types: [int, java.util.BitSet, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v176, types: [boolean, java.util.BitSet] */
    /* JADX WARN: Type inference failed for: r0v177 */
    /* JADX WARN: Type inference failed for: r0v179, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.util.Iterator, boolean, java.util.List<com.google.android.gms.internal.measurement.zzbr$zza>] */
    /* JADX WARN: Type inference failed for: r0v180, types: [int] */
    /* JADX WARN: Type inference failed for: r0v183, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v184, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v187, types: [boolean, com.google.android.gms.internal.measurement.zzbr$zzj] */
    /* JADX WARN: Type inference failed for: r0v188 */
    /* JADX WARN: Type inference failed for: r0v189, types: [int, com.google.android.gms.internal.measurement.zzbr$zzj] */
    /* JADX WARN: Type inference failed for: r0v193, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v194, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v197, types: [com.google.android.gms.internal.measurement.zzbr$zzb, boolean] */
    /* JADX WARN: Type inference failed for: r0v198 */
    /* JADX WARN: Type inference failed for: r0v199, types: [int, com.google.android.gms.internal.measurement.zzbr$zzb] */
    /* JADX WARN: Type inference failed for: r0v200, types: [com.google.android.gms.internal.measurement.zzbr$zzb, boolean] */
    /* JADX WARN: Type inference failed for: r0v201, types: [int, java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v202 */
    /* JADX WARN: Type inference failed for: r0v207, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v208 */
    /* JADX WARN: Type inference failed for: r0v209, types: [java.lang.String, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r0v213, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v214, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v217, types: [int, java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v218, types: [int, java.util.Map, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v22, types: [int, java.util.Map, java.util.Map<java.lang.Integer, com.google.android.gms.measurement.internal.hu>] */
    /* JADX WARN: Type inference failed for: r0v220, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v221 */
    /* JADX WARN: Type inference failed for: r0v222, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r0v223, types: [int] */
    /* JADX WARN: Type inference failed for: r0v224, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v225, types: [java.util.List, com.google.android.gms.measurement.internal.zzki] */
    /* JADX WARN: Type inference failed for: r0v227, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v231, types: [com.google.android.gms.internal.measurement.zzbr$zzi$zza, java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r0v233, types: [java.util.List, com.google.android.gms.measurement.internal.zzki] */
    /* JADX WARN: Type inference failed for: r0v234, types: [java.util.List, com.google.android.gms.internal.measurement.zzbr$zzi$zza] */
    /* JADX WARN: Type inference failed for: r0v235, types: [com.google.android.gms.internal.measurement.zzbr$zzi$zza, java.lang.Iterable] */
    /* JADX WARN: Type inference failed for: r0v237, types: [java.util.List, int, com.google.android.gms.internal.measurement.zzfd$zzb] */
    /* JADX WARN: Type inference failed for: r0v24, types: [int, com.google.android.gms.measurement.internal.hu] */
    /* JADX WARN: Type inference failed for: r0v240, types: [com.google.android.gms.internal.measurement.zzbr$zzi$zza, boolean] */
    /* JADX WARN: Type inference failed for: r0v241, types: [com.google.android.gms.internal.measurement.zzbr$zzi$zza, boolean] */
    /* JADX WARN: Type inference failed for: r0v243, types: [com.google.android.gms.measurement.internal.eo, com.google.android.gms.measurement.internal.hj, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v244, types: [android.content.ContentValues, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r0v245, types: [com.google.android.gms.measurement.internal.eo] */
    /* JADX WARN: Type inference failed for: r0v247, types: [java.lang.String, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v248, types: [android.database.sqlite.SQLiteDatabase, android.content.ContentValues] */
    /* JADX WARN: Type inference failed for: r0v25, types: [java.util.List, com.google.android.gms.internal.measurement.zzbr$zza, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v253, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v264 */
    /* JADX WARN: Type inference failed for: r0v265 */
    /* JADX WARN: Type inference failed for: r0v266 */
    /* JADX WARN: Type inference failed for: r0v267 */
    /* JADX WARN: Type inference failed for: r0v27, types: [com.google.android.gms.internal.measurement.zzbr$zza, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v272 */
    /* JADX WARN: Type inference failed for: r0v273 */
    /* JADX WARN: Type inference failed for: r0v274 */
    /* JADX WARN: Type inference failed for: r0v275 */
    /* JADX WARN: Type inference failed for: r0v276 */
    /* JADX WARN: Type inference failed for: r0v279 */
    /* JADX WARN: Type inference failed for: r0v28, types: [com.google.android.gms.measurement.internal.eo, com.google.android.gms.measurement.internal.hj, java.lang.Object, java.lang.String, com.google.android.gms.internal.measurement.zzdl, com.google.android.gms.internal.measurement.zzbr$zzi] */
    /* JADX WARN: Type inference failed for: r0v280 */
    /* JADX WARN: Type inference failed for: r0v285 */
    /* JADX WARN: Type inference failed for: r0v286 */
    /* JADX WARN: Type inference failed for: r0v287 */
    /* JADX WARN: Type inference failed for: r0v288 */
    /* JADX WARN: Type inference failed for: r0v289 */
    /* JADX WARN: Type inference failed for: r0v290 */
    /* JADX WARN: Type inference failed for: r0v30, types: [int, byte[], android.content.ContentValues, java.lang.String, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v32, types: [com.google.android.gms.measurement.internal.eo] */
    /* JADX WARN: Type inference failed for: r0v34, types: [java.lang.String, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v35 */
    /* JADX WARN: Type inference failed for: r0v36, types: [android.database.sqlite.SQLiteDatabase, android.content.ContentValues] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v39, types: [com.google.android.gms.measurement.internal.eo, int] */
    /* JADX WARN: Type inference failed for: r0v41, types: [java.lang.String, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v42, types: [java.util.List, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r0v45, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v46, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v48, types: [java.util.List, com.google.android.gms.internal.measurement.zzbr$zzk] */
    /* JADX WARN: Type inference failed for: r0v49, types: [java.util.Map, java.lang.Object, java.lang.String] */
    /* JADX WARN: Type inference failed for: r0v53, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v54, types: [java.util.Iterator] */
    /* JADX WARN: Type inference failed for: r0v55, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v56 */
    /* JADX WARN: Type inference failed for: r0v60, types: [int, java.util.Set, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v63, types: [int, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v68, types: [java.util.Iterator, boolean] */
    /* JADX WARN: Type inference failed for: r0v69 */
    /* JADX WARN: Type inference failed for: r0v70 */
    /* JADX WARN: Type inference failed for: r0v71, types: [int, java.util.Set, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v76, types: [com.google.android.gms.internal.measurement.zzbj$zze] */
    /* JADX WARN: Type inference failed for: r0v77, types: [boolean, com.google.android.gms.internal.measurement.zzbj$zze] */
    /* JADX WARN: Type inference failed for: r0v81, types: [com.google.android.gms.internal.measurement.zzbj$zze, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v82, types: [boolean, com.google.android.gms.internal.measurement.zzbj$zze] */
    /* JADX WARN: Type inference failed for: r0v83, types: [java.lang.Object, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v85, types: [int, com.google.android.gms.internal.measurement.zzbj$zze] */
    /* JADX WARN: Type inference failed for: r0v86, types: [int, com.google.android.gms.measurement.internal.hy, com.google.android.gms.internal.measurement.zzbj$zze, com.google.android.gms.internal.measurement.zzbr$zzk] */
    /* JADX WARN: Type inference failed for: r0v89, types: [com.google.android.gms.measurement.internal.hu, com.google.android.gms.measurement.internal.hz] */
    /* JADX WARN: Type inference failed for: r0v90, types: [int, java.util.Set, java.util.Set<java.lang.Integer>] */
    /* JADX WARN: Type inference failed for: r0v92, types: [com.google.android.gms.internal.measurement.zzbj$zze, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v93, types: [boolean, com.google.android.gms.internal.measurement.zzbj$zze] */
    /* JADX WARN: Type inference failed for: r0v94, types: [int, com.google.android.gms.internal.measurement.zzbj$zze, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v96, types: [com.google.android.gms.internal.measurement.zzbj$zze, com.google.android.gms.measurement.internal.zzey] */
    /* JADX WARN: Type inference failed for: r0v98, types: [java.lang.String, com.google.android.gms.measurement.internal.c] */
    /* JADX WARN: Type inference failed for: r18v0, types: [com.google.android.gms.measurement.internal.eo, com.google.android.gms.measurement.internal.ht, com.google.android.gms.measurement.internal.hk] */
    /* JADX WARN: Type inference failed for: r19v12, types: [java.util.Map] */
    /* JADX WARN: Type inference failed for: r19v13 */
    /* JADX WARN: Type inference failed for: r19v14 */
    /* JADX WARN: Type inference failed for: r2v13, types: [com.google.android.gms.measurement.internal.zzki] */
    /* JADX WARN: Type inference failed for: r3v10, types: [com.google.android.gms.measurement.internal.zzeu] */
    /* JADX WARN: Type inference failed for: r4v14, types: [java.lang.String[]] */
    /* JADX WARN: Unknown variable types count: 57 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<com.google.android.gms.internal.measurement.zzbr.zza> m2019a(java.lang.String r19, java.util.List<com.google.android.gms.internal.measurement.zzbr.zzc> r20, java.util.List<com.google.android.gms.internal.measurement.zzbr.zzk> r21, java.lang.Long r22) {
        /*
            Method dump skipped, instructions count: 2713
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C2847ht.m2019a(java.lang.String, java.util.List, java.util.List, java.lang.Long):java.util.List");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC2837hj
    /* renamed from: a */
    protected final boolean mo1675a() {
        return false;
    }
}
