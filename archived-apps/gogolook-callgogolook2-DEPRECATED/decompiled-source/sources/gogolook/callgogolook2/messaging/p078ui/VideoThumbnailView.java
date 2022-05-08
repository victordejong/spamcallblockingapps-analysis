package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.VideoView;
import androidx.core.view.GravityCompat;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$styleable;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import java.util.concurrent.TimeUnit;
import p081h.p119d.p120a.C5769g;
import p081h.p119d.p120a.C5776l;
import p459j.p460a.p474c0.p475c.p479z.C11658g0;
import p459j.p460a.p474c0.p491g.AbstractC12126w;
import p459j.p460a.p474c0.p499h.C12151d;
/* renamed from: gogolook.callgogolook2.messaging.ui.VideoThumbnailView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VideoThumbnailView.class */
public class VideoThumbnailView extends FrameLayout {

    /* renamed from: a */
    public final int f11532a;

    /* renamed from: b */
    public final boolean f11533b;

    /* renamed from: c */
    public final VideoView f11534c;

    /* renamed from: d */
    public final ImageButton f11535d;

    /* renamed from: e */
    public final ImageView f11536e;

    /* renamed from: f */
    public final TextView f11537f;

    /* renamed from: g */
    public final int f11538g;

    /* renamed from: h */
    public final int f11539h;

    /* renamed from: i */
    public final boolean f11540i;

    /* renamed from: j */
    public Uri f11541j;

    /* renamed from: k */
    public boolean f11542k;

    /* renamed from: l */
    public boolean f11543l;

    /* renamed from: gogolook.callgogolook2.messaging.ui.VideoThumbnailView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VideoThumbnailView$a.class */
    public class C4701a implements MediaPlayer.OnPreparedListener {

        /* renamed from: a */
        public final /* synthetic */ boolean f11544a;

