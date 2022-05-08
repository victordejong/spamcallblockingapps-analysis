package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzup.class */
public class zzup {

    /* renamed from: a */
    private final zzue f15579a;

    /* renamed from: b */
    private final zzub f15580b;

    /* renamed from: c */
    private final zzya f15581c;

    /* renamed from: d */
    private final zzaej f15582d;

    /* renamed from: e */
    private final zzars f15583e;

    /* renamed from: f */
    private final zzasw f15584f;

    /* renamed from: g */
    private final zzaor f15585g;

    /* renamed from: h */
    private final zzaem f15586h;

    public zzup(zzue zzueVar, zzub zzubVar, zzya zzyaVar, zzaej zzaejVar, zzars zzarsVar, zzasw zzaswVar, zzaor zzaorVar, zzaem zzaemVar) {
        this.f15579a = zzueVar;
        this.f15580b = zzubVar;
        this.f15581c = zzyaVar;
        this.f15582d = zzaejVar;
        this.f15583e = zzarsVar;
        this.f15584f = zzaswVar;
        this.f15585g = zzaorVar;
        this.f15586h = zzaemVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3001a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        zzve.zzou().zza(context, zzve.zzpa().zzbma, "gmob-apps", bundle, true);
    }

    public final zzacm zza(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new art(this, frameLayout, frameLayout2, context).m4754a(context, false);
    }

    public final zzacp zza(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return new ars(this, view, hashMap, hashMap2).m4754a(view.getContext(), false);
    }

    public final zzvu zza(Context context, zzuj zzujVar, String str, zzalc zzalcVar) {
        return new arm(this, context, zzujVar, str, zzalcVar).m4754a(context, false);
    }

    public final zzaot zzb(Activity activity) {
        arn arnVar = new arn(this, activity);
        Intent intent = activity.getIntent();
        boolean z = false;
        if (!intent.hasExtra("com.google.android.gms.ads.internal.overlay.useClientJar")) {
            zzayu.zzex("useClientJar flag not found in activity intent extras.");
        } else {
            z = intent.getBooleanExtra("com.google.android.gms.ads.internal.overlay.useClientJar", false);
        }
        return arnVar.m4754a(activity, z);
    }

    public final zzvn zzb(Context context, String str, zzalc zzalcVar) {
        return new arr(this, context, str, zzalcVar).m4754a(context, false);
    }

    public final zzasg zzc(Context context, String str, zzalc zzalcVar) {
        return new ark(this, context, str, zzalcVar).m4754a(context, false);
    }
}
