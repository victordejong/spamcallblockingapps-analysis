package p193e.p194a.p947k.p969c;

import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.profile.data.dto.MediaCallerIDs;
import com.truecaller.videocallerid.utils.ReceiveVideoPreferences;
import java.util.Iterator;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p947k.AbstractC16116j;
import p193e.p194a.p947k.C16117k;
import s1.z.c.l;
/* renamed from: e.a.k.c.f */
/* loaded from: classes15-dex2jar.jar:e/a/k/c/f.class */
public final class C15982f implements AbstractC15960c {

    /* renamed from: a */
    public final a<C20592g> f45056a;

    /* renamed from: b */
    public final AbstractC15992h0 f45057b;

    /* renamed from: c */
    public final AbstractC16116j f45058c;

    @Inject
    public C15982f(a<C20592g> aVar, AbstractC15992h0 abstractC15992h0, AbstractC16116j abstractC16116j) {
        l.e(aVar, "featuresRegistry");
        l.e(abstractC15992h0, "receiveVideoSettingsManager");
        l.e(abstractC16116j, "videoCallerIdSupport");
        this.f45056a = aVar;
        this.f45057b = abstractC15992h0;
        this.f45058c = abstractC16116j;
    }

    /* renamed from: a */
    public final String m18050a(Contact contact) {
        Object obj;
        String url;
        C20592g c20592g = (C20592g) this.f45056a.get();
        if (!c20592g.f57702A5.m10941a(c20592g, C20592g.f57695p6[344]).isEnabled()) {
            return null;
        }
        Iterator<T> it = ((C16117k) this.f45058c).m17809b(contact).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            MediaCallerIDs mediaCallerIDs = (MediaCallerIDs) obj;
            if (l.a(mediaCallerIDs.getMediaType(), "Video") && l.a(mediaCallerIDs.getOrientation(), "Landscape") && !C19291g.m13511t0(mediaCallerIDs)) {
                break;
            }
        }
        MediaCallerIDs mediaCallerIDs2 = (MediaCallerIDs) obj;
        if (mediaCallerIDs2 != null && (url = mediaCallerIDs2.getUrl()) != null) {
            return url;
        }
        return null;
    }

    /* renamed from: b */
    public final String m18049b(Contact contact) {
        Object obj;
        String url;
        C20592g c20592g = (C20592g) this.f45056a.get();
        if (!c20592g.f57709B5.m10941a(c20592g, C20592g.f57695p6[345]).isEnabled()) {
            return null;
        }
        Iterator<T> it = ((C16117k) this.f45058c).m17809b(contact).iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            MediaCallerIDs mediaCallerIDs = (MediaCallerIDs) obj;
            if (l.a(mediaCallerIDs.getMediaType(), "Video") && l.a(mediaCallerIDs.getOrientation(), "Portrait") && !C19291g.m13511t0(mediaCallerIDs)) {
                break;
            }
        }
        MediaCallerIDs mediaCallerIDs2 = (MediaCallerIDs) obj;
        if (mediaCallerIDs2 != null && (url = mediaCallerIDs2.getUrl()) != null) {
            return url;
        }
        return null;
    }

    /* renamed from: c */
    public boolean m18048c(Contact contact) {
        boolean z = false;
        if (contact != null) {
            if (!m18047d(contact)) {
                z = false;
            } else {
                z = false;
                if (m18049b(contact) != null) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: d */
    public boolean m18047d(Contact contact) {
        l.e(contact, AnalyticsConstants.CONTACT);
        return ((C20592g) this.f45056a.get()).m10999F().isEnabled() && this.f45057b.mo18004e() == ReceiveVideoPreferences.Everyone && (contact.m35565G0() || (contact.m35492v0() && !contact.m35574A0())) && !contact.m35495t0();
    }
}
