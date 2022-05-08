package android.support.transition;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.support.annotation.NonNull;
import android.support.p001v4.content.res.TypedArrayUtils;
import android.support.p001v4.util.ArrayMap;
import android.util.AttributeSet;
import android.util.Xml;
import android.view.InflateException;
import android.view.ViewGroup;
import com.apptentive.android.sdk.module.engagement.interaction.model.NavigateToLinkInteraction;
import java.io.IOException;
import java.lang.reflect.Constructor;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes-dex2jar.jar:android/support/transition/TransitionInflater.class */
public class TransitionInflater {
    private final Context mContext;
    private static final Class<?>[] CONSTRUCTOR_SIGNATURE = {Context.class, AttributeSet.class};
    private static final ArrayMap<String, Constructor> CONSTRUCTORS = new ArrayMap<>();

    private TransitionInflater(@NonNull Context context) {
        this.mContext = context;
    }

    private Object createCustom(AttributeSet attributeSet, Class cls, String str) {
        Object newInstance;
        String attributeValue = attributeSet.getAttributeValue(null, "class");
        if (attributeValue == null) {
            throw new InflateException(str + " tag must have a 'class' attribute");
        }
        try {
            synchronized (CONSTRUCTORS) {
                Constructor constructor = CONSTRUCTORS.get(attributeValue);
                Constructor constructor2 = constructor;
                if (constructor == null) {
                    Class<? extends U> asSubclass = this.mContext.getClassLoader().loadClass(attributeValue).asSubclass(cls);
                    constructor2 = constructor;
                    if (asSubclass != 0) {
                        constructor2 = asSubclass.getConstructor(CONSTRUCTOR_SIGNATURE);
                        constructor2.setAccessible(true);
                        CONSTRUCTORS.put(attributeValue, constructor2);
                    }
                }
                newInstance = constructor2.newInstance(this.mContext, attributeSet);
            }
            return newInstance;
        } catch (Exception e) {
            throw new InflateException("Could not instantiate " + cls + " class " + attributeValue, e);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x027e, code lost:
        return r12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.support.transition.Transition createTransitionFromXml(org.xmlpull.v1.XmlPullParser r7, android.util.AttributeSet r8, android.support.transition.Transition r9) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            Method dump skipped, instructions count: 639
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.TransitionInflater.createTransitionFromXml(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.support.transition.Transition):android.support.transition.Transition");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0094, code lost:
        return r11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private android.support.transition.TransitionManager createTransitionManagerFromXml(org.xmlpull.v1.XmlPullParser r7, android.util.AttributeSet r8, android.view.ViewGroup r9) throws org.xmlpull.v1.XmlPullParserException, java.io.IOException {
        /*
            r6 = this;
            r0 = r7
            int r0 = r0.getDepth()
            r10 = r0
            r0 = 0
            r11 = r0
        L_0x000b:
            r0 = r7
            int r0 = r0.next()
            r12 = r0
            r0 = r12
            r1 = 3
            if (r0 != r1) goto L_0x0024
            r0 = r7
            int r0 = r0.getDepth()
            r1 = r10
            if (r0 <= r1) goto L_0x0092
        L_0x0024:
            r0 = r12
            r1 = 1
            if (r0 == r1) goto L_0x0092
            r0 = r12
            r1 = 2
            if (r0 == r1) goto L_0x0033
            goto L_0x000b
        L_0x0033:
            r0 = r7
            java.lang.String r0 = r0.getName()
            r13 = r0
            r0 = r13
            java.lang.String r1 = "transitionManager"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x0051
            android.support.transition.TransitionManager r0 = new android.support.transition.TransitionManager
            r1 = r0
            r1.<init>()
            r11 = r0
            goto L_0x000b
        L_0x0051:
            r0 = r13
            java.lang.String r1 = "transition"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L_0x006c
            r0 = r11
            if (r0 == 0) goto L_0x006c
            r0 = r6
            r1 = r8
            r2 = r7
            r3 = r9
            r4 = r11
            r0.loadTransition(r1, r2, r3, r4)
            goto L_0x000b
        L_0x006c:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r8
            java.lang.String r1 = "Unknown scene name: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.RuntimeException r0 = new java.lang.RuntimeException
            r1 = r0
            r2 = r8
            java.lang.String r2 = r2.toString()
            r1.<init>(r2)
            throw r0
        L_0x0092:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.TransitionInflater.createTransitionManagerFromXml(org.xmlpull.v1.XmlPullParser, android.util.AttributeSet, android.view.ViewGroup):android.support.transition.TransitionManager");
    }

    public static TransitionInflater from(Context context) {
        return new TransitionInflater(context);
    }

    private void getTargetIds(XmlPullParser xmlPullParser, AttributeSet attributeSet, Transition transition) throws XmlPullParserException, IOException {
        String str;
        int depth = xmlPullParser.getDepth();
        while (true) {
            int next = xmlPullParser.next();
            if ((next == 3 && xmlPullParser.getDepth() <= depth) || next == 1) {
                return;
            }
            if (next == 2) {
                if (xmlPullParser.getName().equals(NavigateToLinkInteraction.KEY_TARGET)) {
                    TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_TARGET);
                    int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "targetId", 1, 0);
                    if (namedResourceId != 0) {
                        transition.addTarget(namedResourceId);
                    } else {
                        int namedResourceId2 = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "excludeId", 2, 0);
                        if (namedResourceId2 != 0) {
                            transition.excludeTarget(namedResourceId2, true);
                        } else {
                            String namedString = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "targetName", 4);
                            if (namedString != null) {
                                transition.addTarget(namedString);
                            } else {
                                String namedString2 = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "excludeName", 5);
                                if (namedString2 != null) {
                                    transition.excludeTarget(namedString2, true);
                                } else {
                                    String namedString3 = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "excludeClass", 3);
                                    if (namedString3 != null) {
                                        try {
                                            transition.excludeTarget((Class) Class.forName(namedString3), true);
                                        } catch (ClassNotFoundException e) {
                                            e = e;
                                            str = namedString3;
                                            obtainStyledAttributes.recycle();
                                            throw new RuntimeException("Could not create " + str, e);
                                        }
                                    } else {
                                        String namedString4 = TypedArrayUtils.getNamedString(obtainStyledAttributes, xmlPullParser, "targetClass", 0);
                                        if (namedString4 != null) {
                                            try {
                                                transition.addTarget(Class.forName(namedString4));
                                            } catch (ClassNotFoundException e2) {
                                                e = e2;
                                                str = namedString4;
                                                obtainStyledAttributes.recycle();
                                                throw new RuntimeException("Could not create " + str, e);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                    obtainStyledAttributes.recycle();
                } else {
                    throw new RuntimeException("Unknown scene name: " + xmlPullParser.getName());
                }
            }
        }
    }

    private void loadTransition(AttributeSet attributeSet, XmlPullParser xmlPullParser, ViewGroup viewGroup, TransitionManager transitionManager) throws Resources.NotFoundException {
        Transition inflateTransition;
        TypedArray obtainStyledAttributes = this.mContext.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_MANAGER);
        int namedResourceId = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "transition", 2, -1);
        int namedResourceId2 = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "fromScene", 0, -1);
        Scene scene = null;
        Scene sceneForLayout = namedResourceId2 < 0 ? null : Scene.getSceneForLayout(viewGroup, namedResourceId2, this.mContext);
        int namedResourceId3 = TypedArrayUtils.getNamedResourceId(obtainStyledAttributes, xmlPullParser, "toScene", 1, -1);
        if (namedResourceId3 >= 0) {
            scene = Scene.getSceneForLayout(viewGroup, namedResourceId3, this.mContext);
        }
        if (namedResourceId >= 0 && (inflateTransition = inflateTransition(namedResourceId)) != null) {
            if (scene == null) {
                throw new RuntimeException("No toScene for transition ID " + namedResourceId);
            } else if (sceneForLayout == null) {
                transitionManager.setTransition(scene, inflateTransition);
            } else {
                transitionManager.setTransition(sceneForLayout, scene, inflateTransition);
            }
        }
        obtainStyledAttributes.recycle();
    }

    public Transition inflateTransition(int i) {
        XmlResourceParser xml = this.mContext.getResources().getXml(i);
        try {
            try {
                Transition createTransitionFromXml = createTransitionFromXml(xml, Xml.asAttributeSet(xml), null);
                xml.close();
                return createTransitionFromXml;
            } catch (IOException e) {
                throw new InflateException(xml.getPositionDescription() + ": " + e.getMessage(), e);
            } catch (XmlPullParserException e2) {
                throw new InflateException(e2.getMessage(), e2);
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }

    public TransitionManager inflateTransitionManager(int i, ViewGroup viewGroup) {
        XmlResourceParser xml = this.mContext.getResources().getXml(i);
        try {
            try {
                TransitionManager createTransitionManagerFromXml = createTransitionManagerFromXml(xml, Xml.asAttributeSet(xml), viewGroup);
                xml.close();
                return createTransitionManagerFromXml;
            } catch (IOException e) {
                InflateException inflateException = new InflateException(xml.getPositionDescription() + ": " + e.getMessage());
                inflateException.initCause(e);
                throw inflateException;
            } catch (XmlPullParserException e2) {
                InflateException inflateException2 = new InflateException(e2.getMessage());
                inflateException2.initCause(e2);
                throw inflateException2;
            }
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }
}
