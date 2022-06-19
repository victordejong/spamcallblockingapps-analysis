package p193e.p194a.p947k.p948a.p962i;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import androidx.constraintlayout.widget.Group;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.settings.VideoCallerIdSettingsView;
import com.truecaller.videocallerid.p187ui.view.PreviewView;
import java.util.Objects;
import p193e.p194a.p947k.p972m.C16151y;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.i.h */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/i/h.class */
public final class C15801h extends m implements a<C16151y> {

    /* renamed from: b */
    public final /* synthetic */ VideoCallerIdSettingsView f44580b;

    /* renamed from: c */
    public final /* synthetic */ Context f44581c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15801h(VideoCallerIdSettingsView videoCallerIdSettingsView, Context context) {
        super(0);
        this.f44580b = videoCallerIdSettingsView;
        this.f44581c = context;
    }

    public Object invoke() {
        LayoutInflater from = LayoutInflater.from(this.f44581c);
        VideoCallerIdSettingsView videoCallerIdSettingsView = this.f44580b;
        Objects.requireNonNull(videoCallerIdSettingsView, "parent");
        from.inflate(C4718R.layout.view_video_caller_id_settings, videoCallerIdSettingsView);
        int i = C4718R.C4720id.configureButton;
        Button button = (Button) videoCallerIdSettingsView.findViewById(i);
        if (button != null) {
            i = C4718R.C4720id.description;
            TextView textView = (TextView) videoCallerIdSettingsView.findViewById(i);
            if (textView != null) {
                i = C4718R.C4720id.divider;
                View findViewById = videoCallerIdSettingsView.findViewById(i);
                if (findViewById != null) {
                    i = C4718R.C4720id.managePreference;
                    Button button2 = (Button) videoCallerIdSettingsView.findViewById(i);
                    if (button2 != null) {
                        i = C4718R.C4720id.previewView;
                        PreviewView previewView = (PreviewView) videoCallerIdSettingsView.findViewById(i);
                        if (previewView != null) {
                            i = C4718R.C4720id.receiveVideoDescription;
                            TextView textView2 = (TextView) videoCallerIdSettingsView.findViewById(i);
                            if (textView2 != null) {
                                i = C4718R.C4720id.receiveVideoSetting;
                                TextView textView3 = (TextView) videoCallerIdSettingsView.findViewById(i);
                                if (textView3 != null) {
                                    i = C4718R.C4720id.recommendationText;
                                    TextView textView4 = (TextView) videoCallerIdSettingsView.findViewById(i);
                                    if (textView4 != null) {
                                        i = C4718R.C4720id.selectedPreferences;
                                        TextView textView5 = (TextView) videoCallerIdSettingsView.findViewById(i);
                                        if (textView5 != null) {
                                            i = C4718R.C4720id.settingSwitch;
                                            SwitchCompat switchCompat = (SwitchCompat) videoCallerIdSettingsView.findViewById(i);
                                            if (switchCompat != null) {
                                                i = C4718R.C4720id.showYourVideoSettingGroup;
                                                Group group = (Group) videoCallerIdSettingsView.findViewById(i);
                                                if (group != null) {
                                                    i = C4718R.C4720id.title;
                                                    TextView textView6 = (TextView) videoCallerIdSettingsView.findViewById(i);
                                                    if (textView6 != null) {
                                                        return new C16151y(videoCallerIdSettingsView, button, textView, findViewById, button2, previewView, textView2, textView3, textView4, textView5, switchCompat, group, textView6);
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(videoCallerIdSettingsView.getResources().getResourceName(i)));
    }
}
