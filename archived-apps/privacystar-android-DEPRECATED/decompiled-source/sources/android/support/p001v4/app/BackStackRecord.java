package android.support.p001v4.app;

import android.support.annotation.Nullable;
import android.support.p001v4.app.Fragment;
import android.support.p001v4.app.FragmentManager;
import android.support.p001v4.app.FragmentManagerImpl;
import android.support.p001v4.util.LogWriter;
import android.support.p001v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import com.privacystar.core.util.text.Text;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: android.support.v4.app.BackStackRecord */
/* loaded from: classes-dex2jar.jar:android/support/v4/app/BackStackRecord.class */
public final class BackStackRecord extends FragmentTransaction implements FragmentManager.BackStackEntry, FragmentManagerImpl.OpGenerator {
    static final int OP_ADD = 1;
    static final int OP_ATTACH = 7;
    static final int OP_DETACH = 6;
    static final int OP_HIDE = 4;
    static final int OP_NULL = 0;
    static final int OP_REMOVE = 3;
    static final int OP_REPLACE = 2;
    static final int OP_SET_PRIMARY_NAV = 8;
    static final int OP_SHOW = 5;
    static final int OP_UNSET_PRIMARY_NAV = 9;
    static final String TAG = "FragmentManager";
    boolean mAddToBackStack;
    int mBreadCrumbShortTitleRes;
    CharSequence mBreadCrumbShortTitleText;
    int mBreadCrumbTitleRes;
    CharSequence mBreadCrumbTitleText;
    ArrayList<Runnable> mCommitRunnables;
    boolean mCommitted;
    int mEnterAnim;
    int mExitAnim;
    final FragmentManagerImpl mManager;
    @Nullable
    String mName;
    int mPopEnterAnim;
    int mPopExitAnim;
    ArrayList<String> mSharedElementSourceNames;
    ArrayList<String> mSharedElementTargetNames;
    int mTransition;
    int mTransitionStyle;
    ArrayList<C0294Op> mOps = new ArrayList<>();
    boolean mAllowAddToBackStack = true;
    int mIndex = -1;
    boolean mReorderingAllowed = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: android.support.v4.app.BackStackRecord$Op */
    /* loaded from: classes-dex2jar.jar:android/support/v4/app/BackStackRecord$Op.class */
    public static final class C0294Op {
        int cmd;
        int enterAnim;
        int exitAnim;
        Fragment fragment;
        int popEnterAnim;
        int popExitAnim;

        /* JADX INFO: Access modifiers changed from: package-private */
        public C0294Op() {
        }

        C0294Op(int i, Fragment fragment) {
            this.cmd = i;
            this.fragment = fragment;
        }
    }

    public BackStackRecord(FragmentManagerImpl fragmentManagerImpl) {
        this.mManager = fragmentManagerImpl;
    }

    private void doAddOp(int i, Fragment fragment, @Nullable String str, int i2) {
        Class<?> cls = fragment.getClass();
        int modifiers = cls.getModifiers();
        if (cls.isAnonymousClass() || !Modifier.isPublic(modifiers) || (cls.isMemberClass() && !Modifier.isStatic(modifiers))) {
            throw new IllegalStateException("Fragment " + cls.getCanonicalName() + " must be a public static class to be  properly recreated from instance state.");
        }
        fragment.mFragmentManager = this.mManager;
        if (str != null) {
            if (fragment.mTag == null || str.equals(fragment.mTag)) {
                fragment.mTag = str;
            } else {
                throw new IllegalStateException("Can't change tag of fragment " + fragment + ": was " + fragment.mTag + " now " + str);
            }
        }
        if (i != 0) {
            if (i == -1) {
                throw new IllegalArgumentException("Can't add fragment " + fragment + " with tag " + str + " to container view with no id");
            } else if (fragment.mFragmentId == 0 || fragment.mFragmentId == i) {
                fragment.mFragmentId = i;
                fragment.mContainerId = i;
            } else {
                throw new IllegalStateException("Can't change container ID of fragment " + fragment + ": was " + fragment.mFragmentId + " now " + i);
            }
        }
        addOp(new C0294Op(i2, fragment));
    }

