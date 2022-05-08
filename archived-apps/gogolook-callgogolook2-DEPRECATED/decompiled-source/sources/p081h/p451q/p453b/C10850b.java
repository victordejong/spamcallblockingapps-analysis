package p081h.p451q.p453b;

import java.util.ArrayList;
import java.util.List;
import p081h.p451q.p455d.C10862d;
/* renamed from: h.q.b.b */
/* loaded from: classes2-dex2jar.jar:h/q/b/b.class */
public class C10850b {
    /* renamed from: a */
    public static char m10413a(int i) {
        switch (i) {
            case 2:
                return 'V';
            case 3:
                return 'D';
            case 4:
                return 'I';
            case 5:
                return 'W';
            case 6:
                return 'E';
            case 7:
                return 'A';
            default:
                return 'I';
        }
    }

    /* renamed from: a */
    public static String m10412a(String str) {
        if (C10862d.m10389c(str)) {
            return "Zendesk";
        }
        String str2 = str;
        if (str.length() > 23) {
            str2 = str.substring(0, 23);
        }
        return str2;
    }

    /* renamed from: a */
    public static List<String> m10411a(String str, int i) {
        int min;
        ArrayList arrayList = new ArrayList();
        if (i < 1) {
            if (!C10862d.m10390b(str)) {
                arrayList.add("");
                return arrayList;
            }
            arrayList.add(str);
            return arrayList;
        } else if (!C10862d.m10390b(str)) {
            arrayList.add("");
            return arrayList;
        } else if (str.length() < i) {
            arrayList.add(str);
            return arrayList;
        } else {
            int i2 = 0;
            int length = str.length();
            while (i2 < length) {
                int indexOf = str.indexOf(C10862d.f24821b, i2);
                if (indexOf == -1) {
                    indexOf = length;
                }
                while (true) {
                    min = Math.min(indexOf, i2 + i);
                    arrayList.add(str.substring(i2, min));
                    if (min >= indexOf) {
                        break;
                    }
                    i2 = min;
                }
                i2 = min + 1;
            }
            return arrayList;
        }
    }
}
