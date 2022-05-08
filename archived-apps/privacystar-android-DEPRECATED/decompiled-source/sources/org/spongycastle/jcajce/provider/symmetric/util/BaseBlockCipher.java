package org.spongycastle.jcajce.provider.symmetric.util;

import java.lang.reflect.Constructor;
import java.nio.ByteBuffer;
import java.security.AlgorithmParameters;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.InvalidParameterException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.BadPaddingException;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.SecretKey;
import javax.crypto.ShortBufferException;
import javax.crypto.interfaces.PBEKey;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEParameterSpec;
import javax.crypto.spec.RC2ParameterSpec;
import javax.crypto.spec.RC5ParameterSpec;
import org.spongycastle.asn1.cms.GCMParameters;
import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.BufferedBlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.InvalidCipherTextException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.engines.DSTU7624Engine;
import org.spongycastle.crypto.modes.AEADBlockCipher;
import org.spongycastle.crypto.modes.CBCBlockCipher;
import org.spongycastle.crypto.modes.CCMBlockCipher;
import org.spongycastle.crypto.modes.CFBBlockCipher;
import org.spongycastle.crypto.modes.CTSBlockCipher;
import org.spongycastle.crypto.modes.EAXBlockCipher;
import org.spongycastle.crypto.modes.GCFBBlockCipher;
import org.spongycastle.crypto.modes.GCMBlockCipher;
import org.spongycastle.crypto.modes.GOFBBlockCipher;
import org.spongycastle.crypto.modes.KCCMBlockCipher;
import org.spongycastle.crypto.modes.KCTRBlockCipher;
import org.spongycastle.crypto.modes.KGCMBlockCipher;
import org.spongycastle.crypto.modes.OCBBlockCipher;
import org.spongycastle.crypto.modes.OFBBlockCipher;
import org.spongycastle.crypto.modes.OpenPGPCFBBlockCipher;
import org.spongycastle.crypto.modes.PGPCFBBlockCipher;
import org.spongycastle.crypto.modes.SICBlockCipher;
import org.spongycastle.crypto.paddings.BlockCipherPadding;
import org.spongycastle.crypto.paddings.ISO10126d2Padding;
import org.spongycastle.crypto.paddings.ISO7816d4Padding;
import org.spongycastle.crypto.paddings.PaddedBufferedBlockCipher;
import org.spongycastle.crypto.paddings.TBCPadding;
import org.spongycastle.crypto.paddings.X923Padding;
import org.spongycastle.crypto.paddings.ZeroBytePadding;
import org.spongycastle.crypto.params.AEADParameters;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.ParametersWithIV;
import org.spongycastle.crypto.params.ParametersWithRandom;
import org.spongycastle.crypto.params.ParametersWithSBox;
import org.spongycastle.crypto.params.RC2Parameters;
import org.spongycastle.crypto.params.RC5Parameters;
import org.spongycastle.jcajce.PBKDF1Key;
import org.spongycastle.jcajce.PBKDF1KeyWithParameters;
import org.spongycastle.jcajce.PKCS12Key;
import org.spongycastle.jcajce.PKCS12KeyWithParameters;
import org.spongycastle.jcajce.provider.symmetric.util.PBE;
import org.spongycastle.jcajce.spec.AEADParameterSpec;
import org.spongycastle.jcajce.spec.GOST28147ParameterSpec;
import org.spongycastle.jcajce.spec.RepeatedSecretKeySpec;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher.class */
public class BaseBlockCipher extends BaseWrapCipher implements PBE {
    private static final Class gcmSpecClass = ClassUtil.loadClass(BaseBlockCipher.class, "javax.crypto.spec.GCMParameterSpec");
    private AEADParameters aeadParams;
    private Class[] availableSpecs;
    private BlockCipher baseEngine;
    private GenericBlockCipher cipher;
    private int digest;
    private BlockCipherProvider engineProvider;
    private boolean fixedIv;
    private int ivLength;
    private ParametersWithIV ivParam;
    private int keySizeInBits;
    private String modeName;
    private boolean padded;
    private String pbeAlgorithm;
    private PBEParameterSpec pbeSpec;
    private int scheme;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$AEADGenericBlockCipher.class */
    public static class AEADGenericBlockCipher implements GenericBlockCipher {
        private static final Constructor aeadBadTagConstructor;
        private AEADBlockCipher cipher;

        static {
            Class loadClass = ClassUtil.loadClass(BaseBlockCipher.class, "javax.crypto.AEADBadTagException");
            if (loadClass != null) {
                aeadBadTagConstructor = findExceptionConstructor(loadClass);
            } else {
                aeadBadTagConstructor = null;
            }
        }

        AEADGenericBlockCipher(AEADBlockCipher aEADBlockCipher) {
            this.cipher = aEADBlockCipher;
        }

