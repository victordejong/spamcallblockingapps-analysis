package org.spongycastle.cms;
/* loaded from: classes-dex2jar.jar:org/spongycastle/cms/PasswordRecipientId.class */
public class PasswordRecipientId extends RecipientId {
    public PasswordRecipientId() {
        super(3);
    }

    @Override // org.spongycastle.cms.RecipientId, org.spongycastle.util.Selector
    public Object clone() {
        return new PasswordRecipientId();
    }

    public boolean equals(Object obj) {
        return obj instanceof PasswordRecipientId;
    }

    public int hashCode() {
        return 3;
    }

    @Override // org.spongycastle.util.Selector
    public boolean match(Object obj) {
        return obj instanceof PasswordRecipientInformation;
    }
}
