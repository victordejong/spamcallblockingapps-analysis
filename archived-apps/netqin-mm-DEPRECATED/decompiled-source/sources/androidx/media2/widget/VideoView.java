package androidx.media2.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p012b.p042i.p044i.C0869a;
import p012b.p076s.p077a.AbstractC1154a;
import p012b.p076s.p118e.AbstractC1866t;
import p012b.p076s.p118e.AbstractC1878y;
import p012b.p076s.p118e.C1813c;
import p012b.p076s.p118e.C1828e;
import p012b.p076s.p118e.C1844i;
import p012b.p076s.p118e.C1849k;
import p012b.p076s.p118e.C1851m;
import p012b.p076s.p118e.C1854p;
import p012b.p076s.p118e.C1855q;
import p012b.p076s.p118e.C1857r;
import p012b.p076s.p118e.C1859s;
import p012b.p076s.p118e.SurfaceHolder$CallbackC1874w;
import p012b.p076s.p118e.TextureView$SurfaceTextureListenerC1876x;
import p012b.p120u.p121a.C1893b;
import p131c.p161d.p266c.p275i.p276a.AbstractFutureC5108l;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView.class */
public class VideoView extends C1855q {

    /* renamed from: r */
    public static final boolean f2401r = Log.isLoggable("VideoView", 3);

    /* renamed from: b */
    public AbstractC0482e f2402b;

    /* renamed from: c */
    public AbstractC1878y f2403c;

    /* renamed from: d */
    public AbstractC1878y f2404d;

    /* renamed from: e */
    public TextureView$SurfaceTextureListenerC1876x f2405e;

    /* renamed from: f */
    public SurfaceHolder$CallbackC1874w f2406f;

    /* renamed from: g */
    public C1844i f2407g;

    /* renamed from: h */
    public MediaControlView f2408h;

    /* renamed from: i */
    public MusicView f2409i;

    /* renamed from: j */
    public C1855q.C1856a f2410j;

    /* renamed from: k */
    public int f2411k;

    /* renamed from: l */
    public int f2412l;

    /* renamed from: m */
    public Map<SessionPlayer.TrackInfo, AbstractC1866t> f2413m;

    /* renamed from: n */
    public C1859s f2414n;

    /* renamed from: o */
    public SessionPlayer.TrackInfo f2415o;

    /* renamed from: p */
    public C1857r f2416p;

    /* renamed from: q */
    public final AbstractC1878y.AbstractC1879a f2417q;

    /* renamed from: androidx.media2.widget.VideoView$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$a.class */
    public class C0478a implements AbstractC1878y.AbstractC1879a {
        public C0478a() {
        }

