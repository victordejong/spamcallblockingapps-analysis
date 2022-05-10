package com.p496hp.hpl.sparta.xpath;

import java.io.IOException;
import p131c.p368e.p369a.p370a.p371d.C6397a;
/* renamed from: com.hp.hpl.sparta.xpath.XPathException */
/* loaded from: classes2-dex2jar.jar:com/hp/hpl/sparta/xpath/XPathException.class */
public class XPathException extends Exception {
    public Throwable cause_;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public XPathException(p131c.p368e.p369a.p370a.p371d.C6398b r4, java.lang.Exception r5) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r3
            r1 = r6
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r3
            r1 = 0
            r0.cause_ = r1
            r0 = r3
            r1 = r5
            r0.cause_ = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.xpath.XPathException.<init>(c.e.a.a.d.b, java.lang.Exception):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public XPathException(p131c.p368e.p369a.p370a.p371d.C6398b r4, java.lang.String r5) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r6 = r0
            r0 = r6
            r1 = r4
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            java.lang.String r1 = " "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r6
            r1 = r5
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r3
            r1 = r6
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            r0 = r3
            r1 = 0
            r0.cause_ = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.xpath.XPathException.<init>(c.e.a.a.d.b, java.lang.String):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public XPathException(p131c.p368e.p369a.p370a.p371d.C6398b r5, java.lang.String r6, p131c.p368e.p369a.p370a.p371d.C6397a r7, java.lang.String r8) {
        /*
            r4 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            r1 = r6
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = " got \""
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r9
            r1 = r7
            java.lang.String r1 = toString(r1)
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = "\" instead of expected "
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.StringBuffer r0 = r0.append(r1)
            r0 = r4
            r1 = r5
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.<init>(r1, r2)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.p496hp.hpl.sparta.xpath.XPathException.<init>(c.e.a.a.d.b, java.lang.String, c.e.a.a.d.a, java.lang.String):void");
    }

    public static String toString(C6397a aVar) {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(tokenToString(aVar));
            if (aVar.f20060a == -1) {
                return stringBuffer.toString();
            }
            aVar.m20986a();
            throw null;
        } catch (IOException e) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append("(cannot get  info: ");
            stringBuffer2.append(e);
            stringBuffer2.append(")");
            return stringBuffer2.toString();
        }
    }

    public static String tokenToString(C6397a aVar) {
        StringBuffer stringBuffer;
        int i = aVar.f20060a;
        if (i == -3) {
            return aVar.f20062c;
        }
        if (i == -2) {
            StringBuffer stringBuffer2 = new StringBuffer();
            stringBuffer2.append(aVar.f20061b);
            stringBuffer = stringBuffer2;
        } else if (i == -1) {
            return "<end of expression>";
        } else {
            StringBuffer stringBuffer3 = new StringBuffer();
            stringBuffer3.append((char) aVar.f20060a);
            stringBuffer = stringBuffer3;
        }
        stringBuffer.append("");
        return stringBuffer.toString();
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.cause_;
    }
}
