package org.spongycastle.openpgp;

import java.util.Iterator;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Iterable;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/openpgp/PGPSignatureList.class */
public class PGPSignatureList implements Iterable<PGPSignature> {
    PGPSignature[] sigs;

    public PGPSignatureList(PGPSignature pGPSignature) {
        this.sigs = new PGPSignature[1];
        this.sigs[0] = pGPSignature;
    }

    public PGPSignatureList(PGPSignature[] pGPSignatureArr) {
        this.sigs = new PGPSignature[pGPSignatureArr.length];
        System.arraycopy(pGPSignatureArr, 0, this.sigs, 0, pGPSignatureArr.length);
    }

    public PGPSignature get(int i) {
        return this.sigs[i];
    }

    public boolean isEmpty() {
        return this.sigs.length == 0;
    }

    @Override // org.spongycastle.util.Iterable, java.lang.Iterable
    public Iterator<PGPSignature> iterator() {
        return new Arrays.Iterator(this.sigs);
    }

    public int size() {
        return this.sigs.length;
    }
}
