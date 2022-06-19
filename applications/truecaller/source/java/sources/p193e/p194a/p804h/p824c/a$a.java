package p193e.p194a.p804h.p824c;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.fragment.app.Fragment;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.p183ui.SingleActivity;
import n3.r.a.l;
import p193e.p194a.p1114o5.C19045j0;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.p683a.AbstractC12695c2;
/* renamed from: e.a.h.c.a$a */
/* loaded from: classes3-dex2jar.jar:e/a/h/c/a$a.class */
public final class a$a implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ int f42128a;

    /* renamed from: b */
    public final /* synthetic */ Object f42129b;

    public a$a(int i, Object obj) {
        this.f42128a = i;
        this.f42129b = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        int i = this.f42128a;
        if (i == 0) {
            l activity = ((a) this.f42129b).getActivity();
            if (activity != null) {
                activity.startActivity(SingleActivity.m34591ua(activity, SingleActivity.FragmentSingle.SPEED_DIAL));
            }
            ((a) this.f42129b).dismissAllowingStateLoss();
        } else if (i == 1) {
            a aVar = (a) this.f42129b;
            aVar.d.m19832a(aVar.b, null);
            a aVar2 = (a) this.f42129b;
            Intent intent = aVar2.g;
            Fragment targetFragment = aVar2.getTargetFragment();
            if (targetFragment != null) {
                targetFragment.onActivityResult(aVar2.getTargetRequestCode(), -1, intent);
            }
            ((a) this.f42129b).dismissAllowingStateLoss();
        } else if (i != 2) {
            if (i != 3) {
                throw null;
            }
            a aVar3 = (a) this.f42129b;
            int i2 = C19045j0.f53198b;
            try {
                aVar3.startActivityForResult(new Intent("android.intent.action.PICK").setType("vnd.android.cursor.dir/phone_v2"), 1003);
            } catch (Exception e) {
                C10480a.m26061I1(e);
            }
        } else {
            a aVar4 = (a) this.f42129b;
            int i3 = aVar4.b;
            String str = aVar4.c;
            s1.z.c.l.e(aVar4, "fragment");
            l activity2 = aVar4.getActivity();
            if (activity2 == null) {
                return;
            }
            s1.z.c.l.d(activity2, "fragment.activity ?: return");
            b bVar = new b();
            Bundle bundle = new Bundle();
            Integer valueOf = Integer.valueOf(i3);
            int intValue = valueOf.intValue();
            if (!(2 <= intValue && 9 >= intValue)) {
                valueOf = null;
            }
            if (valueOf == null) {
                throw new IllegalArgumentException();
            }
            bundle.putInt("speed_dial_key", valueOf.intValue());
            bVar.setArguments(bundle);
            boolean z = TrueApp.f9585r;
            String string = AbstractApplicationC8442a.m28551L().getString(C2752R.string.SpeedDialDialog_Title, Integer.valueOf(i3));
            Bundle arguments = bVar.getArguments();
            arguments.putInt("layout_resource", C2752R.layout.dialog_speed_dial_enter_number);
            arguments.putInt("title_resource", 0);
            arguments.putString("title", string);
            arguments.putInt("hint_resource", 0);
            arguments.putString("initial_text", str);
            bVar.setTargetFragment(aVar4, 1002);
            AbstractC12695c2.m22740QA(bVar, activity2, null, 2, null);
        }
    }
}
