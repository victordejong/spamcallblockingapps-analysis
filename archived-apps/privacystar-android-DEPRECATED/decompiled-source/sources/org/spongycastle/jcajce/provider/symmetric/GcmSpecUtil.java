package org.spongycastle.jcajce.provider.symmetric;

import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.cms.GCMParameters;
import org.spongycastle.jcajce.provider.symmetric.util.ClassUtil;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/GcmSpecUtil.class */
class GcmSpecUtil {
    static final Class gcmSpecClass = ClassUtil.loadClass(GcmSpecUtil.class, "javax.crypto.spec.GCMParameterSpec");

    GcmSpecUtil() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static GCMParameters extractGcmParameters(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        try {
            return new GCMParameters((byte[]) gcmSpecClass.getDeclaredMethod("getIV", new Class[0]).invoke(algorithmParameterSpec, new Object[0]), ((Integer) gcmSpecClass.getDeclaredMethod("getTLen", new Class[0]).invoke(algorithmParameterSpec, new Object[0])).intValue() / 8);
        } catch (Exception e) {
            throw new InvalidParameterSpecException("Cannot process GCMParameterSpec");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AlgorithmParameterSpec extractGcmSpec(ASN1Primitive aSN1Primitive) throws InvalidParameterSpecException {
        try {
            GCMParameters instance = GCMParameters.getInstance(aSN1Primitive);
            return (AlgorithmParameterSpec) gcmSpecClass.getConstructor(Integer.TYPE, byte[].class).newInstance(Integers.valueOf(instance.getIcvLen() * 8), instance.getNonce());
        } catch (NoSuchMethodException e) {
            throw new InvalidParameterSpecException("No constructor found!");
        } catch (Exception e2) {
            throw new InvalidParameterSpecException("Construction failed: " + e2.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean gcmSpecExists() {
        return gcmSpecClass != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGcmSpec(Class cls) {
        return gcmSpecClass == cls;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isGcmSpec(AlgorithmParameterSpec algorithmParameterSpec) {
        return gcmSpecClass != null && gcmSpecClass.isInstance(algorithmParameterSpec);
    }
}
