package org.spongycastle.operator;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.cryptopro.CryptoProObjectIdentifiers;
import org.spongycastle.asn1.kisa.KISAObjectIdentifiers;
import org.spongycastle.asn1.nist.NISTObjectIdentifiers;
import org.spongycastle.asn1.ntt.NTTObjectIdentifiers;
import org.spongycastle.asn1.oiw.OIWObjectIdentifiers;
import org.spongycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.spongycastle.asn1.x509.AlgorithmIdentifier;
import org.spongycastle.cms.CMSEnvelopedGenerator;
import org.spongycastle.util.Integers;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/operator/DefaultSecretKeySizeProvider.class */
public class DefaultSecretKeySizeProvider implements SecretKeySizeProvider {
    public static final SecretKeySizeProvider INSTANCE = new DefaultSecretKeySizeProvider();
    private static final Map KEY_SIZES;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put(new ASN1ObjectIdentifier(CMSEnvelopedGenerator.CAST5_CBC), Integers.valueOf(128));
        hashMap.put(PKCSObjectIdentifiers.des_EDE3_CBC, Integers.valueOf(192));
        hashMap.put(PKCSObjectIdentifiers.id_alg_CMS3DESwrap, Integers.valueOf(192));
        hashMap.put(PKCSObjectIdentifiers.des_EDE3_CBC, Integers.valueOf(192));
        hashMap.put(NISTObjectIdentifiers.id_aes128_CBC, Integers.valueOf(128));
        hashMap.put(NISTObjectIdentifiers.id_aes192_CBC, Integers.valueOf(192));
        hashMap.put(NISTObjectIdentifiers.id_aes256_CBC, Integers.valueOf(256));
        hashMap.put(NISTObjectIdentifiers.id_aes128_GCM, Integers.valueOf(128));
        hashMap.put(NISTObjectIdentifiers.id_aes192_GCM, Integers.valueOf(192));
        hashMap.put(NISTObjectIdentifiers.id_aes256_GCM, Integers.valueOf(256));
        hashMap.put(NISTObjectIdentifiers.id_aes128_CCM, Integers.valueOf(128));
        hashMap.put(NISTObjectIdentifiers.id_aes192_CCM, Integers.valueOf(192));
        hashMap.put(NISTObjectIdentifiers.id_aes256_CCM, Integers.valueOf(256));
        hashMap.put(NISTObjectIdentifiers.id_aes128_wrap, Integers.valueOf(128));
        hashMap.put(NISTObjectIdentifiers.id_aes192_wrap, Integers.valueOf(192));
        hashMap.put(NISTObjectIdentifiers.id_aes256_wrap, Integers.valueOf(256));
        hashMap.put(NTTObjectIdentifiers.id_camellia128_cbc, Integers.valueOf(128));
        hashMap.put(NTTObjectIdentifiers.id_camellia192_cbc, Integers.valueOf(192));
        hashMap.put(NTTObjectIdentifiers.id_camellia256_cbc, Integers.valueOf(256));
        hashMap.put(NTTObjectIdentifiers.id_camellia128_wrap, Integers.valueOf(128));
        hashMap.put(NTTObjectIdentifiers.id_camellia192_wrap, Integers.valueOf(192));
        hashMap.put(NTTObjectIdentifiers.id_camellia256_wrap, Integers.valueOf(256));
        hashMap.put(KISAObjectIdentifiers.id_seedCBC, Integers.valueOf(128));
        hashMap.put(OIWObjectIdentifiers.desCBC, Integers.valueOf(64));
        hashMap.put(CryptoProObjectIdentifiers.gostR28147_gcfb, Integers.valueOf(256));
        KEY_SIZES = Collections.unmodifiableMap(hashMap);
    }

    @Override // org.spongycastle.operator.SecretKeySizeProvider
    public int getKeySize(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        Integer num = (Integer) KEY_SIZES.get(aSN1ObjectIdentifier);
        if (num != null) {
            return num.intValue();
        }
        return -1;
    }

    @Override // org.spongycastle.operator.SecretKeySizeProvider
    public int getKeySize(AlgorithmIdentifier algorithmIdentifier) {
        int keySize = getKeySize(algorithmIdentifier.getAlgorithm());
        if (keySize > 0) {
            return keySize;
        }
        return -1;
    }
}
