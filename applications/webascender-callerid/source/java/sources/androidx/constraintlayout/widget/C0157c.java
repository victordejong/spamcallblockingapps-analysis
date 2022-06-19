package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.Log;
import android.util.SparseArray;
import android.util.Xml;
import java.io.IOException;
import java.util.ArrayList;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* renamed from: androidx.constraintlayout.widget.c */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c.class */
public class C0157c {

    /* renamed from: a */
    private SparseArray<C0158a> f789a = new SparseArray<>();

    /* renamed from: b */
    private SparseArray<C0160d> f790b = new SparseArray<>();

    /* renamed from: androidx.constraintlayout.widget.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$a.class */
    public static class C0158a {

        /* renamed from: a */
        int f791a;

        /* renamed from: b */
        ArrayList<C0159b> f792b = new ArrayList<>();

        /* renamed from: c */
        int f793c;

        /* renamed from: d */
        C0160d f794d;

        public C0158a(Context context, XmlPullParser xmlPullParser) {
            this.f793c = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0170i.f960K3);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0170i.f965L3) {
                    this.f791a = obtainStyledAttributes.getResourceId(index, this.f791a);
                } else if (index == C0170i.f970M3) {
                    this.f793c = obtainStyledAttributes.getResourceId(index, this.f793c);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f793c);
                    context.getResources().getResourceName(this.f793c);
                    if ("layout".equals(resourceTypeName)) {
                        C0160d c0160d = new C0160d();
                        this.f794d = c0160d;
                        c0160d.m6265f(context, this.f793c);
                    }
                }
            }
            obtainStyledAttributes.recycle();
        }

        /* renamed from: a */
        void m6271a(C0159b c0159b) {
            this.f792b.add(c0159b);
        }
    }

    /* renamed from: androidx.constraintlayout.widget.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/c$b.class */
    public static class C0159b {

        /* renamed from: a */
        float f795a;

        /* renamed from: b */
        float f796b;

        /* renamed from: c */
        float f797c;

        /* renamed from: d */
        float f798d;

        /* renamed from: e */
        int f799e;

        /* renamed from: f */
        C0160d f800f;

        public C0159b(Context context, XmlPullParser xmlPullParser) {
            this.f795a = Float.NaN;
            this.f796b = Float.NaN;
            this.f797c = Float.NaN;
            this.f798d = Float.NaN;
            this.f799e = -1;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0170i.f1035Z3);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == C0170i.f1041a4) {
                    this.f799e = obtainStyledAttributes.getResourceId(index, this.f799e);
                    String resourceTypeName = context.getResources().getResourceTypeName(this.f799e);
                    context.getResources().getResourceName(this.f799e);
                    if ("layout".equals(resourceTypeName)) {
                        C0160d c0160d = new C0160d();
                        this.f800f = c0160d;
                        c0160d.m6265f(context, this.f799e);
                    }
                } else if (index == C0170i.f1047b4) {
                    this.f798d = obtainStyledAttributes.getDimension(index, this.f798d);
                } else if (index == C0170i.f1053c4) {
                    this.f796b = obtainStyledAttributes.getDimension(index, this.f796b);
                } else if (index == C0170i.f1059d4) {
                    this.f797c = obtainStyledAttributes.getDimension(index, this.f797c);
                } else if (index == C0170i.f1065e4) {
                    this.f795a = obtainStyledAttributes.getDimension(index, this.f795a);
                } else {
                    Log.v("ConstraintLayoutStates", "Unknown tag");
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    public C0157c(Context context, ConstraintLayout constraintLayout, int i) {
        m6274a(context, i);
    }

    /* renamed from: a */
    private void m6274a(Context context, int i) {
        C0158a c0158a;
        XmlResourceParser xml = context.getResources().getXml(i);
        C0158a c0158a2 = null;
        try {
            int eventType = xml.getEventType();
            while (eventType != 1) {
                if (eventType == 0) {
                    xml.getName();
                    c0158a = c0158a2;
                } else if (eventType != 2) {
                    c0158a = c0158a2;
                } else {
                    String name = xml.getName();
                    boolean z = true;
                    switch (name.hashCode()) {
                        case -1349929691:
                            if (name.equals("ConstraintSet")) {
                                z = true;
                                break;
                            }
                            break;
                        case 80204913:
                            if (name.equals("State")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1382829617:
                            if (name.equals("StateSet")) {
                                z = true;
                                break;
                            }
                            break;
                        case 1657696882:
                            if (name.equals("layoutDescription")) {
                                z = false;
                                break;
                            }
                            break;
                        case 1901439077:
                            if (name.equals("Variant")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    c0158a = c0158a2;
                    if (z) {
                        c0158a = c0158a2;
                        if (!z) {
                            if (z) {
                                c0158a = new C0158a(context, xml);
                                this.f789a.put(c0158a.f791a, c0158a);
                            } else if (z) {
                                C0159b c0159b = new C0159b(context, xml);
                                c0158a = c0158a2;
                                if (c0158a2 != null) {
                                    c0158a2.m6271a(c0159b);
                                    c0158a = c0158a2;
                                }
                            } else if (!z) {
                                Log.v("ConstraintLayoutStates", "unknown tag " + name);
                                c0158a = c0158a2;
                            } else {
                                m6273b(context, xml);
                                c0158a = c0158a2;
                            }
                        }
                    }
                }
                eventType = xml.next();
                c0158a2 = c0158a;
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m6273b(Context context, XmlPullParser xmlPullParser) {
        C0160d c0160d = new C0160d();
        int attributeCount = xmlPullParser.getAttributeCount();
        for (int i = 0; i < attributeCount; i++) {
            if ("id".equals(xmlPullParser.getAttributeName(i))) {
                String attributeValue = xmlPullParser.getAttributeValue(i);
                int identifier = attributeValue.contains("/") ? context.getResources().getIdentifier(attributeValue.substring(attributeValue.indexOf(47) + 1), "id", context.getPackageName()) : -1;
                int i2 = identifier;
                if (identifier == -1) {
                    if (attributeValue == null || attributeValue.length() <= 1) {
                        Log.e("ConstraintLayoutStates", "error in parsing id");
                        i2 = identifier;
                    } else {
                        i2 = Integer.parseInt(attributeValue.substring(1));
                    }
                }
                c0160d.m6257n(context, xmlPullParser);
                this.f790b.put(i2, c0160d);
                return;
            }
        }
    }

    /* renamed from: c */
    public void m6272c(AbstractC0167f abstractC0167f) {
    }
}
