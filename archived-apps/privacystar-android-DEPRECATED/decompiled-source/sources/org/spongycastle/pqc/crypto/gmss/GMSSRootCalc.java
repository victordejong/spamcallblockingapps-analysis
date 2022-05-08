package org.spongycastle.pqc.crypto.gmss;

import java.util.Enumeration;
import java.util.Vector;
import org.spongycastle.crypto.Digest;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Integers;
import org.spongycastle.util.encoders.Hex;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/gmss/GMSSRootCalc.class */
public class GMSSRootCalc {
    private byte[][] AuthPath;

    /* renamed from: K */
    private int f1678K;
    private GMSSDigestProvider digestProvider;
    private int heightOfNextSeed;
    private Vector heightOfNodes;
    private int heightOfTree;
    private int[] index;
    private int indexForNextSeed;
    private boolean isFinished;
    private boolean isInitialized;
    private int mdLength;
    private Digest messDigestTree;
    private Vector[] retain;
    private byte[] root;
    private Vector tailStack;
    private Treehash[] treehash;

    public GMSSRootCalc(int i, int i2, GMSSDigestProvider gMSSDigestProvider) {
        this.heightOfTree = i;
        this.digestProvider = gMSSDigestProvider;
        this.messDigestTree = gMSSDigestProvider.get();
        this.mdLength = this.messDigestTree.getDigestSize();
        this.f1678K = i2;
        this.index = new int[i];
        this.AuthPath = new byte[i][this.mdLength];
        this.root = new byte[this.mdLength];
        this.retain = new Vector[this.f1678K - 1];
        for (int i3 = 0; i3 < i2 - 1; i3++) {
            this.retain[i3] = new Vector();
        }
    }

    public GMSSRootCalc(Digest digest, byte[][] bArr, int[] iArr, Treehash[] treehashArr, Vector[] vectorArr) {
        this.messDigestTree = this.digestProvider.get();
        this.digestProvider = this.digestProvider;
        this.heightOfTree = iArr[0];
        this.mdLength = iArr[1];
        this.f1678K = iArr[2];
        this.indexForNextSeed = iArr[3];
        this.heightOfNextSeed = iArr[4];
        if (iArr[5] == 1) {
            this.isFinished = true;
        } else {
            this.isFinished = false;
        }
        if (iArr[6] == 1) {
            this.isInitialized = true;
        } else {
            this.isInitialized = false;
        }
        int i = iArr[7];
        this.index = new int[this.heightOfTree];
        for (int i2 = 0; i2 < this.heightOfTree; i2++) {
            this.index[i2] = iArr[i2 + 8];
        }
        this.heightOfNodes = new Vector();
        for (int i3 = 0; i3 < i; i3++) {
            this.heightOfNodes.addElement(Integers.valueOf(iArr[this.heightOfTree + 8 + i3]));
        }
        this.root = bArr[0];
        this.AuthPath = new byte[this.heightOfTree][this.mdLength];
        int i4 = 0;
        while (i4 < this.heightOfTree) {
            int i5 = i4 + 1;
            this.AuthPath[i4] = bArr[i5];
            i4 = i5;
        }
        this.tailStack = new Vector();
        for (int i6 = 0; i6 < i; i6++) {
            this.tailStack.addElement(bArr[this.heightOfTree + 1 + i6]);
        }
        this.treehash = GMSSUtils.clone(treehashArr);
        this.retain = GMSSUtils.clone(vectorArr);
    }

    public byte[][] getAuthPath() {
        return GMSSUtils.clone(this.AuthPath);
    }

    public Vector[] getRetain() {
        return GMSSUtils.clone(this.retain);
    }

    public byte[] getRoot() {
        return Arrays.clone(this.root);
    }

    public Vector getStack() {
        Vector vector = new Vector();
        Enumeration elements = this.tailStack.elements();
        while (elements.hasMoreElements()) {
            vector.addElement(elements.nextElement());
        }
        return vector;
    }

    public byte[][] getStatByte() {
        int size = this.tailStack == null ? 0 : this.tailStack.size();
        byte[][] bArr = new byte[this.heightOfTree + 1 + size][64];
        bArr[0] = this.root;
        int i = 0;
        while (i < this.heightOfTree) {
            int i2 = i + 1;
            bArr[i2] = this.AuthPath[i];
            i = i2;
        }
        for (int i3 = 0; i3 < size; i3++) {
            bArr[this.heightOfTree + 1 + i3] = (byte[]) this.tailStack.elementAt(i3);
        }
        return bArr;
    }

    public int[] getStatInt() {
        int size = this.tailStack == null ? 0 : this.tailStack.size();
        int[] iArr = new int[this.heightOfTree + 8 + size];
        iArr[0] = this.heightOfTree;
        iArr[1] = this.mdLength;
        iArr[2] = this.f1678K;
        iArr[3] = this.indexForNextSeed;
        iArr[4] = this.heightOfNextSeed;
        if (this.isFinished) {
            iArr[5] = 1;
        } else {
            iArr[5] = 0;
        }
        if (this.isInitialized) {
            iArr[6] = 1;
        } else {
            iArr[6] = 0;
        }
        iArr[7] = size;
        for (int i = 0; i < this.heightOfTree; i++) {
            iArr[i + 8] = this.index[i];
        }
        for (int i2 = 0; i2 < size; i2++) {
            iArr[this.heightOfTree + 8 + i2] = ((Integer) this.heightOfNodes.elementAt(i2)).intValue();
        }
        return iArr;
    }

    public Treehash[] getTreehash() {
        return GMSSUtils.clone(this.treehash);
    }

