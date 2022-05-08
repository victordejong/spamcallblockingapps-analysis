package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0178R;
import androidx.constraintlayout.widget.ConstraintAttribute;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycle.class */
public class KeyCycle extends Key {

    /* renamed from: f */
    private String f1690f;

    /* renamed from: g */
    private int f1691g = 0;

    /* renamed from: h */
    private int f1692h = -1;

    /* renamed from: i */
    private float f1693i = Float.NaN;

    /* renamed from: j */
    private float f1694j = 0.0f;

    /* renamed from: k */
    private float f1695k = Float.NaN;

    /* renamed from: l */
    private int f1696l = -1;

    /* renamed from: m */
    private float f1697m = Float.NaN;

    /* renamed from: n */
    private float f1698n = Float.NaN;

    /* renamed from: o */
    private float f1699o = Float.NaN;

    /* renamed from: p */
    private float f1700p = Float.NaN;

    /* renamed from: q */
    private float f1701q = Float.NaN;

    /* renamed from: r */
    private float f1702r = Float.NaN;

    /* renamed from: s */
    private float f1703s = Float.NaN;

    /* renamed from: t */
    private float f1704t = Float.NaN;

    /* renamed from: u */
    private float f1705u = Float.NaN;

    /* renamed from: v */
    private float f1706v = Float.NaN;

    /* renamed from: w */
    private float f1707w = Float.NaN;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyCycle$Loader.class */
    private static class Loader {

