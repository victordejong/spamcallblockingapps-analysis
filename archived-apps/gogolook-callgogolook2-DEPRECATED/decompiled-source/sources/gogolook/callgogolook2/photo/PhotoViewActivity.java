package gogolook.callgogolook2.photo;

import android.graphics.Color;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.FragmentStatePagerAdapter;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;
import com.flurry.sdk.C3104fm;
import gogolook.callgogolook2.R$drawable;
import gogolook.callgogolook2.R$id;
import gogolook.callgogolook2.R$layout;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import gogolook.callgogolook2.view.RecycleSafeImageView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;
import p459j.p460a.p536l0.C13002b;
import p459j.p460a.p582w0.C14217x3;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010 \n\u0002\b\u000b\b&\u0018�� )2\u00020\u0001:\u0007)*+,-./B\u0005¢\u0006\u0002\u0010\u0002J\u0012\u0010\u0017\u001a\u00020\u00182\b\u0010\u0019\u001a\u0004\u0018\u00010\u001aH\u0014J\b\u0010\u001b\u001a\u00020\u0018H\u0014J\u0010\u0010\u001c\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001aH\u0014J\u000e\u0010\u001e\u001a\u00020\u00182\u0006\u0010\u001f\u001a\u00020\u0004J\u0018\u0010 \u001a\u00020\u00182\u0006\u0010!\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u0004H\u0002J\u001e\u0010#\u001a\u00020\u00182\u000e\u0010$\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010%2\u0006\u0010&\u001a\u00020\u0004J\u0010\u0010'\u001a\u00020\u00182\u0006\u0010(\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n��R\"\u0010\u0011\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\u0012X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016¨\u00060"}, m815d2 = {"Lgogolook/callgogolook2/photo/PhotoViewActivity;", "Landroidx/appcompat/app/AppCompatActivity;", "()V", "currentPhotoIndex", "", "getCurrentPhotoIndex", "()I", "setCurrentPhotoIndex", "(I)V", "currentPhotoUri", "", "getCurrentPhotoUri", "()Ljava/lang/String;", "setCurrentPhotoUri", "(Ljava/lang/String;)V", "mImgAdapter", "Lgogolook/callgogolook2/photo/PhotoViewActivity$ImageAdapter;", "photoUrls", "Ljava/util/ArrayList;", "getPhotoUrls", "()Ljava/util/ArrayList;", "setPhotoUrls", "(Ljava/util/ArrayList;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "onResume", "onSaveInstanceState", "outState", "setCurrentItem", "position", "setSelectedImage", "selectId", "total", "setupImageByStringList", "imageUrlList", "", "selectedId", "updateActionBar", "title", "Companion", "ImageAdapter", "ImageItemDecoration", "ImageViewHolder", "MyPhotoUriAdapter", "MyPhotoUrlAdapter", "OnImageSelectListener", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity.class */
public abstract class PhotoViewActivity extends AppCompatActivity {

    /* renamed from: a */
    public ArrayList<String> f12461a;

    /* renamed from: b */
    public String f12462b;

    /* renamed from: c */
    public int f12463c;

    /* renamed from: d */
    public C5038b f12464d;

    /* renamed from: e */
    public HashMap f12465e;

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$a */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$a.class */
    public static final class C5037a {
        public C5037a() {
        }

