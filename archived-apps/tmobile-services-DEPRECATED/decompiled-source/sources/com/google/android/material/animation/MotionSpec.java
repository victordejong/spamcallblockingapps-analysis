package com.google.android.material.animation;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import android.util.Property;
import androidx.annotation.AnimatorRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.StyleableRes;
import androidx.collection.SimpleArrayMap;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/material/animation/MotionSpec.class */
public class MotionSpec {

    /* renamed from: a */
    private final SimpleArrayMap<String, MotionTiming> f9936a = new SimpleArrayMap<>();

    /* renamed from: b */
    private final SimpleArrayMap<String, PropertyValuesHolder[]> f9937b = new SimpleArrayMap<>();

    /* renamed from: a */
    private static void m10758a(@NonNull MotionSpec motionSpec, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            motionSpec.m10747l(objectAnimator.getPropertyName(), objectAnimator.getValues());
            motionSpec.m10746m(objectAnimator.getPropertyName(), MotionTiming.m10744b(objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: " + animator);
    }

    @NonNull
    /* renamed from: b */
    private PropertyValuesHolder[] m10757b(@NonNull PropertyValuesHolder[] propertyValuesHolderArr) {
        PropertyValuesHolder[] propertyValuesHolderArr2 = new PropertyValuesHolder[propertyValuesHolderArr.length];
        for (int i = 0; i < propertyValuesHolderArr.length; i++) {
            propertyValuesHolderArr2[i] = propertyValuesHolderArr[i].clone();
        }
        return propertyValuesHolderArr2;
    }

    @Nullable
    /* renamed from: c */
    public static MotionSpec m10756c(@NonNull Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m10755d(context, resourceId);
    }

    @Nullable
    /* renamed from: d */
    public static MotionSpec m10755d(@NonNull Context context, @AnimatorRes int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m10754e(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m10754e(arrayList);
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    @NonNull
    /* renamed from: e */
    private static MotionSpec m10754e(@NonNull List<Animator> list) {
        MotionSpec motionSpec = new MotionSpec();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m10758a(motionSpec, list.get(i));
        }
        return motionSpec;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof MotionSpec)) {
            return false;
        }
        return this.f9936a.equals(((MotionSpec) obj).f9936a);
    }

    @NonNull
    /* renamed from: f */
    public <T> ObjectAnimator m10753f(@NonNull String str, @NonNull T t, @NonNull Property<T, ?> property) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(t, m10752g(str));
        ofPropertyValuesHolder.setProperty(property);
        m10751h(str).m10745a(ofPropertyValuesHolder);
        return ofPropertyValuesHolder;
    }

    @NonNull
    /* renamed from: g */
    public PropertyValuesHolder[] m10752g(String str) {
        if (m10749j(str)) {
            return m10757b(this.f9937b.get(str));
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: h */
    public MotionTiming m10751h(String str) {
        if (m10748k(str)) {
            return this.f9936a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public int hashCode() {
        return this.f9936a.hashCode();
    }

    /* renamed from: i */
    public long m10750i() {
        int size = this.f9936a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            MotionTiming o = this.f9936a.m21005o(i);
            j = Math.max(j, o.m10743c() + o.m10742d());
        }
        return j;
    }

    /* renamed from: j */
    public boolean m10749j(String str) {
        return this.f9937b.get(str) != null;
    }

    /* renamed from: k */
    public boolean m10748k(String str) {
        return this.f9936a.get(str) != null;
    }

    /* renamed from: l */
    public void m10747l(String str, PropertyValuesHolder[] propertyValuesHolderArr) {
        this.f9937b.put(str, propertyValuesHolderArr);
    }

    /* renamed from: m */
    public void m10746m(String str, @Nullable MotionTiming motionTiming) {
        this.f9936a.put(str, motionTiming);
    }

    @NonNull
    public String toString() {
        return '\n' + MotionSpec.class.getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f9936a + "}\n";
    }
}
