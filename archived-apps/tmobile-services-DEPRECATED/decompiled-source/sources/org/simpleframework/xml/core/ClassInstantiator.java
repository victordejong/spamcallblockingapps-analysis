package org.simpleframework.xml.core;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/simpleframework/xml/core/ClassInstantiator.class */
class ClassInstantiator implements Instantiator {
    private final List<Creator> creators;
    private final Detail detail;
    private final Creator primary;
    private final ParameterMap registry;

    public ClassInstantiator(List<Creator> list, Creator creator, ParameterMap parameterMap, Detail detail) {
        this.creators = list;
        this.registry = parameterMap;
        this.primary = creator;
        this.detail = detail;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [double] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private org.simpleframework.xml.core.Creator getCreator(org.simpleframework.xml.core.Criteria r6) throws java.lang.Exception {
        /*
            r5 = this;
            r0 = r5
            org.simpleframework.xml.core.Creator r0 = r0.primary
            r7 = r0
            r0 = r5
            java.util.List<org.simpleframework.xml.core.Creator> r0 = r0.creators
            java.util.Iterator r0 = r0.iterator()
            r8 = r0
            r0 = 0
            r9 = r0
        L_0x0012:
            r0 = r8
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0042
            r0 = r8
            java.lang.Object r0 = r0.next()
            org.simpleframework.xml.core.Creator r0 = (org.simpleframework.xml.core.Creator) r0
            r11 = r0
            r0 = r11
            r1 = r6
            double r0 = r0.getScore(r1)
            r12 = r0
            r0 = r12
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0012
            r0 = r11
            r7 = r0
            r0 = r12
            r9 = r0
            goto L_0x0012
        L_0x0042:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.simpleframework.xml.core.ClassInstantiator.getCreator(org.simpleframework.xml.core.Criteria):org.simpleframework.xml.core.Creator");
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public List<Creator> getCreators() {
        return new ArrayList(this.creators);
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public Object getInstance() throws Exception {
        return this.primary.getInstance();
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public Object getInstance(Criteria criteria) throws Exception {
        Creator creator = getCreator(criteria);
        if (creator != null) {
            return creator.getInstance(criteria);
        }
        throw new PersistenceException("Constructor not matched for %s", this.detail);
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public Parameter getParameter(String str) {
        return this.registry.get(str);
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public List<Parameter> getParameters() {
        return this.registry.getAll();
    }

    @Override // org.simpleframework.xml.core.Instantiator
    public boolean isDefault() {
        boolean z = false;
        if (this.creators.size() <= 1) {
            z = false;
            if (this.primary != null) {
                z = true;
            }
        }
        return z;
    }

    public String toString() {
        return String.format("creator for %s", this.detail);
    }
}
