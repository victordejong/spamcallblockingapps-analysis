package android.support.p001v4.app;
/* renamed from: android.support.v4.app.BackstackAccessor */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/BackstackAccessor.class */
public class BackstackAccessor {
    private BackstackAccessor() {
        throw new IllegalStateException("Not instantiatable");
    }

    public static boolean isFragmentOnBackStack(Fragment fragment) {
        return fragment.isInBackStack();
    }
}
