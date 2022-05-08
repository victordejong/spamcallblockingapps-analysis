package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Log;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyFrames.class */
public class KeyFrames {

    /* renamed from: b */
    static HashMap<String, Constructor<? extends Key>> f1729b;

    /* renamed from: a */
    private HashMap<Integer, ArrayList<Key>> f1730a = new HashMap<>();

    static {
        HashMap<String, Constructor<? extends Key>> hashMap = new HashMap<>();
        f1729b = hashMap;
        try {
            hashMap.put("KeyAttribute", KeyAttributes.class.getConstructor(new Class[0]));
            f1729b.put("KeyPosition", KeyPosition.class.getConstructor(new Class[0]));
            f1729b.put("KeyCycle", KeyCycle.class.getConstructor(new Class[0]));
            f1729b.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(new Class[0]));
            f1729b.put("KeyTrigger", KeyTrigger.class.getConstructor(new Class[0]));
        } catch (NoSuchMethodException e) {
            Log.e("KeyFrames", "unable to load", e);
        }
    }

    public KeyFrames(Context context, XmlPullParser xmlPullParser) {
        Exception e;
        Key key;
        Key key2 = null;
        try {
            int eventType = xmlPullParser.getEventType();
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f1729b.containsKey(name)) {
                        try {
                            key = (Key) f1729b.get(name).newInstance(new Object[0]);
                        } catch (Exception e2) {
                            e = e2;
                        }
                        try {
                            key.mo20807c(context, Xml.asAttributeSet(xmlPullParser));
                            m20848b(key);
                            key2 = key;
                        } catch (Exception e3) {
                            e = e3;
                            key2 = key;
                            Log.e("KeyFrames", "unable to create ", e);
                            eventType = xmlPullParser.next();
                        }
                    } else {
                        key2 = key2;
                        if (name.equalsIgnoreCase("CustomAttribute")) {
                            key2 = key2;
                            if (key2 != null) {
                                key2 = key2;
                                if (key2.f1671d != null) {
                                    ConstraintAttribute.m20069g(context, xmlPullParser, key2.f1671d);
                                    key2 = key2;
                                }
                            }
                        }
                    }
                } else if (eventType != 3) {
                    key2 = key2;
                } else {
                    key2 = key2;
                    if ("KeyFrameSet".equals(xmlPullParser.getName())) {
                        return;
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException e4) {
            e4.printStackTrace();
        } catch (XmlPullParserException e5) {
            e5.printStackTrace();
        }
    }

    /* renamed from: b */
    private void m20848b(Key key) {
        if (!this.f1730a.containsKey(Integer.valueOf(key.f1669b))) {
            this.f1730a.put(Integer.valueOf(key.f1669b), new ArrayList<>());
        }
        this.f1730a.get(Integer.valueOf(key.f1669b)).add(key);
    }

    /* renamed from: a */
    public void m20849a(MotionController motionController) {
        ArrayList<Key> arrayList = this.f1730a.get(Integer.valueOf(motionController.f1801b));
        if (arrayList != null) {
            motionController.m20781b(arrayList);
        }
        ArrayList<Key> arrayList2 = this.f1730a.get(-1);
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            while (it.hasNext()) {
                Key next = it.next();
                if (next.m20938d(((ConstraintLayout.LayoutParams) motionController.f1800a.getLayoutParams()).f2544U)) {
                    motionController.m20782a(next);
                }
            }
        }
    }
}
