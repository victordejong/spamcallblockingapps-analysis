package p193e.p194a.p947k.p968b;

import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.p070ui.PlayerView;
import javax.inject.Inject;
import kotlin.Metadata;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24539r;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import s1.g;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0001\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\rJ+\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b\f\u0010\rR\"\u0010\u0015\u001a\u00020\u000e8��@��X\u0081.¢\u0006\u0012\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012\"\u0004\b\u0013\u0010\u0014R\u001d\u0010\u001b\u001a\u00020\u00168B@\u0002X\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0019\u0010\u001a¨\u0006\u001d"}, d2 = {"Le/a/k/b/k;", "Ln3/r/a/k;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", "container", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;", "Ls1/s;", "onDestroy", "()V", "Le/a/k/c/q;", "e", "Le/a/k/c/q;", "getExoPlayerUtil$video_caller_id_release", "()Le/a/k/c/q;", "setExoPlayerUtil$video_caller_id_release", "(Le/a/k/c/q;)V", "exoPlayerUtil", "Lcom/google/android/exoplayer2/SimpleExoPlayer;", "f", "Ls1/g;", "getMediaPlayer", "()Lcom/google/android/exoplayer2/SimpleExoPlayer;", "mediaPlayer", "<init>", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.k.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/k.class */
public final class C15936k extends AbstractC15935j {
    @Inject

    /* renamed from: e */
    public AbstractC16044q f44936e;

    /* renamed from: f */
    public final g f44937f = C25225a.m3978P1(new C15937a());

    /* renamed from: e.a.k.b.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/b/k$a.class */
    public static final class C15937a extends m implements a<SimpleExoPlayer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C15937a() {
            super(0);
            C15936k.this = r4;
        }

        public Object invoke() {
            SimpleExoPlayer m39243a = new SimpleExoPlayer.C1964b(C15936k.this.requireContext()).m39243a();
            l.d(m39243a, "it");
            m39243a.setRepeatMode(2);
            AbstractC16044q abstractC16044q = C15936k.this.f44936e;
            String str = null;
            if (abstractC16044q == null) {
                l.l("exoPlayerUtil");
                throw null;
            }
            AbstractC24539r mo17960c = abstractC16044q.mo17960c();
            Bundle arguments = C15936k.this.getArguments();
            if (arguments != null) {
                str = arguments.getString("path");
            }
            m39243a.prepare(mo17960c.mo4937a(Uri.parse(str)));
            m39243a.setPlayWhenReady(true);
            return m39243a;
        }
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        l.e(layoutInflater, "inflater");
        PlayerView playerView = new PlayerView(layoutInflater.getContext());
        playerView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        playerView.setResizeMode(4);
        playerView.setPlayer((SimpleExoPlayer) this.f44937f.getValue());
        return playerView;
    }

    public void onDestroy() {
        ((SimpleExoPlayer) this.f44937f.getValue()).release();
        C15936k.super.onDestroy();
    }
}
