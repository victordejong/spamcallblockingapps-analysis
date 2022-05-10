package com.mopub.nativeads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.TextureView;
import android.view.View;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.VastVideoProgressBarWidget;
import com.mopub.mobileads.resource.DrawableConstants;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaLayout.class */
public class MediaLayout extends RelativeLayout {

    /* renamed from: a */
    public volatile Mode f34656a;

    /* renamed from: b */
    public MuteState f34657b;

    /* renamed from: c */
    public ImageView f34658c;

    /* renamed from: d */
    public TextureView f34659d;

    /* renamed from: e */
    public ProgressBar f34660e;

    /* renamed from: f */
    public ImageView f34661f;

    /* renamed from: g */
    public ImageView f34662g;

    /* renamed from: h */
    public ImageView f34663h;

    /* renamed from: i */
    public VastVideoProgressBarWidget f34664i;

    /* renamed from: j */
    public ImageView f34665j;

    /* renamed from: k */
    public View f34666k;

    /* renamed from: l */
    public Drawable f34667l;

    /* renamed from: m */
    public Drawable f34668m;

    /* renamed from: n */
    public boolean f34669n;

    /* renamed from: o */
    public final int f34670o;

    /* renamed from: p */
    public final int f34671p;

    /* renamed from: q */
    public final int f34672q;

    /* renamed from: r */
    public final int f34673r;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaLayout$Mode.class */
    public enum Mode {
        IMAGE,
        PLAYING,
        LOADING,
        BUFFERING,
        PAUSED,
        FINISHED
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaLayout$MuteState.class */
    public enum MuteState {
        MUTED,
        UNMUTED
    }

    /* renamed from: com.mopub.nativeads.MediaLayout$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaLayout$a.class */
    public class RunnableC8922a implements Runnable {
        public RunnableC8922a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MediaLayout.this.m4018a();
        }
    }

