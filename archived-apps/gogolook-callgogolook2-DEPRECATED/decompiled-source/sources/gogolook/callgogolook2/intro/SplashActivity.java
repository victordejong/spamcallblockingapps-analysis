package gogolook.callgogolook2.intro;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import gogolook.callgogolook2.main.MainActivity;
import p459j.p460a.p582w0.C13915b3;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/SplashActivity.class */
public class SplashActivity extends AppCompatActivity {

    /* renamed from: gogolook.callgogolook2.intro.SplashActivity$a */
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/intro/SplashActivity$a.class */
    public class RunnableC4514a implements Runnable {
        public RunnableC4514a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Intent intent;
            Intent intent2;
            if (!(SplashActivity.this.isFinishing() || (intent = SplashActivity.this.getIntent()) == null || (intent2 = (Intent) intent.getParcelableExtra("INTENT_TO_START_ACTIVITY_KEY")) == null)) {
                SplashActivity.this.startActivity(intent2);
                SplashActivity.this.overridePendingTransition(0, 0);
            }
            SplashActivity.this.finish();
        }
    }

    /* renamed from: a */
    public static void m28050a(@NonNull Context context, @NonNull Intent intent) {
        if (context instanceof MainActivity) {
            Intent intent2 = new Intent(context, SplashActivity.class);
            intent2.putExtra("INTENT_TO_START_ACTIVITY_KEY", intent);
            intent = intent2;
        }
        context.startActivity(intent);
    }

    /* renamed from: D */
    public final void m28051D() {
        new Handler().postDelayed(new RunnableC4514a(), 1000L);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!C13915b3.m3062a("is_android_junit_test_mode", false)) {
            m28051D();
        }
    }
}
