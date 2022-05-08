package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Path;
import android.graphics.RectF;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import gogolook.callgogolook2.R$color;
import gogolook.callgogolook2.R$dimen;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.R$styleable;
import gogolook.callgogolook2.messaging.datamodel.data.MessagePartData;
import gogolook.callgogolook2.messaging.p078ui.mediapicker.PausableChronometer;
import p459j.p460a.p474c0.p491g.AbstractC11991d;
import p459j.p460a.p474c0.p491g.C11922b;
import p459j.p460a.p474c0.p491g.C11982c;
import p459j.p460a.p474c0.p491g.C12081f;
import p459j.p460a.p474c0.p499h.AbstractC12165g0;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12205r;
/* renamed from: gogolook.callgogolook2.messaging.ui.AudioAttachmentView */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AudioAttachmentView.class */
public class AudioAttachmentView extends LinearLayout {

    /* renamed from: a */
    public AudioAttachmentPlayPauseButton f11423a;

    /* renamed from: b */
    public ImageView f11424b;

    /* renamed from: c */
    public ImageView f11425c;

    /* renamed from: d */
    public PausableChronometer f11426d;

    /* renamed from: e */
    public AudioPlaybackProgressBar f11427e;

    /* renamed from: f */
    public Uri f11428f;

    /* renamed from: g */
    public final int f11429g;

    /* renamed from: h */
    public final Path f11430h;

    /* renamed from: i */
    public int f11431i;

    /* renamed from: j */
    public int f11432j;

    /* renamed from: k */
    public boolean f11433k;

    /* renamed from: l */
    public boolean f11434l;

    /* renamed from: m */
    public int f11435m;

    /* renamed from: n */
    public boolean f11436n;

    /* renamed from: o */
    public boolean f11437o;

    /* renamed from: p */
    public final int f11438p;

    /* renamed from: q */
    public int f11439q = -1;

    /* renamed from: r */
    public AbstractC11991d f11440r = new C4684a();

    /* renamed from: s */
    public static int f11415s = -1;

    /* renamed from: t */
    public static int f11416t = -1;

    /* renamed from: u */
    public static int f11417u = -1;

    /* renamed from: v */
    public static int f11418v = -1;

    /* renamed from: w */
    public static int f11419w = -1;

    /* renamed from: x */
    public static int f11420x = -1;

    /* renamed from: y */
    public static int f11421y = -1;

    /* renamed from: z */
    public static int f11422z = -1;

    /* renamed from: A */
    public static int f11413A = -1;

    /* renamed from: B */
    public static int f11414B = -1;

    /* renamed from: gogolook.callgogolook2.messaging.ui.AudioAttachmentView$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AudioAttachmentView$a.class */
    public class C4684a implements AbstractC11991d {
        public C4684a() {
        }

        @Override // p459j.p460a.p474c0.p491g.AbstractC11991d
        /* renamed from: a */
        public void mo7627a(C11982c cVar) {
            AudioAttachmentView.this.m27412b(cVar.m7656c() != null && cVar.m7656c().isPlaying());
            AudioAttachmentView.this.m27415a(false);
        }

        @Override // p459j.p460a.p474c0.p491g.AbstractC11991d
        /* renamed from: a */
        public void mo7626a(boolean z) {
            AudioAttachmentView.this.f11436n = z;
        }

        @Override // p459j.p460a.p474c0.p491g.AbstractC11991d
        /* renamed from: b */
        public void mo7625b(C11982c cVar) {
            AudioAttachmentView.this.m27412b(cVar.m7656c() != null && cVar.m7656c().isPlaying());
        }

        @Override // p459j.p460a.p474c0.p491g.AbstractC11991d
        /* renamed from: c */
        public void mo7624c(C11982c cVar) {
            AudioAttachmentView.this.m27412b(cVar.m7656c() != null && cVar.m7656c().isPlaying());
        }
    }

