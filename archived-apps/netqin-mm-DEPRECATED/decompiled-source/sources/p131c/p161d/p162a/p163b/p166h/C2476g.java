package p131c.p161d.p162a.p163b.p166h;

import com.google.android.gms.ads.rewarded.RewardItem;
/* renamed from: c.d.a.b.h.g */
/* loaded from: classes-dex2jar.jar:c/d/a/b/h/g.class */
public class C2476g implements RewardItem {

    /* renamed from: a */
    public String f9442a;

    /* renamed from: b */
    public int f9443b;

    public C2476g(String str, int i) {
        this.f9442a = str;
        this.f9443b = i;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public String getType() {
        return this.f9442a;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    /* renamed from: y */
    public int mo16298y() {
        return this.f9443b;
    }
}
