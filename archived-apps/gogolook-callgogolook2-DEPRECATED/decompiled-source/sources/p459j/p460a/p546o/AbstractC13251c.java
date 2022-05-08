package p459j.p460a.p546o;

import android.os.Bundle;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import gogolook.callgogolook2.p075cs.CustomerServiceActivity;
import java.util.HashMap;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\b&\u0018�� \u000b2\u00020\u0001:\u0001\u000bB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H&J\u0012\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\n\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082.¢\u0006\u0002\n��¨\u0006\f"}, m815d2 = {"Lgogolook/callgogolook2/cs/CustomerServiceFragment;", "Landroidx/fragment/app/Fragment;", "()V", "origTitle", "", "getTitle", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onDestroy", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.o.c */
/* loaded from: classes2-dex2jar.jar:j/a/o/c.class */
public abstract class AbstractC13251c extends Fragment {

    /* renamed from: a */
    public String f29846a;

    /* renamed from: b */
    public HashMap f29847b;

    /* renamed from: j.a.o.c$a */
    /* loaded from: classes2-dex2jar.jar:j/a/o/c$a.class */
    public static final class C13252a {
        public C13252a() {
        }

        public /* synthetic */ C13252a(C15145g gVar) {
            this();
        }
    }

    static {
        new C13252a(null);
    }

    /* renamed from: J */
    public void mo4362J() {
        HashMap hashMap = this.f29847b;
        if (hashMap != null) {
            hashMap.clear();
        }
    }

    /* renamed from: K */
    public abstract String mo4361K();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        FragmentActivity activity = getActivity();
        FragmentActivity fragmentActivity = activity;
        if (!(activity instanceof CustomerServiceActivity)) {
            fragmentActivity = null;
        }
        CustomerServiceActivity customerServiceActivity = (CustomerServiceActivity) fragmentActivity;
        if (customerServiceActivity != null) {
            this.f29846a = customerServiceActivity.m28623J().toString();
            customerServiceActivity.m28615c(mo4361K());
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        FragmentActivity activity = getActivity();
        FragmentActivity fragmentActivity = activity;
        if (!(activity instanceof CustomerServiceActivity)) {
            fragmentActivity = null;
        }
        CustomerServiceActivity customerServiceActivity = (CustomerServiceActivity) fragmentActivity;
        if (customerServiceActivity != null) {
            String str = this.f29846a;
            if (str != null) {
                customerServiceActivity.m28615c(str);
            } else {
                C15149k.m373d("origTitle");
                throw null;
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public /* synthetic */ void onDestroyView() {
        super.onDestroyView();
        mo4362J();
    }
}
