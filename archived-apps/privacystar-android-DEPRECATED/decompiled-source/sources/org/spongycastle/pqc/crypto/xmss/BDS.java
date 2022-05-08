package org.spongycastle.pqc.crypto.xmss;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.TreeMap;
import org.spongycastle.pqc.crypto.xmss.HashTreeAddress;
import org.spongycastle.pqc.crypto.xmss.LTreeAddress;
import org.spongycastle.pqc.crypto.xmss.OTSHashAddress;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/pqc/crypto/xmss/BDS.class */
public final class BDS implements Serializable {
    private static final long serialVersionUID = 1;
    private List<XMSSNode> authenticationPath;
    private int index;

    /* renamed from: k */
    private int f1782k;
    private Map<Integer, XMSSNode> keep;
    private Map<Integer, LinkedList<XMSSNode>> retain;
    private XMSSNode root;
    private Stack<XMSSNode> stack;
    private final List<BDSTreeHash> treeHashInstances;
    private final int treeHeight;
    private boolean used;
    private transient WOTSPlus wotsPlus;

    private BDS(BDS bds, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        this.wotsPlus = bds.wotsPlus;
        this.treeHeight = bds.treeHeight;
        this.f1782k = bds.f1782k;
        this.root = bds.root;
        this.authenticationPath = new ArrayList(bds.authenticationPath);
        this.retain = bds.retain;
        this.stack = (Stack) bds.stack.clone();
        this.treeHashInstances = bds.treeHashInstances;
        this.keep = new TreeMap(bds.keep);
        this.index = bds.index;
        nextAuthenticationPath(bArr, bArr2, oTSHashAddress);
        bds.used = true;
    }

