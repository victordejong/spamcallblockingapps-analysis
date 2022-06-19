package p193e.p194a.p372b0.p430q;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.inject.Inject;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
/* renamed from: e.a.b0.q.y */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/y.class */
public class C8620y {

    /* renamed from: b */
    public static final Pattern f26472b = Pattern.compile("(^|\\s)\\+?\\d([ -]?\\d){5,}");

    /* renamed from: a */
    public final String f26473a;

    @Inject
    public C8620y(AbstractC8432l abstractC8432l) {
        this.f26473a = abstractC8432l.mo28578f();
    }

    public C8620y(String str) {
        this.f26473a = str;
    }

    /* renamed from: a */
    public List<String> m28190a(String str) {
        if (TextUtils.isEmpty(str) || this.f26473a == null) {
            return Collections.emptyList();
        }
        Matcher matcher = f26472b.matcher(str.replace("\u202a", "").replace("\u202c", "").replace("tel:", ""));
        ArrayList arrayList = new ArrayList(matcher.groupCount());
        while (matcher.find()) {
            String trim = matcher.group().trim();
            if (C8574c0.m28349j(trim, this.f26473a)) {
                arrayList.add(trim);
            }
        }
        return arrayList;
    }
}
