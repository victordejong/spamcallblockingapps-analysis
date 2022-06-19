package p193e.p194a.p947k.p972m;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import com.truecaller.videocallerid.p187ui.view.VideoGradientView;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.k.m.v */
/* loaded from: classes15-dex2jar.jar:e/a/k/m/v.class */
public final class C16148v implements AbstractC26410a {

    /* renamed from: a */
    public final View f45567a;

    /* renamed from: b */
    public final AvatarXView f45568b;

    /* renamed from: c */
    public final View f45569c;

    /* renamed from: d */
    public final FullScreenVideoPlayerView f45570d;

    /* renamed from: e */
    public final TextView f45571e;

    /* renamed from: f */
    public final TextView f45572f;

    /* renamed from: g */
    public final TextView f45573g;

    public C16148v(View view, AvatarXView avatarXView, View view2, VideoGradientView videoGradientView, FullScreenVideoPlayerView fullScreenVideoPlayerView, TextView textView, TextView textView2, TextView textView3) {
        this.f45567a = view;
        this.f45568b = avatarXView;
        this.f45569c = view2;
        this.f45570d = fullScreenVideoPlayerView;
        this.f45571e = textView;
        this.f45572f = textView2;
        this.f45573g = textView3;
    }

    /* renamed from: a */
    public static C16148v m17802a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.inflate(C4718R.layout.view_video_caller_id_preview, viewGroup);
        int i = C4718R.C4720id.avatar;
        AvatarXView avatarXView = (AvatarXView) viewGroup.findViewById(i);
        if (avatarXView != null) {
            i = C4718R.C4720id.frameView;
            View findViewById = viewGroup.findViewById(i);
            if (findViewById != null) {
                i = C4718R.C4720id.gradientBackground;
                VideoGradientView videoGradientView = (VideoGradientView) viewGroup.findViewById(i);
                if (videoGradientView != null) {
                    i = C4718R.C4720id.playerView;
                    FullScreenVideoPlayerView fullScreenVideoPlayerView = (FullScreenVideoPlayerView) viewGroup.findViewById(i);
                    if (fullScreenVideoPlayerView != null) {
                        i = C4718R.C4720id.textCountry;
                        TextView textView = (TextView) viewGroup.findViewById(i);
                        if (textView != null) {
                            i = C4718R.C4720id.textPhoneNumber;
                            TextView textView2 = (TextView) viewGroup.findViewById(i);
                            if (textView2 != null) {
                                i = C4718R.C4720id.textProfileName;
                                TextView textView3 = (TextView) viewGroup.findViewById(i);
                                if (textView3 != null) {
                                    return new C16148v(viewGroup, avatarXView, findViewById, videoGradientView, fullScreenVideoPlayerView, textView, textView2, textView3);
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewGroup.getResources().getResourceName(i)));
    }
}
