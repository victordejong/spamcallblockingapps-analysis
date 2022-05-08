package org.spongycastle.math.p032ec;
/* renamed from: org.spongycastle.math.ec.ScaleXPointMap */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/ScaleXPointMap.class */
public class ScaleXPointMap implements ECPointMap {
    protected final ECFieldElement scale;

    public ScaleXPointMap(ECFieldElement eCFieldElement) {
        this.scale = eCFieldElement;
    }

    @Override // org.spongycastle.math.p032ec.ECPointMap
    public ECPoint map(ECPoint eCPoint) {
        return eCPoint.scaleX(this.scale);
    }
}