    public AudioAttachmentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R$styleable.AudioAttachmentView);
        this.f11438p = obtainStyledAttributes.getInt(0, 0);
        boolean z = true;
        LayoutInflater.from(getContext()).inflate(R$layout.audio_attachment_view, (ViewGroup) this, true);
        obtainStyledAttributes.recycle();
        setWillNotDraw(this.f11438p == 2 ? false : z);
        this.f11430h = new Path();
        this.f11429g = 0;
        m27419a(context.getResources());
        setContentDescription(context.getString(R$string.audio_attachment_content_description));
    }

    /* renamed from: a */
    public final void m27421a() {
        C11922b.f26721c.m7891b().m7916a(this.f11428f, this.f11426d, this.f11427e, this.f11423a);
    }

    /* renamed from: a */
    public final void m27420a(int i, int i2) {
        if (this.f11438p == 1) {
            int size = View.MeasureSpec.getSize(i);
            int size2 = View.MeasureSpec.getSize(i2);
            int mode = View.MeasureSpec.getMode(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            if (mode == 1073741824 && mode2 == 1073741824 && size > 0 && size2 > 0) {
                C12151d.m6999b(f11415s > 0 && f11419w > 0);
                int i3 = (f11415s >= 0 || f11419w >= 0) ? size != size2 ? 1 : Math.abs(size - f11419w) < 2 ? 2 : 0 : -1;
                if (i3 != this.f11439q) {
                    this.f11439q = i3;
                    int i4 = this.f11439q;
                    if (i4 == 0) {
                        setOrientation(1);
                        setGravity(1);
                        this.f11424b.setImageResource(R$drawable.ip_audio_2_play_btn);
                        this.f11425c.setImageResource(R$drawable.ip_audio_2_play_btn_stop);
                        ((ViewGroup.MarginLayoutParams) this.f11423a.getLayoutParams()).setMargins(0, f11416t, 0, f11417u);
                        ((ViewGroup.MarginLayoutParams) this.f11426d.getLayoutParams()).setMargins(0, 0, 0, f11418v);
                        this.f11426d.setTextSize(2, 13.0f);
                    } else if (i4 == 2) {
                        setOrientation(1);
                        setGravity(1);
                        this.f11424b.setImageResource(R$drawable.ip_audio_3_play_btn);
                        this.f11425c.setImageResource(R$drawable.ip_audio_3_play_btn_stop);
                        ((ViewGroup.MarginLayoutParams) this.f11423a.getLayoutParams()).setMargins(0, f11420x, 0, f11421y);
                        ((ViewGroup.MarginLayoutParams) this.f11426d.getLayoutParams()).setMargins(0, 0, 0, f11422z);
                        this.f11426d.setTextSize(2, 11.0f);
                    } else if (i4 == 1) {
                        setOrientation(0);
                        setGravity(16);
                        this.f11424b.setImageResource(R$drawable.ip_audio_2_play_btn);
                        this.f11425c.setImageResource(R$drawable.ip_audio_2_play_btn_stop);
                        ((ViewGroup.MarginLayoutParams) this.f11423a.getLayoutParams()).setMargins(f11413A, 0, f11414B, 0);
                        ((ViewGroup.MarginLayoutParams) this.f11426d.getLayoutParams()).setMargins(0, 0, 0, 0);
                        this.f11426d.setTextSize(2, 13.0f);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m27419a(Resources resources) {
        if (f11415s == -1) {
            f11415s = resources.getDimensionPixelSize(R$dimen.app_multiple_attachment_preview_height);
        }
        if (f11416t == -1) {
            f11416t = resources.getDimensionPixelSize(R$dimen.app_large_audio_attachment_margin_top);
        }
        if (f11417u == -1) {
            f11417u = resources.getDimensionPixelSize(R$dimen.app_large_audio_attachment_margin_middle);
        }
        if (f11418v == -1) {
            f11418v = resources.getDimensionPixelSize(R$dimen.app_large_audio_attachment_margin_bottom);
        }
        if (f11419w == -1) {
            f11419w = (f11415s - resources.getDimensionPixelSize(R$dimen.app_multiple_attachment_preview_padding)) / 2;
        }
        if (f11420x == -1) {
            f11420x = resources.getDimensionPixelSize(R$dimen.app_small_audio_attachment_margin_top);
        }
        if (f11421y == -1) {
            f11421y = resources.getDimensionPixelSize(R$dimen.app_small_audio_attachment_margin_middle);
        }
        if (f11422z == -1) {
            f11422z = resources.getDimensionPixelSize(R$dimen.app_small_audio_attachment_margin_bottom);
        }
        if (f11413A == -1) {
            f11413A = resources.getDimensionPixelSize(R$dimen.app_wide_audio_attachment_margin_left);
        }
        if (f11414B == -1) {
            f11414B = resources.getDimensionPixelSize(R$dimen.app_wide_audio_attachment_margin_middle);
        }
    }

    /* renamed from: a */
    public void m27418a(Uri uri, boolean z, boolean z2) {
        Uri uri2 = this.f11428f;
        String str = "";
        String uri3 = uri2 == null ? "" : uri2.toString();
        if (uri != null) {
            str = uri.toString();
        }
        int a = C12081f.m7212d().m7219a();
        boolean z3 = true;
        boolean z4 = (this.f11435m == a && this.f11433k == z && this.f11434l == z2) ? false : true;
        this.f11433k = z;
        this.f11434l = z2;
        this.f11435m = a;
        if (!z || AbstractC12165g0.m6945a()) {
            z3 = false;
        }
        this.f11437o = z3;
        if (!TextUtils.equals(uri3, str)) {
            this.f11428f = uri;
            m27415a(false);
            m27421a();
            m27411c();
        }
        if (z4) {
            m27409d();
        }
    }

    /* renamed from: a */
    public void m27417a(MessagePartData messagePartData, boolean z, boolean z2) {
        C12151d.m6999b(messagePartData == null || C12205r.m6811b(messagePartData.m27569c()));
        m27418a(messagePartData == null ? null : messagePartData.m27567q(), z, z2);
    }

    /* renamed from: a */
    public final void m27415a(boolean z) {
        if (this.f11426d.getVisibility() == 8) {
            C12151d.m7012a(2, this.f11438p);
            return;
        }
        int i = 0;
        if (this.f11437o) {
            PausableChronometer pausableChronometer = this.f11426d;
            if (!z) {
                i = 4;
            }
            pausableChronometer.setVisibility(i);
            return;
        }
        this.f11426d.setVisibility(0);
    }

    /* renamed from: b */
    public final void m27414b() {
        int i = this.f11438p;
        if (i == 0) {
            setOrientation(0);
            this.f11427e.setVisibility(0);
        } else if (i == 1) {
            this.f11427e.setVisibility(8);
        } else if (i != 2) {
            C12151d.m7005a("Unsupported mode for AudioAttachmentView!");
        } else {
            setOrientation(1);
            this.f11427e.setVisibility(8);
            this.f11426d.setVisibility(8);
            ((ViewGroup.MarginLayoutParams) this.f11423a.getLayoutParams()).setMargins(0, 0, 0, 0);
            this.f11424b.setImageDrawable(getResources().getDrawable(R$drawable.ic_preview_play));
            this.f11425c.setImageDrawable(getResources().getDrawable(R$drawable.ic_preview_pause));
        }
    }

    /* renamed from: b */
    public final void m27412b(boolean z) {
        m27415a(z);
        if (this.f11436n || z) {
            this.f11423a.setDisplayedChild(1);
        } else {
            this.f11423a.setDisplayedChild(0);
        }
    }

    /* renamed from: c */
    public final void m27411c() {
        if (this.f11428f != null) {
            C11922b.f26721c.m7891b().m7914a(this.f11428f, this.f11440r);
            if (!this.f11437o) {
                C11922b.f26721c.m7891b().m7900d(this.f11428f);
            }
        }
    }

    /* renamed from: d */
    public final void m27409d() {
        if (this.f11438p != 2) {
            this.f11426d.setTextColor(getResources().getColor((!this.f11433k || this.f11434l) ? R$color.app_message_text_color_outgoing : R$color.app_message_text_color_incoming));
            this.f11427e.m27405a(this.f11433k);
            this.f11423a.m27422a(this.f11433k);
            m27412b(C11922b.f26721c.m7891b().m7917a(this.f11428f).booleanValue());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        m27411c();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m27412b(false);
        if (this.f11428f != null) {
            C11922b.f26721c.m7891b().m7908b(this.f11428f);
            C11922b.f26721c.m7891b().m7904c(this.f11428f);
        }
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onDraw(Canvas canvas) {
        if (this.f11438p == 2) {
            int width = getWidth();
            int height = getHeight();
            if (!(this.f11431i == width && this.f11432j == height)) {
                RectF rectF = new RectF(0.0f, 0.0f, width, height);
                this.f11430h.reset();
                Path path = this.f11430h;
                int i = this.f11429g;
                path.addRoundRect(rectF, i, i, Path.Direction.CW);
                this.f11431i = width;
                this.f11432j = height;
            }
            canvas.clipPath(this.f11430h);
            super.onDraw(canvas);
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11423a = (AudioAttachmentPlayPauseButton) findViewById(R$id.play_pause_button);
        this.f11424b = (ImageView) findViewById(R$id.play_button);
        this.f11425c = (ImageView) findViewById(R$id.pause_button);
        this.f11426d = (PausableChronometer) findViewById(R$id.timer);
        this.f11427e = (AudioPlaybackProgressBar) findViewById(2131362999);
        this.f11423a.setDisplayedChild(0);
        m27414b();
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        m27420a(i, i2);
        super.onMeasure(i, i2);
    }
}
