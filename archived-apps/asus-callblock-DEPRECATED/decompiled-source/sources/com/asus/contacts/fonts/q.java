package com.asus.contacts.fonts;

import org.xml.sax.Attributes;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/q.class */
public final class q extends DefaultHandler {

    /* renamed from: b  reason: collision with root package name */
    private boolean f2678b = false;
    private boolean c = false;
    private boolean d = false;
    private boolean e = false;
    private boolean f = false;
    private boolean g = false;
    private boolean h = false;

    /* renamed from: a  reason: collision with root package name */
    n f2677a = null;
    private o i = null;

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void characters(char[] cArr, int i, int i2) {
        if (this.g) {
            this.i.f2672a = new String(cArr, i, i2);
        } else if (this.h) {
            this.i.f2673b = new String(cArr, i, i2);
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endDocument() {
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void endElement(String str, String str2, String str3) {
        if (str2.equals("font")) {
            this.f2678b = false;
        } else if (str2.equals("sans")) {
            this.c = false;
        } else if (str2.equals("serif")) {
            this.d = false;
        } else if (str2.equals("monospace")) {
            this.e = false;
        } else if (str2.equals("file")) {
            this.f = false;
            if (this.i == null) {
                return;
            }
            if (this.c) {
                this.f2677a.d.add(this.i);
            } else if (this.d) {
                this.f2677a.e.add(this.i);
            } else if (this.e) {
                this.f2677a.f.add(this.i);
            }
        } else if (str2.equals("filename")) {
            this.g = false;
        } else if (str2.equals("droidname")) {
            this.h = false;
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startDocument() {
        this.f2677a = new n();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public final void startElement(String str, String str2, String str3, Attributes attributes) {
        if (str2.equals("font")) {
            this.f2678b = true;
            this.f2677a.f2670a = attributes.getValue("displayname");
        } else if (str2.equals("sans")) {
            this.c = true;
        } else if (str2.equals("serif")) {
            this.d = true;
        } else if (str2.equals("monospace")) {
            this.e = true;
        } else if (str2.equals("file")) {
            this.f = true;
            this.i = new o();
        } else if (str2.equals("filename")) {
            this.g = true;
        } else if (str2.equals("droidname")) {
            this.h = true;
        }
    }
}
