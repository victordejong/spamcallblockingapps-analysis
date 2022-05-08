package p459j.p460a.p582w0;

import androidx.annotation.Nullable;
import androidx.appcompat.widget.ActivityChooserModel;
import gogolook.callgogolook2.R$string;
import gogolook.callgogolook2.gson.UserProfile;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p459j.p460a.p582w0.C14099o3;
import p459j.p460a.p582w0.p583a5.p584e.AbstractC13908b;
import p459j.p460a.p582w0.p583a5.p584e.C13909c;
/* renamed from: j.a.w0.z3 */
/* loaded from: classes3-dex2jar.jar:j/a/w0/z3.class */
public class C14327z3 {

    /* renamed from: a */
    public static Map<String, C14328a> f32085a = new HashMap();

    /* renamed from: j.a.w0.z3$a */
    /* loaded from: classes3-dex2jar.jar:j/a/w0/z3$a.class */
    public static class C14328a {

        /* renamed from: a */
        public C13909c.C13910a f32086a;

        /* renamed from: b */
        public int f32087b;

        /* renamed from: c */
        public int f32088c;

        public C14328a(C13909c.C13910a aVar, int i, int i2) {
            this.f32086a = aVar;
            this.f32087b = i;
            this.f32088c = i2;
        }
    }

    static {
        m1565a(C13909c.m3071b());
    }

    /* renamed from: a */
    public static int m1564a(@Nullable String str) {
        return (str == null || !f32085a.containsKey(str)) ? C14167t.m2310f() : f32085a.get(str).f32087b;
    }

    /* renamed from: a */
    public static String m1566a(int i) {
        return C14206w4.m2225a(i);
    }

    /* renamed from: a */
    public static ArrayList<String> m1567a() {
        return new ArrayList<>(f32085a.keySet());
    }

    /* renamed from: a */
    public static void m1565a(AbstractC13908b bVar) {
        f32085a.put("publicperson", new C14328a(bVar.m3098a(), -1155956, R$string.Biz_lv1_performer));
        f32085a.put("food", new C14328a(bVar.m3089j(), -7222997, R$string.Biz_lv1_food));
        f32085a.put("shopping", new C14328a(bVar.m3104E(), -1155956, R$string.Biz_lv1_shopping));
        f32085a.put("beauty", new C14328a(bVar.m3073z(), -1155956, R$string.Biz_lv1_care));
        f32085a.put("education", new C14328a(bVar.m3092g(), -13781008, R$string.Biz_lv1_edu));
        f32085a.put("entertainment", new C14328a(bVar.m3091h(), -5940512, R$string.Biz_lv1_entertainment));
        f32085a.put("life", new C14328a(bVar.m3105D(), -14893766, R$string.Biz_lv1_handyservice));
        f32085a.put("health", new C14328a(bVar.m3078u(), -13781008, R$string.Biz_lv1_health));
        f32085a.put("travel", new C14328a(bVar.m3101H(), -13781008, R$string.Biz_lv1_travel));
        f32085a.put("automobile", new C14328a(bVar.m3097b(), -12614172, R$string.Biz_lv1_auto));
        f32085a.put("traffic", new C14328a(bVar.m3102G(), -12614172, R$string.Biz_lv1_transpotation));
        f32085a.put("professional", new C14328a(bVar.m3106C(), -12614172, R$string.Biz_lv1_consultant));
        f32085a.put("bank", new C14328a(bVar.m3096c(), -12614172, R$string.Biz_lv1_bank));
        f32085a.put(ActivityChooserModel.ATTRIBUTE_ACTIVITY, new C14328a(bVar.m3090i(), -5940512, R$string.Biz_lv1_ticket));
        f32085a.put("government", new C14328a(bVar.m3088k(), -10787991, R$string.Biz_lv1_gov));
        f32085a.put("politics", new C14328a(bVar.m3107B(), -10787991, R$string.Biz_lv1_political));
        f32085a.put("organization", new C14328a(bVar.m3095d(), -12614172, R$string.Biz_lv1_org));
        f32085a.put("pet", new C14328a(bVar.m3108A(), -3900363, R$string.Biz_lv1_pet));
        f32085a.put("logistic", new C14328a(bVar.m3093f(), -13781008, R$string.Biz_lv1_delivery));
        f32085a.put("media", new C14328a(bVar.m3079t(), -7222997, R$string.Biz_lv1_media));
        f32085a.put("others", new C14328a(bVar.m3074y(), -12614172, R$string.Biz_lv1_other));
        f32085a.put(UserProfile.CARDCATE_NAME_PERSONAL, new C14328a(bVar.m3074y(), -12614172, R$string.Biz_lv1_personal));
    }

    /* renamed from: b */
    public static int m1563b(String str) {
        if (f32085a.containsKey(str)) {
            return f32085a.get(str).f32086a.m3069a();
        }
        return 0;
    }

    /* renamed from: c */
    public static String m1562c(String str) {
        List<C14099o3.C14105e> c = C14099o3.m2510n().m2530c();
        for (int i = 0; i < c.size(); i++) {
            if (c.get(i).f31595c.equalsIgnoreCase(str)) {
                return c.get(i).f31594b;
            }
        }
        return f32085a.containsKey(str) ? m1566a(f32085a.get(str).f32088c) : "";
    }
}
