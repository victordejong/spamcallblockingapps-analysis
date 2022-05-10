package com.inmobi.rendering.mraid;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.MediaController;
import android.widget.VideoView;
import com.android.volley.toolbox.HttpHeaderParser;
import com.inmobi.commons.p508a.C8326a;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MediaRenderView.class */
public final class MediaRenderView extends VideoView implements Application.ActivityLifecycleCallbacks, MediaPlayer.OnCompletionListener, MediaPlayer.OnErrorListener, MediaPlayer.OnPreparedListener {

    /* renamed from: l */
    public static final String f32914l = MediaRenderView.class.getSimpleName();

    /* renamed from: a */
    public CustomMediaController f32915a;

    /* renamed from: b */
    public Bitmap f32916b;

    /* renamed from: c */
    public ViewGroup f32917c;

    /* renamed from: d */
    public AbstractC8477a f32918d;

    /* renamed from: e */
    public int f32919e;

    /* renamed from: f */
    public boolean f32920f;

    /* renamed from: g */
    public String f32921g;

    /* renamed from: h */
    public String f32922h;

    /* renamed from: i */
    public boolean f32923i;

    /* renamed from: j */
    public int f32924j;

    /* renamed from: k */
    public int f32925k;

    /* renamed from: m */
    public boolean f32926m = false;

    /* renamed from: n */
    public MediaPlayer f32927n;

    /* renamed from: o */
    public WeakReference<Activity> f32928o;

    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MediaRenderView$CustomMediaController.class */
    public static final class CustomMediaController extends MediaController {
        public CustomMediaController(Context context) {
            super(context);
        }

        @Override // android.widget.MediaController
        public final void show(int i) {
            super.show(i);
            if (Build.VERSION.SDK_INT < 19) {
                try {
                    Field declaredField = MediaController.class.getDeclaredField("mAnchor");
                    declaredField.setAccessible(true);
                    View view = (View) declaredField.get(this);
                    Field declaredField2 = MediaController.class.getDeclaredField("mDecor");
                    declaredField2.setAccessible(true);
                    View view2 = (View) declaredField2.get(this);
                    Field declaredField3 = MediaController.class.getDeclaredField("mDecorLayoutParams");
                    declaredField3.setAccessible(true);
                    WindowManager.LayoutParams layoutParams = (WindowManager.LayoutParams) declaredField3.get(this);
                    Field declaredField4 = MediaController.class.getDeclaredField("mWindowManager");
                    declaredField4.setAccessible(true);
                    WindowManager windowManager = (WindowManager) declaredField4.get(this);
                    int[] iArr = new int[2];
                    view.getLocationOnScreen(iArr);
                    view2.measure(View.MeasureSpec.makeMeasureSpec(view.getWidth(), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(view.getHeight(), Integer.MIN_VALUE));
                    view2.setPadding(0, 0, 0, 0);
                    layoutParams.verticalMargin = 0.0f;
                    layoutParams.horizontalMargin = 0.0f;
                    layoutParams.width = view.getWidth();
                    layoutParams.gravity = 8388659;
                    layoutParams.x = iArr[0];
                    layoutParams.y = (iArr[1] + view.getHeight()) - view2.getMeasuredHeight();
                    windowManager.updateViewLayout(view2, layoutParams);
                } catch (Exception e) {
                }
            }
        }
    }

    /* renamed from: com.inmobi.rendering.mraid.MediaRenderView$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/mraid/MediaRenderView$a.class */
    public interface AbstractC8477a {
        /* renamed from: a */
        void mo5478a();

        /* renamed from: a */
        void mo5477a(MediaRenderView mediaRenderView);
    }

