package org.spongycastle.pqc.jcajce.provider.rainbow;

import java.io.IOException;
import java.security.PrivateKey;
import java.util.Arrays;
import org.spongycastle.asn1.DERNull;
import org.spongycastle.asn1.pkcs.PrivateKeyInfo;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.pqc.asn1.PQCObjectIdentifiers;
import org.spongycastle.pqc.asn1.RainbowPrivateKey;
import org.spongycastle.pqc.crypto.rainbow.Layer;
import org.spongycastle.pqc.crypto.rainbow.RainbowPrivateKeyParameters;
import org.spongycastle.pqc.crypto.rainbow.util.RainbowUtil;
import org.spongycastle.pqc.jcajce.spec.RainbowPrivateKeySpec;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/jcajce/provider/rainbow/BCRainbowPrivateKey.class */
public class BCRainbowPrivateKey implements PrivateKey {
    private static final long serialVersionUID = 1;
    private short[][] A1inv;
    private short[][] A2inv;

    /* renamed from: b1 */
    private short[] f1784b1;

    /* renamed from: b2 */
    private short[] f1785b2;
    private Layer[] layers;

    /* renamed from: vi */
    private int[] f1786vi;

    public BCRainbowPrivateKey(RainbowPrivateKeyParameters rainbowPrivateKeyParameters) {
        this(rainbowPrivateKeyParameters.getInvA1(), rainbowPrivateKeyParameters.getB1(), rainbowPrivateKeyParameters.getInvA2(), rainbowPrivateKeyParameters.getB2(), rainbowPrivateKeyParameters.getVi(), rainbowPrivateKeyParameters.getLayers());
    }

    public BCRainbowPrivateKey(RainbowPrivateKeySpec rainbowPrivateKeySpec) {
        this(rainbowPrivateKeySpec.getInvA1(), rainbowPrivateKeySpec.getB1(), rainbowPrivateKeySpec.getInvA2(), rainbowPrivateKeySpec.getB2(), rainbowPrivateKeySpec.getVi(), rainbowPrivateKeySpec.getLayers());
    }

    public BCRainbowPrivateKey(short[][] sArr, short[] sArr2, short[][] sArr3, short[] sArr4, int[] iArr, Layer[] layerArr) {
        this.A1inv = sArr;
        this.f1784b1 = sArr2;
        this.A2inv = sArr3;
        this.f1785b2 = sArr4;
        this.f1786vi = iArr;
        this.layers = layerArr;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof BCRainbowPrivateKey)) {
            return false;
        }
        BCRainbowPrivateKey bCRainbowPrivateKey = (BCRainbowPrivateKey) obj;
        boolean z = ((((RainbowUtil.equals(this.A1inv, bCRainbowPrivateKey.getInvA1())) && RainbowUtil.equals(this.A2inv, bCRainbowPrivateKey.getInvA2())) && RainbowUtil.equals(this.f1784b1, bCRainbowPrivateKey.getB1())) && RainbowUtil.equals(this.f1785b2, bCRainbowPrivateKey.getB2())) && Arrays.equals(this.f1786vi, bCRainbowPrivateKey.getVi());
        if (this.layers.length != bCRainbowPrivateKey.getLayers().length) {
            return false;
        }
        for (int length = this.layers.length - 1; length >= 0; length--) {
            z &= this.layers[length].equals(bCRainbowPrivateKey.getLayers()[length]);
        }
        return z;
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "Rainbow";
    }

    public short[] getB1() {
        return this.f1784b1;
    }

    public short[] getB2() {
        return this.f1785b2;
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            try {
                return new PrivateKeyInfo(new AlgorithmIdentifier(PQCObjectIdentifiers.rainbow, DERNull.INSTANCE), new RainbowPrivateKey(this.A1inv, this.f1784b1, this.A2inv, this.f1785b2, this.f1786vi, this.layers)).getEncoded();
            } catch (IOException e) {
                return null;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public short[][] getInvA1() {
        return this.A1inv;
    }

    public short[][] getInvA2() {
        return this.A2inv;
    }

    public Layer[] getLayers() {
        return this.layers;
    }

    public int[] getVi() {
        return this.f1786vi;
    }

    public int hashCode() {
        int length = (((((((((this.layers.length * 37) + org.spongycastle.util.Arrays.hashCode(this.A1inv)) * 37) + org.spongycastle.util.Arrays.hashCode(this.f1784b1)) * 37) + org.spongycastle.util.Arrays.hashCode(this.A2inv)) * 37) + org.spongycastle.util.Arrays.hashCode(this.f1785b2)) * 37) + org.spongycastle.util.Arrays.hashCode(this.f1786vi);
        for (int length2 = this.layers.length - 1; length2 >= 0; length2--) {
            length = (length * 37) + this.layers[length2].hashCode();
        }
        return length;
    }
}
