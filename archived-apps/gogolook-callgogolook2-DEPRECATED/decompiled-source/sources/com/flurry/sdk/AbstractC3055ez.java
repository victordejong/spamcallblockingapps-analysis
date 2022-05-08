package com.flurry.sdk;

import android.content.Context;
import com.flurry.sdk.AbstractDialogInterface$OnKeyListenerC3134fw;
import com.flurry.sdk.C3112fs;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.flurry.sdk.ez */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ez.class */
public abstract class AbstractC3055ez extends AbstractC3066fc {

    /* renamed from: e */
    public static final String f4827e = AbstractC3055ez.class.getSimpleName();

    /* renamed from: com.flurry.sdk.ez$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ez$a.class */
    public enum EnumC3056a {
        INSTREAM,
        FULLSCREEN
    }

    public AbstractC3055ez(Context context, AbstractC3518x xVar, AbstractDialogInterface$OnKeyListenerC3134fw.AbstractC3137a aVar) {
        super(context, xVar, aVar);
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: a */
    public final void mo33167a(float f) {
        if (((AbstractC3066fc) this).f4874c != null) {
            boolean e = mo33191e();
            ((AbstractC3066fc) this).f4875d = e && !((AbstractC3066fc) this).f4874c.m33133e() && ((AbstractC3066fc) this).f4874c.m33131f() > 0;
            C3112fs fsVar = getAdController().f4111b.f4156k.f5045b;
            fsVar.m33047a(((AbstractC3066fc) this).f4875d, e ? 100 : ((AbstractC3066fc) this).f4873b, f);
            for (C3112fs.C3113a aVar : fsVar.f5036b) {
                if (aVar.m33046a(e, ((AbstractC3066fc) this).f4875d, ((AbstractC3066fc) this).f4873b, f)) {
                    int i = aVar.f5038a.f4552a;
                    m33165a(i == 0 ? EnumC2874bi.EV_VIDEO_VIEWED : EnumC2874bi.EV_VIDEO_VIEWED_3P, mo33162b(i));
                    String str = f4827e;
                    C3356jq.m32615a(3, str, "BeaconTest: Video view event fired, adObj (type=" + i + "): " + getAdObject());
                }
            }
        }
    }

    /* renamed from: a */
    public abstract void mo33200a(EnumC3056a aVar);

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: b */
    public final Map<String, String> mo33162b(int i) {
        HashMap hashMap = new HashMap();
        String str = "0";
        hashMap.put("vsa", "0");
        hashMap.put("va", getAdController().m33525e().f4904l ? "1" : "0");
        hashMap.put("vph", String.valueOf(((AbstractC3066fc) this).f4874c.m33140a()));
        hashMap.put("vpw", String.valueOf(((AbstractC3066fc) this).f4874c.m33137b()));
        if (mo33191e()) {
            str = "1";
        }
        hashMap.put("ve", str);
        hashMap.put("vpi", (mo33191e() || this.f4872a) ? "1" : "2");
        boolean z = !mo33191e() || ((AbstractC3066fc) this).f4874c.m33133e();
        hashMap.put("vm", String.valueOf(z));
        String str2 = "2";
        if (!z) {
            str2 = "2";
            if (((AbstractC3066fc) this).f4874c.m33131f() > 0) {
                str2 = "1";
            }
        }
        hashMap.put("api", str2);
        hashMap.put("atv", String.valueOf(getAdController().f4111b.f4156k.f5045b.f5035a));
        if (i > 0) {
            hashMap.put("vt", String.valueOf(i));
        }
        return hashMap;
    }

    /* renamed from: e */
    public abstract boolean mo33191e();

    /* renamed from: f */
    public abstract boolean mo33188f();

    /* renamed from: g */
    public abstract boolean mo33186g();

    public final boolean getValueForAutoplayMacro() {
        if (getVideoReplayCount() == 0) {
            return mo33188f();
        }
        return false;
    }

    public int getVideoReplayCount() {
        return getAdController().m33525e().f4903k;
    }

    public abstract String getVideoUrl();

    @Override // com.flurry.sdk.AbstractC3066fc
    public int getViewParams() {
        return 0;
    }

    /* renamed from: h */
    public abstract void mo33184h();

    /* renamed from: i */
    public abstract void mo33182i();

    /* renamed from: j */
    public abstract boolean mo33180j();

    /* renamed from: k */
    public abstract void mo33178k();

    /* renamed from: l */
    public abstract boolean mo33177l();

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: p */
    public final void mo33157p() {
        C3076ff e = getAdController().m33525e();
        e.f4895c = true;
        e.f4904l = getValueForAutoplayMacro();
        m33165a(EnumC2874bi.EV_VIDEO_START, mo33162b(-1));
        String str = f4827e;
        C3356jq.m32615a(3, str, "BeaconTest: Video start event fired, adObj: " + getAdObject() + " muted: " + ((AbstractC3066fc) this).f4874c.m33133e());
    }

    @Override // com.flurry.sdk.AbstractC3066fc
    /* renamed from: q */
    public final void mo33156q() {
    }

    /* renamed from: r */
    public void mo33175r() {
    }

    /* renamed from: s */
    public void mo33174s() {
    }

    public abstract void setVideoUrl(String str);

    /* renamed from: t */
    public final boolean m33206t() {
        return getAdController().m33525e().f4906n;
    }

    /* renamed from: u */
    public boolean mo33173u() {
        return false;
    }

    /* renamed from: v */
    public final boolean m33205v() {
        return EnumC2817al.m33619a(getAdObject().mo32279k().m33528c().f4372g).equals(EnumC2817al.STREAM_ONLY) || !(getAdObject().mo32279k().m33532b() != null);
    }

    /* renamed from: w */
    public final void m33204w() {
        C2806af afVar = C3484p.m32358a().f6006h;
        C2806af.m33641b(getAdObject(), getVideoUrl());
        C3484p.m32358a().f6006h.m33632e();
        C3356jq.m32615a(3, f4827e, "ClearCache: Video cache cleared.");
    }
}
