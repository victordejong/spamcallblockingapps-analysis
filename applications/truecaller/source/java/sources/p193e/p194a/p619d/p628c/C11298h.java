package p193e.p194a.p619d.p628c;

import android.view.GestureDetector;
import android.view.MotionEvent;
import androidx.fragment.app.FragmentManager;
import com.truecaller.voip.p192ui.VoipActivity;
import java.util.Objects;
import p193e.p194a.p619d.p620a.C10968a;
import p193e.p194a.p619d.p620a.C10981b;
import p193e.p194a.p619d.p657v.AbstractC11824d;
import p193e.p194a.p619d.p661w.AbstractC12095d;
import s1.z.c.l;
/* renamed from: e.a.d.c.h */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/h.class */
public final class C11298h extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: a */
    public final /* synthetic */ VoipActivity f33274a;

    public C11298h(VoipActivity voipActivity) {
        this.f33274a = voipActivity;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return true;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        if (f2 < -1000) {
            AbstractC11824d abstractC11824d = this.f33274a.f16437f;
            if (abstractC11824d == null) {
                l.l("groupCallManager");
                throw null;
            } else if (abstractC11824d.mo23956g()) {
                C10968a.C10971c c10971c = C10968a.f32489j;
                FragmentManager supportFragmentManager = this.f33274a.getSupportFragmentManager();
                l.d(supportFragmentManager, "supportFragmentManager");
                Objects.requireNonNull(c10971c);
                l.e(supportFragmentManager, "fragmentManager");
                new C10968a().show(supportFragmentManager, C10968a.class.getSimpleName());
                return true;
            } else {
                AbstractC12095d abstractC12095d = this.f33274a.f16438g;
                if (abstractC12095d == null) {
                    l.l("invitationManager");
                    throw null;
                } else if (!abstractC12095d.mo23622b()) {
                    return true;
                } else {
                    C10981b.C10984c c10984c = C10981b.f32526k;
                    FragmentManager supportFragmentManager2 = this.f33274a.getSupportFragmentManager();
                    l.d(supportFragmentManager2, "supportFragmentManager");
                    Objects.requireNonNull(c10984c);
                    l.e(supportFragmentManager2, "fragmentManager");
                    new C10981b().show(supportFragmentManager2, C10981b.class.getSimpleName());
                    return true;
                }
            }
        }
        return false;
    }
}
