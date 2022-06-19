package p193e.p194a.p852i.p853a;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.net.Uri;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.appcompat.widget.AppCompatButton;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import com.truecaller.ads.C2808R;
import com.truecaller.ads.CustomTemplate;
import com.truecaller.ads.ui.VideoFrame;
import com.truecaller.log.AssertionUtil;
import e.a.i.f0.m.b;
import e.a.i.f0.m.c;
import java.util.concurrent.atomic.AtomicInteger;
import p1727n3.p1807k.p1821i.C26614s;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p852i.p853a.AbstractC14980g;
import w3.c.a.a.a.h;
/* renamed from: e.a.i.a.d */
/* loaded from: classes3-dex2jar.jar:e/a/i/a/d.class */
public class C14977d extends FrameLayout {

    /* renamed from: e */
    public static final /* synthetic */ int f42744e = 0;

    /* renamed from: a */
    public final c f42745a;

    /* renamed from: b */
    public final ViewGroup f42746b;

    /* renamed from: c */
    public final VideoFrame f42747c;

    /* renamed from: d */
    public final ViewGroup f42748d;

    /* JADX WARN: Type inference failed for: r2v5, types: [int[], int[][]] */
    public C14977d(ViewGroup viewGroup, c cVar) {
        super(viewGroup.getContext());
        int i;
        int i2;
        this.f42746b = viewGroup;
        this.f42745a = cVar;
        NativeCustomFormatAd nativeCustomFormatAd = (NativeCustomFormatAd) ((b) cVar).b;
        String customFormatId = nativeCustomFormatAd.getCustomFormatId();
        CustomTemplate customTemplate = CustomTemplate.CLICK_TO_PLAY_VIDEO;
        if (h.e(customFormatId, customTemplate.templateId)) {
            try {
                i = Color.parseColor(nativeCustomFormatAd.getText("CTAbuttoncolor").toString());
            } catch (IllegalArgumentException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                i = -16777216;
            }
            try {
                i2 = Color.parseColor(nativeCustomFormatAd.getText("CTAbuttontextcolor").toString());
            } catch (IllegalArgumentException e2) {
                AssertionUtil.reportThrowableButNeverCrash(e2);
                i2 = -1;
            }
            CharSequence text = nativeCustomFormatAd.getText("CTAtext");
            ViewGroup viewGroup2 = (ViewGroup) LayoutInflater.from(viewGroup.getContext()).inflate(C2808R.layout.ad_custom_overlay_clicktoplay, (ViewGroup) this, false);
            this.f42748d = viewGroup2;
            addView(viewGroup2);
            VideoFrame findViewById = viewGroup2.findViewById(C2808R.C2810id.custom_ad_media_frame);
            this.f42747c = findViewById;
            findViewById.h1(nativeCustomFormatAd.getVideoMediaView(), nativeCustomFormatAd.getVideoController(), AbstractC14980g.a.a);
            viewGroup2.findViewById(C2808R.C2810id.close).setOnClickListener(new View.OnClickListener() { // from class: e.a.i.a.b
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C14977d.this.m19321a();
                }
            });
            AppCompatButton appCompatButton = (AppCompatButton) viewGroup2.findViewById(C2808R.C2810id.more_url);
            ColorStateList colorStateList = new ColorStateList(new int[]{new int[0]}, new int[]{i});
            AtomicInteger atomicInteger = C26614s.f74505a;
            appCompatButton.setBackgroundTintList(colorStateList);
            appCompatButton.setTextColor(i2);
            appCompatButton.setText(text);
            appCompatButton.setOnClickListener(new View.OnClickListener() { // from class: e.a.i.a.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    C14977d c14977d = C14977d.this;
                    Context context = c14977d.getContext();
                    if (context != null) {
                        Intent intent = new Intent("android.intent.action.VIEW");
                        intent.setData(Uri.parse(((NativeCustomFormatAd) ((b) c14977d.f42745a).b).getText("ClickURL").toString()));
                        intent.addFlags(268435456);
                        context.startActivity(intent);
                    }
                    c14977d.m19321a();
                }
            });
            setFocusable(true);
            setFocusableInTouchMode(true);
            setClickable(true);
            this.f42746b.setVisibility(0);
            return;
        }
        throw new IllegalArgumentException(C22128a.m8618h(C22128a.m8728C("Only "), customTemplate.templateId, " template supported"));
    }

    /* renamed from: a */
    public final void m19321a() {
        this.f42747c.g1();
        this.f42748d.removeAllViews();
        this.f42746b.removeView(this);
        this.f42746b.setVisibility(8);
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent keyEvent) {
        KeyEvent.DispatcherState keyDispatcherState;
        if (keyEvent.getKeyCode() == 4 && (keyDispatcherState = getKeyDispatcherState()) != null) {
            if (keyEvent.getAction() == 0 && keyEvent.getRepeatCount() == 0) {
                keyDispatcherState.startTracking(keyEvent, this);
                return true;
            } else if (keyEvent.getAction() == 1 && !keyEvent.isCanceled() && keyDispatcherState.isTracking(keyEvent)) {
                m19321a();
                return true;
            }
        }
        return super.dispatchKeyEventPreIme(keyEvent);
    }
}
