package com.scand.realmbrowser;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.RecyclerView;
import io.realm.Realm;
import io.realm.RealmObject;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ClassListAdapter.class */
public class ClassListAdapter extends RecyclerView.Adapter<ViewHolder> {

    /* renamed from: a */
    private List<DataHolder> f12423a;

    /* renamed from: b */
    private OnItemClickListener f12424b;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ClassListAdapter$DataHolder.class */
    public static class DataHolder {

        /* renamed from: a */
        String f12425a;

        /* renamed from: b */
        int f12426b;

        DataHolder(String str, int i) {
            this.f12425a = str;
            this.f12426b = i;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ClassListAdapter$OnItemClickListener.class */
    public interface OnItemClickListener {
        /* renamed from: a */
        void mo7806a(View view, int i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/scand/realmbrowser/ClassListAdapter$ViewHolder.class */
    public static class ViewHolder extends RecyclerView.ViewHolder implements View.OnClickListener {

        /* renamed from: f */
        final TextView f12427f;

        /* renamed from: g */
        final TextView f12428g;

        /* renamed from: h */
        private final OnItemClickListener f12429h;

        public ViewHolder(View view, OnItemClickListener onItemClickListener) {
            super(view);
            this.f12427f = (TextView) view.findViewById(C1506R.C1509id.class_list_item_name);
            view.setOnClickListener(this);
            this.f12429h = onItemClickListener;
            this.f12428g = (TextView) view.findViewById(C1506R.C1509id.class_list_counter);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OnItemClickListener onItemClickListener = this.f12429h;
            if (onItemClickListener != null) {
                onItemClickListener.mo7806a(view, getAdapterPosition());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ClassListAdapter(@NonNull List<Class<? extends RealmObject>> list, OnItemClickListener onItemClickListener) {
        if (this.f12423a == null) {
            this.f12423a = new ArrayList(list.size());
        }
        m7835e(list);
        this.f12424b = onItemClickListener;
    }

    /* renamed from: c */
    public void onBindViewHolder(ViewHolder viewHolder, int i) {
        DataHolder dataHolder = this.f12423a.get(i);
        viewHolder.f12427f.setText(dataHolder.f12425a);
        viewHolder.f12428g.setText(Integer.toString(dataHolder.f12426b));
    }

    /* renamed from: d */
    public ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
        return new ViewHolder(LayoutInflater.from(viewGroup.getContext()).inflate(C1506R.layout.realm_browser_class_list_item, viewGroup, false), this.f12424b);
    }

    /* renamed from: e */
    public void m7835e(@NonNull List<Class<? extends RealmObject>> list) {
        this.f12423a.clear();
        for (Class<? extends RealmObject> cls : list) {
            Realm I0 = Realm.m3062I0(RealmBrowser.m7730f().m7729g(cls));
            this.f12423a.add(new DataHolder(cls.getSimpleName(), I0.m3053Q0(cls).m2918E().size()));
            I0.close();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.Adapter
    public int getItemCount() {
        List<DataHolder> list = this.f12423a;
        return list != null ? list.size() : 0;
    }
}
