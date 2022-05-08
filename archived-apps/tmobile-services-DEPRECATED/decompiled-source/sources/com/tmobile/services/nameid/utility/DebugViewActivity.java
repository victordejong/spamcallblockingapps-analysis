package com.tmobile.services.nameid.utility;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentTransaction;
import com.tmobile.services.C1517R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\t"}, d2 = {"Lcom/tmobile/services/nameid/utility/DebugViewActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "(Landroid/os/Bundle;)V", "<init>", "()V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/DebugViewActivity.class */
public final class DebugViewActivity extends AppCompatActivity {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1517R.layout.activity_debug_view);
        DebugFragment debugFragment = new DebugFragment();
        FragmentTransaction beginTransaction = getSupportFragmentManager().beginTransaction();
        Intrinsics.m1831d(beginTransaction, "supportFragmentManager.beginTransaction()");
        beginTransaction.m18330r(C1517R.C1520id.activity_debug_root, debugFragment);
        beginTransaction.mo18339i();
    }
}