    private static boolean isFragmentPostponed(C0294Op op) {
        Fragment fragment = op.fragment;
        return fragment != null && fragment.mAdded && fragment.mView != null && !fragment.mDetached && !fragment.mHidden && fragment.isPostponed();
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction add(int i, Fragment fragment) {
        doAddOp(i, fragment, null, 1);
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction add(int i, Fragment fragment, @Nullable String str) {
        doAddOp(i, fragment, str, 1);
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction add(Fragment fragment, @Nullable String str) {
        doAddOp(0, fragment, str, 1);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addOp(C0294Op op) {
        this.mOps.add(op);
        op.enterAnim = this.mEnterAnim;
        op.exitAnim = this.mExitAnim;
        op.popEnterAnim = this.mPopEnterAnim;
        op.popExitAnim = this.mPopExitAnim;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction addSharedElement(View view, String str) {
        if (FragmentTransition.supportsTransition()) {
            String transitionName = ViewCompat.getTransitionName(view);
            if (transitionName == null) {
                throw new IllegalArgumentException("Unique transitionNames are required for all sharedElements");
            }
            if (this.mSharedElementSourceNames == null) {
                this.mSharedElementSourceNames = new ArrayList<>();
                this.mSharedElementTargetNames = new ArrayList<>();
            } else if (this.mSharedElementTargetNames.contains(str)) {
                throw new IllegalArgumentException("A shared element with the target name '" + str + "' has already been added to the transaction.");
            } else if (this.mSharedElementSourceNames.contains(transitionName)) {
                throw new IllegalArgumentException("A shared element with the source name '" + transitionName + " has already been added to the transaction.");
            }
            this.mSharedElementSourceNames.add(transitionName);
            this.mSharedElementTargetNames.add(str);
        }
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction addToBackStack(@Nullable String str) {
        if (!this.mAllowAddToBackStack) {
            throw new IllegalStateException("This FragmentTransaction is not allowed to be added to the back stack.");
        }
        this.mAddToBackStack = true;
        this.mName = str;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction attach(Fragment fragment) {
        addOp(new C0294Op(7, fragment));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void bumpBackStackNesting(int i) {
        if (this.mAddToBackStack) {
            if (FragmentManagerImpl.DEBUG) {
                Log.v(TAG, "Bump nesting in " + this + " by " + i);
            }
            int size = this.mOps.size();
            for (int i2 = 0; i2 < size; i2++) {
                C0294Op op = this.mOps.get(i2);
                if (op.fragment != null) {
                    op.fragment.mBackStackNesting += i;
                    if (FragmentManagerImpl.DEBUG) {
                        Log.v(TAG, "Bump nesting of " + op.fragment + " to " + op.fragment.mBackStackNesting);
                    }
                }
            }
        }
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public int commit() {
        return commitInternal(false);
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public int commitAllowingStateLoss() {
        return commitInternal(true);
    }

    int commitInternal(boolean z) {
        if (this.mCommitted) {
            throw new IllegalStateException("commit already called");
        }
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Commit: " + this);
            PrintWriter printWriter = new PrintWriter(new LogWriter(TAG));
            dump("  ", null, printWriter, null);
            printWriter.close();
        }
        this.mCommitted = true;
        if (this.mAddToBackStack) {
            this.mIndex = this.mManager.allocBackStackIndex(this);
        } else {
            this.mIndex = -1;
        }
        this.mManager.enqueueAction(this, z);
        return this.mIndex;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public void commitNow() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, false);
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public void commitNowAllowingStateLoss() {
        disallowAddToBackStack();
        this.mManager.execSingleAction(this, true);
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction detach(Fragment fragment) {
        addOp(new C0294Op(6, fragment));
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction disallowAddToBackStack() {
        if (this.mAddToBackStack) {
            throw new IllegalStateException("This transaction is already being added to the back stack");
        }
        this.mAllowAddToBackStack = false;
        return this;
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        dump(str, printWriter, true);
    }

    public void dump(String str, PrintWriter printWriter, boolean z) {
        String str2;
        if (z) {
            printWriter.print(str);
            printWriter.print("mName=");
            printWriter.print(this.mName);
            printWriter.print(" mIndex=");
            printWriter.print(this.mIndex);
            printWriter.print(" mCommitted=");
            printWriter.println(this.mCommitted);
            if (this.mTransition != 0) {
                printWriter.print(str);
                printWriter.print("mTransition=#");
                printWriter.print(Integer.toHexString(this.mTransition));
                printWriter.print(" mTransitionStyle=#");
                printWriter.println(Integer.toHexString(this.mTransitionStyle));
            }
            if (!(this.mEnterAnim == 0 && this.mExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mEnterAnim));
                printWriter.print(" mExitAnim=#");
                printWriter.println(Integer.toHexString(this.mExitAnim));
            }
            if (!(this.mPopEnterAnim == 0 && this.mPopExitAnim == 0)) {
                printWriter.print(str);
                printWriter.print("mPopEnterAnim=#");
                printWriter.print(Integer.toHexString(this.mPopEnterAnim));
                printWriter.print(" mPopExitAnim=#");
                printWriter.println(Integer.toHexString(this.mPopExitAnim));
            }
            if (!(this.mBreadCrumbTitleRes == 0 && this.mBreadCrumbTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbTitleRes));
                printWriter.print(" mBreadCrumbTitleText=");
                printWriter.println(this.mBreadCrumbTitleText);
            }
            if (!(this.mBreadCrumbShortTitleRes == 0 && this.mBreadCrumbShortTitleText == null)) {
                printWriter.print(str);
                printWriter.print("mBreadCrumbShortTitleRes=#");
                printWriter.print(Integer.toHexString(this.mBreadCrumbShortTitleRes));
                printWriter.print(" mBreadCrumbShortTitleText=");
                printWriter.println(this.mBreadCrumbShortTitleText);
            }
        }
        if (!this.mOps.isEmpty()) {
            printWriter.print(str);
            printWriter.println("Operations:");
            String str3 = str + "    ";
            int size = this.mOps.size();
            for (int i = 0; i < size; i++) {
                C0294Op op = this.mOps.get(i);
                switch (op.cmd) {
                    case 0:
                        str2 = Text.NULL;
                        break;
                    case 1:
                        str2 = "ADD";
                        break;
                    case 2:
                        str2 = "REPLACE";
                        break;
                    case 3:
                        str2 = "REMOVE";
                        break;
                    case 4:
                        str2 = "HIDE";
                        break;
                    case 5:
                        str2 = "SHOW";
                        break;
                    case 6:
                        str2 = "DETACH";
                        break;
                    case 7:
                        str2 = "ATTACH";
                        break;
                    case 8:
                        str2 = "SET_PRIMARY_NAV";
                        break;
                    case 9:
                        str2 = "UNSET_PRIMARY_NAV";
                        break;
                    default:
                        str2 = "cmd=" + op.cmd;
                        break;
                }
                printWriter.print(str);
                printWriter.print("  Op #");
                printWriter.print(i);
                printWriter.print(": ");
                printWriter.print(str2);
                printWriter.print(" ");
                printWriter.println(op.fragment);
                if (z) {
                    if (!(op.enterAnim == 0 && op.exitAnim == 0)) {
                        printWriter.print(str);
                        printWriter.print("enterAnim=#");
                        printWriter.print(Integer.toHexString(op.enterAnim));
                        printWriter.print(" exitAnim=#");
                        printWriter.println(Integer.toHexString(op.exitAnim));
                    }
                    if (op.popEnterAnim != 0 || op.popExitAnim != 0) {
                        printWriter.print(str);
                        printWriter.print("popEnterAnim=#");
                        printWriter.print(Integer.toHexString(op.popEnterAnim));
                        printWriter.print(" popExitAnim=#");
                        printWriter.println(Integer.toHexString(op.popExitAnim));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void executeOps() {
        int size = this.mOps.size();
        for (int i = 0; i < size; i++) {
            C0294Op op = this.mOps.get(i);
            Fragment fragment = op.fragment;
            if (fragment != null) {
                fragment.setNextTransition(this.mTransition, this.mTransitionStyle);
            }
            int i2 = op.cmd;
            if (i2 != 1) {
                switch (i2) {
                    case 3:
                        fragment.setNextAnim(op.exitAnim);
                        this.mManager.removeFragment(fragment);
                        break;
                    case 4:
                        fragment.setNextAnim(op.exitAnim);
                        this.mManager.hideFragment(fragment);
                        break;
                    case 5:
                        fragment.setNextAnim(op.enterAnim);
                        this.mManager.showFragment(fragment);
                        break;
                    case 6:
                        fragment.setNextAnim(op.exitAnim);
                        this.mManager.detachFragment(fragment);
                        break;
                    case 7:
                        fragment.setNextAnim(op.enterAnim);
                        this.mManager.attachFragment(fragment);
                        break;
                    case 8:
                        this.mManager.setPrimaryNavigationFragment(fragment);
                        break;
                    case 9:
                        this.mManager.setPrimaryNavigationFragment(null);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
            } else {
                fragment.setNextAnim(op.enterAnim);
                this.mManager.addFragment(fragment, false);
            }
            if (!(this.mReorderingAllowed || op.cmd == 1 || fragment == null)) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (!this.mReorderingAllowed) {
            this.mManager.moveToState(this.mManager.mCurState, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void executePopOps(boolean z) {
        for (int size = this.mOps.size() - 1; size >= 0; size--) {
            C0294Op op = this.mOps.get(size);
            Fragment fragment = op.fragment;
            if (fragment != null) {
                fragment.setNextTransition(FragmentManagerImpl.reverseTransit(this.mTransition), this.mTransitionStyle);
            }
            int i = op.cmd;
            if (i != 1) {
                switch (i) {
                    case 3:
                        fragment.setNextAnim(op.popEnterAnim);
                        this.mManager.addFragment(fragment, false);
                        break;
                    case 4:
                        fragment.setNextAnim(op.popEnterAnim);
                        this.mManager.showFragment(fragment);
                        break;
                    case 5:
                        fragment.setNextAnim(op.popExitAnim);
                        this.mManager.hideFragment(fragment);
                        break;
                    case 6:
                        fragment.setNextAnim(op.popEnterAnim);
                        this.mManager.attachFragment(fragment);
                        break;
                    case 7:
                        fragment.setNextAnim(op.popExitAnim);
                        this.mManager.detachFragment(fragment);
                        break;
                    case 8:
                        this.mManager.setPrimaryNavigationFragment(null);
                        break;
                    case 9:
                        this.mManager.setPrimaryNavigationFragment(fragment);
                        break;
                    default:
                        throw new IllegalArgumentException("Unknown cmd: " + op.cmd);
                }
            } else {
                fragment.setNextAnim(op.popExitAnim);
                this.mManager.removeFragment(fragment);
            }
            if (!(this.mReorderingAllowed || op.cmd == 3 || fragment == null)) {
                this.mManager.moveFragmentToExpectedState(fragment);
            }
        }
        if (!this.mReorderingAllowed && z) {
            this.mManager.moveToState(this.mManager.mCurState, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment expandOps(ArrayList<Fragment> arrayList, Fragment fragment) {
        int i = 0;
        while (i < this.mOps.size()) {
            C0294Op op = this.mOps.get(i);
            switch (op.cmd) {
                case 1:
                case 7:
                    arrayList.add(op.fragment);
                    i = i;
                    fragment = fragment;
                    break;
                case 2:
                    Fragment fragment2 = op.fragment;
                    int i2 = fragment2.mContainerId;
                    fragment = fragment;
                    boolean z = false;
                    for (int size = arrayList.size() - 1; size >= 0; size--) {
                        Fragment fragment3 = arrayList.get(size);
                        i = i;
                        fragment = fragment;
                        z = z;
                        if (fragment3.mContainerId == i2) {
                            if (fragment3 == fragment2) {
                                z = true;
                                i = i;
                                fragment = fragment;
                            } else {
                                int i3 = i;
                                fragment = fragment;
                                if (fragment3 == fragment) {
                                    this.mOps.add(i, new C0294Op(9, fragment3));
                                    i3 = i + 1;
                                    fragment = null;
                                }
                                C0294Op op2 = new C0294Op(3, fragment3);
                                op2.enterAnim = op.enterAnim;
                                op2.popEnterAnim = op.popEnterAnim;
                                op2.exitAnim = op.exitAnim;
                                op2.popExitAnim = op.popExitAnim;
                                this.mOps.add(i3, op2);
                                arrayList.remove(fragment3);
                                i = i3 + 1;
                                z = z;
                            }
                        }
                    }
                    if (z) {
                        this.mOps.remove(i);
                        i--;
                    } else {
                        op.cmd = 1;
                        arrayList.add(fragment2);
                    }
                    break;
                case 3:
                case 6:
                    arrayList.remove(op.fragment);
                    fragment = fragment;
                    i = i;
                    if (op.fragment == fragment) {
                        this.mOps.add(i, new C0294Op(9, op.fragment));
                        i++;
                        fragment = null;
                        break;
                    } else {
                        break;
                    }
                case 4:
                case 5:
                default:
                    fragment = fragment;
                    i = i;
                    break;
                case 8:
                    this.mOps.add(i, new C0294Op(9, fragment));
                    i++;
                    fragment = op.fragment;
                    break;
            }
            i++;
        }
        return fragment;
    }

    @Override // android.support.p001v4.app.FragmentManagerImpl.OpGenerator
    public boolean generateOps(ArrayList<BackStackRecord> arrayList, ArrayList<Boolean> arrayList2) {
        if (FragmentManagerImpl.DEBUG) {
            Log.v(TAG, "Run: " + this);
        }
        arrayList.add(this);
        arrayList2.add(false);
        if (!this.mAddToBackStack) {
            return true;
        }
        this.mManager.addBackStackState(this);
        return true;
    }

    @Override // android.support.p001v4.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbShortTitle() {
        return this.mBreadCrumbShortTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbShortTitleRes) : this.mBreadCrumbShortTitleText;
    }

    @Override // android.support.p001v4.app.FragmentManager.BackStackEntry
    public int getBreadCrumbShortTitleRes() {
        return this.mBreadCrumbShortTitleRes;
    }

    @Override // android.support.p001v4.app.FragmentManager.BackStackEntry
    @Nullable
    public CharSequence getBreadCrumbTitle() {
        return this.mBreadCrumbTitleRes != 0 ? this.mManager.mHost.getContext().getText(this.mBreadCrumbTitleRes) : this.mBreadCrumbTitleText;
    }

    @Override // android.support.p001v4.app.FragmentManager.BackStackEntry
    public int getBreadCrumbTitleRes() {
        return this.mBreadCrumbTitleRes;
    }

    @Override // android.support.p001v4.app.FragmentManager.BackStackEntry
    public int getId() {
        return this.mIndex;
    }

    @Override // android.support.p001v4.app.FragmentManager.BackStackEntry
    @Nullable
    public String getName() {
        return this.mName;
    }

    public int getTransition() {
        return this.mTransition;
    }

    public int getTransitionStyle() {
        return this.mTransitionStyle;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction hide(Fragment fragment) {
        addOp(new C0294Op(4, fragment));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean interactsWith(int i) {
        int size = this.mOps.size();
        for (int i2 = 0; i2 < size; i2++) {
            C0294Op op = this.mOps.get(i2);
            int i3 = op.fragment != null ? op.fragment.mContainerId : 0;
            if (i3 != 0 && i3 == i) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean interactsWith(ArrayList<BackStackRecord> arrayList, int i, int i2) {
        if (i2 == i) {
            return false;
        }
        int size = this.mOps.size();
        int i3 = -1;
        for (int i4 = 0; i4 < size; i4++) {
            C0294Op op = this.mOps.get(i4);
            int i5 = op.fragment != null ? op.fragment.mContainerId : 0;
            i3 = i3;
            if (i5 != 0) {
                i3 = i3;
                if (i5 != i3) {
                    for (int i6 = i; i6 < i2; i6++) {
                        BackStackRecord backStackRecord = arrayList.get(i6);
                        int size2 = backStackRecord.mOps.size();
                        for (int i7 = 0; i7 < size2; i7++) {
                            C0294Op op2 = backStackRecord.mOps.get(i7);
                            if ((op2.fragment != null ? op2.fragment.mContainerId : 0) == i5) {
                                return true;
                            }
                        }
                    }
                    i3 = i5;
                } else {
                    continue;
                }
            }
        }
        return false;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public boolean isAddToBackStackAllowed() {
        return this.mAllowAddToBackStack;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public boolean isEmpty() {
        return this.mOps.isEmpty();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isPostponed() {
        for (int i = 0; i < this.mOps.size(); i++) {
            if (isFragmentPostponed(this.mOps.get(i))) {
                return true;
            }
        }
        return false;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction remove(Fragment fragment) {
        addOp(new C0294Op(3, fragment));
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction replace(int i, Fragment fragment) {
        return replace(i, fragment, null);
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction replace(int i, Fragment fragment, @Nullable String str) {
        if (i == 0) {
            throw new IllegalArgumentException("Must use non-zero containerViewId");
        }
        doAddOp(i, fragment, str, 2);
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction runOnCommit(Runnable runnable) {
        if (runnable == null) {
            throw new IllegalArgumentException("runnable cannot be null");
        }
        disallowAddToBackStack();
        if (this.mCommitRunnables == null) {
            this.mCommitRunnables = new ArrayList<>();
        }
        this.mCommitRunnables.add(runnable);
        return this;
    }

    public void runOnCommitRunnables() {
        if (this.mCommitRunnables != null) {
            int size = this.mCommitRunnables.size();
            for (int i = 0; i < size; i++) {
                this.mCommitRunnables.get(i).run();
            }
            this.mCommitRunnables = null;
        }
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setAllowOptimization(boolean z) {
        return setReorderingAllowed(z);
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(int i) {
        this.mBreadCrumbShortTitleRes = i;
        this.mBreadCrumbShortTitleText = null;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbShortTitle(@Nullable CharSequence charSequence) {
        this.mBreadCrumbShortTitleRes = 0;
        this.mBreadCrumbShortTitleText = charSequence;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(int i) {
        this.mBreadCrumbTitleRes = i;
        this.mBreadCrumbTitleText = null;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setBreadCrumbTitle(@Nullable CharSequence charSequence) {
        this.mBreadCrumbTitleRes = 0;
        this.mBreadCrumbTitleText = charSequence;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int i, int i2) {
        return setCustomAnimations(i, i2, 0, 0);
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setCustomAnimations(int i, int i2, int i3, int i4) {
        this.mEnterAnim = i;
        this.mExitAnim = i2;
        this.mPopEnterAnim = i3;
        this.mPopExitAnim = i4;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setOnStartPostponedListener(Fragment.OnStartEnterTransitionListener onStartEnterTransitionListener) {
        for (int i = 0; i < this.mOps.size(); i++) {
            C0294Op op = this.mOps.get(i);
            if (isFragmentPostponed(op)) {
                op.fragment.setOnStartEnterTransitionListener(onStartEnterTransitionListener);
            }
        }
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setPrimaryNavigationFragment(@Nullable Fragment fragment) {
        addOp(new C0294Op(8, fragment));
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setReorderingAllowed(boolean z) {
        this.mReorderingAllowed = z;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setTransition(int i) {
        this.mTransition = i;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction setTransitionStyle(int i) {
        this.mTransitionStyle = i;
        return this;
    }

    @Override // android.support.p001v4.app.FragmentTransaction
    public FragmentTransaction show(Fragment fragment) {
        addOp(new C0294Op(5, fragment));
        return this;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("BackStackEntry{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        if (this.mIndex >= 0) {
            sb.append(" #");
            sb.append(this.mIndex);
        }
        if (this.mName != null) {
            sb.append(" ");
            sb.append(this.mName);
        }
        sb.append("}");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Fragment trackAddedFragmentsInPop(ArrayList<Fragment> arrayList, Fragment fragment) {
        for (int i = 0; i < this.mOps.size(); i++) {
            C0294Op op = this.mOps.get(i);
            int i2 = op.cmd;
            if (i2 != 1) {
                if (i2 != 3) {
                    switch (i2) {
                        case 8:
                            fragment = null;
                            break;
                        case 9:
                            fragment = op.fragment;
                            break;
                    }
                }
                arrayList.add(op.fragment);
            }
            arrayList.remove(op.fragment);
        }
        return fragment;
    }
}
