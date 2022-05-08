package org.spongycastle.openpgp;

import org.spongycastle.bcpg.UserAttributeSubpacket;
import org.spongycastle.bcpg.attr.ImageAttribute;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPUserAttributeSubpacketVector.class */
public class PGPUserAttributeSubpacketVector {
    UserAttributeSubpacket[] packets;

    /* JADX INFO: Access modifiers changed from: package-private */
    public PGPUserAttributeSubpacketVector(UserAttributeSubpacket[] userAttributeSubpacketArr) {
        this.packets = userAttributeSubpacketArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof PGPUserAttributeSubpacketVector)) {
            return false;
        }
        PGPUserAttributeSubpacketVector pGPUserAttributeSubpacketVector = (PGPUserAttributeSubpacketVector) obj;
        if (pGPUserAttributeSubpacketVector.packets.length != this.packets.length) {
            return false;
        }
        for (int i = 0; i != this.packets.length; i++) {
            if (!pGPUserAttributeSubpacketVector.packets[i].equals(this.packets[i])) {
                return false;
            }
        }
        return true;
    }

    public ImageAttribute getImageAttribute() {
        UserAttributeSubpacket subpacket = getSubpacket(1);
        if (subpacket == null) {
            return null;
        }
        return (ImageAttribute) subpacket;
    }

    public UserAttributeSubpacket getSubpacket(int i) {
        for (int i2 = 0; i2 != this.packets.length; i2++) {
            if (this.packets[i2].getType() == i) {
                return this.packets[i2];
            }
        }
        return null;
    }

    public int hashCode() {
        int i = 0;
        for (int i2 = 0; i2 != this.packets.length; i2++) {
            i ^= this.packets[i2].hashCode();
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserAttributeSubpacket[] toSubpacketArray() {
        return this.packets;
    }
}
