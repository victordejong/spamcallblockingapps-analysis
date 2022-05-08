package org.spongycastle.math.p032ec.tools;

import java.io.PrintStream;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.TreeSet;
import org.spongycastle.asn1.p022x9.ECNamedCurveTable;
import org.spongycastle.asn1.p022x9.X9ECParameters;
import org.spongycastle.crypto.p026ec.CustomNamedCurves;
import org.spongycastle.math.p032ec.ECAlgorithms;
import org.spongycastle.math.p032ec.ECCurve;
import org.spongycastle.math.p032ec.ECFieldElement;
import org.spongycastle.util.Integers;
/* renamed from: org.spongycastle.math.ec.tools.TraceOptimizer */
/* loaded from: classes3-dex2jar.jar:org/spongycastle/math/ec/tools/TraceOptimizer.class */
public class TraceOptimizer {
    private static final BigInteger ONE = BigInteger.valueOf(1);

    /* renamed from: R */
    private static final SecureRandom f1638R = new SecureRandom();

    private static int calculateTrace(ECFieldElement eCFieldElement) {
        int fieldSize = eCFieldElement.getFieldSize();
        ECFieldElement eCFieldElement2 = eCFieldElement;
        for (int i = 1; i < fieldSize; i++) {
            eCFieldElement = eCFieldElement.square();
            eCFieldElement2 = eCFieldElement2.add(eCFieldElement);
        }
        BigInteger bigInteger = eCFieldElement2.toBigInteger();
        if (bigInteger.bitLength() <= 1) {
            return bigInteger.intValue();
        }
        throw new IllegalStateException();
    }

    private static ArrayList enumToList(Enumeration enumeration) {
        ArrayList arrayList = new ArrayList();
        while (enumeration.hasMoreElements()) {
            arrayList.add(enumeration.nextElement());
        }
        return arrayList;
    }

    public static void implPrintNonZeroTraceBits(X9ECParameters x9ECParameters) {
        ECCurve curve = x9ECParameters.getCurve();
        int fieldSize = curve.getFieldSize();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < fieldSize; i++) {
            if (calculateTrace(curve.fromBigInteger(ONE.shiftLeft(i))) != 0) {
                arrayList.add(Integers.valueOf(i));
                PrintStream printStream = System.out;
                printStream.print(" " + i);
            }
        }
        System.out.println();
        for (int i2 = 0; i2 < 1000; i2++) {
            BigInteger bigInteger = new BigInteger(fieldSize, f1638R);
            int calculateTrace = calculateTrace(curve.fromBigInteger(bigInteger));
            int i3 = 0;
            for (int i4 = 0; i4 < arrayList.size(); i4++) {
                i3 = i3;
                if (bigInteger.testBit(((Integer) arrayList.get(i4)).intValue())) {
                    i3 ^= 1;
                }
            }
            if (calculateTrace != i3) {
                throw new IllegalStateException("Optimized-trace sanity check failed");
            }
        }
    }

    public static void main(String[] strArr) {
        TreeSet<String> treeSet = new TreeSet(enumToList(ECNamedCurveTable.getNames()));
        treeSet.addAll(enumToList(CustomNamedCurves.getNames()));
        for (String str : treeSet) {
            X9ECParameters byName = CustomNamedCurves.getByName(str);
            X9ECParameters x9ECParameters = byName;
            if (byName == null) {
                x9ECParameters = ECNamedCurveTable.getByName(str);
            }
            if (x9ECParameters != null && ECAlgorithms.isF2mCurve(x9ECParameters.getCurve())) {
                PrintStream printStream = System.out;
                printStream.print(str + ":");
                implPrintNonZeroTraceBits(x9ECParameters);
            }
        }
    }

    public static void printNonZeroTraceBits(X9ECParameters x9ECParameters) {
        if (!ECAlgorithms.isF2mCurve(x9ECParameters.getCurve())) {
            throw new IllegalArgumentException("Trace only defined over characteristic-2 fields");
        }
        implPrintNonZeroTraceBits(x9ECParameters);
    }
}
