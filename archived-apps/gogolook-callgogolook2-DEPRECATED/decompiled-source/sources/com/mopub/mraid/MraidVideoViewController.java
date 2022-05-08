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
import androidx.annotation.NonNull;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.BaseVideoViewController;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController.class */
public class MraidVideoViewController extends BaseVideoViewController {

    /* renamed from: e */
    public final VideoView f8950e;

    /* renamed from: f */
    public ImageButton f8951f;

    /* renamed from: g */
    public int f8952g;

    /* renamed from: h */
    public int f8953h;

    /* renamed from: com.mopub.mraid.MraidVideoViewController$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$a.class */
    public class C3922a implements MediaPlayer.OnPreparedListener {
        public C3922a(MraidVideoViewController mraidVideoViewController) {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mediaPlayer) {
            mediaPlayer.setVideoScalingMode(1);
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$b.class */
    public class C3923b implements MediaPlayer.OnCompletionListener {
        public C3923b() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mediaPlayer) {
            MraidVideoViewController.this.f8951f.setVisibility(0);
            MraidVideoViewController.this.m30571a(true);
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$c.class */
    public class C3924c implements MediaPlayer.OnErrorListener {
        public C3924c() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            MraidVideoViewController.this.f8951f.setVisibility(0);
            MraidVideoViewController.this.m30569b(false);
            return false;
        }
    }

    /* renamed from: com.mopub.mraid.MraidVideoViewController$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidVideoViewController$d.class */
    public class View$OnClickListenerC3925d implements View.OnClickListener {
        public View$OnClickListenerC3925d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            MraidVideoViewController.this.m30573a().onFinish();
        }
    }

    public MraidVideoViewController(Context context, Bundle bundle, Bundle bundle2, BaseVideoViewController.BaseVideoViewControllerListener baseVideoViewControllerListener) {
        super(context, null, baseVideoViewControllerListener);
        this.f8950e = new VideoView(context);
        this.f8950e.setOnPreparedListener(new C3922a(this));
        this.f8950e.setOnCompletionListener(new C3923b());
        this.f8950e.setOnErrorListener(new C3924c());
        this.f8950e.setVideoPath(bundle.getString("video_url"));
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30245a(Configuration configuration) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: a */
    public void mo30244a(@NonNull Bundle bundle) {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: c */
    public VideoView mo30239c() {
        return this.f8950e;
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: d */
    public void mo30238d() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: e */
    public void mo30237e() {
        super.mo30237e();
        this.f8953h = Dips.asIntPixels(50.0f, m30570b());
        this.f8952g = Dips.asIntPixels(8.0f, m30570b());
        m30233i();
        this.f8951f.setVisibility(8);
        this.f8950e.start();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: f */
    public void mo30236f() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: g */
    public void mo30235g() {
    }

    @Override // com.mopub.mobileads.BaseVideoViewController
    /* renamed from: h */
    public void mo30234h() {
    }

    /* renamed from: i */
    public final void m30233i() {
        this.f8951f = new ImageButton(m30570b());
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(new int[]{-16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_NORMAL.createDrawable(m30570b()));
        stateListDrawable.addState(new int[]{16842919}, Drawables.INTERSTITIAL_CLOSE_BUTTON_PRESSED.createDrawable(m30570b()));
        this.f8951f.setImageDrawable(stateListDrawable);
        this.f8951f.setBackgroundDrawable(null);
        this.f8951f.setOnClickListener(new View$OnClickListenerC3925d());
        int i = this.f8953h;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i);
        layoutParams.addRule(11);
        int i2 = this.f8952g;
        layoutParams.setMargins(i2, 0, i2, 0);
        getLayout().addView(this.f8951f, layoutParams);
    }
}
