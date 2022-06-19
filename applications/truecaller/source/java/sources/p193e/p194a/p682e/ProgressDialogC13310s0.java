package p193e.p194a.p682e;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import com.razorpay.AnalyticsConstants;
import com.truecaller.common.network.util.KnownEndpoints;
import p193e.p194a.p372b0.p394b.p395a.C8367d;
import p193e.p194a.p372b0.p394b.p405n.AbstractC8411a;
import s1.z.c.l;
/* renamed from: e.a.e.s0 */
/* loaded from: classes15-dex2jar.jar:e/a/e/s0.class */
public final class ProgressDialogC13310s0 extends ProgressDialog {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ProgressDialogC13310s0(Context context) {
        super(context);
        l.e(context, AnalyticsConstants.CONTEXT);
    }

    @Override // android.app.ProgressDialog, android.app.AlertDialog, android.app.Dialog
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setMessage(getContext().getString(2131887897));
        ((AbstractC8411a) C8367d.m28633a(KnownEndpoints.USERARCHIVE, AbstractC8411a.class)).m28599a().enqueue(new C13261h1(this));
    }
}
