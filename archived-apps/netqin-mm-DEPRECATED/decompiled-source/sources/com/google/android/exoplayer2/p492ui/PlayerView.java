package com.google.android.exoplayer2.p492ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import android.graphics.RectF;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import com.google.android.exoplayer2.metadata.id3.ApicFrame;
import com.google.android.exoplayer2.p492ui.AspectRatioFrameLayout;
import com.google.android.exoplayer2.p492ui.PlayerControlView;
import com.google.android.exoplayer2.p492ui.spherical.SphericalGLSurfaceView;
import com.google.android.exoplayer2.source.TrackGroupArray;
import com.google.android.exoplayer2.video.VideoDecoderGLSurfaceView;
import java.util.ArrayList;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
import p012b.p042i.p044i.C0869a;
import p131c.p161d.p170b.p188c.AbstractC2939i0;
import p131c.p161d.p170b.p188c.AbstractC2941j0;
import p131c.p161d.p170b.p188c.AbstractC2965r0;
import p131c.p161d.p170b.p188c.AbstractC2969s;
import p131c.p161d.p170b.p188c.C2910h0;
import p131c.p161d.p170b.p188c.C2947k0;
import p131c.p161d.p170b.p188c.p196c1.AbstractC2763c;
import p131c.p161d.p170b.p188c.p198d1.AbstractC2780f;
import p131c.p161d.p170b.p188c.p198d1.C2783g;
import p131c.p161d.p170b.p188c.p199e1.C2793e;
import p131c.p161d.p170b.p188c.p199e1.C2794f;
import p131c.p161d.p170b.p188c.p199e1.C2795g;
import p131c.p161d.p170b.p188c.p199e1.C2797i;
import p131c.p161d.p170b.p188c.p199e1.C2798j;
import p131c.p161d.p170b.p188c.p199e1.C2799k;
import p131c.p161d.p170b.p188c.p199e1.p200o.AbstractC2812g;
import p131c.p161d.p170b.p188c.p203g1.AbstractC2887j;
import p131c.p161d.p170b.p188c.p203g1.C2877e;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2923l;
import p131c.p161d.p170b.p188c.p204h1.AbstractC2929p;
/* renamed from: com.google.android.exoplayer2.ui.PlayerView */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView.class */
public class PlayerView extends FrameLayout {

    /* renamed from: a */
    public final View$OnLayoutChangeListenerC7194b f22461a;

    /* renamed from: b */
    public final AspectRatioFrameLayout f22462b;

    /* renamed from: c */
    public final View f22463c;

    /* renamed from: d */
    public final View f22464d;

    /* renamed from: e */
    public final ImageView f22465e;

    /* renamed from: f */
    public final SubtitleView f22466f;

    /* renamed from: g */
    public final View f22467g;

    /* renamed from: h */
    public final TextView f22468h;

    /* renamed from: i */
    public final PlayerControlView f22469i;

    /* renamed from: j */
    public final FrameLayout f22470j;

    /* renamed from: k */
    public final FrameLayout f22471k;

    /* renamed from: l */
    public AbstractC2941j0 f22472l;

    /* renamed from: m */
    public boolean f22473m;

    /* renamed from: n */
    public PlayerControlView.AbstractC7192d f22474n;

    /* renamed from: o */
    public boolean f22475o;

    /* renamed from: p */
    public Drawable f22476p;

    /* renamed from: q */
    public int f22477q;

    /* renamed from: r */
    public boolean f22478r;

    /* renamed from: s */
    public AbstractC2887j<? super ExoPlaybackException> f22479s;

    /* renamed from: t */
    public CharSequence f22480t;

    /* renamed from: u */
    public int f22481u;

    /* renamed from: v */
    public boolean f22482v;

    /* renamed from: w */
    public boolean f22483w;

    /* renamed from: x */
    public boolean f22484x;

    /* renamed from: y */
    public int f22485y;

    /* renamed from: z */
    public boolean f22486z;

