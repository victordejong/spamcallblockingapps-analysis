package org.spongycastle.asn1.x500;

import java.util.Enumeration;
import org.spongycastle.asn1.ASN1Choice;
import org.spongycastle.asn1.ASN1Encodable;
import org.spongycastle.asn1.ASN1Object;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1Primitive;
import org.spongycastle.asn1.ASN1Sequence;
import org.spongycastle.asn1.ASN1TaggedObject;
import org.spongycastle.asn1.DERSequence;
import org.spongycastle.asn1.x500.style.BCStyle;
/* loaded from: classes2-dex2jar.jar:org/spongycastle/asn1/x500/X500Name.class */
public class X500Name extends ASN1Object implements ASN1Choice {
    private static X500NameStyle defaultStyle = BCStyle.INSTANCE;
    private int hashCodeValue;
    private boolean isHashCodeCalculated;
    private RDN[] rdns;
    private X500NameStyle style;

    public X500Name(String str) {
        this(defaultStyle, str);
    }

    private X500Name(ASN1Sequence aSN1Sequence) {
        this(defaultStyle, aSN1Sequence);
    }

    public X500Name(X500NameStyle x500NameStyle, String str) {
        this(x500NameStyle.fromString(str));
        this.style = x500NameStyle;
    }

    private X500Name(X500NameStyle x500NameStyle, ASN1Sequence aSN1Sequence) {
        this.style = x500NameStyle;
        this.rdns = new RDN[aSN1Sequence.size()];
        Enumeration objects = aSN1Sequence.getObjects();
        int i = 0;
        while (objects.hasMoreElements()) {
            this.rdns[i] = RDN.getInstance(objects.nextElement());
            i++;
        }
    }

    public X500Name(X500NameStyle x500NameStyle, X500Name x500Name) {
        this.rdns = x500Name.rdns;
        this.style = x500NameStyle;
    }

    public X500Name(X500NameStyle x500NameStyle, RDN[] rdnArr) {
        this.rdns = rdnArr;
        this.style = x500NameStyle;
    }

    public X500Name(RDN[] rdnArr) {
        this(defaultStyle, rdnArr);
    }

    public static X500NameStyle getDefaultStyle() {
        return defaultStyle;
    }

    public static X500Name getInstance(Object obj) {
        if (obj instanceof X500Name) {
            return (X500Name) obj;
        }
        if (obj != null) {
            return new X500Name(ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static X500Name getInstance(ASN1TaggedObject aSN1TaggedObject, boolean z) {
        return getInstance(ASN1Sequence.getInstance(aSN1TaggedObject, true));
    }

    public static X500Name getInstance(X500NameStyle x500NameStyle, Object obj) {
        if (obj instanceof X500Name) {
            return new X500Name(x500NameStyle, (X500Name) obj);
        }
        if (obj != null) {
            return new X500Name(x500NameStyle, ASN1Sequence.getInstance(obj));
        }
        return null;
    }

    public static void setDefaultStyle(X500NameStyle x500NameStyle) {
        if (x500NameStyle == null) {
            throw new NullPointerException("cannot set style to null");
        }
        defaultStyle = x500NameStyle;
    }

    @Override // org.spongycastle.asn1.ASN1Object
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof X500Name) && !(obj instanceof ASN1Sequence)) {
            return false;
        }
        if (toASN1Primitive().equals(((ASN1Encodable) obj).toASN1Primitive())) {
            return true;
        }
        try {
            return this.style.areEqual(this, new X500Name(ASN1Sequence.getInstance(((ASN1Encodable) obj).toASN1Primitive())));
        } catch (Exception e) {
            return false;
        }
    }

    public ASN1ObjectIdentifier[] getAttributeTypes() {
        int i = 0;
        for (int i2 = 0; i2 != this.rdns.length; i2++) {
            i += this.rdns[i2].size();
        }
        ASN1ObjectIdentifier[] aSN1ObjectIdentifierArr = new ASN1ObjectIdentifier[i];
        int i3 = 0;
        for (int i4 = 0; i4 != this.rdns.length; i4++) {
            RDN rdn = this.rdns[i4];
            if (rdn.isMultiValued()) {
                AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
                int i5 = 0;
                while (true) {
                    i3 = i3;
                    if (i5 != typesAndValues.length) {
                        aSN1ObjectIdentifierArr[i3] = typesAndValues[i5].getType();
                        i5++;
                        i3++;
                    }
                }
            } else {
                i3 = i3;
                if (rdn.size() != 0) {
                    i3++;
                    aSN1ObjectIdentifierArr[i3] = rdn.getFirst().getType();
                }
            }
        }
        return aSN1ObjectIdentifierArr;
    }

    public RDN[] getRDNs() {
        RDN[] rdnArr = new RDN[this.rdns.length];
        System.arraycopy(this.rdns, 0, rdnArr, 0, rdnArr.length);
        return rdnArr;
    }

    public RDN[] getRDNs(ASN1ObjectIdentifier aSN1ObjectIdentifier) {
        RDN[] rdnArr = new RDN[this.rdns.length];
        int i = 0;
        for (int i2 = 0; i2 != this.rdns.length; i2++) {
            RDN rdn = this.rdns[i2];
            if (rdn.isMultiValued()) {
                AttributeTypeAndValue[] typesAndValues = rdn.getTypesAndValues();
                int i3 = 0;
                while (true) {
                    i = i;
                    if (i3 == typesAndValues.length) {
                        break;
                    } else if (typesAndValues[i3].getType().equals(aSN1ObjectIdentifier)) {
                        i++;
                        rdnArr[i] = rdn;
                        break;
                    } else {
                        i3++;
                    }
                }
            } else {
                i = i;
                if (rdn.getFirst().getType().equals(aSN1ObjectIdentifier)) {
                    i++;
                    rdnArr[i] = rdn;
                }
            }
        }
        RDN[] rdnArr2 = new RDN[i];
        System.arraycopy(rdnArr, 0, rdnArr2, 0, rdnArr2.length);
        return rdnArr2;
    }

    @Override // org.spongycastle.asn1.ASN1Object
    public int hashCode() {
        if (this.isHashCodeCalculated) {
            return this.hashCodeValue;
        }
        this.isHashCodeCalculated = true;
        this.hashCodeValue = this.style.calculateHashCode(this);
        return this.hashCodeValue;
    }

    @Override // org.spongycastle.asn1.ASN1Object, org.spongycastle.asn1.ASN1Encodable
    public ASN1Primitive toASN1Primitive() {
        return new DERSequence(this.rdns);
    }

    public String toString() {
        return this.style.toString(this);
    }
}
