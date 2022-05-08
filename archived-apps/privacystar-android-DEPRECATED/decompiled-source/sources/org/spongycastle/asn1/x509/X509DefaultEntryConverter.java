package org.spongycastle.asn1.x509;

import java.io.IOException;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.DERGeneralizedTime;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.DERPrintableString;
import org.spongycastle.asn1.DERUTF8String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/X509DefaultEntryConverter.class */
public class X509DefaultEntryConverter extends X509NameEntryConverter {
    @Override // org.spongycastle.asn1.x509.X509NameEntryConverter
    public ASN1Primitive getConvertedValue(ASN1ObjectIdentifier aSN1ObjectIdentifier, String str) {
        if (str.length() == 0 || str.charAt(0) != '#') {
            String str2 = str;
            if (str.length() != 0) {
                str2 = str;
                if (str.charAt(0) == '\\') {
                    str2 = str.substring(1);
                }
            }
            return (aSN1ObjectIdentifier.equals(X509Name.EmailAddress) || aSN1ObjectIdentifier.equals(X509Name.f943DC)) ? new DERIA5String(str2) : aSN1ObjectIdentifier.equals(X509Name.DATE_OF_BIRTH) ? new DERGeneralizedTime(str2) : (aSN1ObjectIdentifier.equals(X509Name.f941C) || aSN1ObjectIdentifier.equals(X509Name.f948SN) || aSN1ObjectIdentifier.equals(X509Name.DN_QUALIFIER) || aSN1ObjectIdentifier.equals(X509Name.TELEPHONE_NUMBER)) ? new DERPrintableString(str2) : new DERUTF8String(str2);
        }
        try {
            return convertHexEncoded(str, 1);
        } catch (IOException e) {
            throw new RuntimeException("can't recode value for oid " + aSN1ObjectIdentifier.getId());
        }
    }
}
