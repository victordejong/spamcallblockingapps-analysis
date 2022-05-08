package p081h.p093b.p110d.p111a;

import android.os.Bundle;
/* renamed from: h.b.d.a.d */
/* loaded from: classes-dex2jar.jar:h/b/d/a/d.class */
public class C5670d {

    /* renamed from: a */
    public final Bundle f14180a;

    public C5670d(Bundle bundle) {
        this.f14180a = bundle;
    }

    /* renamed from: a */
    public boolean m24846a() {
        return this.f14180a.getBoolean("google_play_instant");
    }

    /* renamed from: b */
    public long m24845b() {
        return this.f14180a.getLong("install_begin_timestamp_seconds");
    }

    /* renamed from: c */
    public String m24844c() {
        return this.f14180a.getString("install_referrer");
    }

    /* renamed from: d */
    public long m24843d() {
        return this.f14180a.getLong("referrer_click_timestamp_seconds");
    }
}
