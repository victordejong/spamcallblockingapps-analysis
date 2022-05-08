package com.mixpanel.android.mpmetrics;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.mixpanel.android.util.MPLog;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/Tweaks.class */
public class Tweaks {
    public static final int BOOLEAN_TYPE = 1;
    public static final int DOUBLE_TYPE = 2;
    private static final String LOGTAG = "MixpanelAPI.Tweaks";
    public static final int LONG_TYPE = 3;
    public static final int STRING_TYPE = 4;
    private final ConcurrentMap<String, TweakValue> mTweakValues = new ConcurrentHashMap();
    private final ConcurrentMap<String, TweakValue> mTweakDefaultValues = new ConcurrentHashMap();
    private final List<OnTweakDeclaredListener> mTweakDeclaredListeners = new ArrayList();

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/Tweaks$OnTweakDeclaredListener.class */
    public interface OnTweakDeclaredListener {
        void onTweakDeclared();
    }

    /* loaded from: classes-dex2jar.jar:com/mixpanel/android/mpmetrics/Tweaks$TweakValue.class */
    public static class TweakValue {
        private final Object defaultValue;
        private final Number maximum;
        private final Number minimum;
        private final String name;
        public final int type;
        private final Object value;

        private TweakValue(int i, Object obj, Number number, Number number2, Object obj2, String str) {
            this.type = i;
            this.name = str;
            this.minimum = number;
            this.maximum = number2;
            Object obj3 = obj;
            Object obj4 = obj2;
            if (this.minimum != null) {
                obj3 = obj;
                obj4 = obj2;
                if (this.maximum != null) {
                    Object obj5 = obj;
                    if (!isBetweenBounds(obj)) {
                        obj5 = Long.valueOf(Math.min(Math.max(((Number) obj).longValue(), this.minimum.longValue()), this.maximum.longValue()));
                        MPLog.m305w(Tweaks.LOGTAG, "Attempt to define a tweak \"" + this.name + "\" with default value " + obj5 + " out of its bounds [" + this.minimum + ", " + this.maximum + "]Tweak \"" + this.name + "\" new default value: " + obj5 + ".");
                    }
                    obj3 = obj5;
                    obj4 = obj2;
                    if (!isBetweenBounds(obj2)) {
                        obj4 = Long.valueOf(Math.min(Math.max(((Number) obj2).longValue(), this.minimum.longValue()), this.maximum.longValue()));
                        MPLog.m305w(Tweaks.LOGTAG, "Attempt to define a tweak \"" + this.name + "\" with value " + obj5 + " out of its bounds [" + this.minimum + ", " + this.maximum + "]Tweak \"" + this.name + "\" new value: " + obj4 + ".");
                        obj3 = obj5;
                    }
                }
            }
            this.defaultValue = obj3;
            this.value = obj4;
        }

        public static TweakValue fromJson(JSONObject jSONObject) {
            Long l;
            int i;
            Number number;
            Number number2;
            Long l2;
            try {
                String string = jSONObject.getString("name");
                String string2 = jSONObject.getString("type");
                if ("number".equals(string2)) {
                    String string3 = jSONObject.getString("encoding");
                    if ("d".equals(string3)) {
                        Double valueOf = Double.valueOf(jSONObject.getDouble(FirebaseAnalytics.Param.VALUE));
                        Double valueOf2 = Double.valueOf(jSONObject.getDouble("default"));
                        number2 = !jSONObject.isNull("minimum") ? Double.valueOf(jSONObject.getDouble("minimum")) : null;
                        i = 2;
                        l = valueOf;
                        l2 = valueOf2;
                        number2 = number2;
                        if (!jSONObject.isNull("maximum")) {
                            number = Double.valueOf(jSONObject.getDouble("maximum"));
                            i = 2;
                            l = valueOf;
                            l2 = valueOf2;
                        }
                        number = null;
                    } else if (!"l".equals(string3)) {
                        return null;
                    } else {
                        Long valueOf3 = Long.valueOf(jSONObject.getLong(FirebaseAnalytics.Param.VALUE));
                        Long valueOf4 = Long.valueOf(jSONObject.getLong("default"));
                        number2 = !jSONObject.isNull("minimum") ? Long.valueOf(jSONObject.getLong("minimum")) : null;
                        i = 3;
                        l = valueOf3;
                        l2 = valueOf4;
                        number2 = number2;
                        if (!jSONObject.isNull("maximum")) {
                            number = Long.valueOf(jSONObject.getLong("maximum"));
                            l2 = valueOf4;
                            l = valueOf3;
                            i = 3;
                        }
                        number = null;
                    }
                } else if ("boolean".equals(string2)) {
                    boolean z = jSONObject.getBoolean(FirebaseAnalytics.Param.VALUE);
                    l2 = Boolean.valueOf(jSONObject.getBoolean("default"));
                    number2 = null;
                    number = null;
                    l = Boolean.valueOf(z);
                    i = 1;
                } else if (!"string".equals(string2)) {
                    return null;
                } else {
                    l = jSONObject.getString(FirebaseAnalytics.Param.VALUE);
                    l2 = jSONObject.getString("default");
                    number2 = null;
                    number = null;
                    i = 4;
                }
                return new TweakValue(i, l2, number2, number, l, string);
            } catch (JSONException e) {
                return null;
            }
        }

