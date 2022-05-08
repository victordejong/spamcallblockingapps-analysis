package org.spongycastle.cert.jcajce;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.cert.CRLException;
import java.security.cert.CertStore;
import java.security.cert.CertificateException;
import java.security.cert.CollectionCertStoreParameters;
import java.util.ArrayList;
import java.util.List;
import org.spongycastle.cert.X509CRLHolder;
import org.spongycastle.cert.X509CertificateHolder;
import org.spongycastle.util.Store;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/cert/jcajce/JcaCertStoreBuilder.class */
public class JcaCertStoreBuilder {
    private Object provider;
    private List certs = new ArrayList();
    private List crls = new ArrayList();
    private JcaX509CertificateConverter certificateConverter = new JcaX509CertificateConverter();
    private JcaX509CRLConverter crlConverter = new JcaX509CRLConverter();
    private String type = "Collection";

    private CollectionCertStoreParameters convertHolders(JcaX509CertificateConverter jcaX509CertificateConverter, JcaX509CRLConverter jcaX509CRLConverter) throws CertificateException, CRLException {
        ArrayList arrayList = new ArrayList(this.certs.size() + this.crls.size());
        for (X509CertificateHolder x509CertificateHolder : this.certs) {
            arrayList.add(jcaX509CertificateConverter.getCertificate(x509CertificateHolder));
        }
        for (X509CRLHolder x509CRLHolder : this.crls) {
            arrayList.add(jcaX509CRLConverter.getCRL(x509CRLHolder));
        }
        return new CollectionCertStoreParameters(arrayList);
    }

    public JcaCertStoreBuilder addCRL(X509CRLHolder x509CRLHolder) {
        this.crls.add(x509CRLHolder);
        return this;
    }

    public JcaCertStoreBuilder addCRLs(Store store) {
        this.crls.addAll(store.getMatches(null));
        return this;
    }

    public JcaCertStoreBuilder addCertificate(X509CertificateHolder x509CertificateHolder) {
        this.certs.add(x509CertificateHolder);
        return this;
    }

    public JcaCertStoreBuilder addCertificates(Store store) {
        this.certs.addAll(store.getMatches(null));
        return this;
    }

    public CertStore build() throws GeneralSecurityException {
        CollectionCertStoreParameters convertHolders = convertHolders(this.certificateConverter, this.crlConverter);
        return this.provider instanceof String ? CertStore.getInstance(this.type, convertHolders, (String) this.provider) : this.provider instanceof Provider ? CertStore.getInstance(this.type, convertHolders, (Provider) this.provider) : CertStore.getInstance(this.type, convertHolders);
    }

    public JcaCertStoreBuilder setProvider(String str) {
        this.certificateConverter.setProvider(str);
        this.crlConverter.setProvider(str);
        this.provider = str;
        return this;
    }

    public JcaCertStoreBuilder setProvider(Provider provider) {
        this.certificateConverter.setProvider(provider);
        this.crlConverter.setProvider(provider);
        this.provider = provider;
        return this;
    }

    public JcaCertStoreBuilder setType(String str) {
        this.type = str;
        return this;
    }
}
