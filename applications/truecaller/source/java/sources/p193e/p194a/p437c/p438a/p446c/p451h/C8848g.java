package p193e.p194a.p437c.p438a.p446c.p451h;

import android.app.role.RoleManager;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import com.razorpay.AnalyticsConstants;
import java.util.Objects;
import p1727n3.p1728a.p1730e.p1731d.AbstractC25376a;
import p193e.p194a.p437c.p524b.AbstractC9689h;
import s1.s;
import s1.z.c.l;
/* renamed from: e.a.c.a.c.h.g */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/c/h/g.class */
public final class C8848g extends AbstractC25376a<s, Boolean> {

    /* renamed from: a */
    public final AbstractC9689h f26960a;

    public C8848g(AbstractC9689h abstractC9689h) {
        l.e(abstractC9689h, "permissionHelper");
        this.f26960a = abstractC9689h;
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: a */
    public Intent mo3691a(Context context, s sVar) {
        Intent intent;
        l.e(context, AnalyticsConstants.CONTEXT);
        if (Build.VERSION.SDK_INT >= 29) {
            Object systemService = context.getSystemService("role");
            Objects.requireNonNull(systemService, "null cannot be cast to non-null type android.app.role.RoleManager");
            intent = ((RoleManager) systemService).createRequestRoleIntent("android.app.role.SMS");
            l.d(intent, "roleManager.createReques…ent(RoleManager.ROLE_SMS)");
        } else {
            Intent intent2 = new Intent("android.provider.Telephony.ACTION_CHANGE_DEFAULT");
            intent2.putExtra("package", context.getPackageName());
            intent = intent2;
        }
        return intent;
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: b */
    public AbstractC25376a.C25377a<Boolean> mo3692b(Context context, s sVar) {
        l.e(context, AnalyticsConstants.CONTEXT);
        return this.f26960a.mo27300c() ? new AbstractC25376a.C25377a<>(Boolean.TRUE) : null;
    }

    @Override // p1727n3.p1728a.p1730e.p1731d.AbstractC25376a
    /* renamed from: c */
    public Boolean mo3690c(int i, Intent intent) {
        return Boolean.valueOf(this.f26960a.mo27300c());
    }
}
