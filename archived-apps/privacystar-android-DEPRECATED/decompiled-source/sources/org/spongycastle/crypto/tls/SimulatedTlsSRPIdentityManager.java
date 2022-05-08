package org.spongycastle.crypto.tls;

import org.spongycastle.crypto.Mac;
import org.spongycastle.crypto.agreement.srp.SRP6VerifierGenerator;
import org.spongycastle.crypto.macs.HMac;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.crypto.params.SRP6GroupParameters;
import org.spongycastle.util.Strings;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/SimulatedTlsSRPIdentityManager.class */
public class SimulatedTlsSRPIdentityManager implements TlsSRPIdentityManager {
    private static final byte[] PREFIX_PASSWORD = Strings.toByteArray("password");
    private static final byte[] PREFIX_SALT = Strings.toByteArray("salt");
    protected SRP6GroupParameters group;
    protected Mac mac;
    protected SRP6VerifierGenerator verifierGenerator;

    public SimulatedTlsSRPIdentityManager(SRP6GroupParameters sRP6GroupParameters, SRP6VerifierGenerator sRP6VerifierGenerator, Mac mac) {
        this.group = sRP6GroupParameters;
        this.verifierGenerator = sRP6VerifierGenerator;
        this.mac = mac;
    }

    public static SimulatedTlsSRPIdentityManager getRFC5054Default(SRP6GroupParameters sRP6GroupParameters, byte[] bArr) {
        SRP6VerifierGenerator sRP6VerifierGenerator = new SRP6VerifierGenerator();
        sRP6VerifierGenerator.init(sRP6GroupParameters, TlsUtils.createHash((short) 2));
        HMac hMac = new HMac(TlsUtils.createHash((short) 2));
        hMac.init(new KeyParameter(bArr));
        return new SimulatedTlsSRPIdentityManager(sRP6GroupParameters, sRP6VerifierGenerator, hMac);
    }

    @Override // org.spongycastle.crypto.tls.TlsSRPIdentityManager
    public TlsSRPLoginParameters getLoginParameters(byte[] bArr) {
        this.mac.update(PREFIX_SALT, 0, PREFIX_SALT.length);
        this.mac.update(bArr, 0, bArr.length);
        byte[] bArr2 = new byte[this.mac.getMacSize()];
        this.mac.doFinal(bArr2, 0);
        this.mac.update(PREFIX_PASSWORD, 0, PREFIX_PASSWORD.length);
        this.mac.update(bArr, 0, bArr.length);
        byte[] bArr3 = new byte[this.mac.getMacSize()];
        this.mac.doFinal(bArr3, 0);
        return new TlsSRPLoginParameters(this.group, this.verifierGenerator.generateVerifier(bArr2, bArr, bArr3), bArr2);
    }
}
