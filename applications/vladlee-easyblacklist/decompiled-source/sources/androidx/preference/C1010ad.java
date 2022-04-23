package androidx.preference;

import android.widget.SeekBar;
/* renamed from: androidx.preference.ad */
/* loaded from: classes-dex2jar.jar:androidx/preference/ad.class */
final class C1010ad implements SeekBar.OnSeekBarChangeListener {

    /* renamed from: a */
    final /* synthetic */ SeekBarPreference f4327a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C1010ad(SeekBarPreference seekBarPreference) {
        this.f4327a = seekBarPreference;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onProgressChanged(SeekBar seekBar, int i, boolean z) {
        if (!z || (!this.f4327a.f4108f && this.f4327a.f4105c)) {
            SeekBarPreference seekBarPreference = this.f4327a;
            seekBarPreference.m7423h(i + seekBarPreference.f4104b);
            return;
        }
        this.f4327a.m7424a(seekBar);
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStartTrackingTouch(SeekBar seekBar) {
        this.f4327a.f4105c = true;
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public final void onStopTrackingTouch(SeekBar seekBar) {
        this.f4327a.f4105c = false;
        if (seekBar.getProgress() + this.f4327a.f4104b != this.f4327a.f4103a) {
            this.f4327a.m7424a(seekBar);
        }
    }
}
