package android.support.v4.app;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import java.io.FileDescriptor;
import java.io.PrintWriter;
/* loaded from: classes-dex2jar.jar:android/support/v4/app/m.class */
public abstract class m {
    public abstract Fragment.SavedState a(Fragment fragment);

    public abstract Fragment a(Bundle bundle, String str);

    public abstract Fragment a(String str);

    public abstract q a();

    public abstract void a(int i);

    public abstract void a(Bundle bundle, String str, Fragment fragment);

    public abstract void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    public abstract boolean b();

    public abstract boolean c();
}
