package com.mopub.mraid;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.StateListDrawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseVideoViewController;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController.class */
public class MraidVideoViewController extends BaseVideoViewController {

    /* renamed from: e */
    public final VideoView f34613e;

    /* renamed from: f */
    public ImageButton f34614f;

    /* renamed from: g */
    public int f34615g;

    /* renamed from: h */
    public int f34616h;

    /* renamed from: com.mopub.mraid.MraidVideoViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$a.class */
    public class C8916a implements MediaPlayer.OnPreparedListener {
        public C8916a(MraidVideoViewController mraidVideoViewController) {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.setVideoScalingMode(1);
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$b.class */
    public class C8917b implements MediaPlayer.OnCompletionListener {
        public C8917b() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            MraidVideoViewController.this.f34614f.setVisibility(0);
            MraidVideoViewController.this.m4415a(true);
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$c.class */
    public class C8918c implements MediaPlayer.OnErrorListener {
        public C8918c() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            MraidVideoViewController.this.f34614f.setVisibility(0);
            MraidVideoViewController.this.m4413b(false);
            return false;
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$d.class */
    public class View$OnClickListenerC8919d implements View.OnClickListener {
        public View$OnClickListenerC8919d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MraidVideoViewController.this.m4417a().onFinish();
        }
    }

    public MraidVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        super(context, null, baseVideoViewControllerListener);
        VideoView videoView = new VideoView(context);
        this.f34613e = videoView;
        videoView.setOnPreparedListener(new C8916a(this));
        this.f34613e.setOnCompletionListener(new C8917b());
        this.f34613e.setOnErrorListener(new C8918c());
        this.f34613e.setVideoPath(bundle.getString(BaseVideoPlayerActivity.VIDEO_URL));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3885a(Configuration configuration) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo3884a(Bundle bundle) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public VideoView mo3877c() {
        return this.f34613e;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo3875d() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo3873e() {
        super.mo3873e();
        this.f34616h = Dips.asIntPixels(50.0f, m4414b());
        this.f34615g = Dips.asIntPixels(8.0f, m4414b());
        m4040i();
        this.f34614f.setVisibility(8);
        this.f34613e.start();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo3871f() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo3869g() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo3867h() {
    }

    /* renamed from: i */
    public final void m4040i() {
        this.f34614f = new ImageButton(m4414b());
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(m4414b()));
        stateListDrawable.addState(new int[]{16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(m4414b()));
        this.f34614f.setImageDrawable(stateListDrawable);
        this.f34614f.setBackgroundDrawable(null);
        this.f34614f.setOnClickListener(new View$OnClickListenerC8919d());
        int i = this.f34616h;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        int i2 = this.f34615g;
        layoutParams.setMargins(i2, 0, i2, 0);
        getLayout().addView(this.f34614f, layoutParams);
    }
}
