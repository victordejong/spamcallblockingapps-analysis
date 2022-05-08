package com.tmobile.services.nameid.report;

import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import com.tmobile.services.C1517R;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportThankYouActivity.class */
public class ReportThankYouActivity extends AppCompatActivity {

    /* renamed from: f */
    TextView f13663f;

    /* renamed from: i */
    public void m6386i() {
        onBackPressed();
    }

    /* renamed from: j */
    public /* synthetic */ void m6385j(View view) {
        m6386i();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1517R.layout.activity_report_thank_you);
        this.f13663f = (TextView) findViewById(C1517R.C1520id.report_thank_you_text_extra);
        findViewById(C1517R.C1520id.report_finish).setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.v
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReportThankYouActivity.this.m6385j(view);
            }
        });
        if (!getIntent().hasExtra("is_scammer") || !getIntent().getBooleanExtra("is_scammer", false)) {
            this.f13663f.setVisibility(8);
        } else {
            this.f13663f.setVisibility(0);
        }
    }
}