        /* renamed from: a */
        private static SparseIntArray f1708a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1708a = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.KeyCycle_motionTarget, 1);
            f1708a.append(C0178R.styleable.KeyCycle_framePosition, 2);
            f1708a.append(C0178R.styleable.KeyCycle_transitionEasing, 3);
            f1708a.append(C0178R.styleable.KeyCycle_curveFit, 4);
            f1708a.append(C0178R.styleable.KeyCycle_waveShape, 5);
            f1708a.append(C0178R.styleable.KeyCycle_wavePeriod, 6);
            f1708a.append(C0178R.styleable.KeyCycle_waveOffset, 7);
            f1708a.append(C0178R.styleable.KeyCycle_waveVariesBy, 8);
            f1708a.append(C0178R.styleable.KeyCycle_android_alpha, 9);
            f1708a.append(C0178R.styleable.KeyCycle_android_elevation, 10);
            f1708a.append(C0178R.styleable.KeyCycle_android_rotation, 11);
            f1708a.append(C0178R.styleable.KeyCycle_android_rotationX, 12);
            f1708a.append(C0178R.styleable.KeyCycle_android_rotationY, 13);
            f1708a.append(C0178R.styleable.KeyCycle_transitionPathRotate, 14);
            f1708a.append(C0178R.styleable.KeyCycle_android_scaleX, 15);
            f1708a.append(C0178R.styleable.KeyCycle_android_scaleY, 16);
            f1708a.append(C0178R.styleable.KeyCycle_android_translationX, 17);
            f1708a.append(C0178R.styleable.KeyCycle_android_translationY, 18);
            f1708a.append(C0178R.styleable.KeyCycle_android_translationZ, 19);
            f1708a.append(C0178R.styleable.KeyCycle_motionProgress, 20);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public static void m20865b(KeyCycle keyCycle, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1708a.get(index)) {
                    case 1:
                        if (!MotionLayout.f1830J0) {
                            if (typedArray.peekValue(index).type == 3) {
                                keyCycle.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                keyCycle.f1669b = typedArray.getResourceId(index, keyCycle.f1669b);
                                break;
                            }
                        } else {
                            int resourceId = typedArray.getResourceId(index, keyCycle.f1669b);
                            keyCycle.f1669b = resourceId;
                            if (resourceId == -1) {
                                keyCycle.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 2:
                        keyCycle.f1668a = typedArray.getInt(index, keyCycle.f1668a);
                        break;
                    case 3:
                        keyCycle.f1690f = typedArray.getString(index);
                        break;
                    case 4:
                        keyCycle.f1691g = typedArray.getInteger(index, keyCycle.f1691g);
                        break;
                    case 5:
                        keyCycle.f1692h = typedArray.getInt(index, keyCycle.f1692h);
                        break;
                    case 6:
                        keyCycle.f1693i = typedArray.getFloat(index, keyCycle.f1693i);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            keyCycle.f1694j = typedArray.getDimension(index, keyCycle.f1694j);
                            break;
                        } else {
                            keyCycle.f1694j = typedArray.getFloat(index, keyCycle.f1694j);
                            break;
                        }
                    case 8:
                        keyCycle.f1696l = typedArray.getInt(index, keyCycle.f1696l);
                        break;
                    case 9:
                        keyCycle.f1697m = typedArray.getFloat(index, keyCycle.f1697m);
                        break;
                    case 10:
                        keyCycle.f1698n = typedArray.getDimension(index, keyCycle.f1698n);
                        break;
                    case 11:
                        keyCycle.f1699o = typedArray.getFloat(index, keyCycle.f1699o);
                        break;
                    case 12:
                        keyCycle.f1701q = typedArray.getFloat(index, keyCycle.f1701q);
                        break;
                    case 13:
                        keyCycle.f1702r = typedArray.getFloat(index, keyCycle.f1702r);
                        break;
                    case 14:
                        keyCycle.f1700p = typedArray.getFloat(index, keyCycle.f1700p);
                        break;
                    case 15:
                        keyCycle.f1703s = typedArray.getFloat(index, keyCycle.f1703s);
                        break;
                    case 16:
                        keyCycle.f1704t = typedArray.getFloat(index, keyCycle.f1704t);
                        break;
                    case 17:
                        keyCycle.f1705u = typedArray.getDimension(index, keyCycle.f1705u);
                        break;
                    case 18:
                        keyCycle.f1706v = typedArray.getDimension(index, keyCycle.f1706v);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            keyCycle.f1707w = typedArray.getDimension(index, keyCycle.f1707w);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        keyCycle.f1695k = typedArray.getFloat(index, keyCycle.f1695k);
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1708a.get(index));
                        break;
                }
            }
        }
    }

    public KeyCycle() {
        this.f1671d = new HashMap<>();
    }

    /* renamed from: O */
    public void m20889O(HashMap<String, KeyCycleOscillator> hashMap) {
        for (String str : hashMap.keySet()) {
            if (str.startsWith("CUSTOM")) {
                ConstraintAttribute constraintAttribute = this.f1671d.get(str.substring(7));
                if (constraintAttribute != null && constraintAttribute.m20073c() == ConstraintAttribute.AttributeType.FLOAT_TYPE) {
                    hashMap.get(str).m20860e(this.f1668a, this.f1692h, this.f1696l, this.f1693i, this.f1694j, constraintAttribute.m20072d(), constraintAttribute);
                }
            } else {
                float P = m20888P(str);
                if (!Float.isNaN(P)) {
                    hashMap.get(str).m20861d(this.f1668a, this.f1692h, this.f1696l, this.f1693i, this.f1694j, P);
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: P */
    public float m20888P(String str) {
        char c;
        switch (str.hashCode()) {
            case -1249320806:
                if (str.equals("rotationX")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1249320805:
                if (str.equals("rotationY")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -1225497657:
                if (str.equals("translationX")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1225497656:
                if (str.equals("translationY")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -1225497655:
                if (str.equals("translationZ")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case -1001078227:
                if (str.equals("progress")) {
                    c = '\f';
                    break;
                }
                c = 65535;
                break;
            case -908189618:
                if (str.equals("scaleX")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case -908189617:
                if (str.equals("scaleY")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            case -40300674:
                if (str.equals("rotation")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -4379043:
                if (str.equals("elevation")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 37232917:
                if (str.equals("transitionPathRotate")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 92909918:
                if (str.equals("alpha")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 156108012:
                if (str.equals("waveOffset")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                return this.f1697m;
            case 1:
                return this.f1698n;
            case 2:
                return this.f1699o;
            case 3:
                return this.f1701q;
            case 4:
                return this.f1702r;
            case 5:
                return this.f1700p;
            case 6:
                return this.f1703s;
            case 7:
                return this.f1704t;
            case '\b':
                return this.f1705u;
            case '\t':
                return this.f1706v;
            case '\n':
                return this.f1707w;
            case 11:
                return this.f1694j;
            case '\f':
                return this.f1695k;
            default:
                Log.v("KeyCycle", "WARNING! KeyCycle UNKNOWN  " + str);
                return Float.NaN;
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public void mo20809a(HashMap<String, SplineSet> hashMap) {
        Debug.m20939e("KeyCycle", "add " + hashMap.size() + " values", 2);
        for (String str : hashMap.keySet()) {
            SplineSet splineSet = hashMap.get(str);
            char c = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c = 3;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c = 4;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c = '\b';
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c = '\t';
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c = '\n';
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals("progress")) {
                        c = '\f';
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c = 7;
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c = 2;
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c = 1;
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c = 5;
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c = 0;
                        break;
                    }
                    break;
                case 156108012:
                    if (str.equals("waveOffset")) {
                        c = 11;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                    splineSet.mo20574e(this.f1668a, this.f1697m);
                    break;
                case 1:
                    splineSet.mo20574e(this.f1668a, this.f1698n);
                    break;
                case 2:
                    splineSet.mo20574e(this.f1668a, this.f1699o);
                    break;
                case 3:
                    splineSet.mo20574e(this.f1668a, this.f1701q);
                    break;
                case 4:
                    splineSet.mo20574e(this.f1668a, this.f1702r);
                    break;
                case 5:
                    splineSet.mo20574e(this.f1668a, this.f1700p);
                    break;
                case 6:
                    splineSet.mo20574e(this.f1668a, this.f1703s);
                    break;
                case 7:
                    splineSet.mo20574e(this.f1668a, this.f1704t);
                    break;
                case '\b':
                    splineSet.mo20574e(this.f1668a, this.f1705u);
                    break;
                case '\t':
                    splineSet.mo20574e(this.f1668a, this.f1706v);
                    break;
                case '\n':
                    splineSet.mo20574e(this.f1668a, this.f1707w);
                    break;
                case 11:
                    splineSet.mo20574e(this.f1668a, this.f1694j);
                    break;
                case '\f':
                    splineSet.mo20574e(this.f1668a, this.f1695k);
                    break;
                default:
                    Log.v("KeyCycle", "WARNING KeyCycle UNKNOWN  " + str);
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: b */
    public void mo20808b(HashSet<String> hashSet) {
        if (!Float.isNaN(this.f1697m)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.f1698n)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.f1699o)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.f1701q)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.f1702r)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.f1703s)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.f1704t)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.f1700p)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.f1705u)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.f1706v)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.f1707w)) {
            hashSet.add("translationZ");
        }
        if (this.f1671d.size() > 0) {
            for (String str : this.f1671d.keySet()) {
                hashSet.add("CUSTOM," + str);
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: c */
    public void mo20807c(Context context, AttributeSet attributeSet) {
        Loader.m20865b(this, context.obtainStyledAttributes(attributeSet, C0178R.styleable.KeyCycle));
    }
}