        private boolean isBetweenBounds(Object obj) {
            try {
                Number number = (Number) obj;
                if (Math.min(Math.max(number.longValue(), this.minimum.longValue()), this.maximum.longValue()) != this.minimum.longValue()) {
                    return Math.min(Math.max(number.longValue(), this.minimum.longValue()), this.maximum.longValue()) != this.maximum.longValue();
                }
                return false;
            } catch (ClassCastException e) {
                return true;
            }
        }

        public Boolean getBooleanValue() {
            Boolean bool = false;
            if (this.defaultValue != null) {
                try {
                    bool = (Boolean) this.defaultValue;
                } catch (ClassCastException e) {
                    bool = false;
                }
            }
            Boolean bool2 = bool;
            if (this.value != null) {
                try {
                    bool2 = (Boolean) this.value;
                } catch (ClassCastException e2) {
                    bool2 = bool;
                }
            }
            return bool2;
        }

        public Object getDefaultValue() {
            return this.defaultValue;
        }

        public Number getMaximum() {
            return this.maximum;
        }

        public Number getMinimum() {
            return this.minimum;
        }

        public Number getNumberValue() {
            Number number = 0;
            if (this.defaultValue != null) {
                try {
                    number = (Number) this.defaultValue;
                } catch (ClassCastException e) {
                    number = 0;
                }
            }
            Number number2 = number;
            if (this.value != null) {
                try {
                    number2 = (Number) this.value;
                } catch (ClassCastException e2) {
                    number2 = number;
                }
            }
            return number2;
        }

        public String getStringValue() {
            String str;
            try {
                str = (String) this.defaultValue;
            } catch (ClassCastException e) {
                str = null;
            }
            try {
                str = (String) this.value;
            } catch (ClassCastException e2) {
            }
            return str;
        }

        public Object getValue() {
            return this.value;
        }

