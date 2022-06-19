package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
/* renamed from: androidx.constraintlayout.widget.a */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a.class */
public class C0153a {

    /* renamed from: a */
    String f773a;

    /* renamed from: b */
    private EnumC0155b f774b;

    /* renamed from: c */
    private int f775c;

    /* renamed from: d */
    private float f776d;

    /* renamed from: e */
    private String f777e;

    /* renamed from: f */
    boolean f778f;

    /* renamed from: g */
    private int f779g;

    /* renamed from: androidx.constraintlayout.widget.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$a.class */
    public static /* synthetic */ class C0154a {

        /* renamed from: a */
        static final /* synthetic */ int[] f780a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:28:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0069 -> B:24:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x006d -> B:34:0x004c). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0155b.values().length];
            f780a = iArr;
            try {
                iArr[EnumC0155b.COLOR_TYPE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f780a[EnumC0155b.COLOR_DRAWABLE_TYPE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f780a[EnumC0155b.INT_TYPE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f780a[EnumC0155b.FLOAT_TYPE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f780a[EnumC0155b.STRING_TYPE.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f780a[EnumC0155b.BOOLEAN_TYPE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f780a[EnumC0155b.DIMENSION_TYPE.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
        }
    }

    /* renamed from: androidx.constraintlayout.widget.a$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/a$b.class */
    public enum EnumC0155b {
        INT_TYPE,
        FLOAT_TYPE,
        COLOR_TYPE,
        COLOR_DRAWABLE_TYPE,
        STRING_TYPE,
        BOOLEAN_TYPE,
        DIMENSION_TYPE
    }

    public C0153a(C0153a c0153a, Object obj) {
        this.f773a = c0153a.f773a;
        this.f774b = c0153a.f774b;
        m6289d(obj);
    }

    public C0153a(String str, EnumC0155b enumC0155b, Object obj) {
        this.f773a = str;
        this.f774b = enumC0155b;
        m6289d(obj);
    }

    /* renamed from: a */
    public static HashMap<String, C0153a> m6292a(HashMap<String, C0153a> hashMap, View view) {
        HashMap<String, C0153a> hashMap2 = new HashMap<>();
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C0153a c0153a = hashMap.get(str);
            try {
                if (str.equals("BackgroundColor")) {
                    hashMap2.put(str, new C0153a(c0153a, Integer.valueOf(((ColorDrawable) view.getBackground()).getColor())));
                } else {
                    hashMap2.put(str, new C0153a(c0153a, cls.getMethod("getMap" + str, new Class[0]).invoke(view, new Object[0])));
                }
            } catch (IllegalAccessException e) {
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                e2.printStackTrace();
            } catch (InvocationTargetException e3) {
                e3.printStackTrace();
            }
        }
        return hashMap2;
    }

    /* renamed from: b */
    public static void m6291b(Context context, XmlPullParser xmlPullParser, HashMap<String, C0153a> hashMap) {
        EnumC0155b enumC0155b;
        Object obj;
        String str;
        EnumC0155b enumC0155b2;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(Xml.asAttributeSet(xmlPullParser), C0170i.f1094k2);
        int indexCount = obtainStyledAttributes.getIndexCount();
        String str2 = null;
        Object obj2 = null;
        EnumC0155b enumC0155b3 = null;
        int i = 0;
        while (i < indexCount) {
            int index = obtainStyledAttributes.getIndex(i);
            if (index == C0170i.f1099l2) {
                String string = obtainStyledAttributes.getString(index);
                str = string;
                obj = obj2;
                enumC0155b = enumC0155b3;
                if (string != null) {
                    str = string;
                    obj = obj2;
                    enumC0155b = enumC0155b3;
                    if (string.length() > 0) {
                        str = Character.toUpperCase(string.charAt(0)) + string.substring(1);
                        obj = obj2;
                        enumC0155b = enumC0155b3;
                    }
                }
            } else if (index == C0170i.f1104m2) {
                obj = Boolean.valueOf(obtainStyledAttributes.getBoolean(index, false));
                enumC0155b = EnumC0155b.BOOLEAN_TYPE;
                str = str2;
            } else {
                if (index == C0170i.f1114o2) {
                    enumC0155b2 = EnumC0155b.COLOR_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0170i.f1109n2) {
                    enumC0155b2 = EnumC0155b.COLOR_DRAWABLE_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getColor(index, 0));
                } else if (index == C0170i.f1134s2) {
                    enumC0155b2 = EnumC0155b.DIMENSION_TYPE;
                    obj = Float.valueOf(TypedValue.applyDimension(1, obtainStyledAttributes.getDimension(index, 0.0f), context.getResources().getDisplayMetrics()));
                } else if (index == C0170i.f1119p2) {
                    enumC0155b2 = EnumC0155b.DIMENSION_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getDimension(index, 0.0f));
                } else if (index == C0170i.f1124q2) {
                    enumC0155b2 = EnumC0155b.FLOAT_TYPE;
                    obj = Float.valueOf(obtainStyledAttributes.getFloat(index, Float.NaN));
                } else if (index == C0170i.f1129r2) {
                    enumC0155b2 = EnumC0155b.INT_TYPE;
                    obj = Integer.valueOf(obtainStyledAttributes.getInteger(index, -1));
                } else {
                    str = str2;
                    obj = obj2;
                    enumC0155b = enumC0155b3;
                    if (index == C0170i.f1139t2) {
                        enumC0155b2 = EnumC0155b.STRING_TYPE;
                        obj = obtainStyledAttributes.getString(index);
                    }
                }
                enumC0155b = enumC0155b2;
                str = str2;
            }
            i++;
            str2 = str;
            obj2 = obj;
            enumC0155b3 = enumC0155b;
        }
        if (str2 != null && obj2 != null) {
            hashMap.put(str2, new C0153a(str2, enumC0155b3, obj2));
        }
        obtainStyledAttributes.recycle();
    }

    /* renamed from: c */
    public static void m6290c(View view, HashMap<String, C0153a> hashMap) {
        Class<?> cls = view.getClass();
        for (String str : hashMap.keySet()) {
            C0153a c0153a = hashMap.get(str);
            String str2 = "set" + str;
            try {
                switch (C0154a.f780a[c0153a.f774b.ordinal()]) {
                    case 1:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c0153a.f779g));
                        break;
                    case 2:
                        Method method = cls.getMethod(str2, Drawable.class);
                        ColorDrawable colorDrawable = new ColorDrawable();
                        colorDrawable.setColor(c0153a.f779g);
                        method.invoke(view, colorDrawable);
                        break;
                    case 3:
                        cls.getMethod(str2, Integer.TYPE).invoke(view, Integer.valueOf(c0153a.f775c));
                        break;
                    case 4:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(c0153a.f776d));
                        break;
                    case 5:
                        cls.getMethod(str2, CharSequence.class).invoke(view, c0153a.f777e);
                        break;
                    case 6:
                        cls.getMethod(str2, Boolean.TYPE).invoke(view, Boolean.valueOf(c0153a.f778f));
                        break;
                    case 7:
                        cls.getMethod(str2, Float.TYPE).invoke(view, Float.valueOf(c0153a.f776d));
                        break;
                }
            } catch (IllegalAccessException e) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e.printStackTrace();
            } catch (NoSuchMethodException e2) {
                Log.e("TransitionLayout", e2.getMessage());
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                StringBuilder sb = new StringBuilder();
                sb.append(cls.getName());
                sb.append(" must have a method ");
                sb.append(str2);
                Log.e("TransitionLayout", sb.toString());
            } catch (InvocationTargetException e3) {
                Log.e("TransitionLayout", " Custom Attribute \"" + str + "\" not found on " + cls.getName());
                e3.printStackTrace();
            }
        }
    }

    /* renamed from: d */
    public void m6289d(Object obj) {
        switch (C0154a.f780a[this.f774b.ordinal()]) {
            case 1:
            case 2:
                this.f779g = ((Integer) obj).intValue();
                return;
            case 3:
                this.f775c = ((Integer) obj).intValue();
                return;
            case 4:
                this.f776d = ((Float) obj).floatValue();
                return;
            case 5:
                this.f777e = (String) obj;
                return;
            case 6:
                this.f778f = ((Boolean) obj).booleanValue();
                return;
            case 7:
                this.f776d = ((Float) obj).floatValue();
                return;
            default:
                return;
        }
    }
}
