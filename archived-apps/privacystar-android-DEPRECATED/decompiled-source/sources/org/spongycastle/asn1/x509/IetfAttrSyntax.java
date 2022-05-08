package org.spongycastle.asn1.x509;

import java.util.Enumeration;
import java.util.Vector;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1EncodableVector;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.DERTaggedObject;
import org.spongycastle.asn1.DERUTF8String;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x509/IetfAttrSyntax.class */
public class IetfAttrSyntax extends ASN1Object {
    public static final int VALUE_OCTETS = 1;
    public static final int VALUE_OID = 2;
    public static final int VALUE_UTF8 = 3;
    GeneralNames policyAuthority;
    int valueChoice;
    Vector values = new Vector();

    /* JADX WARN: Removed duplicated region for block: B:11:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private IetfAttrSyntax(org.spongycastle.asn1.ASN1Sequence r5) {
        /*
            Method dump skipped, instructions count: 219
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.asn1.x509.IetfAttrSyntax.<init>(org.spongycastle.asn1.ASN1Sequence):void");
    }

    public static IetfAttrSyntax getInstance(Object obj) {
        if (obj instanceof IetfAttrSyntax) {
            return (IetfAttrSyntax) obj;
        }
        if (obj != null) {
            return new IetfAttrSyntax(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public GeneralNames getPolicyAuthority() {
        return this.policyAuthority;
    }

    public int getValueType() {
        return this.valueChoice;
    }

    public Object[] getValues() {
        if (getValueType() == 1) {
            ASN1OctetString[] aSN1OctetStringArr = new ASN1OctetString[this.values.size()];
            for (int i = 0; i != aSN1OctetStringArr.length; i++) {
                aSN1OctetStringArr[i] = (ASN1OctetString) this.values.elementAt(i);
            }
            return aSN1OctetStringArr;
        } else if (getValueType() == 2) {
            ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[this.values.size()];
            for (int i2 = 0; i2 != aSN1ObjectIdentifierArr.length; i2++) {
                aSN1ObjectIdentifierArr[i2] = (ASN1ObjectIdentifier) this.values.elementAt(i2);
            }
            return aSN1ObjectIdentifierArr;
        } else {
            DERUTF8String[] dERUTF8StringArr = new DERUTF8String[this.values.size()];
            for (int i3 = 0; i3 != dERUTF8StringArr.length; i3++) {
                dERUTF8StringArr[i3] = (DERUTF8String) this.values.elementAt(i3);
            }
            return dERUTF8StringArr;
        }
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        ASN1EncodableVector aSN1EncodableVector = new ASN1EncodableVector();
        if (this.policyAuthority != null) {
            aSN1EncodableVector.add(new DERTaggedObject(0, this.policyAuthority));
        }
        ASN1EncodableVector aSN1EncodableVector2 = new ASN1EncodableVector();
        Enumeration elements = this.values.elements();
        while (elements.hasMoreElements()) {
            aSN1EncodableVector2.add((ASN1Encodable) elements.nextElement());
        }
        aSN1EncodableVector.add(new DERSequence(aSN1EncodableVector2));
        return new DERSequence(aSN1EncodableVector);
    }
}
