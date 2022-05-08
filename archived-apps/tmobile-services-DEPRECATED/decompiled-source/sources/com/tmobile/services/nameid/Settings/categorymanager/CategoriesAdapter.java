package com.tmobile.services.nameid.Settings.categorymanager;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.StringRes;
import androidx.recyclerview.widget.RecyclerView;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter;
import com.tmobile.services.nameid.p007ui.NameIDSwitch;
import com.tmobile.services.nameid.p007ui.NameIDTextView;
import com.tmobile.services.nameid.utility.LogUtil;
import java.io.PrintStream;
import java.util.List;
import javax.annotation.Nonnull;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter.class */
public class CategoriesAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
    @NonNull

    /* renamed from: a */
    private List<CategoryListInterface> f12871a;
    @NonNull

    /* renamed from: b */
    private SwitchClickListener f12872b;

    /* renamed from: c */
    private boolean f12873c;

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoriesViewHolder.class */
    static class CategoriesViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        TextView f12874a;

        /* renamed from: b */
        NameIDSwitch f12875b;

        CategoriesViewHolder(@NonNull View view, @NonNull final SwitchClickListener switchClickListener) {
            super(view);
            this.f12874a = (TextView) view.findViewById(C1517R.C1520id.text_view_text_with_switch_title);
            this.f12875b = (NameIDSwitch) view.findViewById(C1517R.C1520id.switch_text_with_switch);
            LinearLayout linearLayout = (LinearLayout) view.findViewById(C1517R.C1520id.text_with_switch_container);
            final CompoundButton.OnCheckedChangeListener onCheckedChangeListener = new CompoundButton.OnCheckedChangeListener() { // from class: com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter.CategoriesViewHolder.1
                @Override // android.widget.CompoundButton.OnCheckedChangeListener
                public void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                    CategoriesViewHolder.this.f12875b.setOnCheckedChangeListener(null);
                    switchClickListener.mo7289a(CategoriesViewHolder.this.getLayoutPosition(), CategoriesViewHolder.this.f12875b, this);
                }
            };
            view.setOnClickListener(new View.OnClickListener() { // from class: com.tmobile.services.nameid.Settings.categorymanager.a
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    CategoriesAdapter.CategoriesViewHolder.this.m7317a(switchClickListener, onCheckedChangeListener, view2);
                }
            });
        }

        /* renamed from: a */
        public /* synthetic */ void m7317a(SwitchClickListener switchClickListener, CompoundButton.OnCheckedChangeListener onCheckedChangeListener, View view) {
            this.f12875b.setOnCheckedChangeListener(null);
            switchClickListener.mo7289a(getLayoutPosition(), this.f12875b, onCheckedChangeListener);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryItemType.class */
    public enum CategoryItemType {
        CATEGORY(0),
        PROTECTION_INFO(1);
        
        private int value;

        CategoryItemType(int i) {
            this.value = i;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListInterface.class */
    public interface CategoryListInterface {
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$CategoryListItem.class */
    public static class CategoryListItem implements CategoryListInterface {
        @StringRes

        /* renamed from: a */
        int f12878a;

        /* renamed from: b */
        private int f12879b;

        public CategoryListItem(@StringRes int i, int i2) {
            this.f12878a = i;
            this.f12879b = i2;
        }

        /* renamed from: a */
        public int m7316a() {
            return this.f12879b;
        }

        @StringRes
        /* renamed from: b */
        public int m7315b() {
            return this.f12878a;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005c, code lost:
            if (r0 == com.tmobile.services.nameid.model.CallerSetting.Action.VOICEMAIL) goto L_0x005f;
         */
        /* renamed from: c */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        boolean m7314c() {
            /*
                r4 = this;
                io.realm.Realm r0 = io.realm.Realm.m3064G0()
                r5 = r0
                com.tmobile.services.nameid.utility.Feature r0 = com.tmobile.services.nameid.utility.Feature.CATEGORY_BLOCK     // Catch: all -> 0x0075
                boolean r0 = r0.isOwned()     // Catch: all -> 0x0075
                r6 = r0
                r0 = 0
                r7 = r0
                r0 = r6
                if (r0 != 0) goto L_0x001b
                r0 = r5
                if (r0 == 0) goto L_0x0019
                r0 = r5
                r0.close()
            L_0x0019:
                r0 = 0
                return r0
            L_0x001b:
                r0 = r5
                java.lang.Class<com.tmobile.services.nameid.model.CategorySetting> r1 = com.tmobile.services.nameid.model.CategorySetting.class
                io.realm.RealmQuery r0 = r0.m3053Q0(r1)     // Catch: all -> 0x0075
                r8 = r0
                r0 = r8
                java.lang.String r1 = "bucketId"
                r2 = r4
                int r2 = r2.f12879b     // Catch: all -> 0x0075
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)     // Catch: all -> 0x0075
                io.realm.RealmQuery r0 = r0.m2885q(r1, r2)     // Catch: all -> 0x0075
                r0 = r8
                java.lang.Object r0 = r0.m2916G()     // Catch: all -> 0x0075
                com.tmobile.services.nameid.model.CategorySetting r0 = (com.tmobile.services.nameid.model.CategorySetting) r0     // Catch: all -> 0x0075
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L_0x006b
                r0 = r8
                int r0 = r0.getDisposition()     // Catch: all -> 0x0075
                com.tmobile.services.nameid.model.CallerSetting$Action r0 = com.tmobile.services.nameid.model.CallerSetting.Action.fromValue(r0)     // Catch: all -> 0x0075
                r9 = r0
                r0 = r9
                com.tmobile.services.nameid.model.CallerSetting$Action r1 = com.tmobile.services.nameid.model.CallerSetting.Action.BLOCKED     // Catch: all -> 0x0075
                if (r0 == r1) goto L_0x005f
                com.tmobile.services.nameid.model.CallerSetting$Action r0 = com.tmobile.services.nameid.model.CallerSetting.Action.VOICEMAIL     // Catch: all -> 0x0075
                r8 = r0
                r0 = r9
                r1 = r8
                if (r0 != r1) goto L_0x0061
            L_0x005f:
                r0 = 1
                r7 = r0
            L_0x0061:
                r0 = r5
                if (r0 == 0) goto L_0x0069
                r0 = r5
                r0.close()
            L_0x0069:
                r0 = r7
                return r0
            L_0x006b:
                r0 = r5
                if (r0 == 0) goto L_0x0073
                r0 = r5
                r0.close()
            L_0x0073:
                r0 = 0
                return r0
            L_0x0075:
                r8 = move-exception
                r0 = r8
                throw r0     // Catch: all -> 0x007a
            L_0x007a:
                r9 = move-exception
                r0 = r5
                if (r0 == 0) goto L_0x008e
                r0 = r5
                r0.close()     // Catch: all -> 0x0087
                goto L_0x008e
            L_0x0087:
                r5 = move-exception
                r0 = r8
                r1 = r5
                r0.addSuppressed(r1)
            L_0x008e:
                r0 = r9
                throw r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.tmobile.services.nameid.Settings.categorymanager.CategoriesAdapter.CategoryListItem.m7314c():boolean");
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$DividerViewHolder.class */
    private static class DividerViewHolder extends RecyclerView.ViewHolder {
        DividerViewHolder(@NonNull View view) {
            super(view);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$ProtectionInfoViewHolder.class */
    public static class ProtectionInfoViewHolder extends RecyclerView.ViewHolder {

        /* renamed from: a */
        TextView f12880a;

        /* renamed from: b */
        TextView f12881b;

        /* renamed from: c */
        NameIDTextView f12882c;

        ProtectionInfoViewHolder(@NonNull View view) {
            super(view);
            this.f12880a = (TextView) view.findViewById(C1517R.C1520id.categories_protection_title);
            this.f12881b = (TextView) view.findViewById(C1517R.C1520id.categories_protection_desc);
            this.f12882c = (NameIDTextView) view.findViewById(C1517R.C1520id.categories_protection_button);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$ProtectionListItem.class */
    public static class ProtectionListItem implements CategoryListInterface {
        @StringRes

        /* renamed from: a */
        int f12883a;
        @StringRes

        /* renamed from: b */
        int f12884b;
        @StringRes

        /* renamed from: c */
        int f12885c;

        /* renamed from: d */
        View.OnClickListener f12886d;

        public ProtectionListItem(@StringRes int i, @StringRes int i2, @StringRes int i3, View.OnClickListener onClickListener) {
            this.f12883a = i;
            this.f12884b = i2;
            this.f12885c = i3;
            this.f12886d = onClickListener;
        }
    }

    @FunctionalInterface
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/Settings/categorymanager/CategoriesAdapter$SwitchClickListener.class */
    public interface SwitchClickListener {
        /* renamed from: a */
        void mo7289a(int i, Switch r2, CompoundButton.OnCheckedChangeListener onCheckedChangeListener);
    }

    public CategoriesAdapter(@NonNull List<CategoryListInterface> list, Boolean bool, @NonNull SwitchClickListener switchClickListener) {
        this.f12873c = false;
        this.f12871a = list;
        this.f12872b = switchClickListener;
        this.f12873c = bool.booleanValue();
    }

    @Nonnull
    /* renamed from: c */
    public List<CategoryListInterface> m7319c() {
        return this.f12871a;
    }

    /* renamed from: d */
    public void m7318d(boolean z) {
        LogUtil.m5643d("CategoriesAdapter#setUserActive", "received update - " + z);
        this.f12873c = z;
        notifyDataSetChanged();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        return this.f12871a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public final int getItemViewType(int i) {
        return i == 0 ? CategoryItemType.PROTECTION_INFO.getValue() : CategoryItemType.CATEGORY.getValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
        if (getItemViewType(i) == CategoryItemType.CATEGORY.getValue()) {
            if (!(this.f12871a.get(i) instanceof CategoryListItem)) {
                PrintStream printStream = System.out;
                printStream.println("not category item - " + i);
                return;
            }
            CategoryListItem categoryListItem = (CategoryListItem) this.f12871a.get(i);
            CategoriesViewHolder categoriesViewHolder = (CategoriesViewHolder) viewHolder;
            categoriesViewHolder.f12874a.setText(categoryListItem.m7315b());
            String string = categoriesViewHolder.f12874a.getContext().getString(categoryListItem.m7315b());
            LogUtil.m5643d("CategoriesAdapter#", "Binding Category = " + string + " checked = " + categoryListItem.m7314c());
            categoriesViewHolder.f12874a.setContentDescription(string);
            categoriesViewHolder.f12875b.m6258c(categoryListItem.m7315b());
            if (!this.f12873c) {
                categoriesViewHolder.f12875b.setCheckedSilent(false);
            } else {
                categoriesViewHolder.f12875b.setCheckedSilent(categoryListItem.m7314c());
            }
        } else if (getItemViewType(i) == CategoryItemType.PROTECTION_INFO.getValue()) {
            ProtectionListItem protectionListItem = (ProtectionListItem) this.f12871a.get(i);
            ProtectionInfoViewHolder protectionInfoViewHolder = (ProtectionInfoViewHolder) viewHolder;
            protectionInfoViewHolder.f12880a.setText(protectionListItem.f12883a);
            TextView textView = protectionInfoViewHolder.f12880a;
            textView.setContentDescription(textView.getContext().getString(protectionListItem.f12883a));
            protectionInfoViewHolder.f12881b.setText(protectionListItem.f12884b);
            TextView textView2 = protectionInfoViewHolder.f12881b;
            textView2.setContentDescription(textView2.getContext().getString(protectionListItem.f12884b));
            protectionInfoViewHolder.f12882c.setOnClickListener(protectionListItem.f12886d);
            protectionInfoViewHolder.f12882c.setText(protectionListItem.f12885c);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        Context context = viewGroup.getContext();
        return i == CategoryItemType.CATEGORY.getValue() ? new CategoriesViewHolder(LayoutInflater.from(context).inflate(C1517R.layout.text_with_switch, viewGroup, false), this.f12872b) : i == CategoryItemType.PROTECTION_INFO.getValue() ? new ProtectionInfoViewHolder(LayoutInflater.from(context).inflate(C1517R.layout.categories_protection_info, viewGroup, false)) : new DividerViewHolder(LayoutInflater.from(context).inflate(C1517R.layout.categories_divider, viewGroup, false));
    }
}
