package com.privacystar.core.p011ui.report;

import android.os.Bundle;
import android.support.p004v7.app.AppCompatActivity;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.privacystar.core.C1566R;
import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.call.caller.CallerFactory;
import com.privacystar.core.util.extension.ViewExtensionsKt;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/ui/report/ReportThankYouActivity;", "Landroid/support/v7/app/AppCompatActivity;", "()V", "finishReport", "Landroid/view/View$OnClickListener;", "textView", "Landroid/widget/TextView;", "getTextView", "()Landroid/widget/TextView;", "setTextView", "(Landroid/widget/TextView;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.ui.report.ReportThankYouActivity */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/report/ReportThankYouActivity.class */
public final class ReportThankYouActivity extends AppCompatActivity {
    private HashMap _$_findViewCache;
    private final View.OnClickListener finishReport = new View.OnClickListener() { // from class: com.privacystar.core.ui.report.ReportThankYouActivity$finishReport$1
        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            ReportThankYouActivity.this.onBackPressed();
        }
    };
    @NotNull
    public TextView textView;

    public void _$_clearFindViewByIdCache() {
        if (this._$_findViewCache != null) {
            this._$_findViewCache.clear();
        }
    }

    public View _$_findCachedViewById(int i) {
        if (this._$_findViewCache == null) {
            this._$_findViewCache = new HashMap();
        }
        View view = (View) this._$_findViewCache.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this._$_findViewCache.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    @NotNull
    public final TextView getTextView() {
        TextView textView = this.textView;
        if (textView == null) {
            Intrinsics.throwUninitializedPropertyAccessException("textView");
        }
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.p004v7.app.AppCompatActivity, android.support.p001v4.app.FragmentActivity, android.support.p001v4.app.SupportActivity, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1566R.C1571layout.activity_report_thank_you);
        View findViewById = findViewById(C1566R.C1569id.report_thank_you_text_extra);
        Intrinsics.checkExpressionValueIsNotNull(findViewById, "findViewById(R.id.report_thank_you_text_extra)");
        this.textView = (TextView) findViewById;
        ((Button) findViewById(C1566R.C1569id.report_finish)).setOnClickListener(this.finishReport);
        String stringExtra = getIntent().getStringExtra("number");
        if (stringExtra != null) {
            Caller caller = CallerFactory.getInstance().getCaller(stringExtra);
            Intrinsics.checkExpressionValueIsNotNull(caller, "CallerFactory.getInstance().getCaller(it)");
            if (caller.isScammer()) {
                TextView textView = this.textView;
                if (textView == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("textView");
                }
                ViewExtensionsKt.visible(textView);
            }
        }
    }

    public final void setTextView(@NotNull TextView textView) {
        Intrinsics.checkParameterIsNotNull(textView, "<set-?>");
        this.textView = textView;
    }
}