        private static Constructor findExceptionConstructor(Class cls) {
            try {
                return cls.getConstructor(String.class);
            } catch (Exception e) {
                return null;
            }
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException {
            try {
                return this.cipher.doFinal(bArr, i);
            } catch (InvalidCipherTextException e) {
                if (aeadBadTagConstructor != null) {
                    BadPaddingException badPaddingException = null;
                    try {
                        badPaddingException = (BadPaddingException) aeadBadTagConstructor.newInstance(e.getMessage());
                    } catch (Exception e2) {
                    }
                    if (badPaddingException != null) {
                        throw badPaddingException;
                    }
                }
                throw new BadPaddingException(e.getMessage());
            }
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public String getAlgorithmName() {
            return this.cipher.getUnderlyingCipher().getAlgorithmName();
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getOutputSize(int i) {
            return this.cipher.getOutputSize(i);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public BlockCipher getUnderlyingCipher() {
            return this.cipher.getUnderlyingCipher();
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getUpdateOutputSize(int i) {
            return this.cipher.getUpdateOutputSize(i);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
            this.cipher.init(z, cipherParameters);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
            return this.cipher.processByte(b, bArr, i);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
            return this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void updateAAD(byte[] bArr, int i, int i2) {
            this.cipher.processAADBytes(bArr, i, i2);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public boolean wrapOnNoPadding() {
            return false;
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$BufferedGenericBlockCipher.class */
    private static class BufferedGenericBlockCipher implements GenericBlockCipher {
        private BufferedBlockCipher cipher;

        BufferedGenericBlockCipher(BlockCipher blockCipher) {
            this.cipher = new PaddedBufferedBlockCipher(blockCipher);
        }

        BufferedGenericBlockCipher(BlockCipher blockCipher, BlockCipherPadding blockCipherPadding) {
            this.cipher = new PaddedBufferedBlockCipher(blockCipher, blockCipherPadding);
        }

        BufferedGenericBlockCipher(BufferedBlockCipher bufferedBlockCipher) {
            this.cipher = bufferedBlockCipher;
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException {
            try {
                return this.cipher.doFinal(bArr, i);
            } catch (InvalidCipherTextException e) {
                throw new BadPaddingException(e.getMessage());
            }
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public String getAlgorithmName() {
            return this.cipher.getUnderlyingCipher().getAlgorithmName();
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getOutputSize(int i) {
            return this.cipher.getOutputSize(i);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public BlockCipher getUnderlyingCipher() {
            return this.cipher.getUnderlyingCipher();
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int getUpdateOutputSize(int i) {
            return this.cipher.getUpdateOutputSize(i);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
            this.cipher.init(z, cipherParameters);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processByte(byte b, byte[] bArr, int i) throws DataLengthException {
            return this.cipher.processByte(b, bArr, i);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException {
            return this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public void updateAAD(byte[] bArr, int i, int i2) {
            throw new UnsupportedOperationException("AAD is not supported in the current mode.");
        }

        @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseBlockCipher.GenericBlockCipher
        public boolean wrapOnNoPadding() {
            return !(this.cipher instanceof CTSBlockCipher);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$GenericBlockCipher.class */
    public interface GenericBlockCipher {
        int doFinal(byte[] bArr, int i) throws IllegalStateException, BadPaddingException;

        String getAlgorithmName();

        int getOutputSize(int i);

        BlockCipher getUnderlyingCipher();

        int getUpdateOutputSize(int i);

        void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException;

        int processByte(byte b, byte[] bArr, int i) throws DataLengthException;

        int processBytes(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws DataLengthException;

        void updateAAD(byte[] bArr, int i, int i2);

        boolean wrapOnNoPadding();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3-dex2jar.jar:org/spongycastle/jcajce/provider/symmetric/util/BaseBlockCipher$InvalidKeyOrParametersException.class */
    public static class InvalidKeyOrParametersException extends InvalidKeyException {
        private final Throwable cause;

        InvalidKeyOrParametersException(String str, Throwable th) {
            super(str);
            this.cause = th;
        }

        @Override // java.lang.Throwable
        public Throwable getCause() {
            return this.cause;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(BlockCipher blockCipher) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = blockCipher;
        this.cipher = new BufferedGenericBlockCipher(blockCipher);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(BlockCipher blockCipher, int i) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = blockCipher;
        this.cipher = new BufferedGenericBlockCipher(blockCipher);
        this.ivLength = i / 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(BlockCipher blockCipher, int i, int i2, int i3, int i4) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = blockCipher;
        this.scheme = i;
        this.digest = i2;
        this.keySizeInBits = i3;
        this.ivLength = i4;
        this.cipher = new BufferedGenericBlockCipher(blockCipher);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(BufferedBlockCipher bufferedBlockCipher, int i) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = bufferedBlockCipher.getUnderlyingCipher();
        this.cipher = new BufferedGenericBlockCipher(bufferedBlockCipher);
        this.ivLength = i / 8;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(AEADBlockCipher aEADBlockCipher) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = aEADBlockCipher.getUnderlyingCipher();
        this.ivLength = this.baseEngine.getBlockSize();
        this.cipher = new AEADGenericBlockCipher(aEADBlockCipher);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(AEADBlockCipher aEADBlockCipher, boolean z, int i) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = aEADBlockCipher.getUnderlyingCipher();
        this.fixedIv = z;
        this.ivLength = i;
        this.cipher = new AEADGenericBlockCipher(aEADBlockCipher);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BaseBlockCipher(BlockCipherProvider blockCipherProvider) {
        this.availableSpecs = new Class[]{RC2ParameterSpec.class, RC5ParameterSpec.class, gcmSpecClass, GOST28147ParameterSpec.class, IvParameterSpec.class, PBEParameterSpec.class};
        this.scheme = -1;
        this.ivLength = 0;
        this.fixedIv = true;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.modeName = null;
        this.baseEngine = blockCipherProvider.get();
        this.engineProvider = blockCipherProvider;
        this.cipher = new BufferedGenericBlockCipher(blockCipherProvider.get());
    }

    private CipherParameters adjustParameters(AlgorithmParameterSpec algorithmParameterSpec, CipherParameters cipherParameters) {
        CipherParameters cipherParameters2;
        if (cipherParameters instanceof ParametersWithIV) {
            CipherParameters parameters = ((ParametersWithIV) cipherParameters).getParameters();
            if (algorithmParameterSpec instanceof IvParameterSpec) {
                this.ivParam = new ParametersWithIV(parameters, ((IvParameterSpec) algorithmParameterSpec).getIV());
                cipherParameters2 = this.ivParam;
            } else {
                cipherParameters2 = cipherParameters;
                if (algorithmParameterSpec instanceof GOST28147ParameterSpec) {
                    GOST28147ParameterSpec gOST28147ParameterSpec = (GOST28147ParameterSpec) algorithmParameterSpec;
                    cipherParameters2 = new ParametersWithSBox(cipherParameters, gOST28147ParameterSpec.getSbox());
                    if (!(gOST28147ParameterSpec.getIV() == null || this.ivLength == 0)) {
                        this.ivParam = new ParametersWithIV(parameters, gOST28147ParameterSpec.getIV());
                        cipherParameters2 = this.ivParam;
                    }
                }
            }
        } else if (algorithmParameterSpec instanceof IvParameterSpec) {
            this.ivParam = new ParametersWithIV(cipherParameters, ((IvParameterSpec) algorithmParameterSpec).getIV());
            cipherParameters2 = this.ivParam;
        } else {
            cipherParameters2 = cipherParameters;
            if (algorithmParameterSpec instanceof GOST28147ParameterSpec) {
                GOST28147ParameterSpec gOST28147ParameterSpec2 = (GOST28147ParameterSpec) algorithmParameterSpec;
                cipherParameters2 = new ParametersWithSBox(cipherParameters, gOST28147ParameterSpec2.getSbox());
                if (!(gOST28147ParameterSpec2.getIV() == null || this.ivLength == 0)) {
                    cipherParameters2 = new ParametersWithIV(cipherParameters2, gOST28147ParameterSpec2.getIV());
                }
            }
        }
        return cipherParameters2;
    }

    private boolean isAEADModeName(String str) {
        return "CCM".equals(str) || "EAX".equals(str) || "GCM".equals(str) || "OCB".equals(str);
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineDoFinal(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws IllegalBlockSizeException, BadPaddingException, ShortBufferException {
        int processBytes;
        if (engineGetOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        if (i2 != 0) {
            try {
                processBytes = this.cipher.processBytes(bArr, i, i2, bArr2, i3);
            } catch (OutputLengthException e) {
                throw new IllegalBlockSizeException(e.getMessage());
            } catch (DataLengthException e2) {
                throw new IllegalBlockSizeException(e2.getMessage());
            }
        } else {
            processBytes = 0;
        }
        return processBytes + this.cipher.doFinal(bArr2, i3 + processBytes);
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected byte[] engineDoFinal(byte[] bArr, int i, int i2) throws IllegalBlockSizeException, BadPaddingException {
        byte[] bArr2 = new byte[engineGetOutputSize(i2)];
        int processBytes = i2 != 0 ? this.cipher.processBytes(bArr, i, i2, bArr2, 0) : 0;
        try {
            int doFinal = processBytes + this.cipher.doFinal(bArr2, processBytes);
            if (doFinal == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[doFinal];
            System.arraycopy(bArr2, 0, bArr3, 0, doFinal);
            return bArr3;
        } catch (DataLengthException e) {
            throw new IllegalBlockSizeException(e.getMessage());
        }
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineGetBlockSize() {
        return this.baseEngine.getBlockSize();
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected byte[] engineGetIV() {
        if (this.aeadParams != null) {
            return this.aeadParams.getNonce();
        }
        return this.ivParam != null ? this.ivParam.getIV() : null;
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineGetKeySize(Key key) {
        return key.getEncoded().length * 8;
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineGetOutputSize(int i) {
        return this.cipher.getOutputSize(i);
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected AlgorithmParameters engineGetParameters() {
        if (this.engineParams == null) {
            if (this.pbeSpec != null) {
                try {
                    this.engineParams = createParametersInstance(this.pbeAlgorithm);
                    this.engineParams.init(this.pbeSpec);
                } catch (Exception e) {
                    return null;
                }
            } else if (this.aeadParams != null) {
                try {
                    this.engineParams = createParametersInstance("GCM");
                    this.engineParams.init(new GCMParameters(this.aeadParams.getNonce(), this.aeadParams.getMacSize() / 8).getEncoded());
                } catch (Exception e2) {
                    throw new RuntimeException(e2.toString());
                }
            } else if (this.ivParam != null) {
                String algorithmName = this.cipher.getUnderlyingCipher().getAlgorithmName();
                String str = algorithmName;
                if (algorithmName.indexOf(47) >= 0) {
                    str = algorithmName.substring(0, algorithmName.indexOf(47));
                }
                try {
                    this.engineParams = createParametersInstance(str);
                    this.engineParams.init(new IvParameterSpec(this.ivParam.getIV()));
                } catch (Exception e3) {
                    throw new RuntimeException(e3.toString());
                }
            }
        }
        return this.engineParams;
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineInit(int i, Key key, AlgorithmParameters algorithmParameters, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        AlgorithmParameterSpec algorithmParameterSpec = null;
        AlgorithmParameterSpec algorithmParameterSpec2 = null;
        if (algorithmParameters != null) {
            for (int i2 = 0; i2 != this.availableSpecs.length; i2++) {
                if (this.availableSpecs[i2] != null) {
                    try {
                        algorithmParameterSpec2 = algorithmParameters.getParameterSpec(this.availableSpecs[i2]);
                        break;
                    } catch (Exception e) {
                    }
                }
            }
            algorithmParameterSpec = algorithmParameterSpec2;
            if (algorithmParameterSpec2 == null) {
                throw new InvalidAlgorithmParameterException("can't handle parameter " + algorithmParameters.toString());
            }
        }
        engineInit(i, key, algorithmParameterSpec, secureRandom);
        this.engineParams = algorithmParameters;
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineInit(int i, Key key, SecureRandom secureRandom) throws InvalidKeyException {
        try {
            engineInit(i, key, (AlgorithmParameterSpec) null, secureRandom);
        } catch (InvalidAlgorithmParameterException e) {
            throw new InvalidKeyException(e.getMessage());
        }
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineInit(int i, Key key, AlgorithmParameterSpec algorithmParameterSpec, SecureRandom secureRandom) throws InvalidKeyException, InvalidAlgorithmParameterException {
        CipherParameters cipherParameters;
        AEADParameters aEADParameters;
        CipherParameters cipherParameters2;
        CipherParameters cipherParameters3 = null;
        String str = null;
        this.pbeSpec = null;
        this.pbeAlgorithm = null;
        this.engineParams = null;
        this.aeadParams = null;
        if (!(key instanceof SecretKey)) {
            StringBuilder sb = new StringBuilder();
            sb.append("Key for algorithm ");
            if (key != null) {
                str = key.getAlgorithm();
            }
            sb.append(str);
            sb.append(" not suitable for symmetric enryption.");
            throw new InvalidKeyException(sb.toString());
        } else if (algorithmParameterSpec != null || !this.baseEngine.getAlgorithmName().startsWith("RC5-64")) {
            if (this.scheme == 2 || (key instanceof PKCS12Key)) {
                try {
                    SecretKey secretKey = (SecretKey) key;
                    if (algorithmParameterSpec instanceof PBEParameterSpec) {
                        this.pbeSpec = (PBEParameterSpec) algorithmParameterSpec;
                    }
                    boolean z = secretKey instanceof PBEKey;
                    if (z && this.pbeSpec == null) {
                        PBEKey pBEKey = (PBEKey) secretKey;
                        if (pBEKey.getSalt() == null) {
                            throw new InvalidAlgorithmParameterException("PBEKey requires parameters to specify salt");
                        }
                        this.pbeSpec = new PBEParameterSpec(pBEKey.getSalt(), pBEKey.getIterationCount());
                    }
                    if (this.pbeSpec != null || z) {
                        if (key instanceof BCPBEKey) {
                            cipherParameters = ((BCPBEKey) key).getParam();
                            if (!(cipherParameters instanceof ParametersWithIV)) {
                                if (cipherParameters == null) {
                                    cipherParameters = PBE.Util.makePBEParameters(secretKey.getEncoded(), 2, this.digest, this.keySizeInBits, this.ivLength * 8, this.pbeSpec, this.cipher.getAlgorithmName());
                                } else {
                                    throw new InvalidKeyException("Algorithm requires a PBE key suitable for PKCS12");
                                }
                            }
                        } else {
                            cipherParameters = PBE.Util.makePBEParameters(secretKey.getEncoded(), 2, this.digest, this.keySizeInBits, this.ivLength * 8, this.pbeSpec, this.cipher.getAlgorithmName());
                        }
                        cipherParameters3 = cipherParameters;
                        if (cipherParameters instanceof ParametersWithIV) {
                            this.ivParam = (ParametersWithIV) cipherParameters;
                            cipherParameters3 = cipherParameters;
                        }
                    } else {
                        throw new InvalidKeyException("Algorithm requires a PBE key");
                    }
                } catch (Exception e) {
                    throw new InvalidKeyException("PKCS12 requires a SecretKey/PBEKey");
                }
            } else if (key instanceof PBKDF1Key) {
                PBKDF1Key pBKDF1Key = (PBKDF1Key) key;
                if (algorithmParameterSpec instanceof PBEParameterSpec) {
                    this.pbeSpec = (PBEParameterSpec) algorithmParameterSpec;
                }
                if ((pBKDF1Key instanceof PBKDF1KeyWithParameters) && this.pbeSpec == null) {
                    PBKDF1KeyWithParameters pBKDF1KeyWithParameters = (PBKDF1KeyWithParameters) pBKDF1Key;
                    this.pbeSpec = new PBEParameterSpec(pBKDF1KeyWithParameters.getSalt(), pBKDF1KeyWithParameters.getIterationCount());
                }
                CipherParameters makePBEParameters = PBE.Util.makePBEParameters(pBKDF1Key.getEncoded(), 0, this.digest, this.keySizeInBits, this.ivLength * 8, this.pbeSpec, this.cipher.getAlgorithmName());
                cipherParameters3 = makePBEParameters;
                if (makePBEParameters instanceof ParametersWithIV) {
                    this.ivParam = (ParametersWithIV) makePBEParameters;
                    cipherParameters3 = makePBEParameters;
                }
            } else if (key instanceof BCPBEKey) {
                BCPBEKey bCPBEKey = (BCPBEKey) key;
                if (bCPBEKey.getOID() != null) {
                    this.pbeAlgorithm = bCPBEKey.getOID().getId();
                } else {
                    this.pbeAlgorithm = bCPBEKey.getAlgorithm();
                }
                if (bCPBEKey.getParam() != null) {
                    cipherParameters2 = adjustParameters(algorithmParameterSpec, bCPBEKey.getParam());
                } else if (algorithmParameterSpec instanceof PBEParameterSpec) {
                    this.pbeSpec = (PBEParameterSpec) algorithmParameterSpec;
                    cipherParameters2 = PBE.Util.makePBEParameters(bCPBEKey, algorithmParameterSpec, this.cipher.getUnderlyingCipher().getAlgorithmName());
                } else {
                    throw new InvalidAlgorithmParameterException("PBE requires PBE parameters to be set.");
                }
                cipherParameters3 = cipherParameters2;
                if (cipherParameters2 instanceof ParametersWithIV) {
                    this.ivParam = (ParametersWithIV) cipherParameters2;
                    cipherParameters3 = cipherParameters2;
                }
            } else if (key instanceof PBEKey) {
                PBEKey pBEKey2 = (PBEKey) key;
                this.pbeSpec = (PBEParameterSpec) algorithmParameterSpec;
                if ((pBEKey2 instanceof PKCS12KeyWithParameters) && this.pbeSpec == null) {
                    this.pbeSpec = new PBEParameterSpec(pBEKey2.getSalt(), pBEKey2.getIterationCount());
                }
                CipherParameters makePBEParameters2 = PBE.Util.makePBEParameters(pBEKey2.getEncoded(), this.scheme, this.digest, this.keySizeInBits, this.ivLength * 8, this.pbeSpec, this.cipher.getAlgorithmName());
                cipherParameters3 = makePBEParameters2;
                if (makePBEParameters2 instanceof ParametersWithIV) {
                    this.ivParam = (ParametersWithIV) makePBEParameters2;
                    cipherParameters3 = makePBEParameters2;
                }
            } else if (!(key instanceof RepeatedSecretKeySpec)) {
                if (this.scheme == 0 || this.scheme == 4 || this.scheme == 1 || this.scheme == 5) {
                    throw new InvalidKeyException("Algorithm requires a PBE key");
                }
                cipherParameters3 = new KeyParameter(key.getEncoded());
            }
            if (algorithmParameterSpec instanceof AEADParameterSpec) {
                if (isAEADModeName(this.modeName) || (this.cipher instanceof AEADGenericBlockCipher)) {
                    AEADParameterSpec aEADParameterSpec = (AEADParameterSpec) algorithmParameterSpec;
                    AEADParameters aEADParameters2 = new AEADParameters(cipherParameters3 instanceof ParametersWithIV ? (KeyParameter) ((ParametersWithIV) cipherParameters3).getParameters() : (KeyParameter) cipherParameters3, aEADParameterSpec.getMacSizeInBits(), aEADParameterSpec.getNonce(), aEADParameterSpec.getAssociatedData());
                    this.aeadParams = aEADParameters2;
                    aEADParameters = aEADParameters2;
                } else {
                    throw new InvalidAlgorithmParameterException("AEADParameterSpec can only be used with AEAD modes.");
                }
            } else if (algorithmParameterSpec instanceof IvParameterSpec) {
                if (this.ivLength != 0) {
                    IvParameterSpec ivParameterSpec = (IvParameterSpec) algorithmParameterSpec;
                    if (ivParameterSpec.getIV().length == this.ivLength || (this.cipher instanceof AEADGenericBlockCipher) || !this.fixedIv) {
                        ParametersWithIV parametersWithIV = cipherParameters3 instanceof ParametersWithIV ? new ParametersWithIV(((ParametersWithIV) cipherParameters3).getParameters(), ivParameterSpec.getIV()) : new ParametersWithIV(cipherParameters3, ivParameterSpec.getIV());
                        this.ivParam = parametersWithIV;
                        aEADParameters = parametersWithIV;
                    } else {
                        throw new InvalidAlgorithmParameterException("IV must be " + this.ivLength + " bytes long.");
                    }
                } else {
                    aEADParameters = cipherParameters3;
                    if (this.modeName != null) {
                        aEADParameters = cipherParameters3;
                        if (this.modeName.equals("ECB")) {
                            throw new InvalidAlgorithmParameterException("ECB mode does not use an IV");
                        }
                    }
                }
            } else if (algorithmParameterSpec instanceof GOST28147ParameterSpec) {
                GOST28147ParameterSpec gOST28147ParameterSpec = (GOST28147ParameterSpec) algorithmParameterSpec;
                ParametersWithSBox parametersWithSBox = new ParametersWithSBox(new KeyParameter(key.getEncoded()), gOST28147ParameterSpec.getSbox());
                aEADParameters = parametersWithSBox;
                if (gOST28147ParameterSpec.getIV() != null) {
                    aEADParameters = parametersWithSBox;
                    if (this.ivLength != 0) {
                        ParametersWithIV parametersWithIV2 = parametersWithSBox instanceof ParametersWithIV ? new ParametersWithIV(((ParametersWithIV) parametersWithSBox).getParameters(), gOST28147ParameterSpec.getIV()) : new ParametersWithIV(parametersWithSBox, gOST28147ParameterSpec.getIV());
                        this.ivParam = parametersWithIV2;
                        aEADParameters = parametersWithIV2;
                    }
                }
            } else if (algorithmParameterSpec instanceof RC2ParameterSpec) {
                RC2ParameterSpec rC2ParameterSpec = (RC2ParameterSpec) algorithmParameterSpec;
                RC2Parameters rC2Parameters = new RC2Parameters(key.getEncoded(), rC2ParameterSpec.getEffectiveKeyBits());
                aEADParameters = rC2Parameters;
                if (rC2ParameterSpec.getIV() != null) {
                    aEADParameters = rC2Parameters;
                    if (this.ivLength != 0) {
                        ParametersWithIV parametersWithIV3 = rC2Parameters instanceof ParametersWithIV ? new ParametersWithIV(((ParametersWithIV) rC2Parameters).getParameters(), rC2ParameterSpec.getIV()) : new ParametersWithIV(rC2Parameters, rC2ParameterSpec.getIV());
                        this.ivParam = parametersWithIV3;
                        aEADParameters = parametersWithIV3;
                    }
                }
            } else if (algorithmParameterSpec instanceof RC5ParameterSpec) {
                RC5ParameterSpec rC5ParameterSpec = (RC5ParameterSpec) algorithmParameterSpec;
                RC5Parameters rC5Parameters = new RC5Parameters(key.getEncoded(), rC5ParameterSpec.getRounds());
                if (this.baseEngine.getAlgorithmName().startsWith("RC5")) {
                    if (this.baseEngine.getAlgorithmName().equals("RC5-32")) {
                        if (rC5ParameterSpec.getWordSize() != 32) {
                            throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 32 not " + rC5ParameterSpec.getWordSize() + ".");
                        }
                    } else if (this.baseEngine.getAlgorithmName().equals("RC5-64") && rC5ParameterSpec.getWordSize() != 64) {
                        throw new InvalidAlgorithmParameterException("RC5 already set up for a word size of 64 not " + rC5ParameterSpec.getWordSize() + ".");
                    }
                    aEADParameters = rC5Parameters;
                    if (rC5ParameterSpec.getIV() != null) {
                        aEADParameters = rC5Parameters;
                        if (this.ivLength != 0) {
                            ParametersWithIV parametersWithIV4 = rC5Parameters instanceof ParametersWithIV ? new ParametersWithIV(((ParametersWithIV) rC5Parameters).getParameters(), rC5ParameterSpec.getIV()) : new ParametersWithIV(rC5Parameters, rC5ParameterSpec.getIV());
                            this.ivParam = parametersWithIV4;
                            aEADParameters = parametersWithIV4;
                        }
                    }
                } else {
                    throw new InvalidAlgorithmParameterException("RC5 parameters passed to a cipher that is not RC5.");
                }
            } else if (gcmSpecClass == null || !gcmSpecClass.isInstance(algorithmParameterSpec)) {
                aEADParameters = cipherParameters3;
                if (algorithmParameterSpec != null) {
                    aEADParameters = cipherParameters3;
                    if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                        throw new InvalidAlgorithmParameterException("unknown parameter type.");
                    }
                }
            } else if (isAEADModeName(this.modeName) || (this.cipher instanceof AEADGenericBlockCipher)) {
                try {
                    AEADParameters aEADParameters3 = new AEADParameters(cipherParameters3 instanceof ParametersWithIV ? (KeyParameter) ((ParametersWithIV) cipherParameters3).getParameters() : (KeyParameter) cipherParameters3, ((Integer) gcmSpecClass.getDeclaredMethod("getTLen", new Class[0]).invoke(algorithmParameterSpec, new Object[0])).intValue(), (byte[]) gcmSpecClass.getDeclaredMethod("getIV", new Class[0]).invoke(algorithmParameterSpec, new Object[0]));
                    this.aeadParams = aEADParameters3;
                    aEADParameters = aEADParameters3;
                } catch (Exception e2) {
                    throw new InvalidAlgorithmParameterException("Cannot process GCMParameterSpec.");
                }
            } else {
                throw new InvalidAlgorithmParameterException("GCMParameterSpec can only be used with AEAD modes.");
            }
            ParametersWithIV parametersWithIV5 = aEADParameters;
            if (this.ivLength != 0) {
                boolean z2 = aEADParameters instanceof ParametersWithIV;
                parametersWithIV5 = aEADParameters;
                if (!z2) {
                    boolean z3 = aEADParameters instanceof AEADParameters;
                    parametersWithIV5 = aEADParameters;
                    if (!z3) {
                        SecureRandom secureRandom2 = secureRandom == null ? new SecureRandom() : secureRandom;
                        if (i == 1 || i == 3) {
                            byte[] bArr = new byte[this.ivLength];
                            secureRandom2.nextBytes(bArr);
                            ParametersWithIV parametersWithIV6 = new ParametersWithIV(aEADParameters, bArr);
                            this.ivParam = parametersWithIV6;
                            parametersWithIV5 = parametersWithIV6;
                        } else {
                            parametersWithIV5 = aEADParameters;
                            if (this.cipher.getUnderlyingCipher().getAlgorithmName().indexOf("PGPCFB") < 0) {
                                throw new InvalidAlgorithmParameterException("no IV set when one expected");
                            }
                        }
                    }
                }
            }
            CipherParameters cipherParameters4 = parametersWithIV5;
            if (secureRandom != null) {
                cipherParameters4 = parametersWithIV5;
                if (this.padded) {
                    cipherParameters4 = new ParametersWithRandom(parametersWithIV5, secureRandom);
                }
            }
            try {
                switch (i) {
                    case 1:
                    case 3:
                        this.cipher.init(true, cipherParameters4);
                        break;
                    case 2:
                    case 4:
                        this.cipher.init(false, cipherParameters4);
                        break;
                    default:
                        throw new InvalidParameterException("unknown opmode " + i + " passed");
                }
                if ((this.cipher instanceof AEADGenericBlockCipher) && this.aeadParams == null) {
                    this.aeadParams = new AEADParameters((KeyParameter) this.ivParam.getParameters(), ((AEADGenericBlockCipher) this.cipher).cipher.getMac().length * 8, this.ivParam.getIV());
                }
            } catch (Exception e3) {
                throw new InvalidKeyOrParametersException(e3.getMessage(), e3);
            }
        } else {
            throw new InvalidAlgorithmParameterException("RC5 requires an RC5ParametersSpec to be passed in.");
        }
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineSetMode(String str) throws NoSuchAlgorithmException {
        this.modeName = Strings.toUpperCase(str);
        if (this.modeName.equals("ECB")) {
            this.ivLength = 0;
            this.cipher = new BufferedGenericBlockCipher(this.baseEngine);
        } else if (this.modeName.equals("CBC")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new CBCBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("OFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.modeName.length() != 3) {
                this.cipher = new BufferedGenericBlockCipher(new OFBBlockCipher(this.baseEngine, Integer.parseInt(this.modeName.substring(3))));
                return;
            }
            this.cipher = new BufferedGenericBlockCipher(new OFBBlockCipher(this.baseEngine, this.baseEngine.getBlockSize() * 8));
        } else if (this.modeName.startsWith("CFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.modeName.length() != 3) {
                this.cipher = new BufferedGenericBlockCipher(new CFBBlockCipher(this.baseEngine, Integer.parseInt(this.modeName.substring(3))));
                return;
            }
            this.cipher = new BufferedGenericBlockCipher(new CFBBlockCipher(this.baseEngine, this.baseEngine.getBlockSize() * 8));
        } else if (this.modeName.startsWith("PGP")) {
            boolean equalsIgnoreCase = this.modeName.equalsIgnoreCase("PGPCFBwithIV");
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new PGPCFBBlockCipher(this.baseEngine, equalsIgnoreCase));
        } else if (this.modeName.equalsIgnoreCase("OpenPGPCFB")) {
            this.ivLength = 0;
            this.cipher = new BufferedGenericBlockCipher(new OpenPGPCFBBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("SIC")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.ivLength < 16) {
                throw new IllegalArgumentException("Warning: SIC-Mode can become a twotime-pad if the blocksize of the cipher is too small. Use a cipher with a block size of at least 128 bits (e.g. AES)");
            }
            this.fixedIv = false;
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("CTR")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.fixedIv = false;
            if (this.baseEngine instanceof DSTU7624Engine) {
                this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new KCTRBlockCipher(this.baseEngine)));
            } else {
                this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new SICBlockCipher(this.baseEngine)));
            }
        } else if (this.modeName.startsWith("GOFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GOFBBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("GCFB")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(new GCFBBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("CTS")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new BufferedGenericBlockCipher(new CTSBlockCipher(new CBCBlockCipher(this.baseEngine)));
        } else if (this.modeName.startsWith("CCM")) {
            this.ivLength = 13;
            if (this.baseEngine instanceof DSTU7624Engine) {
                this.cipher = new AEADGenericBlockCipher(new KCCMBlockCipher(this.baseEngine));
            } else {
                this.cipher = new AEADGenericBlockCipher(new CCMBlockCipher(this.baseEngine));
            }
        } else if (this.modeName.startsWith("OCB")) {
            if (this.engineProvider != null) {
                this.ivLength = 15;
                this.cipher = new AEADGenericBlockCipher(new OCBBlockCipher(this.baseEngine, this.engineProvider.get()));
                return;
            }
            throw new NoSuchAlgorithmException("can't support mode " + str);
        } else if (this.modeName.startsWith("EAX")) {
            this.ivLength = this.baseEngine.getBlockSize();
            this.cipher = new AEADGenericBlockCipher(new EAXBlockCipher(this.baseEngine));
        } else if (this.modeName.startsWith("GCM")) {
            this.ivLength = this.baseEngine.getBlockSize();
            if (this.baseEngine instanceof DSTU7624Engine) {
                this.cipher = new AEADGenericBlockCipher(new KGCMBlockCipher(this.baseEngine));
            } else {
                this.cipher = new AEADGenericBlockCipher(new GCMBlockCipher(this.baseEngine));
            }
        } else {
            throw new NoSuchAlgorithmException("can't support mode " + str);
        }
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected void engineSetPadding(String str) throws NoSuchPaddingException {
        String upperCase = Strings.toUpperCase(str);
        if (upperCase.equals("NOPADDING")) {
            if (this.cipher.wrapOnNoPadding()) {
                this.cipher = new BufferedGenericBlockCipher(new BufferedBlockCipher(this.cipher.getUnderlyingCipher()));
            }
        } else if (upperCase.equals("WITHCTS")) {
            this.cipher = new BufferedGenericBlockCipher(new CTSBlockCipher(this.cipher.getUnderlyingCipher()));
        } else {
            this.padded = true;
            if (isAEADModeName(this.modeName)) {
                throw new NoSuchPaddingException("Only NoPadding can be used with AEAD modes.");
            } else if (upperCase.equals("PKCS5PADDING") || upperCase.equals("PKCS7PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher());
            } else if (upperCase.equals("ZEROBYTEPADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new ZeroBytePadding());
            } else if (upperCase.equals("ISO10126PADDING") || upperCase.equals("ISO10126-2PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new ISO10126d2Padding());
            } else if (upperCase.equals("X9.23PADDING") || upperCase.equals("X923PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new X923Padding());
            } else if (upperCase.equals("ISO7816-4PADDING") || upperCase.equals("ISO9797-1PADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new ISO7816d4Padding());
            } else if (upperCase.equals("TBCPADDING")) {
                this.cipher = new BufferedGenericBlockCipher(this.cipher.getUnderlyingCipher(), new TBCPadding());
            } else {
                throw new NoSuchPaddingException("Padding " + str + " unknown.");
            }
        }
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected int engineUpdate(byte[] bArr, int i, int i2, byte[] bArr2, int i3) throws ShortBufferException {
        if (this.cipher.getUpdateOutputSize(i2) + i3 > bArr2.length) {
            throw new ShortBufferException("output buffer too short for input.");
        }
        try {
            return this.cipher.processBytes(bArr, i, i2, bArr2, i3);
        } catch (DataLengthException e) {
            throw new IllegalStateException(e.toString());
        }
    }

    @Override // org.spongycastle.jcajce.provider.symmetric.util.BaseWrapCipher, javax.crypto.CipherSpi
    protected byte[] engineUpdate(byte[] bArr, int i, int i2) {
        int updateOutputSize = this.cipher.getUpdateOutputSize(i2);
        if (updateOutputSize > 0) {
            byte[] bArr2 = new byte[updateOutputSize];
            int processBytes = this.cipher.processBytes(bArr, i, i2, bArr2, 0);
            if (processBytes == 0) {
                return null;
            }
            if (processBytes == bArr2.length) {
                return bArr2;
            }
            byte[] bArr3 = new byte[processBytes];
            System.arraycopy(bArr2, 0, bArr3, 0, processBytes);
            return bArr3;
        }
        this.cipher.processBytes(bArr, i, i2, null, 0);
        return null;
    }

    @Override // javax.crypto.CipherSpi
    protected void engineUpdateAAD(ByteBuffer byteBuffer) {
        engineUpdateAAD(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.limit() - byteBuffer.position());
    }

    @Override // javax.crypto.CipherSpi
    protected void engineUpdateAAD(byte[] bArr, int i, int i2) {
        this.cipher.updateAAD(bArr, i, i2);
    }
}
