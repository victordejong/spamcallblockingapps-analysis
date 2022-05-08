package org.spongycastle.math.p032ec;
/* renamed from: org.spongycastle.math.ec.WNafPreCompInfo */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/WNafPreCompInfo.class */
public class WNafPreCompInfo implements PreCompInfo {
    protected ECPoint[] preComp = null;
    protected ECPoint[] preCompNeg = null;
    protected ECPoint twice = null;

    public ECPoint[] getPreComp() {
        return this.preComp;
    }

    public ECPoint[] getPreCompNeg() {
        return this.preCompNeg;
    }

    public ECPoint getTwice() {
        return this.twice;
    }

    public void setPreComp(ECPoint[] eCPointArr) {
        this.preComp = eCPointArr;
    }

    public void setPreCompNeg(ECPoint[] eCPointArr) {
        this.preCompNeg = eCPointArr;
    }

    public void setTwice(ECPoint eCPoint) {
        this.twice = eCPoint;
    }
}
