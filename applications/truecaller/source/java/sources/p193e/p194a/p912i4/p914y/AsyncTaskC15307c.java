package p193e.p194a.p912i4.p914y;

import com.truecaller.notifications.internal.InternalTruecallerNotification;
import java.util.List;
import n3.r.a.l;
import p193e.p194a.p1114o5.C19133z0;
import p193e.p194a.p437c.p578p.C10480a;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a;
/* renamed from: e.a.i4.y.c */
/* loaded from: classes11-dex2jar.jar:e/a/i4/y/c.class */
public class AsyncTaskC15307c extends AbstractAsyncTaskC15557a {

    /* renamed from: d */
    public final /* synthetic */ C15308d f43558d;

    public AsyncTaskC15307c(C15308d c15308d) {
        this.f43558d = c15308d;
    }

    @Override // p193e.p194a.p937j4.p938a.AbstractAsyncTaskC15557a
    /* renamed from: a */
    public void mo18682a(Object obj) {
        C15308d c15308d = this.f43558d;
        int i = C15308d.f43559j;
        c15308d.m21972f(false);
        this.f43558d.m18941dB();
    }

    @Override // android.os.AsyncTask
    public Object doInBackground(Object... objArr) {
        List<InternalTruecallerNotification> list;
        l activity = this.f43558d.getActivity();
        if (activity == null || this.f43558d.f43564i == null) {
            return null;
        }
        try {
            C19133z0 m22588F = C12864a2.m22588F(activity);
            if (m22588F == null || (list = m22588F.f53355a) == null) {
                return null;
            }
            list.size();
            return null;
        } catch (Exception e) {
            C10480a.m26057J1(e, "BackupService checkServerNotifications caused");
            return null;
        }
    }
}
