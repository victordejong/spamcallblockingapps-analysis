package p131c.p161d.p162a.p163b.p164f;

import com.google.android.gms.ads.rewarded.RewardItem;
/* renamed from: c.d.a.b.f.a */
/* loaded from: classes-dex2jar.jar:c/d/a/b/f/a.class */
public final class C2461a implements RewardItem {

    /* renamed from: a */
    public final int f9415a;

    /* renamed from: b */
    public final String f9416b;

    public C2461a(int i, String str) {
        this.f9415a = i;
        this.f9416b = str;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    public String getType() {
        return this.f9416b;
    }

    @Override // com.google.android.gms.ads.rewarded.RewardItem
    /* renamed from: y */
    public int mo16298y() {
        return this.f9415a;
    }
}
