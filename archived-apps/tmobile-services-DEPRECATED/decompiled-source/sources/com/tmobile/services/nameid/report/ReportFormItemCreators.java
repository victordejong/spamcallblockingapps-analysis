package com.tmobile.services.nameid.report;

import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.text.InputFilter;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.ColorRes;
import androidx.annotation.StringRes;
import androidx.collection.ArraySet;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.p007ui.NameIDButton;
import com.tmobile.services.nameid.p007ui.NameIDRadioButton;
import com.tmobile.services.nameid.p007ui.NameIDSquareButton;
import com.tmobile.services.nameid.report.GenericReportActivity;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.ScreenDensityUtils;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/report/ReportFormItemCreators.class */
public class ReportFormItemCreators {
    private ReportFormItemCreators() {
        throw new IllegalAccessError("This is a utility class, it doesn't need to be created.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static void m6445a(Context context, String[] strArr, ColorStateList colorStateList, final HashMap<Integer, String> hashMap, ViewGroup viewGroup, final Map<String, Integer> map, final GenericReportActivity.ReportNavigationListener reportNavigationListener) {
        final ArrayList arrayList = new ArrayList();
        m6433m(context, viewGroup, colorStateList, arrayList);
        for (String str : strArr) {
            arrayList.add(m6444b(str, context, viewGroup, colorStateList));
        }
        m6443c(context, viewGroup, 20, 0);
        m6430p(C1517R.string.report_tell_us_more, context, viewGroup);
        final EditText e = m6441e(context, C1517R.string.report_tell_us_more_subtext, viewGroup);
        m6432n(context, C1517R.string.report_final_disclaimer, 12, C1517R.C1518color.grey_3, viewGroup);
        m6438h(viewGroup, context, true, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReportFormItemCreators.m6424v(hashMap, e, arrayList, map, reportNavigationListener, view);
            }
        }, new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                GenericReportActivity.ReportNavigationListener.this.mo6384a(GenericReportActivity.ReportNavigation.BACK);
            }
        });
    }

    /* renamed from: b */
    public static CheckBox m6444b(String str, Context context, ViewGroup viewGroup, ColorStateList colorStateList) {
        CheckBox checkBox = new CheckBox(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        int a = ScreenDensityUtils.m5376a(context, 16);
        int a2 = ScreenDensityUtils.m5376a(context, 6);
        layoutParams.setMargins(a, a2, a, a2);
        checkBox.setLayoutParams(layoutParams);
        checkBox.setText(str);
        if (Build.VERSION.SDK_INT >= 21) {
            checkBox.setButtonTintList(colorStateList);
        }
        viewGroup.addView(checkBox);
        return checkBox;
    }

    /* renamed from: c */
    public static void m6443c(Context context, ViewGroup viewGroup, int i, int i2) {
        m6442d(context, viewGroup, i, i2, 1);
    }

    /* renamed from: d */
    public static void m6442d(Context context, ViewGroup viewGroup, int i, int i2, int i3) {
        LinearLayout linearLayout = new LinearLayout(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, ScreenDensityUtils.m5376a(context, i3));
        layoutParams.setMargins(0, ScreenDensityUtils.m5376a(context, i), 0, ScreenDensityUtils.m5376a(context, i2));
        linearLayout.setLayoutParams(layoutParams);
        linearLayout.setBackgroundColor(context.getResources().getColor(C1517R.C1518color.white_2));
        viewGroup.addView(linearLayout);
    }

    /* renamed from: e */
    public static EditText m6441e(Context context, @StringRes int i, ViewGroup viewGroup) {
        EditText editText = new EditText(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int a = ScreenDensityUtils.m5376a(context, 16);
        layoutParams.setMargins(a, a, a, a);
        editText.setLayoutParams(layoutParams);
        int a2 = ScreenDensityUtils.m5376a(context, 12);
        editText.setPadding(a2, a2, a2, a2);
        editText.setHint(i);
        editText.setBackgroundColor(context.getResources().getColor(C1517R.C1518color.white_3));
        editText.setSingleLine(false);
        editText.setImeOptions(1073741824);
        editText.setInputType(131073);
        editText.setLines(2);
        editText.setGravity(48);
        editText.setTextSize(16.0f);
        editText.setVerticalScrollBarEnabled(true);
        editText.setMovementMethod(ScrollingMovementMethod.getInstance());
        editText.setFilters(new InputFilter[]{new InputFilter.LengthFilter(500)});
        if (Build.VERSION.SDK_INT >= 21) {
            editText.setElevation(ScreenDensityUtils.m5376a(context, 4));
        }
        viewGroup.addView(editText);
        return editText;
    }

    /* renamed from: f */
    private static LinearLayout m6440f(Context context) {
        LinearLayout linearLayout = new LinearLayout(context);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2, 1.0f));
        linearLayout.setOrientation(0);
        linearLayout.setGravity(80);
        return linearLayout;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static void m6439g(Context context, ViewGroup viewGroup, @StringRes int i, View.OnClickListener onClickListener) {
        View inflate = LayoutInflater.from(context).inflate(C1517R.layout.report_history_stack_item, (ViewGroup) null);
        ((TextView) inflate.findViewById(C1517R.C1520id.report_history_item_text)).setText(i);
        ((NameIDButton) inflate.findViewById(C1517R.C1520id.report_history_item_button)).setOnClickListener(onClickListener);
        viewGroup.addView(inflate);
    }

    /* renamed from: h */
    public static Button[] m6438h(ViewGroup viewGroup, Context context, boolean z, View.OnClickListener onClickListener, View.OnClickListener onClickListener2) {
        LinearLayout f = m6440f(context);
        NameIDSquareButton nameIDSquareButton = (NameIDSquareButton) LayoutInflater.from(context).inflate(C1517R.layout.report_back_button, (ViewGroup) null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, ScreenDensityUtils.m5376a(context, 56), 1.0f);
        nameIDSquareButton.setLayoutParams(layoutParams);
        nameIDSquareButton.setText(C1517R.string.general_back);
        nameIDSquareButton.setTextSize(14.0f);
        nameIDSquareButton.setOnClickListener(onClickListener2);
        f.addView(nameIDSquareButton);
        NameIDButton nameIDButton = (NameIDButton) LayoutInflater.from(context).inflate(C1517R.layout.pink_on_white_button, (ViewGroup) null);
        nameIDButton.setLayoutParams(layoutParams);
        if (z) {
            nameIDButton.setText(C1517R.string.report_submit);
        } else {
            nameIDButton.setText(C1517R.string.general_next);
        }
        nameIDButton.setTextSize(14.0f);
        nameIDButton.setOnClickListener(onClickListener);
        f.addView(nameIDButton);
        viewGroup.addView(f);
        return new Button[]{nameIDSquareButton, nameIDButton};
    }

    /* renamed from: i */
    public static Button m6437i(ViewGroup viewGroup, Context context, boolean z, View.OnClickListener onClickListener) {
        LinearLayout f = m6440f(context);
        NameIDButton nameIDButton = (NameIDButton) LayoutInflater.from(context).inflate(C1517R.layout.pink_on_white_button, (ViewGroup) null);
        nameIDButton.setLayoutParams(new LinearLayout.LayoutParams(-1, ScreenDensityUtils.m5376a(context, 56)));
        if (z) {
            nameIDButton.setText(C1517R.string.report_submit);
        } else {
            nameIDButton.setText(C1517R.string.general_next);
        }
        nameIDButton.setTextSize(14.0f);
        nameIDButton.setOnClickListener(onClickListener);
        f.addView(nameIDButton);
        viewGroup.addView(f);
        return nameIDButton;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public static TextView m6436j(Context context, ViewGroup viewGroup, boolean z) {
        TextView textView = new TextView(context);
        textView.setTextSize(12.0f);
        textView.setText(C1517R.string.report_no_item_selected);
        if (z) {
            textView.setText(C1517R.string.report_no_type_selected);
        }
        textView.setTextColor(context.getResources().getColor(C1517R.C1518color.report_red));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int a = ScreenDensityUtils.m5376a(context, 16);
        layoutParams.setMargins(a, 0, a, a);
        textView.setLayoutParams(layoutParams);
        textView.setVisibility(8);
        viewGroup.addView(textView);
        return textView;
    }

    /* renamed from: k */
    public static NameIDRadioButton m6435k(String str, RadioGroup radioGroup, Context context, ColorStateList colorStateList) {
        NameIDRadioButton nameIDRadioButton = new NameIDRadioButton(context);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2, 1.0f);
        int a = ScreenDensityUtils.m5376a(context, 16);
        int a2 = ScreenDensityUtils.m5376a(context, 6);
        layoutParams.setMargins(a, a2, a, a2);
        nameIDRadioButton.setLayoutParams(layoutParams);
        nameIDRadioButton.setText(str);
        if (Build.VERSION.SDK_INT >= 21) {
            nameIDRadioButton.setButtonTintList(colorStateList);
        }
        radioGroup.addView(nameIDRadioButton);
        return nameIDRadioButton;
    }

    /* renamed from: l */
    public static RadioGroup m6434l(Context context, ViewGroup viewGroup, String[] strArr, String[] strArr2, ColorStateList colorStateList) {
        RadioGroup radioGroup = new RadioGroup(context);
        radioGroup.setLayoutParams(new RadioGroup.LayoutParams(-1, -2));
        boolean z = true;
        radioGroup.setOrientation(1);
        viewGroup.addView(radioGroup);
        if (strArr.length != strArr2.length) {
            z = false;
        }
        if (!z) {
            LogUtil.m5631p("ReportFormItemCreators#addRadioGroup", "Invalid analytics info. Analytics will be unavailable for this Radio Group.");
        }
        if (strArr != null) {
            for (int i = 0; i < strArr.length; i++) {
                NameIDRadioButton k = m6435k(strArr[i], radioGroup, context, colorStateList);
                if (z) {
                    k.m6263c(strArr2[i]);
                }
            }
        }
        return radioGroup;
    }

    /* renamed from: m */
    public static CheckBox m6433m(Context context, ViewGroup viewGroup, ColorStateList colorStateList, final List<CheckBox> list) {
        CheckBox b = m6444b(context.getString(C1517R.string.report_select_all_radios), context, viewGroup, colorStateList);
        b.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.report.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ReportFormItemCreators.m6422x(list, view);
            }
        });
        return b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static void m6432n(Context context, @StringRes int i, int i2, @ColorRes int i3, ViewGroup viewGroup) {
        m6431o(context, context.getString(i), i2, i3, viewGroup);
    }

    /* renamed from: o */
    static void m6431o(Context context, String str, int i, @ColorRes int i2, ViewGroup viewGroup) {
        TextView textView = new TextView(context);
        textView.setTextSize(i);
        textView.setText(str);
        textView.setTextColor(context.getResources().getColor(i2));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -2);
        int a = ScreenDensityUtils.m5376a(context, 16);
        layoutParams.setMargins(a, a, a, a);
        textView.setLayoutParams(layoutParams);
        viewGroup.addView(textView);
    }

    /* renamed from: p */
    public static void m6430p(@StringRes int i, Context context, ViewGroup viewGroup) {
        TextView textView = new TextView(context);
        textView.setText(i);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        int a = ScreenDensityUtils.m5376a(context, 16);
        layoutParams.setMargins(a, ScreenDensityUtils.m5376a(context, 30), a, a);
        textView.setTextSize(14.0f);
        textView.setTextColor(context.getResources().getColor(C1517R.C1518color.black));
        textView.setTextAppearance(context, C1517R.style.MediumWeightFont);
        textView.setLayoutParams(layoutParams);
        viewGroup.addView(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static void m6429q(RadioGroup radioGroup, int i) {
        if (i >= 0 && i < radioGroup.getChildCount()) {
            ((RadioButton) radioGroup.getChildAt(i)).setChecked(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: r */
    public static void m6428r(RadioGroup radioGroup, HashMap<Integer, String> hashMap, Map<String, Integer> map) {
        for (int i = 0; i < radioGroup.getChildCount(); i++) {
            RadioButton radioButton = (RadioButton) radioGroup.getChildAt(i);
            hashMap.put(map.get(radioButton.getText().toString()), radioButton.isChecked() ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: s */
    public static void m6427s(ArrayList<CheckBox> arrayList, HashMap<Integer, String> hashMap, Map<String, Integer> map) {
        Iterator<CheckBox> it = arrayList.iterator();
        while (it.hasNext()) {
            CheckBox next = it.next();
            Integer num = map.get(next.getText().toString());
            if (num != null) {
                hashMap.put(num, next.isChecked() ? TmoUserStatus.CUSTOMER_TYPE_POSTPAID : "0");
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public static String[] m6426t(Context context, @StringRes int[] iArr) {
        String[] strArr = new String[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            strArr[i] = context.getResources().getResourceEntryName(iArr[i]);
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: u */
    public static String[] m6425u(Context context, @StringRes int[] iArr) {
        String[] strArr = new String[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            strArr[i] = context.getString(iArr[i]);
        }
        return strArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public static /* synthetic */ void m6424v(HashMap hashMap, EditText editText, ArrayList arrayList, Map map, GenericReportActivity.ReportNavigationListener reportNavigationListener, View view) {
        hashMap.put(3, editText.getText().toString());
        m6427s(arrayList, hashMap, map);
        reportNavigationListener.mo6384a(GenericReportActivity.ReportNavigation.THANK_YOU);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: x */
    public static /* synthetic */ void m6422x(List list, View view) {
        if (view instanceof CheckBox) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ((CheckBox) it.next()).setChecked(((CheckBox) view).isChecked());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public static void m6421y(String str, List<CheckBox> list) {
        for (String str2 : PreferenceUtils.m5387j(str)) {
            for (CheckBox checkBox : list) {
                if (str2.equalsIgnoreCase(checkBox.getText().toString())) {
                    checkBox.setChecked(true);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: z */
    public static void m6420z(String str, List<CheckBox> list) {
        ArraySet arraySet = new ArraySet();
        for (CheckBox checkBox : list) {
            if (checkBox.isChecked()) {
                arraySet.add(checkBox.getText().toString());
            }
        }
        PreferenceUtils.m5381p(str, arraySet);
    }
}
