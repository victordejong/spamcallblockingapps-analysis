package com.privacystar.core.p011ui.widgets.dialog;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.privacystar.core.C1566R;
/* renamed from: com.privacystar.core.ui.widgets.dialog.DialogButtonView */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/ui/widgets/dialog/DialogButtonView.class */
public class DialogButtonView extends LinearLayout {
    public DialogButtonView(Context context) {
        this(context, null);
    }

    public DialogButtonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        LayoutInflater.from(context).inflate(C1566R.C1571layout.information_dialog_button_view, (ViewGroup) this, true);
    }

    public void setContent(String str) {
        ((TextView) findViewById(C1566R.C1569id.information_dialog_button_tv)).setText(str);
    }
}
