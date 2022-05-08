package com.flurry.sdk;

import android.content.SharedPreferences;
import android.text.TextUtils;
import com.flurry.sdk.AbstractC2829aq;
import java.io.File;
/* renamed from: com.flurry.sdk.q */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/q.class */
public class C3491q {

    /* renamed from: d */
    public static final String f6018d = "q";

    /* renamed from: b */
    public String f6020b;

    /* renamed from: c */
    public int f6021c;

    /* renamed from: f */
    public AbstractC2829aq f6023f;

    /* renamed from: g */
    public final AbstractC3344jl<C3309iq> f6024g = new AbstractC3344jl<C3309iq>() { // from class: com.flurry.sdk.q.1
        @Override // com.flurry.sdk.AbstractC3344jl
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo32302a(C3309iq iqVar) {
            if (iqVar.f5613a) {
                C3491q.this.m32336b();
            }
        }
    };

    /* renamed from: a */
    public final File f6019a = C3331jb.m32681a().f5679a.getFileStreamPath(".flurryads.mediaassets");

    /* renamed from: e */
    public final File f6022e = C3331jb.m32681a().f5679a.getFileStreamPath(".flurryads.mediaassets.tmp");

    public C3491q() {
        C3345jm.m32636a().m32632a("com.flurry.android.sdk.NetworkStateEvent", this.f6024g);
    }

    /* renamed from: d */
    public static /* synthetic */ int m32333d(C3491q qVar) {
        int i = qVar.f6021c;
        qVar.f6021c = i + 1;
        return i;
    }

    /* renamed from: b */
    public final void m32336b() {
        final String str;
        synchronized (this) {
            if (!TextUtils.isEmpty(this.f6020b)) {
                if (this.f6021c < 3) {
                    str = this.f6020b + "android.zip";
                } else {
                    str = "https://cdn.flurry.com/vast/videocontrols/v2/android.zip";
                }
                final SharedPreferences sharedPreferences = C3331jb.m32681a().f5679a.getSharedPreferences("FLURRY_SHARED_PREFERENCES", 0);
                if (!str.equals(sharedPreferences.getString("flurry_last_media_asset_url", null)) || !this.f6019a.exists()) {
                    if (this.f6023f != null) {
                        this.f6023f.m33574b();
                    }
                    this.f6022e.delete();
                    C3356jq.m32615a(3, f6018d, "Media player assets: attempting download from url: " + str);
                    this.f6023f = new C2841ar(this.f6022e);
                    this.f6023f.f4052b = str;
                    this.f6023f.f4053c = 30000;
                    this.f6023f.f4051a = new AbstractC2829aq.AbstractC2840a() { // from class: com.flurry.sdk.q.3
                        @Override // com.flurry.sdk.AbstractC2829aq.AbstractC2840a
                        /* renamed from: a */
                        public final void mo32331a(AbstractC2829aq aqVar) {
                            if (!aqVar.f4056f || !C3491q.this.f6022e.exists()) {
                                C3356jq.m32615a(3, C3491q.f6018d, "Media player assets: download failed");
                                if (C3310ir.m32715a().f5616b) {
                                    C3491q.m32333d(C3491q.this);
                                }
                                C3331jb a = C3331jb.m32681a();
                                a.f5680b.postDelayed(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.q.3.1
                                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                    /* renamed from: a */
                                    public final void mo32300a() {
                                        C3491q.this.m32336b();
                                    }
                                }, 10000L);
                            } else {
                                C3491q.this.f6019a.delete();
                                if (C3491q.this.f6022e.renameTo(C3491q.this.f6019a)) {
                                    C3356jq.m32615a(3, C3491q.f6018d, "Media player assets: download successful");
                                    SharedPreferences.Editor edit = sharedPreferences.edit();
                                    edit.putString("flurry_last_media_asset_url", str);
                                    edit.apply();
                                } else {
                                    C3356jq.m32615a(3, C3491q.f6018d, "Media player assets: couldn't rename tmp file (giving up)");
                                }
                            }
                            C3491q.this.f6023f = null;
                        }
                    };
                    this.f6023f.m33582a();
                    return;
                }
                C3356jq.m32615a(3, f6018d, "Media player assets: download not necessary");
            }
        }
    }
}
