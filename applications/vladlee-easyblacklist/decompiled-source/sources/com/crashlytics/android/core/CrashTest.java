package com.crashlytics.android.core;

import android.os.AsyncTask;
import p000a.p001a.p002a.p003a.C0137d;
/* loaded from: classes-dex2jar.jar:com/crashlytics/android/core/CrashTest.class */
public class CrashTest {
    private void privateMethodThatThrowsException(String str) {
        throw new RuntimeException(str);
    }

    public void crashAsyncTask(final long j) {
        new AsyncTask<Void, Void, Void>() { // from class: com.crashlytics.android.core.CrashTest.1
            /* JADX INFO: Access modifiers changed from: protected */
            public Void doInBackground(Void... voidArr) {
                try {
                    Thread.sleep(j);
                } catch (InterruptedException e) {
                }
                CrashTest.this.throwRuntimeException("Background thread crash");
                return null;
            }
        }.execute(null);
    }

    public void indexOutOfBounds() {
        C0137d.m10155c().mo10135a(CrashlyticsCore.TAG, "Out of bounds value: ".concat(String.valueOf(new int[2][10])));
    }

    public int stackOverflow() {
        return stackOverflow() + ((int) Math.random());
    }

    public void throwFiveChainedExceptions() {
        try {
            privateMethodThatThrowsException("1");
        } catch (Exception e) {
            try {
                throw new RuntimeException("2", e);
            } catch (Exception e2) {
                try {
                    throw new RuntimeException("3", e2);
                } catch (Exception e3) {
                    try {
                        throw new RuntimeException("4", e3);
                    } catch (Exception e4) {
                        throw new RuntimeException("5", e4);
                    }
                }
            }
        }
    }

    public void throwRuntimeException(String str) {
        throw new RuntimeException(str);
    }
}
