package gogolook.callgogolook2.gson;

import java.util.List;
import kotlin.Metadata;
import p081h.p203i.p384e.C10099e;
import p081h.p203i.p384e.p385v.AbstractC10120c;
import p459j.p460a.p568u.C13640c;
import p459j.p460a.p582w0.C14080m2;
import p626l.p632u.C15021m;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\b\u0018�� \u00112\u00020\u0001:\u0003\u0011\u0012\u0013B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0005J\u0011\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0003J\u001b\u0010\t\u001a\u00020��2\u0010\b\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\r\u001a\u00020\u000eHÖ\u0001J\t\u0010\u000f\u001a\u00020\u0010HÖ\u0001R\u001e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0014"}, m815d2 = {"Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList;", "", "itemGroups", "", "Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList$DrawerItemGroup;", "(Ljava/util/List;)V", "getItemGroups", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "hashCode", "", "toString", "", "Companion", "DrawerItem", "DrawerItemGroup", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/MainDrawerRemoteItemList.class */
public final class MainDrawerRemoteItemList {
    public static final Companion Companion = new Companion(null);
    @AbstractC10120c("drawer_items")
    public final List<DrawerItemGroup> itemGroups;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0007¨\u0006\u0005"}, m815d2 = {"Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList$Companion;", "", "()V", "generateMainRemoteDrawerItemList", "Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/MainDrawerRemoteItemList$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final MainDrawerRemoteItemList m28403a() {
            MainDrawerRemoteItemList mainDrawerRemoteItemList;
            try {
                String d = C13640c.m3745d().m3744d("main_drawer_item_list");
                mainDrawerRemoteItemList = null;
                if (d != null) {
                    mainDrawerRemoteItemList = (MainDrawerRemoteItemList) new C10099e().m13388a().m30982a(d, (Class<Object>) MainDrawerRemoteItemList.class);
                }
            } catch (Exception e) {
                C14080m2.m2612a((Throwable) e);
                mainDrawerRemoteItemList = null;
            }
            if (mainDrawerRemoteItemList == null) {
                mainDrawerRemoteItemList = new MainDrawerRemoteItemList(C15021m.m565a());
            }
            return mainDrawerRemoteItemList;
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\f\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B)\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u0006J\u000b\u0010\u000b\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\r\u001a\u0004\u0018\u00010\u0003HÆ\u0003J-\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u0018\u0010\u0005\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0018\u0010\u0004\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\t\u0010\bR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\b¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList$DrawerItem;", "", "name", "", "iconUrl", "clickUrl", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "getClickUrl", "()Ljava/lang/String;", "getIconUrl", "getName", "component1", "component2", "component3", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/MainDrawerRemoteItemList$DrawerItem.class */
    public static final class DrawerItem {
        @AbstractC10120c("click_url")
        public final String clickUrl;
        @AbstractC10120c("icon_url")
        public final String iconUrl;
        @AbstractC10120c("name")
        public final String name;

        public DrawerItem() {
            this(null, null, null, 7, null);
        }

        public DrawerItem(String str, String str2, String str3) {
            this.name = str;
            this.iconUrl = str2;
            this.clickUrl = str3;
        }

        public /* synthetic */ DrawerItem(String str, String str2, String str3, int i, C15145g gVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : str2, (i & 4) != 0 ? null : str3);
        }

        /* renamed from: a */
        public final String m28402a() {
            return this.clickUrl;
        }

        /* renamed from: b */
        public final String m28401b() {
            return this.iconUrl;
        }

        /* renamed from: c */
        public final String m28400c() {
            return this.name;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawerItem)) {
                return false;
            }
            DrawerItem drawerItem = (DrawerItem) obj;
            return C15149k.m384a((Object) this.name, (Object) drawerItem.name) && C15149k.m384a((Object) this.iconUrl, (Object) drawerItem.iconUrl) && C15149k.m384a((Object) this.clickUrl, (Object) drawerItem.clickUrl);
        }

        public int hashCode() {
            String str = this.name;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.iconUrl;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.clickUrl;
            if (str3 != null) {
                i = str3.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            return "DrawerItem(name=" + this.name + ", iconUrl=" + this.iconUrl + ", clickUrl=" + this.clickUrl + ")";
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001B#\u0012\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005¢\u0006\u0002\u0010\u0007J\u000b\u0010\f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u0011\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0003J'\u0010\u000e\u001a\u00020��2\n\b\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0010\b\u0002\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005HÆ\u0001J\u0013\u0010\u000f\u001a\u00020\u00102\b\u0010\u0011\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0012\u001a\u00020\u0013HÖ\u0001J\t\u0010\u0014\u001a\u00020\u0003HÖ\u0001R\u001e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0018\u0010\u0002\u001a\u0004\u0018\u00010\u00038\u0006X\u0087\u0004¢\u0006\b\n��\u001a\u0004\b\n\u0010\u000b¨\u0006\u0015"}, m815d2 = {"Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList$DrawerItemGroup;", "", "title", "", "items", "", "Lgogolook/callgogolook2/gson/MainDrawerRemoteItemList$DrawerItem;", "(Ljava/lang/String;Ljava/util/List;)V", "getItems", "()Ljava/util/List;", "getTitle", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/gson/MainDrawerRemoteItemList$DrawerItemGroup.class */
    public static final class DrawerItemGroup {
        @AbstractC10120c("items")
        public final List<DrawerItem> items;
        @AbstractC10120c("title")
        public final String title;

        public DrawerItemGroup() {
            this(null, null, 3, null);
        }

        public DrawerItemGroup(String str, List<DrawerItem> list) {
            this.title = str;
            this.items = list;
        }

        public /* synthetic */ DrawerItemGroup(String str, List list, int i, C15145g gVar) {
            this((i & 1) != 0 ? null : str, (i & 2) != 0 ? null : list);
        }

        /* renamed from: a */
        public final List<DrawerItem> m28399a() {
            return this.items;
        }

        /* renamed from: b */
        public final String m28398b() {
            return this.title;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawerItemGroup)) {
                return false;
            }
            DrawerItemGroup drawerItemGroup = (DrawerItemGroup) obj;
            return C15149k.m384a((Object) this.title, (Object) drawerItemGroup.title) && C15149k.m384a(this.items, drawerItemGroup.items);
        }

        public int hashCode() {
            String str = this.title;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            List<DrawerItem> list = this.items;
            if (list != null) {
                i = list.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            return "DrawerItemGroup(title=" + this.title + ", items=" + this.items + ")";
        }
    }

    public MainDrawerRemoteItemList(List<DrawerItemGroup> list) {
        this.itemGroups = list;
    }

    /* renamed from: a */
    public final List<DrawerItemGroup> m28404a() {
        return this.itemGroups;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof MainDrawerRemoteItemList) && C15149k.m384a(this.itemGroups, ((MainDrawerRemoteItemList) obj).itemGroups);
        }
        return true;
    }

    public int hashCode() {
        List<DrawerItemGroup> list = this.itemGroups;
        return list != null ? list.hashCode() : 0;
    }

    public String toString() {
        return "MainDrawerRemoteItemList(itemGroups=" + this.itemGroups + ")";
    }
}
