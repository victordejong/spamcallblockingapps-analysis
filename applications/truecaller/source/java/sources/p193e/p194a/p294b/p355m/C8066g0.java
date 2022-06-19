package p193e.p194a.p294b.p355m;

import android.util.SparseIntArray;
import android.widget.ScrollView;
import com.truecaller.bizmon.C3478R;
/* renamed from: e.a.b.m.g0 */
/* loaded from: classes6-dex2jar.jar:e/a/b/m/g0.class */
public class C8066g0 extends AbstractC8063f0 {

    /* renamed from: x */
    public static final SparseIntArray f24894x;

    /* renamed from: v */
    public final ScrollView f24895v;

    /* renamed from: w */
    public long f24896w;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f24894x = sparseIntArray;
        sparseIntArray.put(C3478R.C3480id.pbLoading, 1);
        sparseIntArray.put(C3478R.C3480id.pbImageUploading, 2);
        sparseIntArray.put(C3478R.C3480id.brandBar, 3);
        sparseIntArray.put(C3478R.C3480id.addBizLogoBackground, 4);
        sparseIntArray.put(C3478R.C3480id.addBizLogo, 5);
        sparseIntArray.put(C3478R.C3480id.addBizLogoLabel, 6);
        sparseIntArray.put(C3478R.C3480id.bizLogo, 7);
        sparseIntArray.put(C3478R.C3480id.editBizLogoIcon, 8);
        sparseIntArray.put(C3478R.C3480id.titleBrand, 9);
        sparseIntArray.put(C3478R.C3480id.colorsRecyclerView, 10);
        sparseIntArray.put(C3478R.C3480id.bgName, 11);
        sparseIntArray.put(C3478R.C3480id.pdvName, 12);
        sparseIntArray.put(C3478R.C3480id.bgImageWidget, 13);
        sparseIntArray.put(C3478R.C3480id.titleImage, 14);
        sparseIntArray.put(C3478R.C3480id.imageListWidget, 15);
        sparseIntArray.put(C3478R.C3480id.bgContactDetails, 16);
        sparseIntArray.put(C3478R.C3480id.titleContact, 17);
        sparseIntArray.put(C3478R.C3480id.pdvNumber, 18);
        sparseIntArray.put(C3478R.C3480id.pdvAddress, 19);
        sparseIntArray.put(C3478R.C3480id.pdvEmail, 20);
        sparseIntArray.put(C3478R.C3480id.bgDescDetails, 21);
        sparseIntArray.put(C3478R.C3480id.titleDescription, 22);
        sparseIntArray.put(C3478R.C3480id.pdvDescription, 23);
        sparseIntArray.put(C3478R.C3480id.pdvCategory, 24);
        sparseIntArray.put(C3478R.C3480id.bizOpenHoursWidget, 25);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C8066g0(p1727n3.p1849n.AbstractC26865f r32, android.view.View r33) {
        /*
            Method dump skipped, instructions count: 237
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p294b.p355m.C8066g0.<init>(n3.n.f, android.view.View):void");
    }

    public void executeBindings() {
        synchronized (this) {
            this.f24896w = 0L;
        }
    }

    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f24896w != 0;
        }
    }

    public void invalidateAll() {
        synchronized (this) {
            this.f24896w = 1L;
        }
        requestRebind();
    }

    public boolean onFieldChange(int i, Object obj, int i2) {
        return false;
    }

    public boolean setVariable(int i, Object obj) {
        return true;
    }
}
