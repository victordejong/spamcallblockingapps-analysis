package gogolook.callgogolook2;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import gogolook.callgogolook2.util.control.VersionManager;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14315y;
import p459j.p460a.p582w0.p590x4.C14312y;
import p459j.p460a.p613z0.DialogC14631j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0006H\u0016J\u0012\u0010\u0007\u001a\u00020\u00062\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0006H\u0014R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u000b"}, m815d2 = {"Lgogolook/callgogolook2/ForceUpgradeActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "dialog", "Landroid/app/Dialog;", "finish", "", "onCreate", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ForceUpgradeActivity.class */
public final class ForceUpgradeActivity extends AppCompatActivity {

    /* renamed from: a */
    public Dialog f10445a;

    /* renamed from: gogolook.callgogolook2.ForceUpgradeActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ForceUpgradeActivity$a.class */
    public static final class DialogInterface$OnCancelListenerC4323a implements DialogInterface.OnCancelListener {
        public DialogInterface$OnCancelListenerC4323a() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public final void onCancel(DialogInterface dialogInterface) {
            C14312y.m1616a(3, 4);
            ForceUpgradeActivity.this.finish();
        }
    }

    /* renamed from: gogolook.callgogolook2.ForceUpgradeActivity$b */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ForceUpgradeActivity$b.class */
    public static final class DialogInterface$OnShowListenerC4324b implements DialogInterface.OnShowListener {

        /* renamed from: a */
        public static final DialogInterface$OnShowListenerC4324b f10447a = new DialogInterface$OnShowListenerC4324b();

        @Override // android.content.DialogInterface.OnShowListener
        public final void onShow(DialogInterface dialogInterface) {
            C14312y.m1616a(3, 0);
        }
    }

    /* renamed from: gogolook.callgogolook2.ForceUpgradeActivity$c */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/ForceUpgradeActivity$c.class */
    public static final class C4325c implements DialogC14631j.AbstractC14634c {
        @Override // p459j.p460a.p613z0.DialogC14631j.AbstractC14634c
        /* renamed from: a */
        public void mo956a() {
            C14312y.m1616a(3, 1);
        }

        @Override // p459j.p460a.p613z0.DialogC14631j.AbstractC14634c
        /* renamed from: b */
        public void mo955b() {
        }
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        overridePendingTransition(17432576, 17432577);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.app_update);
        C4325c cVar = new C4325c();
        DialogC14631j.C14635d dVar = new DialogC14631j.C14635d(this);
        dVar.m953a(R$drawable.flexible_dialog_s_image_img_force_upgrade);
        dVar.m948b(VersionManager.m25995c(4));
        dVar.m950a(true);
        dVar.m951a(VersionManager.m25990f());
        dVar.m952a(cVar);
        Dialog a = dVar.m954a();
        a.setOnCancelListener(new DialogInterface$OnCancelListenerC4323a());
        a.setOnShowListener(DialogInterface$OnShowListenerC4324b.f10447a);
        C14315y.m1603b(a);
        this.f10445a = a;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        Dialog dialog = this.f10445a;
        if (dialog != null) {
            C14315y.m1604a(dialog);
        }
    }
}
