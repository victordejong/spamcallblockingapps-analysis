package org.spongycastle.pqc.math.linearalgebra;

import android.support.p001v4.media.session.PlaybackStateCompat;
import java.math.BigInteger;
import java.security.SecureRandom;
import org.apache.commons.p018io.FileUtils;
import org.mozilla.javascript.typedarrays.Conversions;
import org.spongycastle.asn1.cmc.BodyPartID;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/math/linearalgebra/GF2nONBElement.class */
public class GF2nONBElement extends GF2nElement {
    private static final int MAXLONG = 64;
    private int mBit;
    private int mLength;
    private long[] mPol;
    private static final long[] mBitmask = {1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, PlaybackStateCompat.ACTION_PLAY_FROM_SEARCH, PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM, PlaybackStateCompat.ACTION_PLAY_FROM_URI, PlaybackStateCompat.ACTION_PREPARE, PlaybackStateCompat.ACTION_PREPARE_FROM_MEDIA_ID, PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH, PlaybackStateCompat.ACTION_PREPARE_FROM_URI, PlaybackStateCompat.ACTION_SET_REPEAT_MODE, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED, 1048576, PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE, 4194304, 8388608, 16777216, 33554432, 67108864, 134217728, 268435456, 536870912, FileUtils.ONE_GB, 2147483648L, Conversions.THIRTYTWO_BIT, 8589934592L, 17179869184L, 34359738368L, 68719476736L, 137438953472L, 274877906944L, 549755813888L, FileUtils.ONE_TB, 2199023255552L, 4398046511104L, 8796093022208L, 17592186044416L, 35184372088832L, 70368744177664L, 140737488355328L, 281474976710656L, 562949953421312L, FileUtils.ONE_PB, 2251799813685248L, 4503599627370496L, 9007199254740992L, 18014398509481984L, 36028797018963968L, 72057594037927936L, 144115188075855872L, 288230376151711744L, 576460752303423488L, FileUtils.ONE_EB, 2305843009213693952L, 4611686018427387904L, Long.MIN_VALUE};
    private static final long[] mMaxmask = {1, 3, 7, 15, 31, 63, 127, 255, 511, 1023, 2047, 4095, 8191, 16383, 32767, 65535, 131071, 262143, 524287, 1048575, 2097151, 4194303, 8388607, 16777215, 33554431, 67108863, 134217727, 268435455, 536870911, 1073741823, 2147483647L, BodyPartID.bodyIdMax, 8589934591L, 17179869183L, 34359738367L, 68719476735L, 137438953471L, 274877906943L, 549755813887L, 1099511627775L, 2199023255551L, 4398046511103L, 8796093022207L, 17592186044415L, 35184372088831L, 70368744177663L, 140737488355327L, 281474976710655L, 562949953421311L, 1125899906842623L, 2251799813685247L, 4503599627370495L, 9007199254740991L, 18014398509481983L, 36028797018963967L, 72057594037927935L, 144115188075855871L, 288230376151711743L, 576460752303423487L, 1152921504606846975L, 2305843009213693951L, 4611686018427387903L, Long.MAX_VALUE, -1};
    private static final int[] mIBY64 = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};

    public GF2nONBElement(GF2nONBElement gF2nONBElement) {
        this.mField = gF2nONBElement.mField;
        this.mDegree = this.mField.getDegree();
        this.mLength = ((GF2nONBField) this.mField).getONBLength();
        this.mBit = ((GF2nONBField) this.mField).getONBBit();
        this.mPol = new long[this.mLength];
        assign(gF2nONBElement.getElement());
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, BigInteger bigInteger) {
        this.mField = gF2nONBField;
        this.mDegree = this.mField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        assign(bigInteger);
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, SecureRandom secureRandom) {
        this.mField = gF2nONBField;
        this.mDegree = this.mField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        if (this.mLength > 1) {
            for (int i = 0; i < this.mLength - 1; i++) {
                this.mPol[i] = secureRandom.nextLong();
            }
            this.mPol[this.mLength - 1] = secureRandom.nextLong() >>> (64 - this.mBit);
            return;
        }
        this.mPol[0] = secureRandom.nextLong();
        this.mPol[0] = this.mPol[0] >>> (64 - this.mBit);
    }

    public GF2nONBElement(GF2nONBField gF2nONBField, byte[] bArr) {
        this.mField = gF2nONBField;
        this.mDegree = this.mField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = new long[this.mLength];
        assign(bArr);
    }

    private GF2nONBElement(GF2nONBField gF2nONBField, long[] jArr) {
        this.mField = gF2nONBField;
        this.mDegree = this.mField.getDegree();
        this.mLength = gF2nONBField.getONBLength();
        this.mBit = gF2nONBField.getONBBit();
        this.mPol = jArr;
    }

    public static GF2nONBElement ONE(GF2nONBField gF2nONBField) {
        int oNBLength = gF2nONBField.getONBLength();
        long[] jArr = new long[oNBLength];
        int i = 0;
        while (true) {
            int i2 = oNBLength - 1;
            if (i < i2) {
                jArr[i] = -1;
                i++;
            } else {
                jArr[i2] = mMaxmask[gF2nONBField.getONBBit() - 1];
                return new GF2nONBElement(gF2nONBField, jArr);
            }
        }
    }

    public static GF2nONBElement ZERO(GF2nONBField gF2nONBField) {
        return new GF2nONBElement(gF2nONBField, new long[gF2nONBField.getONBLength()]);
    }

    private void assign(BigInteger bigInteger) {
        assign(bigInteger.toByteArray());
    }

    private void assign(byte[] bArr) {
        this.mPol = new long[this.mLength];
        for (int i = 0; i < bArr.length; i++) {
            long[] jArr = this.mPol;
            int i2 = i >>> 3;
            jArr[i2] = jArr[i2] | ((bArr[(bArr.length - 1) - i] & 255) << ((i & 7) << 3));
        }
    }

    private void assign(long[] jArr) {
        System.arraycopy(jArr, 0, this.mPol, 0, this.mLength);
    }

    private long[] getElement() {
        long[] jArr = new long[this.mPol.length];
        System.arraycopy(this.mPol, 0, jArr, 0, this.mPol.length);
        return jArr;
    }

    private long[] getElementReverseOrder() {
        long[] jArr = new long[this.mPol.length];
        for (int i = 0; i < this.mDegree; i++) {
            if (testBit((this.mDegree - i) - 1)) {
                int i2 = i >>> 6;
                jArr[i2] = jArr[i2] | mBitmask[i & 63];
            }
        }
        return jArr;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public GFElement add(GFElement gFElement) throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.addToThis(gFElement);
        return gF2nONBElement;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public void addToThis(GFElement gFElement) throws RuntimeException {
        if (!(gFElement instanceof GF2nONBElement)) {
            throw new RuntimeException();
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) gFElement;
        if (!this.mField.equals(gF2nONBElement.mField)) {
            throw new RuntimeException();
        }
        for (int i = 0; i < this.mLength; i++) {
            long[] jArr = this.mPol;
            jArr[i] = jArr[i] ^ gF2nONBElement.mPol[i];
        }
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    void assignOne() {
        for (int i = 0; i < this.mLength - 1; i++) {
            this.mPol[i] = -1;
        }
        this.mPol[this.mLength - 1] = mMaxmask[this.mBit - 1];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public void assignZero() {
        this.mPol = new long[this.mLength];
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement, org.spongycastle.pqc.math.linearalgebra.GFElement
    public Object clone() {
        return new GF2nONBElement(this);
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof GF2nONBElement)) {
            return false;
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) obj;
        for (int i = 0; i < this.mLength; i++) {
            if (this.mPol[i] != gF2nONBElement.mPol[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public int hashCode() {
        return this.mPol.hashCode();
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement increase() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.increaseThis();
        return gF2nONBElement;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public void increaseThis() {
        addToThis(ONE((GF2nONBField) this.mField));
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public GFElement invert() throws ArithmeticException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.invertThis();
        return gF2nONBElement;
    }

    public void invertThis() throws ArithmeticException {
        if (isZero()) {
            throw new ArithmeticException();
        }
        int i = 31;
        boolean z = false;
        while (!z && i >= 0) {
            if (((this.mDegree - 1) & mBitmask[i]) != 0) {
                z = true;
            }
            i--;
        }
        ZERO((GF2nONBField) this.mField);
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        int i2 = 1;
        for (int i3 = (i + 1) - 1; i3 >= 0; i3--) {
            GF2nElement gF2nElement = (GF2nElement) gF2nONBElement.clone();
            for (int i4 = 1; i4 <= i2; i4++) {
                gF2nElement.squareThis();
            }
            gF2nONBElement.multiplyThisBy(gF2nElement);
            int i5 = i2 << 1;
            i2 = i5;
            if (((this.mDegree - 1) & mBitmask[i3]) != 0) {
                gF2nONBElement.squareThis();
                gF2nONBElement.multiplyThisBy(this);
                i2 = i5 + 1;
            }
        }
        gF2nONBElement.squareThis();
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public boolean isOne() {
        boolean z = true;
        for (int i = 0; i < this.mLength - 1 && z; i++) {
            z = z && (this.mPol[i] & (-1)) == -1;
        }
        boolean z2 = z;
        if (z) {
            z2 = z && (this.mPol[this.mLength - 1] & mMaxmask[this.mBit - 1]) == mMaxmask[this.mBit - 1];
        }
        return z2;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public boolean isZero() {
        boolean z = true;
        for (int i = 0; i < this.mLength && z; i++) {
            z = z && (this.mPol[i] & (-1)) == 0;
        }
        return z;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public GFElement multiply(GFElement gFElement) throws RuntimeException {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.multiplyThisBy(gFElement);
        return gF2nONBElement;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public void multiplyThisBy(GFElement gFElement) throws RuntimeException {
        int i;
        boolean z;
        if (!(gFElement instanceof GF2nONBElement)) {
            throw new RuntimeException("The elements have different representation: not yet implemented");
        }
        GF2nONBElement gF2nONBElement = (GF2nONBElement) gFElement;
        if (!this.mField.equals(gF2nONBElement.mField)) {
            throw new RuntimeException();
        } else if (equals(gFElement)) {
            squareThis();
        } else {
            long[] jArr = this.mPol;
            long[] jArr2 = gF2nONBElement.mPol;
            long[] jArr3 = new long[this.mLength];
            int[][] iArr = ((GF2nONBField) this.mField).mMult;
            int i2 = this.mLength - 1;
            int i3 = this.mBit;
            long j = mBitmask[63];
            long j2 = mBitmask[i3 - 1];
            for (int i4 = 0; i4 < this.mDegree; i4++) {
                boolean z2 = false;
                for (int i5 = 0; i5 < this.mDegree; i5++) {
                    int i6 = mIBY64[i5];
                    int i7 = mIBY64[iArr[i5][0]];
                    int i8 = iArr[i5][0];
                    z2 = z2;
                    if ((jArr[i6] & mBitmask[i5 & 63]) != 0) {
                        boolean z3 = z2;
                        if ((jArr2[i7] & mBitmask[i8 & 63]) != 0) {
                            z3 = !z2;
                        }
                        z2 = z3;
                        if (iArr[i5][1] != -1) {
                            z2 = z3;
                            if ((jArr2[mIBY64[iArr[i5][1]]] & mBitmask[iArr[i5][1] & 63]) != 0) {
                                z2 = !z3;
                            }
                        }
                    }
                }
                int i9 = mIBY64[i4];
                if (z2) {
                    jArr3[i9] = jArr3[i9] ^ mBitmask[i4 & 63];
                }
                if (this.mLength > 1) {
                    boolean z4 = (jArr[i2] & 1) == 1;
                    int i10 = i2 - 1;
                    for (int i11 = i10; i11 >= 0; i11--) {
                        z4 = (jArr[i11] & 1) != 0;
                        jArr[i11] = jArr[i11] >>> 1;
                        if (z4) {
                            jArr[i11] = jArr[i11] ^ j;
                        }
                    }
                    jArr[i2] = jArr[i2] >>> 1;
                    if (z4) {
                        jArr[i2] = jArr[i2] ^ j2;
                    }
                    if ((jArr2[i2] & 1) == 1) {
                        z = true;
                        i = i10;
                    } else {
                        z = false;
                        i = i10;
                    }
                    while (i >= 0) {
                        z = (jArr2[i] & 1) != 0;
                        jArr2[i] = jArr2[i] >>> 1;
                        if (z) {
                            jArr2[i] = jArr2[i] ^ j;
                        }
                        i--;
                    }
                    jArr2[i2] = jArr2[i2] >>> 1;
                    if (z) {
                        jArr2[i2] = jArr2[i2] ^ j2;
                    }
                } else {
                    boolean z5 = (jArr[0] & 1) == 1;
                    jArr[0] = jArr[0] >>> 1;
                    if (z5) {
                        jArr[0] = jArr[0] ^ j2;
                    }
                    boolean z6 = (jArr2[0] & 1) == 1;
                    jArr2[0] = jArr2[0] >>> 1;
                    if (z6) {
                        jArr2[0] = jArr2[0] ^ j2;
                    }
                }
            }
            assign(jArr3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reverseOrder() {
        this.mPol = getElementReverseOrder();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v14 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [long] */
    /* JADX WARN: Type inference failed for: r11v6 */
    /* JADX WARN: Type inference failed for: r11v7, types: [long] */
    /* JADX WARN: Type inference failed for: r11v8 */
    /* JADX WARN: Type inference failed for: r11v9 */
    /* JADX WARN: Type inference failed for: r14v1, types: [long] */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Unknown variable types count: 4 */
    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.pqc.math.linearalgebra.GF2nElement solveQuadraticEquation() throws java.lang.RuntimeException {
        /*
            Method dump skipped, instructions count: 375
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.pqc.math.linearalgebra.GF2nONBElement.solveQuadraticEquation():org.spongycastle.pqc.math.linearalgebra.GF2nElement");
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement square() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.squareThis();
        return gF2nONBElement;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public GF2nElement squareRoot() {
        GF2nONBElement gF2nONBElement = new GF2nONBElement(this);
        gF2nONBElement.squareRootThis();
        return gF2nONBElement;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public void squareRootThis() {
        long[] element = getElement();
        int i = this.mLength - 1;
        int i2 = this.mBit;
        long j = mBitmask[63];
        boolean z = (element[0] & 1) != 0;
        for (int i3 = i; i3 >= 0; i3--) {
            z = (element[i3] & 1) != 0;
            element[i3] = element[i3] >>> 1;
            if (z) {
                if (i3 == i) {
                    element[i3] = element[i3] ^ mBitmask[i2 - 1];
                } else {
                    element[i3] = element[i3] ^ j;
                }
            }
        }
        assign(element);
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public void squareThis() {
        long[] element = getElement();
        int i = this.mLength - 1;
        int i2 = this.mBit - 1;
        long j = mBitmask[63];
        boolean z = false;
        boolean z2 = (element[i] & mBitmask[i2]) != 0;
        for (int i3 = 0; i3 < i; i3++) {
            z2 = (element[i3] & j) != 0;
            element[i3] = element[i3] << 1;
            if (z2) {
                element[i3] = 1 ^ element[i3];
            }
        }
        if ((element[i] & mBitmask[i2]) != 0) {
            z = true;
        }
        element[i] = element[i] << 1;
        if (z2) {
            element[i] = element[i] ^ 1;
        }
        if (z) {
            element[i] = mBitmask[i2 + 1] ^ element[i];
        }
        assign(element);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public boolean testBit(int i) {
        boolean z = false;
        if (i < 0 || i > this.mDegree) {
            return false;
        }
        if ((this.mPol[i >>> 6] & mBitmask[i & 63]) != 0) {
            z = true;
        }
        return z;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public boolean testRightmostBit() {
        boolean z = true;
        if ((this.mPol[this.mLength - 1] & mBitmask[this.mBit - 1]) == 0) {
            z = false;
        }
        return z;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public byte[] toByteArray() {
        int i = ((this.mDegree - 1) >> 3) + 1;
        byte[] bArr = new byte[i];
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = (i2 & 7) << 3;
            bArr[(i - i2) - 1] = (byte) ((this.mPol[i2 >>> 3] & (255 << i3)) >>> i3);
        }
        return bArr;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public BigInteger toFlexiBigInt() {
        return new BigInteger(1, toByteArray());
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public String toString() {
        return toString(16);
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GFElement
    public String toString(int i) {
        String str;
        String str2 = "";
        long[] element = getElement();
        int i2 = this.mBit;
        if (i == 2) {
            String str3 = str2;
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                str3 = (element[element.length - 1] & (1 << i3)) == 0 ? str3 + "0" : str3 + "1";
            }
            int length = element.length - 2;
            while (true) {
                str = str3;
                if (length < 0) {
                    break;
                }
                str3 = str3;
                for (int i4 = 63; i4 >= 0; i4--) {
                    str3 = (element[length] & mBitmask[i4]) == 0 ? str3 + "0" : str3 + "1";
                }
                length--;
            }
        } else {
            str = str2;
            if (i == 16) {
                char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
                int length2 = element.length - 1;
                while (true) {
                    str = str2;
                    if (length2 < 0) {
                        break;
                    }
                    str2 = ((((((((((((((((str2 + cArr[((int) (element[length2] >>> 60)) & 15]) + cArr[((int) (element[length2] >>> 56)) & 15]) + cArr[((int) (element[length2] >>> 52)) & 15]) + cArr[((int) (element[length2] >>> 48)) & 15]) + cArr[((int) (element[length2] >>> 44)) & 15]) + cArr[((int) (element[length2] >>> 40)) & 15]) + cArr[((int) (element[length2] >>> 36)) & 15]) + cArr[((int) (element[length2] >>> 32)) & 15]) + cArr[((int) (element[length2] >>> 28)) & 15]) + cArr[((int) (element[length2] >>> 24)) & 15]) + cArr[((int) (element[length2] >>> 20)) & 15]) + cArr[((int) (element[length2] >>> 16)) & 15]) + cArr[((int) (element[length2] >>> 12)) & 15]) + cArr[((int) (element[length2] >>> 8)) & 15]) + cArr[((int) (element[length2] >>> 4)) & 15]) + cArr[((int) element[length2]) & 15]) + " ";
                    length2--;
                }
            }
        }
        return str;
    }

    @Override // org.spongycastle.pqc.math.linearalgebra.GF2nElement
    public int trace() {
        int i = this.mLength - 1;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            for (int i4 = 0; i4 < 64; i4++) {
                i2 = i2;
                if ((this.mPol[i3] & mBitmask[i4]) != 0) {
                    i2 ^= 1;
                }
            }
        }
        int i5 = this.mBit;
        int i6 = i2;
        for (int i7 = 0; i7 < i5; i7++) {
            i6 = i6;
            if ((this.mPol[i] & mBitmask[i7]) != 0) {
                i6 ^= 1;
            }
        }
        return i6;
    }
}
