package gogolook.callgogolook2.messaging.p078ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ViewSwitcher;
import gogolook.callgogolook2.R$id;
import p459j.p460a.p474c0.p491g.C12081f;
/* renamed from: gogolook.callgogolook2.messaging.ui.AudioAttachmentPlayPauseButton */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/AudioAttachmentPlayPauseButton.class */
public class AudioAttachmentPlayPauseButton extends ViewSwitcher {

    /* renamed from: a */
    public ImageView f11410a;

    /* renamed from: b */
    public ImageView f11411b;

    /* renamed from: c */
    public boolean f11412c;

    public AudioAttachmentPlayPauseButton(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    /* renamed from: a */
    public final void m27423a() {
        this.f11410a.setImageDrawable(C12081f.m7212d().m7208g(this.f11412c));
        this.f11411b.setImageDrawable(C12081f.m7212d().m7209f(this.f11412c));
    }

    /* renamed from: a */
    public void m27422a(boolean z) {
        if (this.f11412c != z) {
            this.f11412c = z;
            m27423a();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f11410a = (ImageView) findViewById(R$id.play_button);
        this.f11411b = (ImageView) findViewById(R$id.pause_button);
        m27423a();
    }
}
