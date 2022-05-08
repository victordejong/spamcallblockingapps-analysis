package org.spongycastle.voms;

import java.util.ArrayList;
import java.util.List;
import org.apache.commons.p018io.IOUtils;
import org.spongycastle.asn1.ASN1ObjectIdentifier;
import org.spongycastle.asn1.ASN1OctetString;
import org.spongycastle.asn1.DERIA5String;
import org.spongycastle.asn1.x509.Attribute;
import org.spongycastle.asn1.x509.IetfAttrSyntax;
import org.spongycastle.cert.X509AttributeCertificateHolder;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/voms/VOMSAttribute.class */
public class VOMSAttribute {
    public static final String VOMS_ATTR_OID = "1.3.6.1.4.1.8005.100.100.4";
    private X509AttributeCertificateHolder myAC;
    private String myHostPort;
    private String myVo;
    private List myStringList = new ArrayList();
    private List myFQANs = new ArrayList();

    /* loaded from: classes3-dex2jar.jar:org/spongycastle/voms/VOMSAttribute$FQAN.class */
    public class FQAN {
        String capability;
        String fqan;
        String group;
        String role;

        public FQAN(String str) {
            this.fqan = str;
        }

        public FQAN(String str, String str2, String str3) {
            this.group = str;
            this.role = str2;
            this.capability = str3;
        }

        public String getCapability() {
            if (this.group == null && this.fqan != null) {
                split();
            }
            return this.capability;
        }

        public String getFQAN() {
            String str;
            if (this.fqan != null) {
                return this.fqan;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(this.group);
            sb.append("/Role=");
            sb.append(this.role != null ? this.role : "");
            if (this.capability != null) {
                str = "/Capability=" + this.capability;
            } else {
                str = "";
            }
            sb.append(str);
            this.fqan = sb.toString();
            return this.fqan;
        }

        public String getGroup() {
            if (this.group == null && this.fqan != null) {
                split();
            }
            return this.group;
        }

        public String getRole() {
            if (this.group == null && this.fqan != null) {
                split();
            }
            return this.role;
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x0083, code lost:
            if (r7.length() == 0) goto L_0x0086;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        protected void split() {
            /*
                r5 = this;
                r0 = r5
                java.lang.String r0 = r0.fqan
                int r0 = r0.length()
                r0 = r5
                java.lang.String r0 = r0.fqan
                java.lang.String r1 = "/Role="
                int r0 = r0.indexOf(r1)
                r6 = r0
                r0 = r6
                if (r0 >= 0) goto L_0x0017
                return
            L_0x0017:
                r0 = r5
                r1 = r5
                java.lang.String r1 = r1.fqan
                r2 = 0
                r3 = r6
                java.lang.String r1 = r1.substring(r2, r3)
                r0.group = r1
                r0 = r5
                java.lang.String r0 = r0.fqan
                r7 = r0
                r0 = r6
                r1 = 6
                int r0 = r0 + r1
                r8 = r0
                r0 = r7
                java.lang.String r1 = "/Capability="
                r2 = r8
                int r0 = r0.indexOf(r1, r2)
                r6 = r0
                r0 = r6
                if (r0 >= 0) goto L_0x0046
                r0 = r5
                java.lang.String r0 = r0.fqan
                r1 = r8
                java.lang.String r0 = r0.substring(r1)
                r7 = r0
                goto L_0x0050
            L_0x0046:
                r0 = r5
                java.lang.String r0 = r0.fqan
                r1 = r8
                r2 = r6
                java.lang.String r0 = r0.substring(r1, r2)
                r7 = r0
            L_0x0050:
                r0 = r7
                r9 = r0
                r0 = r7
                int r0 = r0.length()
                if (r0 != 0) goto L_0x005d
                r0 = 0
                r9 = r0
            L_0x005d:
                r0 = r5
                r1 = r9
                r0.role = r1
                r0 = r6
                if (r0 >= 0) goto L_0x006c
                r0 = 0
                r7 = r0
                goto L_0x0078
            L_0x006c:
                r0 = r5
                java.lang.String r0 = r0.fqan
                r1 = r6
                r2 = 12
                int r1 = r1 + r2
                java.lang.String r0 = r0.substring(r1)
                r7 = r0
            L_0x0078:
                r0 = r7
                if (r0 == 0) goto L_0x0086
                r0 = r7
                r9 = r0
                r0 = r7
                int r0 = r0.length()
                if (r0 != 0) goto L_0x0089
            L_0x0086:
                r0 = 0
                r9 = r0
            L_0x0089:
                r0 = r5
                r1 = r9
                r0.capability = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.voms.VOMSAttribute.FQAN.split():void");
        }

        public String toString() {
            return getFQAN();
        }
    }

    public VOMSAttribute(X509AttributeCertificateHolder x509AttributeCertificateHolder) {
        if (x509AttributeCertificateHolder == null) {
            throw new IllegalArgumentException("VOMSAttribute: AttributeCertificate is NULL");
        }
        this.myAC = x509AttributeCertificateHolder;
        Attribute[] attributes = x509AttributeCertificateHolder.getAttributes(new ASN1ObjectIdentifier(VOMS_ATTR_OID));
        if (attributes != null) {
            for (int i = 0; i != attributes.length; i++) {
                try {
                    IetfAttrSyntax instance = IetfAttrSyntax.getInstance(attributes[i].getAttributeValues()[0]);
                    String string = ((DERIA5String) instance.getPolicyAuthority().getNames()[0].getName()).getString();
                    int indexOf = string.indexOf("://");
                    if (indexOf >= 0 && indexOf != string.length() - 1) {
                        this.myVo = string.substring(0, indexOf);
                        this.myHostPort = string.substring(indexOf + 3);
                        if (instance.getValueType() != 1) {
                            throw new IllegalArgumentException("VOMS attribute values are not encoded as octet strings, policyAuthority = " + string);
                        }
                        ASN1OctetString[] aSN1OctetStringArr = (ASN1OctetString[]) instance.getValues();
                        for (int i2 = 0; i2 != aSN1OctetStringArr.length; i2++) {
                            String str = new String(aSN1OctetStringArr[i2].getOctets());
                            FQAN fqan = new FQAN(str);
                            if (!this.myStringList.contains(str)) {
                                if (str.startsWith("/" + this.myVo + "/")) {
                                    this.myStringList.add(str);
                                    this.myFQANs.add(fqan);
                                }
                            }
                        }
                    }
                    throw new IllegalArgumentException("Bad encoding of VOMS policyAuthority : [" + string + "]");
                } catch (IllegalArgumentException e) {
                    throw e;
                } catch (Exception e2) {
                    throw new IllegalArgumentException("Badly encoded VOMS extension in AC issued by " + x509AttributeCertificateHolder.getIssuer());
                }
            }
        }
    }

    public X509AttributeCertificateHolder getAC() {
        return this.myAC;
    }

    public List getFullyQualifiedAttributes() {
        return this.myStringList;
    }

    public String getHostPort() {
        return this.myHostPort;
    }

    public List getListOfFQAN() {
        return this.myFQANs;
    }

    public String getVO() {
        return this.myVo;
    }

    public String toString() {
        return "VO      :" + this.myVo + IOUtils.LINE_SEPARATOR_UNIX + "HostPort:" + this.myHostPort + IOUtils.LINE_SEPARATOR_UNIX + "FQANs   :" + this.myFQANs;
    }
}
