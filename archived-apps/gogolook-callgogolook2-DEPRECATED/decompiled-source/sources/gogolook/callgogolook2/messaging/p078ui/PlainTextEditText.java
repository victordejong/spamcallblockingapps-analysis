package gogolook.callgogolook2.messaging.p078ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
import android.widget.TextView;
/* renamed from: gogolook.callgogolook2.messaging.ui.PlainTextEditText */
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/ui/PlainTextEditText.class */
public class PlainTextEditText extends EditText {
    public PlainTextEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // android.widget.TextView
    public boolean onTextContextMenuItem(int i) {
        ClipData primaryClip;
        if (i != 16908322) {
            return super.onTextContextMenuItem(i);
        }
        int selectionStart = getSelectionStart();
        boolean onTextContextMenuItem = super.onTextContextMenuItem(i);
        CharSequence text = getText();
        int selectionStart2 = getSelectionStart();
        int selectionEnd = getSelectionEnd();
        if (selectionStart2 - selectionStart == 1 && text.charAt(selectionStart2 - 1) == 65532 && (primaryClip = ((ClipboardManager) getContext().getSystemService("clipboard")).getPrimaryClip()) != null) {
            ClipData.Item itemAt = primaryClip.getItemAt(0);
            StringBuilder sb = new StringBuilder(text);
            String charSequence = itemAt.getText().toString();
            sb.replace(selectionStart, selectionStart2, charSequence);
            text = sb.toString();
            selectionStart2 = selectionStart + charSequence.length();
            selectionEnd = selectionStart2;
        }
        setText(text.toString(), TextView.BufferType.EDITABLE);
        setSelection(selectionStart2, selectionEnd);
        return onTextContextMenuItem;
    }
}