    public void initialize(Vector vector) {
        this.treehash = new Treehash[this.heightOfTree - this.f1678K];
        for (int i = 0; i < this.heightOfTree - this.f1678K; i++) {
            this.treehash[i] = new Treehash(vector, i, this.digestProvider.get());
        }
        this.index = new int[this.heightOfTree];
        this.AuthPath = new byte[this.heightOfTree][this.mdLength];
        this.root = new byte[this.mdLength];
        this.tailStack = new Vector();
        this.heightOfNodes = new Vector();
        this.isInitialized = true;
        this.isFinished = false;
        for (int i2 = 0; i2 < this.heightOfTree; i2++) {
            this.index[i2] = -1;
        }
        this.retain = new Vector[this.f1678K - 1];
        for (int i3 = 0; i3 < this.f1678K - 1; i3++) {
            this.retain[i3] = new Vector();
        }
        this.indexForNextSeed = 3;
        this.heightOfNextSeed = 0;
    }

    public void initializeTreehashSeed(byte[] bArr, int i) {
        this.treehash[i].initializeSeed(bArr);
    }

    public String toString() {
        String str;
        int size = this.tailStack == null ? 0 : this.tailStack.size();
        String str2 = "";
        int i = 0;
        while (true) {
            str = str2;
            if (i < this.heightOfTree + 8 + size) {
                str2 = str2 + getStatInt()[i] + " ";
                i++;
            }
        }
        for (int i2 = 0; i2 < this.heightOfTree + 1 + size; i2++) {
            str = str + new String(Hex.encode(getStatByte()[i2])) + " ";
        }
        return str + "  " + this.digestProvider.get().getDigestSize();
    }

    public void update(byte[] bArr) {
        if (this.isFinished) {
            System.out.print("Too much updates for Tree!!");
        } else if (!this.isInitialized) {
            System.err.println("GMSSRootCalc not initialized!");
        } else {
            int[] iArr = this.index;
            iArr[0] = iArr[0] + 1;
            if (this.index[0] == 1) {
                System.arraycopy(bArr, 0, this.AuthPath[0], 0, this.mdLength);
            } else if (this.index[0] == 3 && this.heightOfTree > this.f1678K) {
                this.treehash[0].setFirstNode(bArr);
            }
            if ((this.index[0] - 3) % 2 == 0 && this.index[0] >= 3 && this.heightOfTree == this.f1678K) {
                this.retain[0].insertElementAt(bArr, 0);
            }
            if (this.index[0] == 0) {
                this.tailStack.addElement(bArr);
                this.heightOfNodes.addElement(Integers.valueOf(0));
                return;
            }
            byte[] bArr2 = new byte[this.mdLength];
            byte[] bArr3 = new byte[this.mdLength << 1];
            System.arraycopy(bArr, 0, bArr2, 0, this.mdLength);
            int i = 0;
            byte[] bArr4 = bArr2;
            while (this.tailStack.size() > 0 && i == ((Integer) this.heightOfNodes.lastElement()).intValue()) {
                System.arraycopy(this.tailStack.lastElement(), 0, bArr3, 0, this.mdLength);
                this.tailStack.removeElementAt(this.tailStack.size() - 1);
                this.heightOfNodes.removeElementAt(this.heightOfNodes.size() - 1);
                System.arraycopy(bArr4, 0, bArr3, this.mdLength, this.mdLength);
                this.messDigestTree.update(bArr3, 0, bArr3.length);
                byte[] bArr5 = new byte[this.messDigestTree.getDigestSize()];
                this.messDigestTree.doFinal(bArr5, 0);
                int i2 = i + 1;
                bArr4 = bArr5;
                i = i2;
                if (i2 < this.heightOfTree) {
                    int[] iArr2 = this.index;
                    iArr2[i2] = iArr2[i2] + 1;
                    if (this.index[i2] == 1) {
                        System.arraycopy(bArr5, 0, this.AuthPath[i2], 0, this.mdLength);
                    }
                    if (i2 >= this.heightOfTree - this.f1678K) {
                        if (i2 == 0) {
                            System.out.println("M���P");
                        }
                        bArr4 = bArr5;
                        i = i2;
                        if ((this.index[i2] - 3) % 2 == 0) {
                            bArr4 = bArr5;
                            i = i2;
                            if (this.index[i2] >= 3) {
                                this.retain[i2 - (this.heightOfTree - this.f1678K)].insertElementAt(bArr5, 0);
                                bArr4 = bArr5;
                                i = i2;
                            }
                        }
                    } else {
                        bArr4 = bArr5;
                        i = i2;
                        if (this.index[i2] == 3) {
                            this.treehash[i2].setFirstNode(bArr5);
                            bArr4 = bArr5;
                            i = i2;
                        }
                    }
                }
            }
            this.tailStack.addElement(bArr4);
            this.heightOfNodes.addElement(Integers.valueOf(i));
            if (i == this.heightOfTree) {
                this.isFinished = true;
                this.isInitialized = false;
                this.root = (byte[]) this.tailStack.lastElement();
            }
        }
    }

    public void update(byte[] bArr, byte[] bArr2) {
        if (this.heightOfNextSeed < this.heightOfTree - this.f1678K && this.indexForNextSeed - 2 == this.index[0]) {
            initializeTreehashSeed(bArr, this.heightOfNextSeed);
            this.heightOfNextSeed++;
            this.indexForNextSeed *= 2;
        }
        update(bArr2);
    }

    public boolean wasFinished() {
        return this.isFinished;
    }

    public boolean wasInitialized() {
        return this.isInitialized;
    }
}
