package p193e.p194a.p947k.p948a.p959g.p960n0;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.p187ui.recording.customisation_option.VideoCustomisationOption;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p947k.p972m.C16139m;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.k.a.g.n0.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/n0/c.class */
public final class C15744c extends RecyclerView.AbstractC0317g<C15743b> {

    /* renamed from: a */
    public final List<VideoCustomisationOption> f44383a = new ArrayList();

    /* renamed from: b */
    public Integer f44384b;

    /* renamed from: c */
    public final l<VideoCustomisationOption, s> f44385c;

    /* renamed from: d */
    public final l<VideoCustomisationOption, s> f44386d;

    /* JADX WARN: Multi-variable type inference failed */
    public C15744c(l<? super VideoCustomisationOption, s> lVar, l<? super VideoCustomisationOption, s> lVar2) {
        s1.z.c.l.e(lVar, "onItemClickListener");
        s1.z.c.l.e(lVar2, "onItemVisibleListener");
        this.f44385c = lVar;
        this.f44386d = lVar2;
    }

    /* renamed from: e */
    public final void m18426e(VideoCustomisationOption videoCustomisationOption) {
        s1.z.c.l.e(videoCustomisationOption, "item");
        Integer num = this.f44384b;
        int indexOf = this.f44383a.indexOf(videoCustomisationOption);
        if (num != null) {
            notifyItemChanged(num.intValue());
        }
        notifyItemChanged(indexOf);
        this.f44384b = Integer.valueOf(indexOf);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f44383a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C15743b c15743b, int i) {
        C15743b c15743b2 = c15743b;
        s1.z.c.l.e(c15743b2, "holder");
        VideoCustomisationOption videoCustomisationOption = this.f44383a.get(i);
        Integer num = this.f44384b;
        s1.z.c.l.e(videoCustomisationOption, "item");
        C16139m c16139m = c15743b2.f44380a;
        View view = c15743b2.itemView;
        s1.z.c.l.d(view, "itemView");
        view.setSelected(num != null && c15743b2.getAdapterPosition() == num.intValue());
        if (videoCustomisationOption instanceof VideoCustomisationOption.C4735a) {
            ProgressBar progressBar = c16139m.f45525d;
            s1.z.c.l.d(progressBar, "progressBar");
            C19286f.m13689O(progressBar);
            ImageView imageView = c16139m.f45523b;
            s1.z.c.l.d(imageView, "image");
            VideoCustomisationOption.C4735a c4735a = (VideoCustomisationOption.C4735a) videoCustomisationOption;
            c15743b2.m18427N4(imageView, c4735a.f16049b, c4735a.f16050c);
        } else if (videoCustomisationOption instanceof VideoCustomisationOption.PredefinedVideo) {
            VideoCustomisationOption.PredefinedVideo predefinedVideo = (VideoCustomisationOption.PredefinedVideo) videoCustomisationOption;
            if (predefinedVideo.f16046f == VideoCustomisationOption.PredefinedVideo.VideoState.Loading) {
                ProgressBar progressBar2 = c16139m.f45525d;
                s1.z.c.l.d(progressBar2, "progressBar");
                C19286f.m13684T(progressBar2);
            } else {
                ProgressBar progressBar3 = c16139m.f45525d;
                s1.z.c.l.d(progressBar3, "progressBar");
                C19286f.m13689O(progressBar3);
            }
            if (predefinedVideo.f16046f == VideoCustomisationOption.PredefinedVideo.VideoState.Failed) {
                ImageView imageView2 = c16139m.f45526e;
                s1.z.c.l.d(imageView2, "progressFailure");
                C19286f.m13684T(imageView2);
            } else {
                ImageView imageView3 = c16139m.f45526e;
                s1.z.c.l.d(imageView3, "progressFailure");
                C19286f.m13689O(imageView3);
            }
            if (predefinedVideo.f16046f != VideoCustomisationOption.PredefinedVideo.VideoState.Downloaded || !predefinedVideo.f16047g) {
                ImageView imageView4 = c16139m.f45524c;
                s1.z.c.l.d(imageView4, "newBadge");
                C19286f.m13689O(imageView4);
            } else {
                ImageView imageView5 = c16139m.f45524c;
                s1.z.c.l.d(imageView5, "newBadge");
                C19286f.m13684T(imageView5);
                c15743b2.f44382c.d(videoCustomisationOption);
            }
            ImageView imageView6 = c16139m.f45523b;
            s1.z.c.l.d(imageView6, "image");
            c15743b2.m18427N4(imageView6, predefinedVideo.f16043c, false);
        }
        c15743b2.itemView.setOnClickListener(new View$OnClickListenerC15742a(c15743b2, videoCustomisationOption));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C15743b onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C4718R.layout.item_video_caller_id_recording_customisation_option, viewGroup, false);
        int i2 = C4718R.C4720id.image;
        ImageView imageView = (ImageView) inflate.findViewById(i2);
        if (imageView != null) {
            i2 = C4718R.C4720id.newBadge;
            ImageView imageView2 = (ImageView) inflate.findViewById(i2);
            if (imageView2 != null) {
                i2 = C4718R.C4720id.progress_bar;
                ProgressBar progressBar = (ProgressBar) inflate.findViewById(i2);
                if (progressBar != null) {
                    i2 = C4718R.C4720id.progress_failure;
                    ImageView imageView3 = (ImageView) inflate.findViewById(i2);
                    if (imageView3 != null) {
                        C16139m c16139m = new C16139m((ConstraintLayout) inflate, imageView, imageView2, progressBar, imageView3);
                        s1.z.c.l.d(c16139m, "binding");
                        return new C15743b(c16139m, this.f44385c, this.f44386d);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
