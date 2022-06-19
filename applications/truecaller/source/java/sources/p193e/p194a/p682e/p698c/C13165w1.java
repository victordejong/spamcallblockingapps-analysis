package p193e.p194a.p682e.p698c;

import android.content.Intent;
import n3.r.a.l;
import p193e.p194a.p682e.AbstractC13291o0;
/* renamed from: e.a.e.c.w1 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/w1.class */
public class C13165w1 implements AbstractC13291o0.AbstractC13293b {

    /* renamed from: a */
    public final /* synthetic */ View$OnClickListenerC13135s1 f38269a;

    public C13165w1(View$OnClickListenerC13135s1 view$OnClickListenerC13135s1) {
        this.f38269a = view$OnClickListenerC13135s1;
    }

    /* renamed from: a */
    public final void m22002a(boolean z) {
        l activity = this.f38269a.getActivity();
        if (activity != null) {
            activity.setResult(-1, new Intent().putExtra("CONVERSATION_ID", activity.getIntent().getLongExtra("CONVERSATION_ID", -1L)).putExtra("RESULT_NUMBER_BLOCKED", z));
        }
    }
}
