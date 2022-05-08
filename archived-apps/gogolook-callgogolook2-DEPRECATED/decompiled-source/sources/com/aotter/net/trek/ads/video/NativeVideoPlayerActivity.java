package com.aotter.net.trek.ads.video;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.Nullable;
import com.aotter.net.trek.ads.video.BaseVideoViewController;
import com.aotter.net.trek.common.util.Intents;
import com.aotter.net.trek.util.TrekLog;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/ads/video/NativeVideoPlayerActivity.class */
public class NativeVideoPlayerActivity extends BaseVideoPlayerActivity implements BaseVideoViewController.BaseVideoViewControllerListener {
    @Nullable

    /* renamed from: a */
    public BaseVideoViewController f1228a;

    /* renamed from: b */
    public NativeVideoViewController f1229b;

    /* renamed from: a */
    private BaseVideoViewController m36525a(Bundle bundle) {
        String stringExtra = getIntent().getStringExtra("video_view_class_name");
        if ("nativeVideo".equals(stringExtra)) {
            this.f1229b = new NativeVideoViewController(this, getIntent().getExtras(), bundle, this, BaseVideoPlayerActivity.mInstreamVideoListener, BaseVideoPlayerActivity.CLOSE_BUTTON_DELAY_TIME);
            return this.f1229b;
        }
        throw new IllegalStateException("Unsupported video type: " + stringExtra);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.f1229b.mo36509f();
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().addFlags(1024);
        try {
            this.f1228a = m36525a(bundle);
            this.f1228a.mo36524a();
        } catch (IllegalStateException e) {
            finish();
        }
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoPlayerActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f1229b.mo36511e();
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        finish();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.f1229b.mo36515c();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.f1229b.mo36513d();
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        setContentView(view);
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int i) {
        setRequestedOrientation(i);
    }

    @Override // com.aotter.net.trek.ads.video.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls != null) {
            try {
                startActivityForResult(Intents.getStartActivityIntent(this, cls, bundle), i);
            } catch (ActivityNotFoundException e) {
                TrekLog.m36319d("Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
            }
        }
    }
}
