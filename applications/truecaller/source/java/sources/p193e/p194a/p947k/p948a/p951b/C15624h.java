package p193e.p194a.p947k.p948a.p951b;

import com.truecaller.data.entity.Contact;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.fullscreenpopupvideo.VideoExpansionType;
import com.truecaller.videocallerid.p187ui.videoplayer.playing.PlayingBehaviour;
import com.truecaller.videocallerid.utils.OnboardingType;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p948a.p964k.p965z.AbstractC15868b;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import p193e.p194a.p947k.p969c.AbstractC16102y0;
import q3.a.x2.i1;
import q3.a.x2.u0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.k.a.b.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/b/h.class */
public final class C15624h extends AbstractC20574a<AbstractC15622f> implements AbstractC15621e {

    /* renamed from: d */
    public Boolean f44151d;

    /* renamed from: e */
    public final f f44152e;

    /* renamed from: f */
    public final AbstractC15964c2 f44153f;

    /* renamed from: g */
    public final AbstractC16102y0 f44154g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C15624h(@Named("UI") f fVar, AbstractC15964c2 abstractC15964c2, AbstractC16102y0 abstractC16102y0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC15964c2, "videoPlayerConfigProvider");
        l.e(abstractC16102y0, "onboardingManager");
        this.f44152e = fVar;
        this.f44153f = abstractC15964c2;
        this.f44154g = abstractC16102y0;
    }

    /* renamed from: Ij */
    public final void m18568Ij(boolean z) {
        if (z) {
            AbstractC15622f abstractC15622f = (AbstractC15622f) this.f57683a;
            if (abstractC15622f != null) {
                abstractC15622f.mo18578ep(C4718R.C4719drawable.ic_vid_muted_audio);
                abstractC15622f.mo18582Fr(true);
            }
            this.f44151d = Boolean.TRUE;
            return;
        }
        AbstractC15622f abstractC15622f2 = (AbstractC15622f) this.f57683a;
        if (abstractC15622f2 != null) {
            abstractC15622f2.mo18578ep(C4718R.C4719drawable.ic_vid_unmuted_audio);
            abstractC15622f2.mo18582Fr(false);
        }
        this.f44151d = Boolean.FALSE;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.k.a.b.f, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC15622f abstractC15622f) {
        AbstractC15836l.C15839c c15839c;
        AbstractC15622f abstractC15622f2;
        AbstractC15622f abstractC15622f3;
        i1<AbstractC15868b> mo18576p1;
        AbstractC15622f abstractC15622f4 = abstractC15622f;
        l.e(abstractC15622f4, "presenterView");
        this.f57683a = abstractC15622f4;
        VideoExpansionType mo18579Ym = abstractC15622f4.mo18579Ym();
        boolean z = false;
        if (mo18579Ym instanceof VideoExpansionType.BusinessVideo) {
            VideoExpansionType.BusinessVideo businessVideo = (VideoExpansionType.BusinessVideo) mo18579Ym;
            Contact contact = businessVideo.getContact();
            if (businessVideo.getType() == VideoExpansionType.BusinessVideoType.LANDSCAPE) {
                z = true;
            }
            abstractC15622f4.mo18574tr(z);
            c15839c = businessVideo.getType().ordinal() != 0 ? this.f44153f.mo18077j(contact, businessVideo.getNormalizedNumber()) : this.f44153f.mo18085b(contact, businessVideo.getNormalizedNumber());
        } else if (mo18579Ym instanceof VideoExpansionType.P2pVideo) {
            abstractC15622f4.mo18574tr(false);
            VideoExpansionType.P2pVideo p2pVideo = (VideoExpansionType.P2pVideo) mo18579Ym;
            c15839c = new AbstractC15836l.C15839c(new PlayingBehaviour.C4747c(new PlayingBehaviour.Fallback(PlayingBehaviour.Fallback.Partly.LOOP_PARTLY, PlayingBehaviour.Fallback.LessThanPartly.DO_NOT_PLAY)), p2pVideo.getUrl(), null, false, null, p2pVideo.getVideoPlayerAnalyticsInfo(), 28);
        } else {
            c15839c = null;
        }
        if (c15839c != null) {
            AbstractC15622f abstractC15622f5 = (AbstractC15622f) this.f57683a;
            if (abstractC15622f5 != null) {
                abstractC15622f5.mo18575qr(c15839c, "FullScreenPopupVideo");
            }
            AbstractC15622f abstractC15622f6 = (AbstractC15622f) this.f57683a;
            if (!((abstractC15622f6 != null ? abstractC15622f6.mo18579Ym() : null) instanceof VideoExpansionType.P2pVideo) && (abstractC15622f3 = (AbstractC15622f) this.f57683a) != null && (mo18576p1 = abstractC15622f3.mo18576p1()) != null) {
                d.x2(new u0(mo18576p1, new C15623g(this, null)), this);
            }
        } else {
            AbstractC15622f abstractC15622f7 = (AbstractC15622f) this.f57683a;
            if (abstractC15622f7 != null) {
                abstractC15622f7.mo18581Kk();
            }
        }
        AbstractC15622f abstractC15622f8 = (AbstractC15622f) this.f57683a;
        VideoExpansionType videoExpansionType = null;
        if (abstractC15622f8 != null) {
            videoExpansionType = abstractC15622f8.mo18579Ym();
        }
        if (!(videoExpansionType instanceof VideoExpansionType.P2pVideo) || !this.f44154g.mo17881e(OnboardingType.PACSExpand) || (abstractC15622f2 = (AbstractC15622f) this.f57683a) == null) {
            return;
        }
        abstractC15622f2.mo18577gg();
    }
}
