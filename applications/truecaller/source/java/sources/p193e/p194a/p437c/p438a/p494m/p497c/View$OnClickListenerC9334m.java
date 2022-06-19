package p193e.p194a.p437c.p438a.p494m.p497c;

import android.content.Intent;
import android.view.View;
import java.util.Objects;
import s1.a.l;
/* renamed from: e.a.c.a.m.c.m */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/m.class */
public final class View$OnClickListenerC9334m implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9322i f28367a;

    public View$OnClickListenerC9334m(C9322i c9322i) {
        this.f28367a = c9322i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9322i c9322i = this.f28367a;
        l[] lVarArr = C9322i.f28341i;
        Objects.requireNonNull(c9322i);
        Intent intent = new Intent("android.intent.action.CREATE_DOCUMENT");
        intent.addCategory("android.intent.category.OPENABLE");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TITLE", "msg_feedback.csv");
        c9322i.startActivityForResult(intent, 1);
    }
}