        @Override // p012b.p076s.p118e.AbstractC1878y.AbstractC1879a
        /* renamed from: a */
        public void mo31841a(View view) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onSurfaceDestroyed(). " + view.toString());
            }
        }

        @Override // p012b.p076s.p118e.AbstractC1878y.AbstractC1879a
        /* renamed from: a */
        public void mo31840a(View view, int i, int i2) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onSurfaceCreated(), width/height: " + i + "/" + i2 + ", " + view.toString());
            }
            VideoView videoView = VideoView.this;
            if (view == videoView.f2404d && videoView.m31945a()) {
                VideoView videoView2 = VideoView.this;
                videoView2.f2404d.mo31842a(videoView2.f2407g);
            }
        }

        @Override // p012b.p076s.p118e.AbstractC1878y.AbstractC1879a
        /* renamed from: a */
        public void mo31839a(AbstractC1878y yVar) {
            if (yVar != VideoView.this.f2404d) {
                Log.w("VideoView", "onSurfaceTakeOverDone(). view is not targetView. ignore.: " + yVar);
                return;
            }
            if (VideoView.f2401r) {
                Log.d("VideoView", "onSurfaceTakeOverDone(). Now current view is: " + yVar);
            }
            AbstractC1878y yVar2 = VideoView.this.f2403c;
            if (yVar != yVar2) {
                ((View) yVar2).setVisibility(8);
                VideoView videoView = VideoView.this;
                videoView.f2403c = yVar;
                AbstractC0482e eVar = videoView.f2402b;
                if (eVar != null) {
                    eVar.m37639a(videoView, yVar.mo31843a());
                }
            }
        }

        @Override // p012b.p076s.p118e.AbstractC1878y.AbstractC1879a
        /* renamed from: b */
        public void mo31838b(View view, int i, int i2) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onSurfaceChanged(). width/height: " + i + "/" + i2 + ", " + view.toString());
            }
        }
    }

    /* renamed from: androidx.media2.widget.VideoView$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$b.class */
    public class C0479b implements C1859s.AbstractC1863d {
        public C0479b() {
        }

        @Override // p012b.p076s.p118e.C1859s.AbstractC1863d
        /* renamed from: a */
        public void mo31878a(AbstractC1866t tVar) {
            SessionPlayer.TrackInfo trackInfo = null;
            if (tVar == null) {
                VideoView videoView = VideoView.this;
                videoView.f2415o = null;
                videoView.f2416p.setVisibility(8);
                return;
            }
            Iterator<Map.Entry<SessionPlayer.TrackInfo, AbstractC1866t>> it = VideoView.this.f2413m.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry<SessionPlayer.TrackInfo, AbstractC1866t> next = it.next();
                if (next.getValue() == tVar) {
                    trackInfo = next.getKey();
                    break;
                }
            }
            if (trackInfo != null) {
                VideoView videoView2 = VideoView.this;
                videoView2.f2415o = trackInfo;
                videoView2.f2416p.setVisibility(0);
            }
        }
    }

    /* renamed from: androidx.media2.widget.VideoView$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$c.class */
    public class RunnableC0480c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractFutureC5108l f2420a;

        public RunnableC0480c(AbstractFutureC5108l lVar) {
            this.f2420a = lVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                int e = ((AbstractC1154a) this.f2420a.get()).mo34562e();
                if (e != 0) {
                    Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: " + e);
                }
            } catch (InterruptedException | ExecutionException e2) {
                Log.e("VideoView", "calling setSurface(null) was not successful.", e2);
            }
        }
    }

    /* renamed from: androidx.media2.widget.VideoView$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$d.class */
    public class C0481d implements C1893b.AbstractC1898d {
        public C0481d() {
        }

        @Override // p012b.p120u.p121a.C1893b.AbstractC1898d
        /* renamed from: a */
        public void mo31770a(C1893b bVar) {
            VideoView.this.f2409i.setBackgroundColor(bVar.m31787a(0));
        }
    }

    /* renamed from: androidx.media2.widget.VideoView$e */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$e.class */
    public interface AbstractC0482e {
        /* renamed from: a */
        void m37639a(View view, int i);
    }

    /* renamed from: androidx.media2.widget.VideoView$f */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$f.class */
    public class C0483f extends C1844i.AbstractC1846b {
        public C0483f() {
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31905a(C1844i iVar, int i) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onPlayerStateChanged(): state: " + i);
            }
            if (m37638b(iVar)) {
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31903a(C1844i iVar, MediaItem mediaItem) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onCurrentMediaItemChanged(): MediaItem: " + mediaItem);
            }
            if (!m37638b(iVar)) {
                VideoView.this.m37648a(mediaItem);
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31902a(C1844i iVar, MediaItem mediaItem, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            AbstractC1866t tVar;
            if (VideoView.f2401r) {
                Log.d("VideoView", "onSubtitleData(): TrackInfo: " + trackInfo + ", getCurrentPosition: " + iVar.m31920n() + ", getStartTimeUs(): " + subtitleData.m38203g() + ", diff: " + ((subtitleData.m38203g() / 1000) - iVar.m31920n()) + "ms, getDurationUs(): " + subtitleData.m38204f());
            }
            if (!m37638b(iVar) && trackInfo.equals(VideoView.this.f2415o) && (tVar = VideoView.this.f2413m.get(trackInfo)) != null) {
                tVar.m31871a(subtitleData);
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31901a(C1844i iVar, MediaItem mediaItem, VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> u;
            if (VideoView.f2401r) {
                Log.d("VideoView", "onVideoSizeChanged(): size: " + videoSize);
            }
            if (!m37638b(iVar)) {
                if (VideoView.this.f2411k == 0 && videoSize.m38197e() > 0 && videoSize.m38196f() > 0 && VideoView.this.m37642d() && (u = iVar.m31913u()) != null) {
                    VideoView.this.m37645a(iVar, u);
                }
                VideoView.this.f2405e.forceLayout();
                VideoView.this.f2406f.forceLayout();
                VideoView.this.requestLayout();
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31900a(C1844i iVar, SessionPlayer.TrackInfo trackInfo) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onTrackDeselected(): deselected track: " + trackInfo);
            }
            if (!m37638b(iVar) && VideoView.this.f2413m.get(trackInfo) != null) {
                VideoView.this.f2414n.m31888b(null);
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: a */
        public void mo31898a(C1844i iVar, List<SessionPlayer.TrackInfo> list) {
            if (VideoView.f2401r) {
                Log.d("VideoView", "onTrackInfoChanged(): tracks: " + list);
            }
            if (!m37638b(iVar)) {
                VideoView.this.m37645a(iVar, list);
                VideoView.this.m37648a(iVar.m31921m());
            }
        }

        @Override // p012b.p076s.p118e.C1844i.AbstractC1846b
        /* renamed from: b */
        public void mo31896b(C1844i iVar, SessionPlayer.TrackInfo trackInfo) {
            AbstractC1866t tVar;
            if (VideoView.f2401r) {
                Log.d("VideoView", "onTrackSelected(): selected track: " + trackInfo);
            }
            if (!m37638b(iVar) && (tVar = VideoView.this.f2413m.get(trackInfo)) != null) {
                VideoView.this.f2414n.m31888b(tVar);
            }
        }

        /* renamed from: b */
        public final boolean m37638b(C1844i iVar) {
            if (iVar == VideoView.this.f2407g) {
                return false;
            }
            if (!VideoView.f2401r) {
                return true;
            }
            try {
                String methodName = new Throwable().getStackTrace()[1].getMethodName();
                Log.w("VideoView", methodName + " should be ignored. player is already gone.");
                return true;
            } catch (IndexOutOfBoundsException e) {
                Log.w("VideoView", "A PlayerCallback should be ignored. player is already gone.");
                return true;
            }
        }
    }

    public VideoView(Context context) {
        this(context, null);
    }

    public VideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f2417q = new C0478a();
        m37649a(context, attributeSet);
    }

    /* renamed from: a */
    public final Drawable m37647a(MediaMetadata mediaMetadata, Drawable drawable) {
        Bitmap b = (mediaMetadata == null || !mediaMetadata.m38230a("android.media.metadata.ALBUM_ART")) ? null : mediaMetadata.m38229b("android.media.metadata.ALBUM_ART");
        if (b != null) {
            C1893b.m31786a(b).m31775a(new C0481d());
            drawable = new BitmapDrawable(getResources(), b);
        } else {
            this.f2409i.setBackgroundColor(getResources().getColor(C1849k.music_view_default_background));
        }
        return drawable;
    }

    /* renamed from: a */
    public final String m37646a(MediaMetadata mediaMetadata, String str, String str2) {
        String d = mediaMetadata == null ? str2 : mediaMetadata.m38227d(str);
        if (d == null) {
            d = str2;
        }
        return d;
    }

    /* renamed from: a */
    public final void m37649a(Context context, AttributeSet attributeSet) {
        this.f2415o = null;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f2405e = new TextureView$SurfaceTextureListenerC1876x(context);
        this.f2406f = new SurfaceHolder$CallbackC1874w(context);
        this.f2405e.m31845a(this.f2417q);
        this.f2406f.m31847a(this.f2417q);
        addView(this.f2405e);
        addView(this.f2406f);
        C1855q.C1856a aVar = new C1855q.C1856a();
        this.f2410j = aVar;
        aVar.f7373a = true;
        C1857r rVar = new C1857r(context);
        this.f2416p = rVar;
        rVar.setBackgroundColor(0);
        addView(this.f2416p, this.f2410j);
        C1859s sVar = new C1859s(context, null, new C0479b());
        this.f2414n = sVar;
        sVar.m31891a(new C1813c(context));
        this.f2414n.m31891a(new C1828e(context));
        this.f2414n.m31892a(this.f2416p);
        MusicView musicView = new MusicView(context);
        this.f2409i = musicView;
        musicView.setVisibility(8);
        addView(this.f2409i, this.f2410j);
        if (attributeSet == null || attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "enableControlView", true)) {
            MediaControlView mediaControlView = new MediaControlView(context);
            this.f2408h = mediaControlView;
            mediaControlView.setAttachedToVideoView(true);
            addView(this.f2408h, this.f2410j);
        }
        int attributeIntValue = attributeSet == null ? 0 : attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "viewType", 0);
        if (attributeIntValue == 0) {
            if (f2401r) {
                Log.d("VideoView", "viewType attribute is surfaceView.");
            }
            this.f2405e.setVisibility(8);
            this.f2406f.setVisibility(0);
            this.f2403c = this.f2406f;
        } else if (attributeIntValue == 1) {
            if (f2401r) {
                Log.d("VideoView", "viewType attribute is textureView.");
            }
            this.f2405e.setVisibility(0);
            this.f2406f.setVisibility(8);
            this.f2403c = this.f2405e;
        }
        this.f2404d = this.f2403c;
    }

    /* renamed from: a */
    public void m37648a(MediaItem mediaItem) {
        if (mediaItem != null && m37643c()) {
            this.f2409i.setVisibility(0);
            MediaMetadata i = mediaItem.m38232i();
            Resources resources = getResources();
            Drawable a = m37647a(i, resources.getDrawable(C1851m.ic_default_album_image));
            String a2 = m37646a(i, "android.media.metadata.TITLE", resources.getString(C1854p.mcv2_music_title_unknown_text));
            String a3 = m37646a(i, "android.media.metadata.ARTIST", resources.getString(C1854p.mcv2_music_artist_unknown_text));
            this.f2409i.m37653a(a);
            this.f2409i.m37650b(a2);
            this.f2409i.m37651a(a3);
            return;
        }
        this.f2409i.setVisibility(8);
        this.f2409i.m37653a((Drawable) null);
        this.f2409i.m37650b(null);
        this.f2409i.m37651a((String) null);
    }

    /* renamed from: a */
    public void m37645a(C1844i iVar, List<SessionPlayer.TrackInfo> list) {
        AbstractC1866t a;
        this.f2413m = new LinkedHashMap();
        this.f2411k = 0;
        this.f2412l = 0;
        for (int i = 0; i < list.size(); i++) {
            SessionPlayer.TrackInfo trackInfo = list.get(i);
            int k = list.get(i).m38206k();
            if (k == 1) {
                this.f2411k++;
            } else if (k == 2) {
                this.f2412l++;
            } else if (k == 4 && (a = this.f2414n.m31894a(trackInfo.m38210g())) != null) {
                this.f2413m.put(trackInfo, a);
            }
        }
        this.f2415o = iVar.m31937a(4);
    }

    @Override // p012b.p076s.p118e.AbstractC1843h
    /* renamed from: a */
    public void mo31944a(boolean z) {
        super.mo31944a(z);
        C1844i iVar = this.f2407g;
        if (iVar != null) {
            if (z) {
                this.f2404d.mo31842a(iVar);
            } else if (iVar == null || iVar.m31911w()) {
                Log.w("VideoView", "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected.");
            } else {
                m37641e();
            }
        }
    }

    /* renamed from: b */
    public boolean m37644b() {
        if (this.f2411k > 0) {
            return true;
        }
        VideoSize v = this.f2407g.m31912v();
        if (v.m38197e() <= 0 || v.m38196f() <= 0) {
            return false;
        }
        Log.w("VideoView", "video track count is zero, but it renders video. size: " + v.m38196f() + "/" + v.m38197e());
        return true;
    }

    /* renamed from: c */
    public boolean m37643c() {
        return !m37644b() && this.f2412l > 0;
    }

    /* renamed from: d */
    public boolean m37642d() {
        C1844i iVar = this.f2407g;
        return (iVar == null || iVar.m31916r() == 3 || this.f2407g.m31916r() == 0) ? false : true;
    }

    /* renamed from: e */
    public void m37641e() {
        try {
            int e = ((AbstractC1154a) this.f2407g.m31935a((Surface) null).get(100L, TimeUnit.MILLISECONDS)).mo34562e();
            if (e != 0) {
                Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: " + e);
            }
        } catch (InterruptedException | ExecutionException | TimeoutException e2) {
            Log.e("VideoView", "calling setSurface(null) was not successful.", e2);
        }
    }

    /* renamed from: f */
    public void m37640f() {
        AbstractFutureC5108l<? extends AbstractC1154a> a = this.f2407g.m31935a((Surface) null);
        a.mo7696a(new RunnableC0480c(a), C0869a.m35685c(getContext()));
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.VideoView";
    }

    public MediaControlView getMediaControlView() {
        return this.f2408h;
    }

    public int getViewType() {
        return this.f2403c.mo31843a();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        C1844i iVar = this.f2407g;
        if (iVar != null) {
            iVar.m31939a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C1844i iVar = this.f2407g;
        if (iVar != null) {
            iVar.m31925i();
        }
    }

    public void setMediaController(MediaController mediaController) {
        if (mediaController != null) {
            C1844i iVar = this.f2407g;
            if (iVar != null) {
                iVar.m31925i();
            }
            this.f2407g = new C1844i(mediaController, C0869a.m35685c(getContext()), new C0483f());
            if (isAttachedToWindow()) {
                this.f2407g.m31939a();
            }
            if (m31945a()) {
                this.f2404d.mo31842a(this.f2407g);
            } else {
                m37640f();
            }
            MediaControlView mediaControlView = this.f2408h;
            if (mediaControlView != null) {
                mediaControlView.setMediaControllerInternal(mediaController);
                return;
            }
            return;
        }
        throw new NullPointerException("controller must not be null");
    }

    public void setOnViewTypeChangedListener(AbstractC0482e eVar) {
        this.f2402b = eVar;
    }

    public void setPlayer(SessionPlayer sessionPlayer) {
        if (sessionPlayer != null) {
            C1844i iVar = this.f2407g;
            if (iVar != null) {
                iVar.m31925i();
            }
            this.f2407g = new C1844i(sessionPlayer, C0869a.m35685c(getContext()), new C0483f());
            if (isAttachedToWindow()) {
                this.f2407g.m31939a();
            }
            if (m31945a()) {
                this.f2404d.mo31842a(this.f2407g);
            } else {
                m37640f();
            }
            MediaControlView mediaControlView = this.f2408h;
            if (mediaControlView != null) {
                mediaControlView.setPlayerInternal(sessionPlayer);
                return;
            }
            return;
        }
        throw new NullPointerException("player must not be null");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v3, types: [b.s.e.x] */
    public void setViewType(int i) {
        SurfaceHolder$CallbackC1874w wVar;
        if (i == this.f2404d.mo31843a()) {
            Log.d("VideoView", "setViewType with the same type (" + i + ") is ignored.");
            return;
        }
        if (i == 1) {
            Log.d("VideoView", "switching to TextureView");
            wVar = this.f2405e;
        } else if (i == 0) {
            Log.d("VideoView", "switching to SurfaceView");
            wVar = this.f2406f;
        } else {
            throw new IllegalArgumentException("Unknown view type: " + i);
        }
        this.f2404d = wVar;
        if (m31945a()) {
            wVar.mo31842a(this.f2407g);
        }
        wVar.setVisibility(0);
        requestLayout();
    }
}
