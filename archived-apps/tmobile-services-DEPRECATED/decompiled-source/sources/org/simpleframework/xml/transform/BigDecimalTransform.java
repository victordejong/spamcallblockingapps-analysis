package org.simpleframework.xml.transform;

import java.math.BigDecimal;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/transform/BigDecimalTransform.class */
class BigDecimalTransform implements Transform<BigDecimal> {
    @Override // org.simpleframework.xml.transform.Transform
    public BigDecimal read(String str) {
        return new BigDecimal(str);
    }

    public String write(BigDecimal bigDecimal) {
        return bigDecimal.toString();
    }
}
