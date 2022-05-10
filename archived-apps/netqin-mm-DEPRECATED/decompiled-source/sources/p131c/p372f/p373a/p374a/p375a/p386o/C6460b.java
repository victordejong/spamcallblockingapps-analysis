package p131c.p372f.p373a.p374a.p375a.p386o;

import com.integralads.avid.library.inmobi.session.internal.InternalAvidAdSession;
import com.integralads.avid.library.mopub.video.AvidVideoPlaybackListenerImpl;
import org.json.JSONException;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p377i.AbstractC6417a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6442a;
/* renamed from: c.f.a.a.a.o.b */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/o/b.class */
public class C6460b extends AbstractC6417a implements AbstractC6459a {
    public C6460b(InternalAvidAdSession internalAvidAdSession, C6442a aVar) {
        super(internalAvidAdSession, aVar);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: a */
    public void mo20819a() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_VIDEO_FIRST_QUARTILE, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: a */
    public void mo20818a(Integer num) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AvidVideoPlaybackListenerImpl.VOLUME, num);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m20816a(AvidVideoPlaybackListenerImpl.AD_VOLUME_CHANGE, jSONObject);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: a */
    public void mo20817a(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(AvidVideoPlaybackListenerImpl.MESSAGE, str);
        } catch (JSONException e) {
            e.printStackTrace();
        }
        m20816a(AvidVideoPlaybackListenerImpl.AD_ERROR, jSONObject);
    }

    /* renamed from: a */
    public final void m20816a(String str, JSONObject jSONObject) {
        m20916t();
        m20798x();
        m20913w().m20867b(str, jSONObject);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: b */
    public void mo20815b() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_STOPPED, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: c */
    public void mo20814c() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_EXPANDED_CHANGE, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: d */
    public void mo20813d() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_EXITED_FULLSCREEN, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: e */
    public void mo20812e() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_LOADED, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: f */
    public void mo20811f() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_ENTERED_FULLSCREEN, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: g */
    public void mo20810g() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_VIDEO_START, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: h */
    public void mo20809h() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_VIDEO_THIRD_QUARTILE, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: i */
    public void mo20808i() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_USER_CLOSE, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: j */
    public void mo20807j() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_VIDEO_COMPLETE, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: k */
    public void mo20806k() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_STARTED, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: m */
    public void mo20805m() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_SKIPPED, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: n */
    public void mo20804n() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_CLICK_THRU, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: o */
    public void mo20803o() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_IMPRESSION, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: p */
    public void mo20802p() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_USER_MINIMIZE, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: q */
    public void mo20801q() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_PLAYING, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: r */
    public void mo20800r() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_VIDEO_MIDPOINT, null);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p386o.AbstractC6459a
    /* renamed from: s */
    public void mo20799s() {
        m20816a(AvidVideoPlaybackListenerImpl.AD_PAUSED, null);
    }

    /* renamed from: x */
    public final void m20798x() {
        if (!m20914v().m5440l()) {
            throw new IllegalStateException("The AVID ad session is not ready. Please ensure you have called recordReadyEvent for the deferred AVID ad session before recording any video event.");
        }
    }
}
