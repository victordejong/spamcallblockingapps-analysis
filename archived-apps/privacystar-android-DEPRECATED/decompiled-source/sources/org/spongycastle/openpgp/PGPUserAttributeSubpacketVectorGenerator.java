package org.spongycastle.openpgp;

import java.util.ArrayList;
import java.util.List;
import org.spongycastle.bcpg.UserAttributeSubpacket;
import org.spongycastle.bcpg.attr.ImageAttribute;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPUserAttributeSubpacketVectorGenerator.class */
public class PGPUserAttributeSubpacketVectorGenerator {
    private List list = new ArrayList();

    public PGPUserAttributeSubpacketVector generate() {
        return new PGPUserAttributeSubpacketVector((UserAttributeSubpacket[]) this.list.toArray(new UserAttributeSubpacket[this.list.size()]));
    }

    public void setImageAttribute(int i, byte[] bArr) {
        if (bArr == null) {
            throw new IllegalArgumentException("attempt to set null image");
        }
        this.list.add(new ImageAttribute(i, bArr));
    }
}
