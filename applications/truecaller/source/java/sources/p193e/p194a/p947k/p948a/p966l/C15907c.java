package p193e.p194a.p947k.p948a.p966l;

import android.animation.ObjectAnimator;
import com.truecaller.videocallerid.p187ui.view.RecordButton;
import s1.s;
import s1.z.b.a;
import s1.z.c.m;
/* renamed from: e.a.k.a.l.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/l/c.class */
public final class C15907c extends m implements a<s> {

    /* renamed from: b */
    public final /* synthetic */ RecordButton f44884b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C15907c(RecordButton recordButton) {
        super(0);
        this.f44884b = recordButton;
    }

    public Object invoke() {
        ObjectAnimator countDownAnimator;
        countDownAnimator = this.f44884b.getCountDownAnimator();
        countDownAnimator.setDuration(10000L).start();
        return s.a;
    }
}
