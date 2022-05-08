package com.google.android.gms.internal.ads;

import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaok.class */
public final class zzaok {

    /* renamed from: a */
    private final boolean f11108a;

    /* renamed from: b */
    private final boolean f11109b;

    /* renamed from: c */
    private final boolean f11110c;

    /* renamed from: d */
    private final boolean f11111d;

    /* renamed from: e */
    private final boolean f11112e;

    private zzaok(zzaom zzaomVar) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        z = zzaomVar.f11126a;
        this.f11108a = z;
        z2 = zzaomVar.f11127b;
        this.f11109b = z2;
        z3 = zzaomVar.f11128c;
        this.f11110c = z3;
        z4 = zzaomVar.f11129d;
        this.f11111d = z4;
        z5 = zzaomVar.f11130e;
        this.f11112e = z5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzaok(zzaom zzaomVar, byte b) {
        this(zzaomVar);
    }

    public final JSONObject zzth() {
        try {
            return new JSONObject().put("sms", this.f11108a).put("tel", this.f11109b).put("calendar", this.f11110c).put("storePicture", this.f11111d).put("inlineVideo", this.f11112e);
        } catch (JSONException e) {
            zzavs.zzc("Error occured while obtaining the MRAID capabilities.", e);
            return null;
        }
    }
}
