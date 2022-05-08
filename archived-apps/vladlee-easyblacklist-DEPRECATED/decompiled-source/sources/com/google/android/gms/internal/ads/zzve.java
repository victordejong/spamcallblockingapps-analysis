package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.query.QueryData;
import java.util.Random;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzve.class */
public final class zzve {

    /* renamed from: a */
    private static zzve f15595a = new zzve();

    /* renamed from: b */
    private final zzayk f15596b;

    /* renamed from: c */
    private final zzup f15597c;

    /* renamed from: d */
    private final String f15598d;

    /* renamed from: e */
    private final zzzi f15599e;

    /* renamed from: f */
    private final zzzk f15600f;

    /* renamed from: g */
    private final zzzj f15601g;

    /* renamed from: h */
    private final zzazb f15602h;

    /* renamed from: i */
    private final Random f15603i;

    /* renamed from: j */
    private final WeakHashMap<QueryData, String> f15604j;

    protected zzve() {
        this(new zzayk(), new zzup(new zzue(), new zzub(), new zzya(), new zzaej(), new zzars(), new zzasw(), new zzaor(), new zzaem()), new zzzi(), new zzzk(), new zzzj(), zzayk.zzxf(), new zzazb(0, 19649000, true), new Random(), new WeakHashMap());
    }

    private zzve(zzayk zzaykVar, zzup zzupVar, zzzi zzziVar, zzzk zzzkVar, zzzj zzzjVar, String str, zzazb zzazbVar, Random random, WeakHashMap<QueryData, String> weakHashMap) {
        this.f15596b = zzaykVar;
        this.f15597c = zzupVar;
        this.f15599e = zzziVar;
        this.f15600f = zzzkVar;
        this.f15601g = zzzjVar;
        this.f15598d = str;
        this.f15602h = zzazbVar;
        this.f15603i = random;
        this.f15604j = weakHashMap;
    }

    public static zzayk zzou() {
        return f15595a.f15596b;
    }

    public static zzup zzov() {
        return f15595a.f15597c;
    }

    public static zzzk zzow() {
        return f15595a.f15600f;
    }

    public static zzzi zzox() {
        return f15595a.f15599e;
    }

    public static zzzj zzoy() {
        return f15595a.f15601g;
    }

    public static String zzoz() {
        return f15595a.f15598d;
    }

    public static zzazb zzpa() {
        return f15595a.f15602h;
    }

    public static Random zzpb() {
        return f15595a.f15603i;
    }

    public static WeakHashMap<QueryData, String> zzpc() {
        return f15595a.f15604j;
    }
}
