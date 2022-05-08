package org.spongycastle.math.p032ec;
/* renamed from: org.spongycastle.math.ec.FixedPointPreCompInfo */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/FixedPointPreCompInfo.class */
public class FixedPointPreCompInfo implements PreCompInfo {
    protected ECPoint offset = null;
    protected ECPoint[] preComp = null;
    protected int width = -1;

    public ECPoint getOffset() {
        return this.offset;
    }

    public ECPoint[] getPreComp() {
        return this.preComp;
    }

    public int getWidth() {
        return this.width;
    }

    public void setOffset(ECPoint eCPoint) {
        this.offset = eCPoint;
    }

    public void setPreComp(ECPoint[] eCPointArr) {
        this.preComp = eCPointArr;
    }

    public void setWidth(int i) {
        this.width = i;
    }
}