        public TweakValue updateValue(Object obj) {
            return new TweakValue(this.type, this.defaultValue, this.minimum, this.maximum, obj, this.name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TweakValue getValue(String str) {
        TweakValue tweakValue;
        synchronized (this) {
            tweakValue = this.mTweakValues.get(str);
        }
        return tweakValue;
    }

    public void addOnTweakDeclaredListener(OnTweakDeclaredListener onTweakDeclaredListener) {
        synchronized (this) {
            if (onTweakDeclaredListener == null) {
                throw new NullPointerException("listener cannot be null");
            }
            this.mTweakDeclaredListeners.add(onTweakDeclaredListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Boolean> booleanTweak(final String str, boolean z) {
        declareTweak(str, Boolean.valueOf(z), null, null, 1);
        return new Tweak<Boolean>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.12
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Boolean get() {
                return Tweaks.this.getValue(str).getBooleanValue();
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Byte> byteTweak(final String str, byte b) {
        declareTweak(str, Byte.valueOf(b), null, null, 3);
        return new Tweak<Byte>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.10
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Byte get() {
                return Byte.valueOf(Tweaks.this.getValue(str).getNumberValue().byteValue());
            }
        };
    }

    public void declareTweak(String str, Object obj, Number number, Number number2, int i) {
        if (this.mTweakValues.containsKey(str)) {
            MPLog.m305w(LOGTAG, "Attempt to define a tweak \"" + str + "\" twice with the same name");
            return;
        }
        TweakValue tweakValue = new TweakValue(i, obj, number, number2, obj, str);
        this.mTweakValues.put(str, tweakValue);
        this.mTweakDefaultValues.put(str, tweakValue);
        int size = this.mTweakDeclaredListeners.size();
        for (int i2 = 0; i2 < size; i2++) {
            this.mTweakDeclaredListeners.get(i2).onTweakDeclared();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Double> doubleTweak(final String str, double d) {
        declareTweak(str, Double.valueOf(d), null, null, 2);
        return new Tweak<Double>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Double get() {
                return Double.valueOf(Tweaks.this.getValue(str).getNumberValue().doubleValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Double> doubleTweak(final String str, double d, double d2, double d3) {
        declareTweak(str, Double.valueOf(d), Double.valueOf(d2), Double.valueOf(d3), 2);
        return new Tweak<Double>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Double get() {
                return Double.valueOf(Tweaks.this.getValue(str).getNumberValue().doubleValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Float> floatTweak(final String str, float f) {
        declareTweak(str, Float.valueOf(f), null, null, 2);
        return new Tweak<Float>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.4
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Float get() {
                return Float.valueOf(Tweaks.this.getValue(str).getNumberValue().floatValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Float> floatTweak(final String str, float f, float f2, float f3) {
        declareTweak(str, Float.valueOf(f), Float.valueOf(f2), Float.valueOf(f3), 2);
        return new Tweak<Float>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.5
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Float get() {
                return Float.valueOf(Tweaks.this.getValue(str).getNumberValue().floatValue());
            }
        };
    }

    public Map<String, TweakValue> getAllValues() {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap(this.mTweakValues);
        }
        return hashMap;
    }

    public Map<String, TweakValue> getDefaultValues() {
        HashMap hashMap;
        synchronized (this) {
            hashMap = new HashMap(this.mTweakDefaultValues);
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Integer> intTweak(final String str, int i) {
        declareTweak(str, Integer.valueOf(i), null, null, 3);
        return new Tweak<Integer>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.8
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Integer get() {
                return Integer.valueOf(Tweaks.this.getValue(str).getNumberValue().intValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Integer> intTweak(final String str, int i, int i2, int i3) {
        declareTweak(str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), 3);
        return new Tweak<Integer>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.9
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Integer get() {
                return Integer.valueOf(Tweaks.this.getValue(str).getNumberValue().intValue());
            }
        };
    }

    public boolean isNewValue(String str, Object obj) {
        synchronized (this) {
            if (!this.mTweakValues.containsKey(str)) {
                MPLog.m305w(LOGTAG, "Attempt to reference a tweak \"" + str + "\" which has never been defined.");
                return false;
            }
            return !this.mTweakValues.get(str).value.equals(obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Long> longTweak(final String str, long j) {
        declareTweak(str, Long.valueOf(j), null, null, 3);
        return new Tweak<Long>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.6
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Long get() {
                return Long.valueOf(Tweaks.this.getValue(str).getNumberValue().longValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Long> longTweak(final String str, long j, long j2, long j3) {
        declareTweak(str, Long.valueOf(j), Long.valueOf(j2), Long.valueOf(j3), 3);
        return new Tweak<Long>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.7
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Long get() {
                return Long.valueOf(Tweaks.this.getValue(str).getNumberValue().longValue());
            }
        };
    }

    public void set(String str, Object obj) {
        synchronized (this) {
            if (!this.mTweakValues.containsKey(str)) {
                MPLog.m305w(LOGTAG, "Attempt to set a tweak \"" + str + "\" which has never been defined.");
                return;
            }
            this.mTweakValues.put(str, this.mTweakValues.get(str).updateValue(obj));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<Short> shortTweak(final String str, short s) {
        declareTweak(str, Short.valueOf(s), null, null, 3);
        return new Tweak<Short>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.11
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public Short get() {
                return Short.valueOf(Tweaks.this.getValue(str).getNumberValue().shortValue());
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Tweak<String> stringTweak(final String str, String str2) {
        declareTweak(str, str2, null, null, 4);
        return new Tweak<String>() { // from class: com.mixpanel.android.mpmetrics.Tweaks.1
            @Override // com.mixpanel.android.mpmetrics.Tweak
            public String get() {
                return Tweaks.this.getValue(str).getStringValue();
            }
        };
    }
}
