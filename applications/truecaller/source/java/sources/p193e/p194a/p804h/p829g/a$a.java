package p193e.p194a.p804h.p829g;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.calling.recorder.CallRecordingsListMvp$ActionType;
import p193e.p194a.p1111o2.C18900h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.h.g.a$a */
/* loaded from: classes6-dex2jar.jar:e/a/h/g/a$a.class */
public final class a$a extends m implements l<View, s> {

    /* renamed from: b */
    public final /* synthetic */ int f42191b;

    /* renamed from: c */
    public final /* synthetic */ Object f42192c;

    /* renamed from: d */
    public final /* synthetic */ Object f42193d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a$a(int i, Object obj, Object obj2) {
        super(1);
        this.f42191b = i;
        this.f42192c = obj;
        this.f42193d = obj2;
    }

    /* renamed from: d */
    public final Object m19787d(Object obj) {
        s sVar = s.a;
        int i = this.f42191b;
        if (i == 0) {
            s1.z.c.l.e((View) obj, "it");
            a.N4((a) this.f42192c, (a) this.f42193d);
            return sVar;
        } else if (i != 1) {
            throw null;
        } else {
            View view = (View) obj;
            s1.z.c.l.e(view, "it");
            ((a) this.f42192c).h.mo14327t(new C18900h(CallRecordingsListMvp$ActionType.SHOW_CALL_RECORDING_MENU_OPTIONS.getEventAction(), (RecyclerView.AbstractC0313c0) ((a) this.f42193d), view, (Object) null, 8));
            return sVar;
        }
    }
}