    /* renamed from: com.google.android.exoplayer2.ui.PlayerView$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/ui/PlayerView$b.class */
    public final class View$OnLayoutChangeListenerC7194b implements AbstractC2941j0.AbstractC2943b, AbstractC2763c, AbstractC2929p, View.OnLayoutChangeListener, AbstractC2812g, PlayerControlView.AbstractC7192d {
        public View$OnLayoutChangeListenerC7194b() {
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18324a() {
            C2947k0.m28422a(this);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18323a(int i) {
            C2947k0.m28421a(this, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: a */
        public /* synthetic */ void mo18322a(boolean z) {
            C2947k0.m28411c(this, z);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: b */
        public void mo18321b(int i) {
            if (PlayerView.this.m18337d() && PlayerView.this.f22483w) {
                PlayerView.this.m18340c();
            }
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: b */
        public /* synthetic */ void mo18320b(boolean z) {
            C2947k0.m28415a(this, z);
        }

        @Override // com.google.android.exoplayer2.p492ui.PlayerControlView.AbstractC7192d
        /* renamed from: c */
        public void mo18319c(int i) {
            PlayerView.this.m18328i();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        /* renamed from: d */
        public /* synthetic */ void mo18318d(int i) {
            C2947k0.m28412c(this, i);
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            PlayerView.m18344b((TextureView) view, PlayerView.this.f22485y);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onLoadingChanged(boolean z) {
            C2947k0.m28413b(this, z);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onPlaybackParametersChanged(C2910h0 h0Var) {
            C2947k0.m28420a(this, h0Var);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onPlayerError(ExoPlaybackException exoPlaybackException) {
            C2947k0.m28417a(this, exoPlaybackException);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public void onPlayerStateChanged(boolean z, int i) {
            PlayerView.this.m18329h();
            PlayerView.this.m18327j();
            if (!PlayerView.this.m18337d() || !PlayerView.this.f22483w) {
                PlayerView.this.m18347a(false);
            } else {
                PlayerView.this.m18340c();
            }
        }

        @Override // p131c.p161d.p170b.p188c.p199e1.p200o.AbstractC2812g
        public boolean onSingleTapUp(MotionEvent motionEvent) {
            return PlayerView.this.m18331g();
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public /* synthetic */ void onTimelineChanged(AbstractC2965r0 r0Var, int i) {
            C2947k0.m28419a(this, r0Var, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        @Deprecated
        public /* synthetic */ void onTimelineChanged(AbstractC2965r0 r0Var, Object obj, int i) {
            C2947k0.m28418a(this, r0Var, obj, i);
        }

        @Override // p131c.p161d.p170b.p188c.AbstractC2941j0.AbstractC2943b
        public void onTracksChanged(TrackGroupArray trackGroupArray, C2783g gVar) {
            PlayerView.this.m18338c(false);
        }
    }

    public PlayerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public PlayerView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        int i2;
        boolean z;
        int i3;
        boolean z2;
        boolean z3;
        int i4;
        boolean z4;
        int i5;
        boolean z5;
        int i6;
        boolean z6;
        int i7;
        this.f22461a = new View$OnLayoutChangeListenerC7194b();
        if (isInEditMode()) {
            this.f22462b = null;
            this.f22463c = null;
            this.f22464d = null;
            this.f22465e = null;
            this.f22466f = null;
            this.f22467g = null;
            this.f22468h = null;
            this.f22469i = null;
            this.f22470j = null;
            this.f22471k = null;
            ImageView imageView = new ImageView(context);
            if (C2885h0.f10477a >= 23) {
                m18345b(getResources(), imageView);
            } else {
                m18355a(getResources(), imageView);
            }
            addView(imageView);
            return;
        }
        int i8 = C2797i.exo_player_view;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, C2799k.PlayerView, 0, 0);
            try {
                z6 = obtainStyledAttributes.hasValue(C2799k.PlayerView_shutter_background_color);
                i6 = obtainStyledAttributes.getColor(C2799k.PlayerView_shutter_background_color, 0);
                i8 = obtainStyledAttributes.getResourceId(C2799k.PlayerView_player_layout_id, i8);
                z5 = obtainStyledAttributes.getBoolean(C2799k.PlayerView_use_artwork, true);
                i2 = obtainStyledAttributes.getResourceId(C2799k.PlayerView_default_artwork, 0);
                z4 = obtainStyledAttributes.getBoolean(C2799k.PlayerView_use_controller, true);
                i5 = obtainStyledAttributes.getInt(C2799k.PlayerView_surface_type, 1);
                i4 = obtainStyledAttributes.getInt(C2799k.PlayerView_resize_mode, 0);
                i7 = obtainStyledAttributes.getInt(C2799k.PlayerView_show_timeout, 5000);
                z3 = obtainStyledAttributes.getBoolean(C2799k.PlayerView_hide_on_touch, true);
                z2 = obtainStyledAttributes.getBoolean(C2799k.PlayerView_auto_show, true);
                i3 = obtainStyledAttributes.getInteger(C2799k.PlayerView_show_buffering, 0);
                this.f22478r = obtainStyledAttributes.getBoolean(C2799k.PlayerView_keep_content_on_player_reset, this.f22478r);
                z = obtainStyledAttributes.getBoolean(C2799k.PlayerView_hide_during_ads, true);
            } finally {
                obtainStyledAttributes.recycle();
            }
        } else {
            i4 = 0;
            z = true;
            i3 = 0;
            z3 = true;
            z2 = true;
            z6 = false;
            i6 = 0;
            z5 = true;
            i2 = 0;
            z4 = true;
            i5 = 1;
            i7 = 5000;
        }
        LayoutInflater.from(context).inflate(i8, this);
        setDescendantFocusability(262144);
        AspectRatioFrameLayout aspectRatioFrameLayout = (AspectRatioFrameLayout) findViewById(C2795g.exo_content_frame);
        this.f22462b = aspectRatioFrameLayout;
        if (aspectRatioFrameLayout != null) {
            m18350a(aspectRatioFrameLayout, i4);
        }
        View findViewById = findViewById(C2795g.exo_shutter);
        this.f22463c = findViewById;
        if (findViewById != null && z6) {
            findViewById.setBackgroundColor(i6);
        }
        if (this.f22462b == null || i5 == 0) {
            this.f22464d = null;
        } else {
            ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
            if (i5 == 2) {
                this.f22464d = new TextureView(context);
            } else if (i5 == 3) {
                SphericalGLSurfaceView sphericalGLSurfaceView = new SphericalGLSurfaceView(context);
                sphericalGLSurfaceView.setSingleTapListener(this.f22461a);
                this.f22464d = sphericalGLSurfaceView;
            } else if (i5 != 4) {
                this.f22464d = new SurfaceView(context);
            } else {
                this.f22464d = new VideoDecoderGLSurfaceView(context);
            }
            this.f22464d.setLayoutParams(layoutParams);
            this.f22462b.addView(this.f22464d, 0);
        }
        this.f22470j = (FrameLayout) findViewById(C2795g.exo_ad_overlay);
        this.f22471k = (FrameLayout) findViewById(C2795g.exo_overlay);
        ImageView imageView2 = (ImageView) findViewById(C2795g.exo_artwork);
        this.f22465e = imageView2;
        this.f22475o = z5 && imageView2 != null;
        if (i2 != 0) {
            this.f22476p = C0869a.m35684c(getContext(), i2);
        }
        SubtitleView subtitleView = (SubtitleView) findViewById(C2795g.exo_subtitles);
        this.f22466f = subtitleView;
        if (subtitleView != null) {
            subtitleView.m18312b();
            this.f22466f.m18311c();
        }
        View findViewById2 = findViewById(C2795g.exo_buffering);
        this.f22467g = findViewById2;
        if (findViewById2 != null) {
            findViewById2.setVisibility(8);
        }
        this.f22477q = i3;
        TextView textView = (TextView) findViewById(C2795g.exo_error_message);
        this.f22468h = textView;
        if (textView != null) {
            textView.setVisibility(8);
        }
        PlayerControlView playerControlView = (PlayerControlView) findViewById(C2795g.exo_controller);
        View findViewById3 = findViewById(C2795g.exo_controller_placeholder);
        if (playerControlView != null) {
            this.f22469i = playerControlView;
        } else if (findViewById3 != null) {
            PlayerControlView playerControlView2 = new PlayerControlView(context, null, 0, attributeSet);
            this.f22469i = playerControlView2;
            playerControlView2.setId(C2795g.exo_controller);
            this.f22469i.setLayoutParams(findViewById3.getLayoutParams());
            ViewGroup viewGroup = (ViewGroup) findViewById3.getParent();
            int indexOfChild = viewGroup.indexOfChild(findViewById3);
            viewGroup.removeView(findViewById3);
            viewGroup.addView(this.f22469i, indexOfChild);
        } else {
            this.f22469i = null;
        }
        this.f22481u = this.f22469i == null ? 0 : i7;
        this.f22484x = z3;
        this.f22482v = z2;
        this.f22483w = z;
        boolean z7 = false;
        if (z4) {
            z7 = false;
            if (this.f22469i != null) {
                z7 = true;
            }
        }
        this.f22473m = z7;
        m18340c();
        m18328i();
        PlayerControlView playerControlView3 = this.f22469i;
        if (playerControlView3 != null) {
            playerControlView3.m18409a(this.f22461a);
        }
    }

    /* renamed from: a */
    public static void m18355a(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C2794f.exo_edit_mode_logo));
        imageView.setBackgroundColor(resources.getColor(C2793e.exo_edit_mode_background_color));
    }

    /* renamed from: a */
    public static void m18350a(AspectRatioFrameLayout aspectRatioFrameLayout, int i) {
        aspectRatioFrameLayout.setResizeMode(i);
    }

    /* renamed from: b */
    public static void m18345b(Resources resources, ImageView imageView) {
        imageView.setImageDrawable(resources.getDrawable(C2794f.exo_edit_mode_logo, null));
        imageView.setBackgroundColor(resources.getColor(C2793e.exo_edit_mode_background_color, null));
    }

    /* renamed from: b */
    public static void m18344b(TextureView textureView, int i) {
        Matrix matrix = new Matrix();
        float width = textureView.getWidth();
        float height = textureView.getHeight();
        if (!(width == 0.0f || height == 0.0f || i == 0)) {
            float f = width / 2.0f;
            float f2 = height / 2.0f;
            matrix.postRotate(i, f, f2);
            RectF rectF = new RectF(0.0f, 0.0f, width, height);
            RectF rectF2 = new RectF();
            matrix.mapRect(rectF2, rectF);
            matrix.postScale(width / rectF2.width(), height / rectF2.height(), f, f2);
        }
        textureView.setTransform(matrix);
    }

    /* renamed from: a */
    public final void m18358a() {
        View view = this.f22463c;
        if (view != null) {
            view.setVisibility(0);
        }
    }

    /* renamed from: a */
    public void m18357a(float f, AspectRatioFrameLayout aspectRatioFrameLayout, View view) {
        if (aspectRatioFrameLayout != null) {
            if (view instanceof SphericalGLSurfaceView) {
                f = 0.0f;
            }
            aspectRatioFrameLayout.setAspectRatio(f);
        }
    }

    /* renamed from: a */
    public final void m18347a(boolean z) {
        if ((!m18337d() || !this.f22483w) && m18325l()) {
            boolean z2 = this.f22469i.m18396c() && this.f22469i.getShowTimeoutMs() <= 0;
            boolean e = m18335e();
            if (z || z2 || e) {
                m18341b(e);
            }
        }
    }

    /* renamed from: a */
    public final boolean m18356a(int i) {
        return i == 19 || i == 270 || i == 22 || i == 271 || i == 20 || i == 269 || i == 21 || i == 268 || i == 23;
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: a */
    public final boolean m18354a(Drawable drawable) {
        if (drawable == null) {
            return false;
        }
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        if (intrinsicWidth <= 0 || intrinsicHeight <= 0) {
            return false;
        }
        m18357a(intrinsicWidth / intrinsicHeight, this.f22462b, this.f22465e);
        this.f22465e.setImageDrawable(drawable);
        this.f22465e.setVisibility(0);
        return true;
    }

    /* renamed from: a */
    public boolean m18353a(KeyEvent keyEvent) {
        return m18325l() && this.f22469i.m18414a(keyEvent);
    }

    @RequiresNonNull({"artworkView"})
    /* renamed from: a */
    public final boolean m18351a(Metadata metadata) {
        int i;
        byte[] bArr;
        int i2 = 0;
        int i3 = -1;
        boolean z = false;
        while (true) {
            z = z;
            if (i2 >= metadata.m18520a()) {
                break;
            }
            Metadata.Entry a = metadata.m18519a(i2);
            if (a instanceof ApicFrame) {
                ApicFrame apicFrame = (ApicFrame) a;
                bArr = apicFrame.f22163e;
                i = apicFrame.f22162d;
            } else {
                i3 = i3;
                z = z;
                if (a instanceof PictureFrame) {
                    PictureFrame pictureFrame = (PictureFrame) a;
                    bArr = pictureFrame.f22148h;
                    i = pictureFrame.f22141a;
                } else {
                    continue;
                    i2++;
                }
            }
            if (i3 != -1) {
                i3 = i3;
                z = z;
                if (i != 3) {
                    continue;
                    i2++;
                }
            }
            z = m18354a(new BitmapDrawable(getResources(), BitmapFactory.decodeByteArray(bArr, 0, bArr.length)));
            if (i == 3) {
                break;
            }
            i3 = i;
            i2++;
        }
        return z;
    }

    /* renamed from: b */
    public final void m18346b() {
        ImageView imageView = this.f22465e;
        if (imageView != null) {
            imageView.setImageResource(17170445);
            this.f22465e.setVisibility(4);
        }
    }

    /* renamed from: b */
    public final void m18341b(boolean z) {
        if (m18325l()) {
            this.f22469i.setShowTimeoutMs(z ? 0 : this.f22481u);
            this.f22469i.m18386f();
        }
    }

    /* renamed from: c */
    public void m18340c() {
        PlayerControlView playerControlView = this.f22469i;
        if (playerControlView != null) {
            playerControlView.m18417a();
        }
    }

    /* renamed from: c */
    public final void m18338c(boolean z) {
        AbstractC2941j0 j0Var = this.f22472l;
        if (j0Var != null && !j0Var.mo27492Y().m18480a()) {
            if (z && !this.f22478r) {
                m18358a();
            }
            C2783g f = j0Var.mo27454f();
            for (int i = 0; i < f.f10133a; i++) {
                if (j0Var.mo27466b(i) == 2 && f.m29019a(i) != null) {
                    m18346b();
                    return;
                }
            }
            m18358a();
            if (m18326k()) {
                for (int i2 = 0; i2 < f.f10133a; i2++) {
                    AbstractC2780f a = f.m29019a(i2);
                    if (a != null) {
                        for (int i3 = 0; i3 < a.length(); i3++) {
                            Metadata metadata = a.mo29028a(i3).f21950g;
                            if (metadata != null && m18351a(metadata)) {
                                return;
                            }
                        }
                        continue;
                    }
                }
                if (m18354a(this.f22476p)) {
                    return;
                }
            }
            m18346b();
        } else if (!this.f22478r) {
            m18346b();
            m18358a();
        }
    }

    /* renamed from: d */
    public final boolean m18337d() {
        AbstractC2941j0 j0Var = this.f22472l;
        return j0Var != null && j0Var.mo27497Q() && this.f22472l.mo27496R();
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(KeyEvent keyEvent) {
        boolean z;
        AbstractC2941j0 j0Var = this.f22472l;
        if (j0Var != null && j0Var.mo27497Q()) {
            return super.dispatchKeyEvent(keyEvent);
        }
        boolean a = m18356a(keyEvent.getKeyCode());
        if (a && m18325l() && !this.f22469i.m18396c()) {
            m18347a(true);
        } else if (m18353a(keyEvent) || super.dispatchKeyEvent(keyEvent)) {
            m18347a(true);
        } else {
            z = false;
            if (a) {
                z = false;
                if (m18325l()) {
                    m18347a(true);
                    z = false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    /* renamed from: e */
    public final boolean m18335e() {
        boolean z;
        AbstractC2941j0 j0Var = this.f22472l;
        if (j0Var == null) {
            return true;
        }
        int P = j0Var.mo27498P();
        if (this.f22482v) {
            z = true;
            if (P != 1) {
                z = true;
                if (P != 4) {
                    if (!this.f22472l.mo27496R()) {
                        z = true;
                    }
                }
            }
            return z;
        }
        z = false;
        return z;
    }

    /* renamed from: f */
    public void m18333f() {
        m18341b(m18335e());
    }

    /* renamed from: g */
    public final boolean m18331g() {
        if (!m18325l() || this.f22472l == null) {
            return false;
        }
        if (!this.f22469i.m18396c()) {
            m18347a(true);
            return true;
        } else if (!this.f22484x) {
            return true;
        } else {
            this.f22469i.m18417a();
            return true;
        }
    }

    public View[] getAdOverlayViews() {
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.f22471k;
        if (frameLayout != null) {
            arrayList.add(frameLayout);
        }
        PlayerControlView playerControlView = this.f22469i;
        if (playerControlView != null) {
            arrayList.add(playerControlView);
        }
        return (View[]) arrayList.toArray(new View[0]);
    }

    public ViewGroup getAdViewGroup() {
        FrameLayout frameLayout = this.f22470j;
        C2877e.m28736a(frameLayout, "exo_ad_overlay must be present for ad playback");
        return frameLayout;
    }

    public boolean getControllerAutoShow() {
        return this.f22482v;
    }

    public boolean getControllerHideOnTouch() {
        return this.f22484x;
    }

    public int getControllerShowTimeoutMs() {
        return this.f22481u;
    }

    public Drawable getDefaultArtwork() {
        return this.f22476p;
    }

    public FrameLayout getOverlayFrameLayout() {
        return this.f22471k;
    }

    public AbstractC2941j0 getPlayer() {
        return this.f22472l;
    }

    public int getResizeMode() {
        C2877e.m28732b(this.f22462b);
        return this.f22462b.getResizeMode();
    }

    public SubtitleView getSubtitleView() {
        return this.f22466f;
    }

    public boolean getUseArtwork() {
        return this.f22475o;
    }

    public boolean getUseController() {
        return this.f22473m;
    }

    public View getVideoSurfaceView() {
        return this.f22464d;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0052  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0058  */
    /* renamed from: h */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m18329h() {
        /*
            r3 = this;
            r0 = r3
            android.view.View r0 = r0.f22467g
            if (r0 == 0) goto L_0x0062
            r0 = r3
            c.d.b.c.j0 r0 = r0.f22472l
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0045
            r0 = r4
            int r0 = r0.mo27498P()
            r1 = 2
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f22477q
            r7 = r0
            r0 = r5
            r8 = r0
            r0 = r7
            r1 = 2
            if (r0 == r1) goto L_0x0048
            r0 = r7
            r1 = 1
            if (r0 != r1) goto L_0x0045
            r0 = r3
            c.d.b.c.j0 r0 = r0.f22472l
            boolean r0 = r0.mo27496R()
            if (r0 == 0) goto L_0x0045
            r0 = r5
            r8 = r0
            goto L_0x0048
        L_0x0045:
            r0 = 0
            r8 = r0
        L_0x0048:
            r0 = r3
            android.view.View r0 = r0.f22467g
            r4 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0058
            r0 = r6
            r8 = r0
            goto L_0x005c
        L_0x0058:
            r0 = 8
            r8 = r0
        L_0x005c:
            r0 = r4
            r1 = r8
            r0.setVisibility(r1)
        L_0x0062:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.p492ui.PlayerView.m18329h():void");
    }

    /* renamed from: i */
    public final void m18328i() {
        PlayerControlView playerControlView = this.f22469i;
        String str = null;
        if (playerControlView == null || !this.f22473m) {
            setContentDescription(null);
        } else if (playerControlView.getVisibility() == 0) {
            if (this.f22484x) {
                str = getResources().getString(C2798j.exo_controls_hide);
            }
            setContentDescription(str);
        } else {
            setContentDescription(getResources().getString(C2798j.exo_controls_show));
        }
    }

    /* renamed from: j */
    public final void m18327j() {
        AbstractC2887j<? super ExoPlaybackException> jVar;
        TextView textView = this.f22468h;
        if (textView != null) {
            CharSequence charSequence = this.f22480t;
            if (charSequence != null) {
                textView.setText(charSequence);
                this.f22468h.setVisibility(0);
                return;
            }
            AbstractC2941j0 j0Var = this.f22472l;
            ExoPlaybackException S = j0Var != null ? j0Var.mo27495S() : null;
            if (S == null || (jVar = this.f22479s) == null) {
                this.f22468h.setVisibility(8);
                return;
            }
            this.f22468h.setText((CharSequence) jVar.m28622a(S).second);
            this.f22468h.setVisibility(0);
        }
    }

    @EnsuresNonNullIf(expression = {"artworkView"}, result = true)
    /* renamed from: k */
    public final boolean m18326k() {
        if (!this.f22475o) {
            return false;
        }
        C2877e.m28732b(this.f22465e);
        return true;
    }

    @EnsuresNonNullIf(expression = {"controller"}, result = true)
    /* renamed from: l */
    public final boolean m18325l() {
        if (!this.f22473m) {
            return false;
        }
        C2877e.m28732b(this.f22469i);
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!m18325l() || this.f22472l == null) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            this.f22486z = true;
            return true;
        } else if (action != 1 || !this.f22486z) {
            return false;
        } else {
            this.f22486z = false;
            performClick();
            return true;
        }
    }

    @Override // android.view.View
    public boolean onTrackballEvent(MotionEvent motionEvent) {
        if (!m18325l() || this.f22472l == null) {
            return false;
        }
        m18347a(true);
        return true;
    }

    @Override // android.view.View
    public boolean performClick() {
        super.performClick();
        return m18331g();
    }

    public void setAspectRatioListener(AspectRatioFrameLayout.AbstractC7184b bVar) {
        C2877e.m28732b(this.f22462b);
        this.f22462b.setAspectRatioListener(bVar);
    }

    public void setControlDispatcher(AbstractC2969s sVar) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setControlDispatcher(sVar);
    }

    public void setControllerAutoShow(boolean z) {
        this.f22482v = z;
    }

    public void setControllerHideDuringAds(boolean z) {
        this.f22483w = z;
    }

    public void setControllerHideOnTouch(boolean z) {
        C2877e.m28732b(this.f22469i);
        this.f22484x = z;
        m18328i();
    }

    public void setControllerShowTimeoutMs(int i) {
        C2877e.m28732b(this.f22469i);
        this.f22481u = i;
        if (this.f22469i.m18396c()) {
            m18333f();
        }
    }

    public void setControllerVisibilityListener(PlayerControlView.AbstractC7192d dVar) {
        C2877e.m28732b(this.f22469i);
        PlayerControlView.AbstractC7192d dVar2 = this.f22474n;
        if (dVar2 != dVar) {
            if (dVar2 != null) {
                this.f22469i.m18399b(dVar2);
            }
            this.f22474n = dVar;
            if (dVar != null) {
                this.f22469i.m18409a(dVar);
            }
        }
    }

    public void setCustomErrorMessage(CharSequence charSequence) {
        C2877e.m28731b(this.f22468h != null);
        this.f22480t = charSequence;
        m18327j();
    }

    @Deprecated
    public void setDefaultArtwork(Bitmap bitmap) {
        setDefaultArtwork(bitmap == null ? null : new BitmapDrawable(getResources(), bitmap));
    }

    public void setDefaultArtwork(Drawable drawable) {
        if (this.f22476p != drawable) {
            this.f22476p = drawable;
            m18338c(false);
        }
    }

    public void setErrorMessageProvider(AbstractC2887j<? super ExoPlaybackException> jVar) {
        if (this.f22479s != jVar) {
            this.f22479s = jVar;
            m18327j();
        }
    }

    public void setFastForwardIncrementMs(int i) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setFastForwardIncrementMs(i);
    }

    public void setKeepContentOnPlayerReset(boolean z) {
        if (this.f22478r != z) {
            this.f22478r = z;
            m18338c(false);
        }
    }

    public void setPlaybackPreparer(AbstractC2939i0 i0Var) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setPlaybackPreparer(i0Var);
    }

    public void setPlayer(AbstractC2941j0 j0Var) {
        C2877e.m28731b(Looper.myLooper() == Looper.getMainLooper());
        C2877e.m28734a(j0Var == null || j0Var.mo27468a0() == Looper.getMainLooper());
        AbstractC2941j0 j0Var2 = this.f22472l;
        if (j0Var2 != j0Var) {
            if (j0Var2 != null) {
                j0Var2.mo27465b(this.f22461a);
                AbstractC2941j0.AbstractC2945d U = j0Var2.mo27494U();
                if (U != null) {
                    U.m28424b(this.f22461a);
                    View view = this.f22464d;
                    if (view instanceof TextureView) {
                        U.m28433a((TextureView) view);
                    } else if (view instanceof SphericalGLSurfaceView) {
                        ((SphericalGLSurfaceView) view).setVideoComponent(null);
                    } else if (view instanceof VideoDecoderGLSurfaceView) {
                        U.m28432a((AbstractC2923l) null);
                    } else if (view instanceof SurfaceView) {
                        U.m28427b((SurfaceView) view);
                    }
                }
                AbstractC2941j0.AbstractC2944c d0 = j0Var2.mo27456d0();
                if (d0 != null) {
                    d0.m28437a(this.f22461a);
                }
            }
            this.f22472l = j0Var;
            if (m18325l()) {
                this.f22469i.setPlayer(j0Var);
            }
            SubtitleView subtitleView = this.f22466f;
            if (subtitleView != null) {
                subtitleView.setCues(null);
            }
            m18329h();
            m18327j();
            m18338c(true);
            if (j0Var != null) {
                AbstractC2941j0.AbstractC2945d U2 = j0Var.mo27494U();
                if (U2 != null) {
                    View view2 = this.f22464d;
                    if (view2 instanceof TextureView) {
                        U2.m28426b((TextureView) view2);
                    } else if (view2 instanceof SphericalGLSurfaceView) {
                        ((SphericalGLSurfaceView) view2).setVideoComponent(U2);
                    } else if (view2 instanceof VideoDecoderGLSurfaceView) {
                        U2.m28432a(((VideoDecoderGLSurfaceView) view2).getVideoDecoderOutputBufferRenderer());
                    } else if (view2 instanceof SurfaceView) {
                        U2.m28434a((SurfaceView) view2);
                    }
                    U2.m28430a(this.f22461a);
                }
                AbstractC2941j0.AbstractC2944c d02 = j0Var.mo27456d0();
                if (d02 != null) {
                    d02.m28436b(this.f22461a);
                }
                j0Var.mo27478a(this.f22461a);
                m18347a(false);
                return;
            }
            m18340c();
        }
    }

    public void setRepeatToggleModes(int i) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setRepeatToggleModes(i);
    }

    public void setResizeMode(int i) {
        C2877e.m28732b(this.f22462b);
        this.f22462b.setResizeMode(i);
    }

    public void setRewindIncrementMs(int i) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setRewindIncrementMs(i);
    }

    public void setShowBuffering(int i) {
        if (this.f22477q != i) {
            this.f22477q = i;
            m18329h();
        }
    }

    @Deprecated
    public void setShowBuffering(boolean z) {
        setShowBuffering(z ? 1 : 0);
    }

    public void setShowMultiWindowTimeBar(boolean z) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setShowMultiWindowTimeBar(z);
    }

    public void setShowShuffleButton(boolean z) {
        C2877e.m28732b(this.f22469i);
        this.f22469i.setShowShuffleButton(z);
    }

    public void setShutterBackgroundColor(int i) {
        View view = this.f22463c;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setUseArtwork(boolean z) {
        C2877e.m28731b(!z || this.f22465e != null);
        if (this.f22475o != z) {
            this.f22475o = z;
            m18338c(false);
        }
    }

    public void setUseController(boolean z) {
        C2877e.m28731b(!z || this.f22469i != null);
        if (this.f22473m != z) {
            this.f22473m = z;
            if (m18325l()) {
                this.f22469i.setPlayer(this.f22472l);
            } else {
                PlayerControlView playerControlView = this.f22469i;
                if (playerControlView != null) {
                    playerControlView.m18417a();
                    this.f22469i.setPlayer(null);
                }
            }
            m18328i();
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        View view = this.f22464d;
        if (view instanceof SurfaceView) {
            view.setVisibility(i);
        }
    }
}
