package com.google.android.material.p060a;

import android.animation.Animator;
import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.Log;
import androidx.p026b.C0542i;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.material.a.h */
/* loaded from: classes-dex2jar.jar:com/google/android/material/a/h.class */
public final class C2932h {

    /* renamed from: a */
    private final C0542i<String, C2933i> f17823a = new C0542i<>();

    /* renamed from: a */
    public static C2932h m1544a(Context context, int i) {
        try {
            Animator loadAnimator = AnimatorInflater.loadAnimator(context, i);
            if (loadAnimator instanceof AnimatorSet) {
                return m1539a(((AnimatorSet) loadAnimator).getChildAnimations());
            }
            if (loadAnimator == null) {
                return null;
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(loadAnimator);
            return m1539a(arrayList);
        } catch (Exception e) {
            Log.w("MotionSpec", "Can't load animation resource ID #0x" + Integer.toHexString(i), e);
            return null;
        }
    }

    /* renamed from: a */
    public static C2932h m1543a(Context context, TypedArray typedArray, int i) {
        int resourceId;
        if (!typedArray.hasValue(i) || (resourceId = typedArray.getResourceId(i, 0)) == 0) {
            return null;
        }
        return m1544a(context, resourceId);
    }

    /* renamed from: a */
    private static C2932h m1539a(List<Animator> list) {
        C2932h hVar = new C2932h();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            m1542a(hVar, list.get(i));
        }
        return hVar;
    }

    /* renamed from: a */
    private static void m1542a(C2932h hVar, Animator animator) {
        if (animator instanceof ObjectAnimator) {
            ObjectAnimator objectAnimator = (ObjectAnimator) animator;
            hVar.m1540a(objectAnimator.getPropertyName(), C2933i.m1536a((ValueAnimator) objectAnimator));
            return;
        }
        throw new IllegalArgumentException("Animator must be an ObjectAnimator: ".concat(String.valueOf(animator)));
    }

    /* renamed from: a */
    private void m1540a(String str, C2933i iVar) {
        this.f17823a.put(str, iVar);
    }

    /* renamed from: a */
    public final long m1545a() {
        int size = this.f17823a.size();
        long j = 0;
        for (int i = 0; i < size; i++) {
            C2933i c = this.f17823a.m8903c(i);
            j = Math.max(j, c.m1538a() + c.m1535b());
        }
        return j;
    }

    /* renamed from: a */
    public final C2933i m1541a(String str) {
        if (this.f17823a.get(str) != null) {
            return this.f17823a.get(str);
        }
        throw new IllegalArgumentException();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return this.f17823a.equals(((C2932h) obj).f17823a);
    }

    public final int hashCode() {
        return this.f17823a.hashCode();
    }

    public final String toString() {
        return '\n' + getClass().getName() + '{' + Integer.toHexString(System.identityHashCode(this)) + " timings: " + this.f17823a + "}\n";
    }
}