    public MediaRenderView(Activity activity) {
        super(activity);
        setZOrderOnTop(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        if (Build.VERSION.SDK_INT < 28) {
            setDrawingCacheEnabled(true);
        }
        this.f32919e = 100;
        this.f32924j = -1;
        this.f32925k = 0;
        this.f32920f = false;
        this.f32928o = new WeakReference<>(activity);
        C8326a.m5897a(activity, this);
    }

    /* renamed from: a */
    public static String m5492a(String str) {
        byte[] bytes = str.getBytes();
        StringBuilder sb = new StringBuilder();
        for (byte b : bytes) {
            if ((b & 128) > 0) {
                sb.append("%");
                char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
                sb.append(new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]}));
            } else {
                sb.append((char) b);
            }
        }
        try {
            return new String(sb.toString().getBytes(), HttpHeaderParser.DEFAULT_CONTENT_CHARSET);
        } catch (UnsupportedEncodingException e) {
            return "";
        }
    }

    /* renamed from: b */
    public static Bitmap m5490b(String str) {
        try {
            return (Bitmap) Class.forName("android.media.ThumbnailUtils").getDeclaredMethod("createVideoThumbnail", String.class, Integer.TYPE).invoke(null, str, 1);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public final void m5495a() {
        stopPlayback();
        ViewGroup viewGroup = this.f32917c;
        if (viewGroup != null) {
            ViewGroup viewGroup2 = (ViewGroup) viewGroup.getParent();
            if (viewGroup2 != null) {
                viewGroup2.removeView(this.f32917c);
            }
            ViewGroup viewGroup3 = (ViewGroup) getParent();
            if (viewGroup3 != null) {
                viewGroup3.removeView(this);
            }
            setBackgroundColor(0);
            this.f32917c = null;
        }
        super.setMediaController(null);
        this.f32915a = null;
        AbstractC8477a aVar = this.f32918d;
        if (aVar != null) {
            aVar.mo5477a(this);
        }
    }

    public final ViewGroup getViewContainer() {
        return this.f32917c;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        activity.getApplication().unregisterActivityLifecycleCallbacks(this);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        if (this.f32928o.get() != null && this.f32928o.get().equals(activity)) {
            this.f32926m = false;
            start();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        Activity activity2 = this.f32928o.get();
        if (activity2 != null && activity2.equals(activity)) {
            this.f32926m = true;
            if (getCurrentPosition() != 0) {
                this.f32925k = getCurrentPosition();
            }
            pause();
        }
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        StringBuilder sb = new StringBuilder(">>> onError (");
        sb.append(i);
        sb.append(", ");
        sb.append(i2);
        sb.append(")");
        m5495a();
        return false;
    }

    @Override // android.widget.VideoView, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        getHolder().setSizeFromLayout();
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        this.f32927n = mediaPlayer;
        mediaPlayer.setOnVideoSizeChangedListener(new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.inmobi.rendering.mraid.MediaRenderView.1
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer2, int i, int i2) {
                String unused = MediaRenderView.f32914l;
                if (MediaRenderView.this.f32915a == null) {
                    MediaRenderView.this.f32915a = new CustomMediaController(MediaRenderView.this.getContext());
                    MediaRenderView.this.f32915a.setAnchorView(MediaRenderView.this);
                    MediaRenderView mediaRenderView = MediaRenderView.this;
                    mediaRenderView.setMediaController(mediaRenderView.f32915a);
                    MediaRenderView.this.requestLayout();
                    MediaRenderView.this.requestFocus();
                }
            }
        });
        int i = this.f32925k;
        if (i < getDuration()) {
            this.f32925k = i;
            seekTo(i);
        }
        this.f32923i = true;
        this.f32918d.mo5478a();
        start();
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        StringBuilder sb = new StringBuilder(">>> onVisibilityChanged (");
        sb.append(i);
        sb.append(")");
        if (i != 0) {
            return;
        }
        if (Build.VERSION.SDK_INT >= 16) {
            Context b = C8326a.m5891b();
            if (b != null) {
                setBackground(new BitmapDrawable(b.getResources(), this.f32916b));
                return;
            }
            return;
        }
        setBackgroundDrawable(new BitmapDrawable(this.f32916b));
    }

    @Override // android.view.SurfaceView, android.view.View
    public final void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        StringBuilder sb = new StringBuilder(">>> onWindowVisibilityChanged (");
        sb.append(i);
        sb.append(")");
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void pause() {
        super.pause();
    }

    public final void setListener(AbstractC8477a aVar) {
        this.f32918d = aVar;
    }

    public final void setPlaybackData(String str) {
        this.f32922h = m5492a(str);
        this.f32921g = "anonymous";
        if (this.f32916b == null) {
            this.f32916b = Bitmap.createBitmap(24, 24, Bitmap.Config.ARGB_8888);
            this.f32916b = m5490b(this.f32922h);
        }
    }

    public final void setViewContainer(ViewGroup viewGroup) {
        this.f32917c = viewGroup;
    }

    @Override // android.widget.VideoView, android.widget.MediaController.MediaPlayerControl
    public final void start() {
        if (!this.f32926m) {
            super.start();
        }
    }
}
