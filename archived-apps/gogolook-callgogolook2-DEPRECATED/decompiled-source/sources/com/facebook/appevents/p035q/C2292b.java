package com.facebook.appevents.p035q;

import android.content.res.Resources;
import android.view.View;
import android.widget.EditText;
import android.widget.TextView;
import com.facebook.appevents.p036r.p037g.C2326f;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.facebook.appevents.q.b */
/* loaded from: classes-dex2jar.jar:com/facebook/appevents/q/b.class */
public final class C2292b {
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x00a8 -> B:13:0x0066). Please submit an issue!!! */
    /* renamed from: a */
    public static List<String> m35264a(View view) {
        ArrayList<String> arrayList = new ArrayList();
        arrayList.add(C2326f.m35159h(view));
        Object tag = view.getTag();
        if (tag != null) {
            arrayList.add(tag.toString());
        }
        CharSequence contentDescription = view.getContentDescription();
        if (contentDescription != null) {
            arrayList.add(contentDescription.toString());
        }
        try {
            if (view.getId() != -1) {
                String[] split = view.getResources().getResourceName(view.getId()).split("/");
                if (split.length == 2) {
                    arrayList.add(split[1]);
                }
            }
        } catch (Resources.NotFoundException e) {
        }
        ArrayList arrayList2 = new ArrayList();
        for (String str : arrayList) {
            if (!str.isEmpty() && str.length() <= 100) {
                arrayList2.add(str.toLowerCase());
            }
        }
        return arrayList2;
    }

    /* renamed from: a */
    public static boolean m35263a(String str, String str2) {
        return str.matches(str2);
    }

    /* renamed from: a */
    public static boolean m35262a(String str, List<String> list) {
        for (String str2 : list) {
            if (str.contains(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: a */
    public static boolean m35261a(List<String> list, List<String> list2) {
        for (String str : list) {
            if (m35262a(str, list2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static List<String> m35260b(View view) {
        ArrayList arrayList = new ArrayList();
        if (view instanceof EditText) {
            return arrayList;
        }
        if (view instanceof TextView) {
            String charSequence = ((TextView) view).getText().toString();
            if (!charSequence.isEmpty() && charSequence.length() < 100) {
                arrayList.add(charSequence.toLowerCase());
            }
            return arrayList;
        }
        for (View view2 : C2326f.m35165b(view)) {
            arrayList.addAll(m35260b(view2));
        }
        return arrayList;
    }
}
