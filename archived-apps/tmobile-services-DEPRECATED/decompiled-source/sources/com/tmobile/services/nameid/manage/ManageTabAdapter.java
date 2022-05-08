package com.tmobile.services.nameid.manage;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentPagerAdapter;
import com.tmobile.services.nameid.manage.tabs.ManageTabFragment;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\r\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0016\u001a\u00020\u0015¢\u0006\u0004\b\u0017\u0010\u0018J\u0015\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\b\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\f\u0010\rJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\n\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u000f\u0010\u0010R&\u0010\u0013\u001a\u0012\u0012\u0004\u0012\u00020\u00020\u0011j\b\u0012\u0004\u0012\u00020\u0002`\u00128\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014¨\u0006\u001a"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManageTabAdapter;", "Landroidx/fragment/app/FragmentPagerAdapter;", "Lcom/tmobile/services/nameid/manage/ManageTabAdapter$ManageTabInfo;", "info", "", "addManageFragment", "(Lcom/tmobile/services/nameid/manage/ManageTabAdapter$ManageTabInfo;)V", "", "getCount", "()I", "position", "Landroidx/fragment/app/Fragment;", "getItem", "(I)Landroidx/fragment/app/Fragment;", "", "getPageTitle", "(I)Ljava/lang/CharSequence;", "Ljava/util/ArrayList;", "Lkotlin/collections/ArrayList;", "fragmentInfo", "Ljava/util/ArrayList;", "Landroidx/fragment/app/FragmentManager;", "fm", "<init>", "(Landroidx/fragment/app/FragmentManager;)V", "ManageTabInfo", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageTabAdapter.class */
public final class ManageTabAdapter extends FragmentPagerAdapter {

    /* renamed from: a */
    private final ArrayList<ManageTabInfo> f13542a = new ArrayList<>();

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\r\b\u0086\b\u0018��B\u001f\u0012\u0006\u0010\n\u001a\u00020\u0001\u0012\u0006\u0010\u000b\u001a\u00020\u0004\u0012\u0006\u0010\f\u001a\u00020\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0002\u001a\u00020\u0001HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0010\u0010\u0005\u001a\u00020\u0004HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u0010\u0010\b\u001a\u00020\u0007HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ.\u0010\r\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00012\b\b\u0002\u0010\u000b\u001a\u00020\u00042\b\b\u0002\u0010\f\u001a\u00020\u0007HÆ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u000fHÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0014\u001a\u00020\u0004HÖ\u0001¢\u0006\u0004\b\u0014\u0010\u0006J\u0010\u0010\u0015\u001a\u00020\u0007HÖ\u0001¢\u0006\u0004\b\u0015\u0010\tR\u0019\u0010\n\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\u0003R\u0019\u0010\u000b\u001a\u00020\u00048\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u0019\u0010\u0006R\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001a\u001a\u0004\b\u001b\u0010\t¨\u0006\u001e"}, d2 = {"Lcom/tmobile/services/nameid/manage/ManageTabAdapter$ManageTabInfo;", "Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;", "component1", "()Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;", "", "component2", "()I", "", "component3", "()Ljava/lang/String;", "fragment", "position", "title", "copy", "(Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;ILjava/lang/String;)Lcom/tmobile/services/nameid/manage/ManageTabAdapter$ManageTabInfo;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "hashCode", "toString", "Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;", "getFragment", "I", "getPosition", "Ljava/lang/String;", "getTitle", "<init>", "(Lcom/tmobile/services/nameid/manage/tabs/ManageTabFragment;ILjava/lang/String;)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/manage/ManageTabAdapter$ManageTabInfo.class */
    public static final class ManageTabInfo {
        @NotNull

        /* renamed from: a */
        private final ManageTabFragment f13543a;

        /* renamed from: b */
        private final int f13544b;
        @NotNull

        /* renamed from: c */
        private final String f13545c;

        public ManageTabInfo(@NotNull ManageTabFragment fragment, int i, @NotNull String title) {
            Intrinsics.m1830e(fragment, "fragment");
            Intrinsics.m1830e(title, "title");
            this.f13543a = fragment;
            this.f13544b = i;
            this.f13545c = title;
        }

        @NotNull
        /* renamed from: a */
        public final ManageTabFragment m6519a() {
            return this.f13543a;
        }

        /* renamed from: b */
        public final int m6518b() {
            return this.f13544b;
        }

        @NotNull
        /* renamed from: c */
        public final String m6517c() {
            return this.f13545c;
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ManageTabInfo)) {
                return false;
            }
            ManageTabInfo manageTabInfo = (ManageTabInfo) obj;
            return Intrinsics.m1834a(this.f13543a, manageTabInfo.f13543a) && this.f13544b == manageTabInfo.f13544b && Intrinsics.m1834a(this.f13545c, manageTabInfo.f13545c);
        }

        public int hashCode() {
            ManageTabFragment manageTabFragment = this.f13543a;
            int i = 0;
            int hashCode = manageTabFragment != null ? manageTabFragment.hashCode() : 0;
            int i2 = this.f13544b;
            String str = this.f13545c;
            if (str != null) {
                i = str.hashCode();
            }
            return (((hashCode * 31) + i2) * 31) + i;
        }

        @NotNull
        public String toString() {
            return "ManageTabInfo(fragment=" + this.f13543a + ", position=" + this.f13544b + ", title=" + this.f13545c + ")";
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ManageTabAdapter(@NotNull FragmentManager fm) {
        super(fm);
        Intrinsics.m1830e(fm, "fm");
    }

    /* renamed from: a */
    public final void m6520a(@NotNull ManageTabInfo info) {
        Intrinsics.m1830e(info, "info");
        this.f13542a.add(info);
        notifyDataSetChanged();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f13542a.size();
    }

    @Override // androidx.fragment.app.FragmentPagerAdapter
    @NotNull
    public Fragment getItem(int i) {
        return this.f13542a.get(i).m6519a();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    @Nullable
    public CharSequence getPageTitle(int i) {
        Iterator<ManageTabInfo> it = this.f13542a.iterator();
        while (it.hasNext()) {
            ManageTabInfo next = it.next();
            if (next.m6518b() == i) {
                return next.m6517c();
            }
        }
        return "";
    }
}
