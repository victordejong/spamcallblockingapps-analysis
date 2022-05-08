package org.spongycastle.cms;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/CMSSignedDataGenerator.class */
public class CMSSignedDataGenerator extends CMSSignedGenerator {
    private List signerInfs = new ArrayList();

    public CMSSignedData generate(CMSTypedData cMSTypedData) throws CMSException {
        return generate(cMSTypedData, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x010a  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x017c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public org.spongycastle.cms.CMSSignedData generate(org.spongycastle.cms.CMSTypedData r11, boolean r12) throws org.spongycastle.cms.CMSException {
        /*
            Method dump skipped, instructions count: 455
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.cms.CMSSignedDataGenerator.generate(org.spongycastle.cms.CMSTypedData, boolean):org.spongycastle.cms.CMSSignedData");
    }

    public SignerInformationStore generateCounterSigners(SignerInformation signerInformation) throws CMSException {
        return generate(new CMSProcessableByteArray(null, signerInformation.getSignature()), false).getSignerInfos();
    }
}