        public C4701a(boolean z) {
            this.f11544a = z;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            VideoThumbnailView.this.f11543l = true;
            mediaPlayer.setLooping(this.f11544a);
            VideoThumbnailView.this.m27305d();
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.VideoThumbnailView$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VideoThumbnailView$b.class */
    public class C4702b implements MediaPlayer.OnCompletionListener {
        public C4702b() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            VideoThumbnailView.this.f11535d.setVisibility(0);
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.VideoThumbnailView$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VideoThumbnailView$c.class */
    public class C4703c implements MediaPlayer.OnErrorListener {
        public C4703c(VideoThumbnailView videoThumbnailView) {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            return true;
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.VideoThumbnailView$d */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VideoThumbnailView$d.class */
    public class View$OnClickListenerC4704d implements View.OnClickListener {
        public View$OnClickListenerC4704d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (VideoThumbnailView.this.f11541j != null) {
                if (VideoThumbnailView.this.f11532a == 1) {
                    VideoThumbnailView.this.f11534c.seekTo(0);
                    VideoThumbnailView.this.m27307c();
                    return;
                }
                AbstractC12126w.m7095a().mo7076a(VideoThumbnailView.this.getContext(), VideoThumbnailView.this.f11541j);
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.messaging.ui.VideoThumbnailView$e */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/VideoThumbnailView$e.class */
    public class View$OnLongClickListenerC4705e implements View.OnLongClickListener {
        public View$OnLongClickListenerC4705e() {
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            VideoThumbnailView.this.performLongClick();
            return true;
        }
    }

    public VideoThumbnailView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(R$layout.video_thumbnail_view, (ViewGroup) this, true);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.VideoThumbnailView);
        this.f11538g = obtainStyledAttributes.getResourceId(7, -1);
        this.f11539h = obtainStyledAttributes.getDimensionPixelSize(8, -2);
        this.f11540i = obtainStyledAttributes.getBoolean(4, false);
        this.f11533b = obtainStyledAttributes.getBoolean(9, false);
        boolean z = obtainStyledAttributes.getBoolean(5, false);
        this.f11532a = obtainStyledAttributes.getInt(6, 0);
        obtainStyledAttributes.recycle();
        this.f11537f = this.f11540i ? (TextView) findViewById(R$id.video_duration) : null;
        if (this.f11532a == 1) {
            this.f11534c = new VideoView(context);
            this.f11534c.setFocusable(false);
            this.f11534c.setFocusableInTouchMode(false);
            this.f11534c.clearFocus();
            addView(this.f11534c, 0, new ViewGroup.LayoutParams(-2, -2));
            this.f11534c.setOnPreparedListener(new C4701a(z));
            this.f11534c.setOnCompletionListener(new C4702b());
            this.f11534c.setOnErrorListener(new C4703c(this));
        } else {
            this.f11534c = null;
        }
        this.f11535d = (ImageButton) findViewById(R$id.video_thumbnail_play_button);
        int i = this.f11538g;
        if (i > 0) {
            this.f11535d.setImageResource(i);
            this.f11535d.getLayoutParams().width = this.f11539h;
            this.f11535d.getLayoutParams().height = this.f11539h;
        }
        if (z) {
            this.f11535d.setVisibility(8);
        } else {
            this.f11535d.setOnClickListener(new View$OnClickListenerC4704d());
            this.f11535d.setOnLongClickListener(new View$OnLongClickListenerC4705e());
        }
        this.f11536e = (ImageView) findViewById(R$id.video_thumbnail_image);
    }

    /* renamed from: b */
    public static boolean m27308b(boolean z) {
        return z && !C11658g0.m8693k();
    }

    /* renamed from: a */
    public void m27317a() {
        this.f11536e.clearColorFilter();
        this.f11535d.clearColorFilter();
    }

    /* renamed from: a */
    public void m27316a(int i) {
        this.f11536e.setColorFilter(i);
        this.f11535d.setColorFilter(i);
    }

    /* renamed from: a */
    public final void m27315a(Uri uri) {
        C5769g<Uri> a = C5776l.m24470c(getContext()).m24457a(uri);
        a.mo24496b((int) R$drawable.generic_video_icon);
        a.mo24491f();
        a.mo24518a(this.f11536e);
    }

    /* renamed from: a */
    public void m27314a(MessagePartData messagePartData, boolean z) {
        if (messagePartData == null) {
            m27310b();
            return;
        }
        this.f11541j = messagePartData.m27567q();
        if (m27308b(z)) {
            this.f11536e.setImageResource(R$drawable.generic_video_icon);
        } else {
            m27315a(messagePartData.m27567q());
            VideoView videoView = this.f11534c;
            if (videoView != null) {
                videoView.setVideoURI(this.f11541j);
            }
        }
        m27311a(z);
    }

    /* renamed from: a */
    public final void m27311a(boolean z) {
        if (this.f11537f != null && this.f11541j != null) {
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            try {
                mediaMetadataRetriever.setDataSource(getContext(), this.f11541j);
                long parseLong = Long.parseLong(mediaMetadataRetriever.extractMetadata(9));
                this.f11537f.setGravity(z ? GravityCompat.START : 8388613);
                this.f11537f.setText(String.format("%02d:%02d", Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(parseLong)), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(parseLong) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(parseLong)))));
            } catch (IllegalArgumentException e) {
                this.f11537f.setText((CharSequence) null);
            }
        }
    }

    /* renamed from: b */
    public final void m27310b() {
        this.f11541j = null;
        this.f11536e.setImageDrawable(null);
        VideoView videoView = this.f11534c;
        if (videoView != null) {
            videoView.setVideoURI(null);
        }
        TextView textView = this.f11537f;
        if (textView != null) {
            textView.setText((CharSequence) null);
        }
    }

    /* renamed from: c */
    public void m27307c() {
        C12151d.m7012a(1, this.f11532a);
        this.f11535d.setVisibility(8);
        this.f11536e.setVisibility(8);
        this.f11534c.start();
    }

    /* renamed from: d */
    public final void m27305d() {
        if (this.f11542k || !this.f11543l) {
            return;
        }
        if (this.f11533b) {
            m27307c();
        } else {
            this.f11534c.seekTo(0);
        }
    }

    @Override // android.view.View
    public void onAnimationEnd() {
        super.onAnimationEnd();
        this.f11542k = false;
        m27305d();
    }

    @Override // android.view.View
    public void onAnimationStart() {
        super.onAnimationStart();
        this.f11542k = true;
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
        VideoView videoView = this.f11534c;
        if (videoView != null) {
            videoView.setMinimumHeight(i);
        }
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
        VideoView videoView = this.f11534c;
        if (videoView != null) {
            videoView.setMinimumWidth(i);
        }
    }
}
