package com.crashlytics.android.answers;

import java.util.Random;
import p000a.p001a.p002a.p003a.p004a.p007c.p008a.AbstractC0053a;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/answers/RandomBackoff.class */
class RandomBackoff implements AbstractC0053a {
    final AbstractC0053a backoff;
    final double jitterPercent;
    final Random random;

    public RandomBackoff(AbstractC0053a aVar, double d) {
        this(aVar, d, new Random());
    }

    public RandomBackoff(AbstractC0053a aVar, double d, Random random) {
        if (d < 0.0d || d > 1.0d) {
            throw new IllegalArgumentException("jitterPercent must be between 0.0 and 1.0");
        } else if (aVar == null) {
            throw new NullPointerException("backoff must not be null");
        } else if (random != null) {
            this.backoff = aVar;
            this.jitterPercent = d;
            this.random = random;
        } else {
            throw new NullPointerException("random must not be null");
        }
    }

    @Override // p000a.p001a.p002a.p003a.p004a.p007c.p008a.AbstractC0053a
    public long getDelayMillis(int i) {
        return (long) (randomJitter() * this.backoff.getDelayMillis(i));
    }

    double randomJitter() {
        double d = this.jitterPercent;
        double d2 = 1.0d - d;
        return d2 + (((d + 1.0d) - d2) * this.random.nextDouble());
    }
}