    private BDS(WOTSPlus wOTSPlus, int i, int i2) {
        this.wotsPlus = wOTSPlus;
        this.treeHeight = i;
        this.f1782k = i2;
        if (i2 <= i && i2 >= 2) {
            int i3 = i - i2;
            if (i3 % 2 == 0) {
                this.authenticationPath = new ArrayList();
                this.retain = new TreeMap();
                this.stack = new Stack<>();
                this.treeHashInstances = new ArrayList();
                for (int i4 = 0; i4 < i3; i4++) {
                    this.treeHashInstances.add(new BDSTreeHash(i4));
                }
                this.keep = new TreeMap();
                this.index = 0;
                this.used = false;
                return;
            }
        }
        throw new IllegalArgumentException("illegal value for BDS parameter k");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(XMSSParameters xMSSParameters, int i) {
        this(xMSSParameters.getWOTSPlus(), xMSSParameters.getHeight(), xMSSParameters.getK());
        this.index = i;
        this.used = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(XMSSParameters xMSSParameters, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        this(xMSSParameters.getWOTSPlus(), xMSSParameters.getHeight(), xMSSParameters.getK());
        initialize(bArr, bArr2, oTSHashAddress);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BDS(XMSSParameters xMSSParameters, byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress, int i) {
        this(xMSSParameters.getWOTSPlus(), xMSSParameters.getHeight(), xMSSParameters.getK());
        initialize(bArr, bArr2, oTSHashAddress);
        while (this.index < i) {
            nextAuthenticationPath(bArr, bArr2, oTSHashAddress);
            this.used = false;
        }
    }

    private BDSTreeHash getBDSTreeHashInstanceForUpdate() {
        BDSTreeHash bDSTreeHash = null;
        for (BDSTreeHash bDSTreeHash2 : this.treeHashInstances) {
            if (!bDSTreeHash2.isFinished() && bDSTreeHash2.isInitialized() && (bDSTreeHash == null || bDSTreeHash2.getHeight() < bDSTreeHash.getHeight() || (bDSTreeHash2.getHeight() == bDSTreeHash.getHeight() && bDSTreeHash2.getIndexLeaf() < bDSTreeHash.getIndexLeaf()))) {
                bDSTreeHash = bDSTreeHash2;
            }
        }
        return bDSTreeHash;
    }

    private void initialize(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        if (oTSHashAddress == null) {
            throw new NullPointerException("otsHashAddress == null");
        }
        LTreeAddress lTreeAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
        HashTreeAddress hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
        int i = 0;
        OTSHashAddress oTSHashAddress2 = oTSHashAddress;
        while (i < (1 << this.treeHeight)) {
            oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress2.getLayerAddress()).withTreeAddress(oTSHashAddress2.getTreeAddress()).withOTSAddress(i).withChainAddress(oTSHashAddress2.getChainAddress()).withHashAddress(oTSHashAddress2.getHashAddress()).withKeyAndMask(oTSHashAddress2.getKeyAndMask()).build();
            this.wotsPlus.importKeys(this.wotsPlus.getWOTSPlusSecretKey(bArr2, oTSHashAddress2), bArr);
            WOTSPlusPublicKeyParameters publicKey = this.wotsPlus.getPublicKey(oTSHashAddress2);
            LTreeAddress lTreeAddress2 = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(i).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask()).build();
            XMSSNode lTree = XMSSNodeUtil.lTree(this.wotsPlus, publicKey, lTreeAddress2);
            XMSSAddress build = new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeIndex(i).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build();
            while (true) {
                hashTreeAddress = (HashTreeAddress) build;
                if (!this.stack.isEmpty() && this.stack.peek().getHeight() == lTree.getHeight()) {
                    int floor = (int) Math.floor(i / (1 << lTree.getHeight()));
                    if (floor == 1) {
                        this.authenticationPath.add(lTree.clone());
                    }
                    if (floor == 3 && lTree.getHeight() < this.treeHeight - this.f1782k) {
                        this.treeHashInstances.get(lTree.getHeight()).setNode(lTree.clone());
                    }
                    if (floor >= 3 && (floor & 1) == 1 && lTree.getHeight() >= this.treeHeight - this.f1782k && lTree.getHeight() <= this.treeHeight - 2) {
                        if (this.retain.get(Integer.valueOf(lTree.getHeight())) == null) {
                            LinkedList<XMSSNode> linkedList = new LinkedList<>();
                            linkedList.add(lTree.clone());
                            this.retain.put(Integer.valueOf(lTree.getHeight()), linkedList);
                        } else {
                            this.retain.get(Integer.valueOf(lTree.getHeight())).add(lTree.clone());
                        }
                    }
                    HashTreeAddress hashTreeAddress2 = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress()).withTreeHeight(hashTreeAddress.getTreeHeight()).withTreeIndex((hashTreeAddress.getTreeIndex() - 1) / 2).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build();
                    XMSSNode randomizeHash = XMSSNodeUtil.randomizeHash(this.wotsPlus, this.stack.pop(), lTree, hashTreeAddress2);
                    lTree = new XMSSNode(randomizeHash.getHeight() + 1, randomizeHash.getValue());
                    build = new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress2.getLayerAddress()).withTreeAddress(hashTreeAddress2.getTreeAddress()).withTreeHeight(hashTreeAddress2.getTreeHeight() + 1).withTreeIndex(hashTreeAddress2.getTreeIndex()).withKeyAndMask(hashTreeAddress2.getKeyAndMask()).build();
                }
            }
            this.stack.push(lTree);
            i++;
            lTreeAddress = lTreeAddress2;
        }
        this.root = this.stack.pop();
    }

    private void nextAuthenticationPath(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        int i;
        OTSHashAddress oTSHashAddress2;
        if (oTSHashAddress == null) {
            throw new NullPointerException("otsHashAddress == null");
        } else if (this.used) {
            throw new IllegalStateException("index already used");
        } else if (this.index > (1 << this.treeHeight) - 2) {
            throw new IllegalStateException("index out of bounds");
        } else {
            LTreeAddress lTreeAddress = (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
            HashTreeAddress hashTreeAddress = (HashTreeAddress) new HashTreeAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).build();
            int calculateTau = XMSSUtil.calculateTau(this.index, this.treeHeight);
            if (((this.index >> (calculateTau + 1)) & 1) == 0 && calculateTau < this.treeHeight - 1) {
                this.keep.put(Integer.valueOf(calculateTau), this.authenticationPath.get(calculateTau).clone());
            }
            if (calculateTau != 0) {
                HashTreeAddress.Builder withTreeAddress = new HashTreeAddress.Builder().withLayerAddress(hashTreeAddress.getLayerAddress()).withTreeAddress(hashTreeAddress.getTreeAddress());
                int i2 = calculateTau - 1;
                XMSSNode randomizeHash = XMSSNodeUtil.randomizeHash(this.wotsPlus, this.authenticationPath.get(i2), this.keep.get(Integer.valueOf(i2)), (HashTreeAddress) withTreeAddress.withTreeHeight(i2).withTreeIndex(this.index >> calculateTau).withKeyAndMask(hashTreeAddress.getKeyAndMask()).build());
                this.authenticationPath.set(calculateTau, new XMSSNode(randomizeHash.getHeight() + 1, randomizeHash.getValue()));
                this.keep.remove(Integer.valueOf(i2));
                for (int i3 = 0; i3 < calculateTau; i3++) {
                    if (i3 < this.treeHeight - this.f1782k) {
                        this.authenticationPath.set(i3, this.treeHashInstances.get(i3).getTailNode());
                    } else {
                        this.authenticationPath.set(i3, this.retain.get(Integer.valueOf(i3)).removeFirst());
                    }
                }
                int min = Math.min(calculateTau, this.treeHeight - this.f1782k);
                int i4 = 0;
                while (true) {
                    i = 0;
                    oTSHashAddress2 = oTSHashAddress;
                    if (i4 >= min) {
                        break;
                    }
                    int i5 = this.index + 1 + ((1 << i4) * 3);
                    if (i5 < (1 << this.treeHeight)) {
                        this.treeHashInstances.get(i4).initialize(i5);
                    }
                    i4++;
                }
            } else {
                oTSHashAddress2 = (OTSHashAddress) new OTSHashAddress.Builder().withLayerAddress(oTSHashAddress.getLayerAddress()).withTreeAddress(oTSHashAddress.getTreeAddress()).withOTSAddress(this.index).withChainAddress(oTSHashAddress.getChainAddress()).withHashAddress(oTSHashAddress.getHashAddress()).withKeyAndMask(oTSHashAddress.getKeyAndMask()).build();
                this.wotsPlus.importKeys(this.wotsPlus.getWOTSPlusSecretKey(bArr2, oTSHashAddress2), bArr);
                this.authenticationPath.set(0, XMSSNodeUtil.lTree(this.wotsPlus, this.wotsPlus.getPublicKey(oTSHashAddress2), (LTreeAddress) new LTreeAddress.Builder().withLayerAddress(lTreeAddress.getLayerAddress()).withTreeAddress(lTreeAddress.getTreeAddress()).withLTreeAddress(this.index).withTreeHeight(lTreeAddress.getTreeHeight()).withTreeIndex(lTreeAddress.getTreeIndex()).withKeyAndMask(lTreeAddress.getKeyAndMask()).build()));
                i = 0;
            }
            while (i < ((this.treeHeight - this.f1782k) >> 1)) {
                BDSTreeHash bDSTreeHashInstanceForUpdate = getBDSTreeHashInstanceForUpdate();
                if (bDSTreeHashInstanceForUpdate != null) {
                    bDSTreeHashInstanceForUpdate.update(this.stack, this.wotsPlus, bArr, bArr2, oTSHashAddress2);
                }
                i++;
            }
            this.index++;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<XMSSNode> getAuthenticationPath() {
        ArrayList arrayList = new ArrayList();
        for (XMSSNode xMSSNode : this.authenticationPath) {
            arrayList.add(xMSSNode.clone());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getIndex() {
        return this.index;
    }

    public BDS getNextState(byte[] bArr, byte[] bArr2, OTSHashAddress oTSHashAddress) {
        return new BDS(this, bArr, bArr2, oTSHashAddress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public XMSSNode getRoot() {
        return this.root.clone();
    }

    protected int getTreeHeight() {
        return this.treeHeight;
    }

    boolean isUsed() {
        return this.used;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setXMSS(XMSSParameters xMSSParameters) {
        if (this.treeHeight != xMSSParameters.getHeight()) {
            throw new IllegalStateException("wrong height");
        }
        this.wotsPlus = xMSSParameters.getWOTSPlus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void validate() {
        if (this.authenticationPath == null) {
            throw new IllegalStateException("authenticationPath == null");
        } else if (this.retain == null) {
            throw new IllegalStateException("retain == null");
        } else if (this.stack == null) {
            throw new IllegalStateException("stack == null");
        } else if (this.treeHashInstances == null) {
            throw new IllegalStateException("treeHashInstances == null");
        } else if (this.keep == null) {
            throw new IllegalStateException("keep == null");
        } else if (!XMSSUtil.isIndexValid(this.treeHeight, this.index)) {
            throw new IllegalStateException("index in BDS state out of bounds");
        }
    }
}
