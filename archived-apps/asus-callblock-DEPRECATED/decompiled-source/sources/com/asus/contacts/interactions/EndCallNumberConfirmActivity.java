package com.asus.contacts.interactions;

import android.animation.ArgbEvaluator;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.android.contacts.util.PhoneCapabilityTester;
import com.android.contacts.util.SchedulingUtils;
import com.asus.a.c;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallNumberConfirmActivity.class */
public class EndCallNumberConfirmActivity extends Activity implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private String f2691a = EndCallNumberConfirmActivity.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private String f2692b;
    private String c;
    private TextView d;
    private TextView e;
    private View f;
    private View g;
    private AsusFloatingChildBottomLayout h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.asus.contacts.interactions.EndCallNumberConfirmActivity$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/asus/contacts/interactions/EndCallNumberConfirmActivity$4.class */
    public final class AnonymousClass4 implements Runnable {
        AnonymousClass4() {
        }

        @Override // java.lang.Runnable
        public final void run() {
            SchedulingUtils.doAfterDraw(EndCallNumberConfirmActivity.this.h, new Runnable() { // from class: com.asus.contacts.interactions.EndCallNumberConfirmActivity.4.1
                @Override // java.lang.Runnable
                public final void run() {
                    new Handler().postDelayed(new Runnable() { // from class: com.asus.contacts.interactions.EndCallNumberConfirmActivity.4.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            EndCallNumberConfirmActivity.this.finish();
                            EndCallNumberConfirmActivity.this.overridePendingTransition(0, 0);
                        }
                    }, 60L);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.h.b();
        this.h.b(new AnonymousClass4());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        switch (view.getId()) {
            case 2131296545:
                c.c(this, this.f2692b);
                startActivity(new Intent(this, EndCallThanksActivity.class));
                a();
                return;
            case 2131296546:
                c.c(this, this.f2692b);
                a();
                Intent intent = new Intent("android.intent.action.ASUS_END_CALL_TAG");
                intent.putExtra("number", this.f2692b);
                intent.putExtra("markFrom", 1);
                startActivity(intent);
                return;
            default:
                return;
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        int q = c.q(this);
        if (q <= 0 || q % 5 != 0) {
            if (!PhoneCapabilityTester.isUsingTwoPanes(this)) {
                setRequestedOrientation(1);
            } else {
                setRequestedOrientation(-1);
            }
            getWindow().setFlags(131072, 131072);
            setContentView(2131427539);
            Intent intent = getIntent();
            if (intent != null) {
                this.f2692b = intent.getStringExtra("number");
                this.c = intent.getStringExtra("tagToConfirm");
            }
            if (TextUtils.isEmpty(this.f2692b) || TextUtils.isEmpty(this.c)) {
                Log.i(this.f2691a, "No phone number. finish!");
                finish();
                return;
            }
            try {
                this.h = (AsusFloatingChildBottomLayout) findViewById(2131296865);
                SchedulingUtils.doAfterLayout(this.h, new Runnable() { // from class: com.asus.contacts.interactions.EndCallNumberConfirmActivity.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        EndCallNumberConfirmActivity.this.h.a();
                    }
                });
                this.h.setOnOutsideTouchListener(new View.OnTouchListener() { // from class: com.asus.contacts.interactions.EndCallNumberConfirmActivity.2
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                        EndCallNumberConfirmActivity.this.a();
                        return true;
                    }
                });
                SchedulingUtils.doAfterLayout(this.h, new Runnable() { // from class: com.asus.contacts.interactions.EndCallNumberConfirmActivity.3
                    @Override // java.lang.Runnable
                    public final void run() {
                        EndCallNumberConfirmActivity.this.h.a(new Runnable() { // from class: com.asus.contacts.interactions.EndCallNumberConfirmActivity.3.1
                            @Override // java.lang.Runnable
                            public final void run() {
                            }
                        });
                    }
                });
                this.d = (TextView) findViewById(2131297384);
                this.e = (TextView) findViewById(2131297151);
                this.e.setText(this.f2692b);
                this.f = findViewById(2131296545);
                this.g = findViewById(2131296546);
                this.d.setText(this.c);
                this.f.setOnClickListener(this);
                this.g.setOnClickListener(this);
                this.g.setSelected(true);
                ObjectAnimator ofInt = ObjectAnimator.ofInt(getWindow(), "statusBarColor", 0, 2130706432);
                ofInt.setDuration(getResources().getInteger(17694720));
                ofInt.setEvaluator(new ArgbEvaluator());
                ofInt.start();
            } catch (Exception e) {
                Log.w(this.f2691a, e.toString());
                finish();
            }
        } else {
            Log.d(this.f2691a, "count:" + q + ", return");
            finish();
        }
    }
}
