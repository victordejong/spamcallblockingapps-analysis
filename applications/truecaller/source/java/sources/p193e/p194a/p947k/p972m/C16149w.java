package p193e.p194a.p947k.p972m;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.videoplayer.FullScreenVideoPlayerView;
import p1727n3.p1806j0.AbstractC26410a;
/* renamed from: e.a.k.m.w */
/* loaded from: classes15-dex2jar.jar:e/a/k/m/w.class */
public final class C16149w implements AbstractC26410a {

    /* renamed from: a */
    public final View f45574a;

    /* renamed from: b */
    public final View f45575b;

    /* renamed from: c */
    public final View f45576c;

    /* renamed from: d */
    public final FullScreenVideoPlayerView f45577d;

    /* renamed from: e */
    public final View f45578e;

    /* renamed from: f */
    public final View f45579f;

    /* renamed from: g */
    public final View f45580g;

    public C16149w(View view, View view2, View view3, FullScreenVideoPlayerView fullScreenVideoPlayerView, View view4, View view5, View view6) {
        this.f45574a = view;
        this.f45575b = view2;
        this.f45576c = view3;
        this.f45577d = fullScreenVideoPlayerView;
        this.f45578e = view4;
        this.f45579f = view5;
        this.f45580g = view6;
    }

    /* renamed from: a */
    public static C16149w m17801a(LayoutInflater layoutInflater, ViewGroup viewGroup) {
        layoutInflater.inflate(C4718R.layout.view_video_caller_id_preview_compact, viewGroup);
        int i = C4718R.C4720id.circle;
        View findViewById = viewGroup.findViewById(i);
        if (findViewById != null) {
            i = C4718R.C4720id.frameView;
            View findViewById2 = viewGroup.findViewById(i);
            if (findViewById2 != null) {
                i = C4718R.C4720id.playerView;
                FullScreenVideoPlayerView fullScreenVideoPlayerView = (FullScreenVideoPlayerView) viewGroup.findViewById(i);
                if (fullScreenVideoPlayerView != null) {
                    i = C4718R.C4720id.rect1;
                    View findViewById3 = viewGroup.findViewById(i);
                    if (findViewById3 != null) {
                        i = C4718R.C4720id.rect2;
                        View findViewById4 = viewGroup.findViewById(i);
                        if (findViewById4 != null) {
                            i = C4718R.C4720id.rect3;
                            View findViewById5 = viewGroup.findViewById(i);
                            if (findViewById5 != null) {
                                return new C16149w(viewGroup, findViewById, findViewById2, fullScreenVideoPlayerView, findViewById3, findViewById4, findViewById5);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewGroup.getResources().getResourceName(i)));
    }
}
