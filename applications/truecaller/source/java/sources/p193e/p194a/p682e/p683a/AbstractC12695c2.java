package p193e.p194a.p682e.p683a;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.huawei.hms.push.constant.RemoteMessageConst;
import kotlin.Metadata;
import n3.b.a.q;
import n3.r.a.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018��2\u00020\u0001:\u0001\u0015B\u0007¢\u0006\u0004\b\u0014\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0005\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0014¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\f\u0010\rJ\u0017\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000e\u0010\rJ!\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u00062\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0004¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0016"}, d2 = {"Le/a/e/a/c2;", "Ln3/b/a/q;", "Ls1/s;", "dismiss", "()V", "dismissAllowingStateLoss", "", "which", "OA", "(I)V", "Landroid/content/DialogInterface;", "dialog", "onCancel", "(Landroid/content/DialogInterface;)V", "onDismiss", "result", "Landroid/content/Intent;", RemoteMessageConst.DATA, "PA", "(ILandroid/content/Intent;)V", "<init>", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.e.a.c2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/c2.class */
public abstract class AbstractC12695c2 extends q {

    /* renamed from: e.a.e.a.c2$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/c2$a.class */
    public interface AbstractC12696a {
        /* renamed from: a */
        void m22739a(AbstractC12695c2 abstractC12695c2, int i);

        /* renamed from: b */
        void m22738b(AbstractC12695c2 abstractC12695c2);

        /* renamed from: c */
        void m22737c(AbstractC12695c2 abstractC12695c2);
    }

    public AbstractC12695c2() {
        setArguments(new Bundle());
    }

    /* renamed from: QA */
    public static void m22740QA(AbstractC12695c2 abstractC12695c2, l lVar, String str, int i, Object obj) {
        String str2 = null;
        if ((i & 1) != 0) {
            lVar = null;
        }
        if ((i & 2) != 0) {
            str2 = abstractC12695c2.getClass().getName();
        }
        if (lVar == null || lVar.isFinishing()) {
            return;
        }
        try {
            FragmentManager supportFragmentManager = lVar.getSupportFragmentManager();
            s1.z.c.l.d(supportFragmentManager, "activity.supportFragmentManager");
            if (str2 != null && supportFragmentManager.m42942K(str2) != null) {
                return;
            }
            AbstractC12695c2.super.show(supportFragmentManager, str2);
            supportFragmentManager.m42946G();
        } catch (Exception e) {
        }
    }

    /* renamed from: OA */
    public void m22742OA(int i) {
        AbstractC12696a activity = getActivity();
        if (activity instanceof AbstractC12696a) {
            activity.m22739a(this, i);
        }
    }

    /* renamed from: PA */
    public final void m22741PA(int i, Intent intent) {
        Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            targetFragment.onActivityResult(getTargetRequestCode(), i, intent);
        }
    }

    public void dismiss() {
        l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            if (activity.isFinishing()) {
                return;
            }
            AbstractC12695c2.super.dismiss();
        }
    }

    public void dismissAllowingStateLoss() {
        l activity = getActivity();
        if (activity != null) {
            s1.z.c.l.d(activity, "activity ?: return");
            if (activity.isFinishing()) {
                return;
            }
            AbstractC12695c2.super.dismissAllowingStateLoss();
        }
    }

    public void onCancel(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        AbstractC12695c2.super.onCancel(dialogInterface);
        AbstractC12696a activity = getActivity();
        if (activity instanceof AbstractC12696a) {
            activity.m22737c(this);
        }
        m22741PA(0, null);
    }

    public void onDismiss(DialogInterface dialogInterface) {
        s1.z.c.l.e(dialogInterface, "dialog");
        AbstractC12695c2.super.onDismiss(dialogInterface);
        AbstractC12696a activity = getActivity();
        if (activity instanceof AbstractC12696a) {
            activity.m22738b(this);
        }
    }
}