        public /* synthetic */ C5037a(C15145g gVar) {
            this();
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n��\b\u0002\u0018��2\b\u0012\u0004\u0012\u00020\u00020\u0001B'\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u000e\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006\u0012\b\u0010\b\u001a\u0004\u0018\u00010\t¢\u0006\u0002\u0010\nJ\b\u0010\f\u001a\u00020\u0004H\u0016J\u0018\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u0004H\u0016J\u0018\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0004H\u0016J\u0014\u0010\u0015\u001a\u00020\u000e2\f\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006J\u000e\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0010\u001a\u00020\u0004R\u0016\u0010\u0005\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\b\u001a\u0004\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0019"}, m815d2 = {"Lgogolook/callgogolook2/photo/PhotoViewActivity$ImageAdapter;", "Landroidx/recyclerview/widget/RecyclerView$Adapter;", "Lgogolook/callgogolook2/photo/PhotoViewActivity$ImageViewHolder;", "firstSelected", "", "photoUrlList", "", "", "selectedListener", "Lgogolook/callgogolook2/photo/PhotoViewActivity$OnImageSelectListener;", "(ILjava/util/List;Lgogolook/callgogolook2/photo/PhotoViewActivity$OnImageSelectListener;)V", "selectedId", "getItemCount", "onBindViewHolder", "", "holder", "position", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "setPhotoUrlList", "mPhotoUrlList", "setSelectedImage", "", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$b */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$b.class */
    public static final class C5038b extends RecyclerView.Adapter<C5042d> {

        /* renamed from: a */
        public int f12466a;

        /* renamed from: b */
        public List<String> f12467b;

        /* renamed from: c */
        public final AbstractC5045g f12468c;

        /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$b$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$b$a.class */
        public static final class View$OnClickListenerC5039a implements View.OnClickListener {

            /* renamed from: a */
            public final /* synthetic */ String f12469a;

            /* renamed from: b */
            public final /* synthetic */ C5038b f12470b;

            /* renamed from: c */
            public final /* synthetic */ int f12471c;

            public View$OnClickListenerC5039a(String str, C5038b bVar, int i, C5042d dVar) {
                this.f12469a = str;
                this.f12470b = bVar;
                this.f12471c = i;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC5045g gVar;
                if (this.f12470b.m26441a(this.f12471c) && (gVar = this.f12470b.f12468c) != null) {
                    gVar.mo26438a(this.f12471c, this.f12469a);
                }
            }
        }

        public C5038b(int i, List<String> list, AbstractC5045g gVar) {
            this.f12467b = list;
            this.f12468c = gVar;
            this.f12466a = i;
        }

        /* renamed from: a */
        public void onBindViewHolder(C5042d dVar, int i) {
            C15149k.m377b(dVar, "holder");
            List<String> list = this.f12467b;
            if (list != null) {
                String str = list.get(i);
                View view = dVar.itemView;
                C15149k.m383a((Object) view, "holder.itemView");
                RecycleSafeImageView recycleSafeImageView = (RecycleSafeImageView) view.findViewById(R$id.rsiv_image);
                if (recycleSafeImageView != null) {
                    recycleSafeImageView.setOnClickListener(new View$OnClickListenerC5039a(str, this, i, dVar));
                }
                if (!TextUtils.isEmpty(str)) {
                    View view2 = dVar.itemView;
                    C15149k.m383a((Object) view2, "holder.itemView");
                    RecycleSafeImageView recycleSafeImageView2 = (RecycleSafeImageView) view2.findViewById(R$id.rsiv_image);
                    if (recycleSafeImageView2 != null) {
                        recycleSafeImageView2.setImageURI(Uri.parse(str));
                    }
                }
                if (this.f12466a == i) {
                    View view3 = dVar.itemView;
                    C15149k.m383a((Object) view3, "holder.itemView");
                    View findViewById = view3.findViewById(R$id.v_image_mask);
                    if (findViewById != null) {
                        findViewById.setBackgroundResource(R$drawable.stroke_image_selected);
                        return;
                    }
                    return;
                }
                View view4 = dVar.itemView;
                C15149k.m383a((Object) view4, "holder.itemView");
                View findViewById2 = view4.findViewById(R$id.v_image_mask);
                if (findViewById2 != null) {
                    findViewById2.setBackgroundColor(Color.parseColor("#80000000"));
                }
            }
        }

        /* renamed from: a */
        public final boolean m26441a(int i) {
            if (this.f12466a == i || i < 0) {
                return false;
            }
            List<String> list = this.f12467b;
            if (i >= (list != null ? list.size() : 0)) {
                return false;
            }
            int i2 = this.f12466a;
            this.f12466a = i;
            notifyItemChanged(this.f12466a);
            this.f12466a = i;
            notifyItemChanged(i);
            notifyItemChanged(i2);
            return true;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<String> list = this.f12467b;
            return list != null ? list.size() : 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public C5042d onCreateViewHolder(ViewGroup viewGroup, int i) {
            C15149k.m377b(viewGroup, "parent");
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(R$layout.view_item_image_viewer, viewGroup, false);
            C15149k.m383a((Object) inflate, "view");
            return new C5042d(inflate);
        }
    }

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0002\u0018�� \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J(\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u000eH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0010"}, m815d2 = {"Lgogolook/callgogolook2/photo/PhotoViewActivity$ImageItemDecoration;", "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;", "()V", "mInnerDividerSize", "", "getItemOffsets", "", "outRect", "Landroid/graphics/Rect;", "view", "Landroid/view/View;", "parent", "Landroidx/recyclerview/widget/RecyclerView;", IapProductRealmObject.STATE, "Landroidx/recyclerview/widget/RecyclerView$State;", "Companion", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$c */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$c.class */
    public static final class C5040c extends RecyclerView.ItemDecoration {

        /* renamed from: a */
        public final int f12472a = C14217x3.m2201a(8);

        /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$c$a */
        /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$c$a.class */
        public static final class C5041a {
            public C5041a() {
            }

            public /* synthetic */ C5041a(C15145g gVar) {
                this();
            }
        }

        static {
            new C5041a(null);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
            C15149k.m377b(rect, "outRect");
            C15149k.m377b(view, "view");
            C15149k.m377b(recyclerView, "parent");
            C15149k.m377b(state, IapProductRealmObject.STATE);
            super.getItemOffsets(rect, view, recyclerView, state);
            RecyclerView.LayoutManager layoutManager = recyclerView.getLayoutManager();
            if (layoutManager instanceof LinearLayoutManager) {
                int orientation = ((LinearLayoutManager) layoutManager).getOrientation();
                if (orientation == 0) {
                    rect.set(0, 0, this.f12472a, 0);
                } else if (orientation == 1) {
                    rect.set(0, 0, 0, this.f12472a);
                }
            }
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$d */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$d.class */
    public static final class C5042d extends RecyclerView.ViewHolder {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5042d(View view) {
            super(view);
            C15149k.m377b(view, "itemView");
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$e */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$e.class */
    public final class C5043e extends FragmentStatePagerAdapter {

        /* renamed from: a */
        public final ArrayList<Uri> f12473a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5043e(PhotoViewActivity photoViewActivity, FragmentManager fragmentManager, ArrayList<Uri> arrayList) {
            super(fragmentManager);
            C15149k.m377b(fragmentManager, C3104fm.f5016a);
            this.f12473a = arrayList;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            ArrayList<Uri> arrayList = this.f12473a;
            return arrayList != null ? arrayList.size() : 0;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            ArrayList<Uri> arrayList = this.f12473a;
            Fragment a = C13002b.m4827a((arrayList == null || !(arrayList.isEmpty() ^ true) || i >= this.f12473a.size()) ? null : this.f12473a.get(i), true, -16777216);
            C15149k.m383a((Object) a, "PhotoDisplayFragment.new…e null, true, -0x1000000)");
            return a;
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$f */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$f.class */
    public final class C5044f extends FragmentStatePagerAdapter {

        /* renamed from: a */
        public final List<String> f12474a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5044f(PhotoViewActivity photoViewActivity, FragmentManager fragmentManager, List<String> list) {
            super(fragmentManager);
            C15149k.m377b(fragmentManager, C3104fm.f5016a);
            this.f12474a = list;
        }

        @Override // androidx.viewpager.widget.PagerAdapter
        public int getCount() {
            List<String> list = this.f12474a;
            return list != null ? list.size() : 0;
        }

        @Override // androidx.fragment.app.FragmentStatePagerAdapter
        public Fragment getItem(int i) {
            List<String> list = this.f12474a;
            Fragment a = C13002b.m4825a((list == null || !(list.isEmpty() ^ true) || i >= this.f12474a.size()) ? null : this.f12474a.get(i), true, -16777216);
            C15149k.m383a((Object) a, "PhotoDisplayFragment.new…e null, true, -0x1000000)");
            return a;
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$g */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$g.class */
    public interface AbstractC5045g {
        /* renamed from: a */
        void mo26438a(int i, String str);
    }

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$h */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$h.class */
    public static final class C5046h implements ViewPager.OnPageChangeListener {
        public C5046h() {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrollStateChanged(int i) {
            if (i == 0) {
                ViewPager viewPager = (ViewPager) PhotoViewActivity.this.mo26423e(R$id.vp_container);
                if (viewPager != null) {
                    PhotoViewActivity photoViewActivity = PhotoViewActivity.this;
                    int currentItem = viewPager.getCurrentItem();
                    PagerAdapter adapter = viewPager.getAdapter();
                    if (adapter != null) {
                        C15149k.m383a((Object) adapter, "adapter!!");
                        photoViewActivity.m26449a(currentItem, adapter.getCount());
                    } else {
                        C15149k.m378b();
                        throw null;
                    }
                }
                C5038b bVar = PhotoViewActivity.this.f12464d;
                if (bVar != null) {
                    bVar.m26441a(PhotoViewActivity.this.m26452D());
                }
            }
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageScrolled(int i, float f, int i2) {
        }

        @Override // androidx.viewpager.widget.ViewPager.OnPageChangeListener
        public void onPageSelected(int i) {
            PhotoViewActivity.this.m26442g(i);
        }
    }

    /* renamed from: gogolook.callgogolook2.photo.PhotoViewActivity$i */
    /* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/photo/PhotoViewActivity$i.class */
    public static final class C5047i implements AbstractC5045g {
        public C5047i() {
        }

        @Override // gogolook.callgogolook2.photo.PhotoViewActivity.AbstractC5045g
        /* renamed from: a */
        public void mo26438a(int i, String str) {
            C15149k.m377b(str, "imageUrl");
            PhotoViewActivity photoViewActivity = PhotoViewActivity.this;
            C5038b bVar = photoViewActivity.f12464d;
            photoViewActivity.m26449a(i, bVar != null ? bVar.getItemCount() : 0);
            ViewPager viewPager = (ViewPager) PhotoViewActivity.this.mo26423e(R$id.vp_container);
            if (viewPager != null) {
                viewPager.setCurrentItem(i);
            }
        }
    }

    static {
        new C5037a(null);
    }

    /* renamed from: D */
    public final int m26452D() {
        return this.f12463c;
    }

    /* renamed from: E */
    public final String m26451E() {
        return this.f12462b;
    }

    /* renamed from: F */
    public final ArrayList<String> m26450F() {
        return this.f12461a;
    }

    /* renamed from: a */
    public final void m26449a(int i, int i2) {
        StringBuilder sb = new StringBuilder();
        sb.append(i + 1);
        sb.append('/');
        sb.append(i2);
        mo26424d(sb.toString());
    }

    /* renamed from: a */
    public final void m26446a(ArrayList<String> arrayList) {
        this.f12461a = arrayList;
    }

    /* renamed from: a */
    public final void m26445a(List<String> list, int i) {
        RecyclerView recyclerView;
        int size = list != null ? list.size() : 0;
        if (size != 0) {
            ViewPager viewPager = (ViewPager) mo26423e(R$id.vp_container);
            if (viewPager != null) {
                FragmentManager supportFragmentManager = getSupportFragmentManager();
                C15149k.m383a((Object) supportFragmentManager, "supportFragmentManager");
                viewPager.setAdapter(new C5044f(this, supportFragmentManager, list));
            }
            if (i < 0 || size - 1 < i) {
                i = 0;
            }
            m26449a(i, list != null ? list.size() : 0);
            if (size > 0) {
                this.f12464d = new C5038b(i, list, new C5047i());
                RecyclerView recyclerView2 = (RecyclerView) mo26423e(R$id.recycler_view_images);
                if (recyclerView2 != null) {
                    recyclerView2.setLayoutManager(new LinearLayoutManager(this, 0, false));
                }
                RecyclerView recyclerView3 = (RecyclerView) mo26423e(R$id.recycler_view_images);
                if (recyclerView3 != null) {
                    recyclerView3.setAdapter(this.f12464d);
                }
                RecyclerView recyclerView4 = (RecyclerView) mo26423e(R$id.recycler_view_images);
                if (recyclerView4 != null) {
                    recyclerView4.setVisibility(0);
                }
                RecyclerView recyclerView5 = (RecyclerView) mo26423e(R$id.recycler_view_images);
                if (recyclerView5 != null) {
                    recyclerView5.scrollToPosition(i);
                }
                RecyclerView recyclerView6 = (RecyclerView) mo26423e(R$id.recycler_view_images);
                if (recyclerView6 != null) {
                    recyclerView6.addItemDecoration(new C5040c());
                }
            } else if (size == 1 && (recyclerView = (RecyclerView) mo26423e(R$id.recycler_view_images)) != null) {
                recyclerView.setVisibility(8);
            }
        }
    }

    /* renamed from: c */
    public final void m26444c(String str) {
        this.f12462b = str;
    }

    /* renamed from: d */
    public void mo26424d(String str) {
        C15149k.m377b(str, "title");
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setTitle(str);
        }
        ArrayList<String> arrayList = this.f12461a;
        this.f12462b = arrayList != null ? arrayList.get(this.f12463c) : null;
    }

    /* renamed from: e */
    public View mo26423e(int i) {
        if (this.f12465e == null) {
            this.f12465e = new HashMap();
        }
        View view = (View) this.f12465e.get(Integer.valueOf(i));
        View view2 = view;
        if (view == null) {
            view2 = findViewById(i);
            this.f12465e.put(Integer.valueOf(i), view2);
        }
        return view2;
    }

    /* renamed from: f */
    public final void m26443f(int i) {
        ViewPager viewPager = (ViewPager) mo26423e(R$id.vp_container);
        if (viewPager != null) {
            viewPager.setCurrentItem(i);
        }
    }

    /* renamed from: g */
    public final void m26442g(int i) {
        this.f12463c = i;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R$layout.activity_image_viewer);
        ((Toolbar) mo26423e(R$id.photoViewerToolbar)).setTitleTextColor(-1);
        setSupportActionBar((Toolbar) mo26423e(R$id.photoViewerToolbar));
        ActionBar supportActionBar = getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayHomeAsUpEnabled(true);
        }
        ActionBar supportActionBar2 = getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setDisplayShowHomeEnabled(true);
        }
        ActionBar supportActionBar3 = getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.setHomeButtonEnabled(true);
        }
        ActionBar supportActionBar4 = getSupportActionBar();
        if (supportActionBar4 != null) {
            supportActionBar4.setHomeAsUpIndicator(R$drawable.ic_actionbar_back_dark);
        }
        if (bundle != null && bundle.containsKey("current_photo_index")) {
            this.f12463c = bundle.getInt("current_photo_index");
        }
        ((ViewPager) mo26423e(R$id.vp_container)).setOnPageChangeListener(new C5046h());
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0084  */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onResume() {
        /*
            Method dump skipped, instructions count: 220
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: gogolook.callgogolook2.photo.PhotoViewActivity.onResume():void");
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        C15149k.m377b(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putInt("current_photo_index", this.f12463c);
    }
}
