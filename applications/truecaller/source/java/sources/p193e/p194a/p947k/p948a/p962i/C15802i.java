package p193e.p194a.p947k.p948a.p962i;

import android.widget.CompoundButton;
import com.truecaller.videocallerid.p187ui.settings.VideoCallerIdSettingsView;
import java.util.Objects;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
/* renamed from: e.a.k.a.i.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/i.class */
public final class C15802i implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ VideoCallerIdSettingsView f44582a;

    public C15802i(VideoCallerIdSettingsView videoCallerIdSettingsView) {
        this.f44582a = videoCallerIdSettingsView;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        C15795f c15795f = (C15795f) this.f44582a.getPresenter$video_caller_id_release();
        Objects.requireNonNull(c15795f);
        d.w2(c15795f, (f) null, (j0) null, new C15793d(c15795f, z, null), 3, (Object) null);
    }
}