    /* renamed from: com.mopub.nativeads.MediaLayout$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MediaLayout$b.class */
    public static /* synthetic */ class C8923b {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34675a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f34676b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x006c -> B:42:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0070 -> B:38:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0074 -> B:34:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0078 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007c -> B:40:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0080 -> B:14:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0084 -> B:32:0x0060). Please submit an issue!!! */
        static {
            int[] iArr = new int[Mode.values().length];
            f34676b = iArr;
            try {
                iArr[Mode.IMAGE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34676b[Mode.LOADING.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34676b[Mode.BUFFERING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34676b[Mode.PLAYING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34676b[Mode.PAUSED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34676b[Mode.FINISHED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            int[] iArr2 = new int[MuteState.values().length];
            f34675a = iArr2;
            try {
                iArr2[MuteState.MUTED.ordinal()] = 1;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34675a[MuteState.UNMUTED.ordinal()] = 2;
            } catch (NoSuchFieldError e8) {
            }
        }
    }

    public MediaLayout(Context context) {
        this(context, null);
    }

    public MediaLayout(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MediaLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f34656a = Mode.IMAGE;
        Preconditions.checkNotNull(context);
        this.f34657b = MuteState.MUTED;
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        ImageView imageView = new ImageView(context);
        this.f34658c = imageView;
        imageView.setLayoutParams(layoutParams);
        this.f34658c.setScaleType(ImageView.ScaleType.CENTER_CROP);
        addView(this.f34658c);
        this.f34670o = Dips.asIntPixels(40.0f, context);
        this.f34671p = Dips.asIntPixels(35.0f, context);
        this.f34672q = Dips.asIntPixels(36.0f, context);
        this.f34673r = Dips.asIntPixels(10.0f, context);
    }

    private void setLoadingSpinnerVisibility(int i) {
        ProgressBar progressBar = this.f34660e;
        if (progressBar != null) {
            progressBar.setVisibility(i);
        }
        ImageView imageView = this.f34663h;
        if (imageView != null) {
            imageView.setVisibility(i);
        }
    }

    private void setMainImageVisibility(int i) {
        this.f34658c.setVisibility(i);
    }

    private void setPlayButtonVisibility(int i) {
        ImageView imageView = this.f34661f;
        if (imageView != null && this.f34666k != null) {
            imageView.setVisibility(i);
            this.f34666k.setVisibility(i);
        }
    }

    private void setVideoControlVisibility(int i) {
        ImageView imageView = this.f34662g;
        if (imageView != null) {
            imageView.setVisibility(i);
        }
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.f34664i;
        if (vastVideoProgressBarWidget != null) {
            vastVideoProgressBarWidget.setVisibility(i);
        }
        ImageView imageView2 = this.f34665j;
        if (imageView2 != null) {
            imageView2.setVisibility(i);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public final void m4018a() {
        switch (C8923b.f34676b[this.f34656a.ordinal()]) {
            case 1:
                setMainImageVisibility(0);
                setLoadingSpinnerVisibility(4);
                setVideoControlVisibility(4);
                setPlayButtonVisibility(4);
                return;
            case 2:
                setMainImageVisibility(0);
                setLoadingSpinnerVisibility(0);
                setVideoControlVisibility(4);
                setPlayButtonVisibility(4);
                return;
            case 3:
                setMainImageVisibility(4);
                setLoadingSpinnerVisibility(0);
                setVideoControlVisibility(0);
                setPlayButtonVisibility(4);
                break;
            case 4:
                break;
            case 5:
                setMainImageVisibility(4);
                setLoadingSpinnerVisibility(4);
                setVideoControlVisibility(0);
                setPlayButtonVisibility(0);
                return;
            case 6:
                setMainImageVisibility(0);
                setLoadingSpinnerVisibility(4);
                setVideoControlVisibility(4);
                setPlayButtonVisibility(0);
                return;
            default:
                return;
        }
        setMainImageVisibility(4);
        setLoadingSpinnerVisibility(4);
        setVideoControlVisibility(0);
        setPlayButtonVisibility(4);
    }

    public ImageView getMainImageView() {
        return this.f34658c;
    }

    public TextureView getTextureView() {
        return this.f34659d;
    }

    public void initForVideo() {
        if (!this.f34669n) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            TextureView textureView = new TextureView(getContext());
            this.f34659d = textureView;
            textureView.setLayoutParams(layoutParams);
            this.f34659d.setId(View.generateViewId());
            addView(this.f34659d);
            this.f34658c.bringToFront();
            int i = this.f34670o;
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i, i);
            layoutParams2.addRule(10);
            layoutParams2.addRule(11);
            ProgressBar progressBar = new ProgressBar(getContext());
            this.f34660e = progressBar;
            progressBar.setLayoutParams(layoutParams2);
            ProgressBar progressBar2 = this.f34660e;
            int i2 = this.f34673r;
            progressBar2.setPadding(0, i2, i2, 0);
            this.f34660e.setIndeterminate(true);
            addView(this.f34660e);
            RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, this.f34671p);
            layoutParams3.addRule(8, this.f34659d.getId());
            ImageView imageView = new ImageView(getContext());
            this.f34662g = imageView;
            imageView.setLayoutParams(layoutParams3);
            this.f34662g.setImageDrawable(new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
            addView(this.f34662g);
            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, this.f34671p);
            layoutParams4.addRule(6, this.f34659d.getId());
            ImageView imageView2 = new ImageView(getContext());
            this.f34663h = imageView2;
            imageView2.setLayoutParams(layoutParams4);
            this.f34663h.setImageDrawable(new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{DrawableConstants.GradientStrip.START_COLOR, DrawableConstants.GradientStrip.END_COLOR}));
            addView(this.f34663h);
            VastVideoProgressBarWidget vastVideoProgressBarWidget = new VastVideoProgressBarWidget(getContext());
            this.f34664i = vastVideoProgressBarWidget;
            vastVideoProgressBarWidget.setAnchorId(this.f34659d.getId());
            this.f34664i.calibrateAndMakeVisible(1000, 0);
            addView(this.f34664i);
            this.f34667l = Drawables.NATIVE_MUTED.createDrawable(getContext());
            this.f34668m = Drawables.NATIVE_UNMUTED.createDrawable(getContext());
            int i3 = this.f34672q;
            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i3, i3);
            layoutParams5.addRule(9);
            layoutParams5.addRule(2, this.f34664i.getId());
            ImageView imageView3 = new ImageView(getContext());
            this.f34665j = imageView3;
            imageView3.setLayoutParams(layoutParams5);
            this.f34665j.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            ImageView imageView4 = this.f34665j;
            int i4 = this.f34673r;
            imageView4.setPadding(i4, i4, i4, i4);
            this.f34665j.setImageDrawable(this.f34667l);
            addView(this.f34665j);
            RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams6.addRule(13);
            View view = new View(getContext());
            this.f34666k = view;
            view.setLayoutParams(layoutParams6);
            this.f34666k.setBackgroundColor(0);
            addView(this.f34666k);
            int i5 = this.f34670o;
            RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(i5, i5);
            layoutParams7.addRule(13);
            ImageView imageView5 = new ImageView(getContext());
            this.f34661f = imageView5;
            imageView5.setLayoutParams(layoutParams7);
            this.f34661f.setImageDrawable(Drawables.NATIVE_PLAY.createDrawable(getContext()));
            addView(this.f34661f);
            this.f34669n = true;
            m4018a();
        }
    }

    @Override // android.widget.RelativeLayout, android.view.View
    public void onMeasure(int i, int i2) {
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int size = View.MeasureSpec.getSize(i);
        int size2 = View.MeasureSpec.getSize(i2);
        int measuredWidth = getMeasuredWidth();
        int measuredHeight = getMeasuredHeight();
        if (mode != 1073741824) {
            size = mode == Integer.MIN_VALUE ? Math.min(size, measuredWidth) : measuredWidth;
        }
        int i3 = (int) (size * 0.5625f);
        if (mode2 != 1073741824 || size2 >= i3) {
            size2 = i3;
        } else {
            size = (int) (size2 * 1.7777778f);
        }
        if (Math.abs(size2 - measuredHeight) >= 2 || Math.abs(size - measuredWidth) >= 2) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Resetting mediaLayout size to w: %d h: %d", Integer.valueOf(size), Integer.valueOf(size2)));
            getLayoutParams().width = size;
            getLayoutParams().height = size2;
        }
        super.onMeasure(i, i2);
    }

    public void reset() {
        setMode(Mode.IMAGE);
        setPlayButtonClickListener(null);
        setMuteControlClickListener(null);
        setVideoClickListener(null);
    }

    public void resetProgress() {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.f34664i;
        if (vastVideoProgressBarWidget != null) {
            vastVideoProgressBarWidget.reset();
        }
    }

    public void setMainImageDrawable(Drawable drawable) {
        Preconditions.checkNotNull(drawable);
        this.f34658c.setImageDrawable(drawable);
    }

    public void setMode(Mode mode) {
        Preconditions.checkNotNull(mode);
        this.f34656a = mode;
        post(new RunnableC8922a());
    }

    public void setMuteControlClickListener(View.OnClickListener onClickListener) {
        ImageView imageView = this.f34665j;
        if (imageView != null) {
            imageView.setOnClickListener(onClickListener);
        }
    }

    public void setMuteState(MuteState muteState) {
        Preconditions.checkNotNull(muteState);
        if (muteState != this.f34657b) {
            this.f34657b = muteState;
            if (this.f34665j == null) {
                return;
            }
            if (C8923b.f34675a[muteState.ordinal()] != 1) {
                this.f34665j.setImageDrawable(this.f34668m);
            } else {
                this.f34665j.setImageDrawable(this.f34667l);
            }
        }
    }

    public void setPlayButtonClickListener(View.OnClickListener onClickListener) {
        View view;
        if (this.f34661f != null && (view = this.f34666k) != null) {
            view.setOnClickListener(onClickListener);
            this.f34661f.setOnClickListener(onClickListener);
        }
    }

    public void setSurfaceTextureListener(TextureView.SurfaceTextureListener surfaceTextureListener) {
        TextureView textureView = this.f34659d;
        if (textureView != null) {
            textureView.setSurfaceTextureListener(surfaceTextureListener);
            SurfaceTexture surfaceTexture = this.f34659d.getSurfaceTexture();
            if (surfaceTexture != null && surfaceTextureListener != null) {
                surfaceTextureListener.onSurfaceTextureAvailable(surfaceTexture, this.f34659d.getWidth(), this.f34659d.getHeight());
            }
        }
    }

    public void setVideoClickListener(View.OnClickListener onClickListener) {
        TextureView textureView = this.f34659d;
        if (textureView != null) {
            textureView.setOnClickListener(onClickListener);
        }
    }

    public void updateProgress(int i) {
        VastVideoProgressBarWidget vastVideoProgressBarWidget = this.f34664i;
        if (vastVideoProgressBarWidget != null) {
            vastVideoProgressBarWidget.updateProgress(i);
        }
    }
}
