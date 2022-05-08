package org.simpleframework.xml.core;

import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ConstructorScanner.class */
class ConstructorScanner {
    private Signature primary;
    private Support support;
    private List<Signature> signatures = new ArrayList();
    private ParameterMap registry = new ParameterMap();

    public ConstructorScanner(Detail detail, Support support) throws Exception {
        this.support = support;
        scan(detail);
    }

    private void scan(Constructor constructor) throws Exception {
        SignatureScanner signatureScanner = new SignatureScanner(constructor, this.registry, this.support);
        if (signatureScanner.isValid()) {
            for (Signature signature : signatureScanner.getSignatures()) {
                if (signature.size() == 0) {
                    this.primary = signature;
                }
                this.signatures.add(signature);
            }
        }
    }

    private void scan(Detail detail) throws Exception {
        Constructor[] constructors = detail.getConstructors();
        if (detail.isInstantiable()) {
            for (Constructor constructor : constructors) {
                if (!detail.isPrimitive()) {
                    scan(constructor);
                }
            }
            return;
        }
        throw new ConstructorException("Can not construct inner %s", detail);
    }

    public ParameterMap getParameters() {
        return this.registry;
    }

    public Signature getSignature() {
        return this.primary;
    }

    public List<Signature> getSignatures() {
        return new ArrayList(this.signatures);
    }
}
