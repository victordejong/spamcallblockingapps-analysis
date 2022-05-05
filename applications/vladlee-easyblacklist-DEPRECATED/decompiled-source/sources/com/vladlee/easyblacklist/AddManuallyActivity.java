package com.vladlee.easyblacklist;

import android.content.ContentValues;
import android.content.Intent;
import android.telephony.PhoneNumberUtils;
import android.view.MenuItem;
import android.view.inputmethod.InputMethodManager;
import android.widget.CheckBox;
import android.widget.EditText;
import androidx.appcompat.app.AppCompatActivity;
import com.vladlee.easyblacklist.C3318by;
/* loaded from: classes-dex2jar.jar:com/vladlee/easyblacklist/AddManuallyActivity.class */
public class AddManuallyActivity extends AppCompatActivity {

    /* renamed from: k */
    private int f19232k = 1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m381a(AddManuallyActivity addManuallyActivity, int i) {
        CheckBox checkBox = (CheckBox) addManuallyActivity.findViewById(2131296366);
        String obj = ((EditText) addManuallyActivity.findViewById(2131296412)).getText().toString();
        String stripSeparators = !checkBox.isChecked() ? PhoneNumberUtils.stripSeparators(obj) : obj.trim();
        CheckBox checkBox2 = (CheckBox) addManuallyActivity.findViewById(2131296368);
        CheckBox checkBox3 = (CheckBox) addManuallyActivity.findViewById(2131296367);
        if (stripSeparators.length() <= 0) {
            return;
        }
        if (i == 1) {
            if (checkBox2.isChecked()) {
                C3318by.m190b(addManuallyActivity, stripSeparators + "?");
            } else if (checkBox3.isChecked()) {
                C3318by.m190b(addManuallyActivity, "?" + stripSeparators + "?");
            } else {
                C3318by.m201a(addManuallyActivity, stripSeparators);
            }
        } else if (i == 2) {
            if (checkBox2.isChecked()) {
                String str = stripSeparators + "?";
                ContentValues contentValues = new ContentValues();
                if (!C3318by.m182c(C3318by.C3323e.f19429a, addManuallyActivity, str)) {
                    contentValues.put("phone", str);
                    contentValues.put("display_name", str);
                    addManuallyActivity.getContentResolver().insert(C3318by.C3323e.f19429a, contentValues);
                    return;
                }
                return;
            }
            C3318by.m194a(C3318by.C3323e.f19429a, addManuallyActivity, stripSeparators);
        } else if (i == 3) {
            C3318by.m194a(C3318by.C3320b.f19426a, addManuallyActivity, stripSeparators);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m378h() {
        EditText editText = (EditText) findViewById(2131296412);
        ((InputMethodManager) editText.getContext().getSystemService("input_method")).hideSoftInputFromWindow(editText.getWindowToken(), 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m377i() {
        findViewById(2131296603).setVisibility(((CheckBox) findViewById(2131296366)).isChecked() ? 8 : 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0144  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0155  */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onCreate(android.os.Bundle r6) {
        /*
            Method dump skipped, instructions count: 506
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vladlee.easyblacklist.AddManuallyActivity.onCreate(android.os.Bundle):void");
    }

    @Override // android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 16908332) {
            return super.onOptionsItemSelected(menuItem);
        }
        m378h();
        setResult(0, new Intent());
        finish();
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onStop() {
        super.onStop();
        m378h();
    }
}
