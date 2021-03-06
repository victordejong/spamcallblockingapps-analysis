package com.google.android.gms.analytics;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import com.google.android.gms.analytics.internal.zzae;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.TreeSet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/StandardExceptionParser.class */
public class StandardExceptionParser implements ExceptionParser {

    /* renamed from: a  reason: collision with root package name */
    private final TreeSet<String> f3784a = new TreeSet<>();

    public StandardExceptionParser(Context context, Collection<String> collection) {
        setIncludedPackages(context, collection);
    }

    protected StackTraceElement getBestStackTraceElement(Throwable th) {
        StackTraceElement stackTraceElement;
        StackTraceElement[] stackTrace = th.getStackTrace();
        if (stackTrace != null && stackTrace.length != 0) {
            int length = stackTrace.length;
            int i = 0;
            loop0: while (true) {
                if (i >= length) {
                    stackTraceElement = stackTrace[0];
                    break;
                }
                stackTraceElement = stackTrace[i];
                String className = stackTraceElement.getClassName();
                Iterator<String> it = this.f3784a.iterator();
                while (it.hasNext()) {
                    if (className.startsWith(it.next())) {
                        break loop0;
                    }
                }
                i++;
            }
        } else {
            stackTraceElement = null;
        }
        return stackTraceElement;
    }

    protected Throwable getCause(Throwable th) {
        while (th.getCause() != null) {
            th = th.getCause();
        }
        return th;
    }

    @Override // com.google.android.gms.analytics.ExceptionParser
    public String getDescription(String str, Throwable th) {
        return getDescription(getCause(th), getBestStackTraceElement(getCause(th)), str);
    }

    protected String getDescription(Throwable th, StackTraceElement stackTraceElement, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append(th.getClass().getSimpleName());
        if (stackTraceElement != null) {
            String[] split = stackTraceElement.getClassName().split("\\.");
            String str2 = "unknown";
            if (split != null) {
                str2 = "unknown";
                if (split.length > 0) {
                    str2 = split[split.length - 1];
                }
            }
            sb.append(String.format(" (@%s:%s:%s)", str2, stackTraceElement.getMethodName(), Integer.valueOf(stackTraceElement.getLineNumber())));
        }
        if (str != null) {
            sb.append(String.format(" {%s}", str));
        }
        return sb.toString();
    }

    public void setIncludedPackages(Context context, Collection<String> collection) {
        this.f3784a.clear();
        HashSet<String> hashSet = new HashSet();
        if (collection != null) {
            hashSet.addAll(collection);
        }
        if (context != null) {
            try {
                String packageName = context.getApplicationContext().getPackageName();
                this.f3784a.add(packageName);
                ActivityInfo[] activityInfoArr = context.getApplicationContext().getPackageManager().getPackageInfo(packageName, 1).activities;
                if (activityInfoArr != null) {
                    for (ActivityInfo activityInfo : activityInfoArr) {
                        hashSet.add(activityInfo.packageName);
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                zzae.zzaV("No package found");
            }
        }
        for (String str : hashSet) {
            Iterator<String> it = this.f3784a.iterator();
            boolean z = true;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                String next = it.next();
                if (str.startsWith(next)) {
                    z = false;
                } else if (next.startsWith(str)) {
                    this.f3784a.remove(next);
                }
            }
            if (z) {
                this.f3784a.add(str);
            }
        }
    }
}
