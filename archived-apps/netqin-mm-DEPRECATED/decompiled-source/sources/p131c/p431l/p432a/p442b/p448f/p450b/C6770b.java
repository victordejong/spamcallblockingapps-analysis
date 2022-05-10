package p131c.p431l.p432a.p442b.p448f.p450b;

import android.content.Context;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.TextView;
import com.netqin.p525cm.p528db.model.SystemContacts;
import java.util.HashMap;
import java.util.List;
/* renamed from: c.l.a.b.f.b.b */
/* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/b.class */
public class C6770b extends BaseAdapter {

    /* renamed from: a */
    public Context f20881a;

    /* renamed from: b */
    public List<SystemContacts> f20882b;

    /* renamed from: c */
    public HashMap<Character, Integer> f20883c = new HashMap<>();

    /* renamed from: c.l.a.b.f.b.b$b */
    /* loaded from: classes2-dex2jar.jar:c/l/a/b/f/b/b$b.class */
    public class C6772b {

        /* renamed from: a */
        public TextView f20884a;

        /* renamed from: b */
        public TextView f20885b;

        /* renamed from: c */
        public CheckedTextView f20886c;

        /* renamed from: d */
        public TextView f20887d;

        public C6772b(C6770b bVar) {
        }
    }

    public C6770b(Context context, List<SystemContacts> list) {
        this.f20881a = context;
        this.f20882b = list;
        m19842a();
    }

    /* renamed from: a */
    public final void m19842a() {
        for (int i = 0; i < this.f20882b.size(); i++) {
            char pinyinUpperKey = this.f20882b.get(i).getPinyinUpperKey();
            if (pinyinUpperKey != 0 && !this.f20883c.containsKey(Character.valueOf(pinyinUpperKey))) {
                this.f20883c.put(Character.valueOf(pinyinUpperKey), Integer.valueOf(i));
            }
        }
    }

    @Override // android.widget.Adapter
    public int getCount() {
        List<SystemContacts> list = this.f20882b;
        return list == null ? 0 : list.size();
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        return this.f20882b.get(i);
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        StringBuilder sb;
        C6772b bVar;
        try {
            if (view == null) {
                C6772b bVar2 = new C6772b();
                view = LayoutInflater.from(this.f20881a).inflate(2131427373, viewGroup, false);
                bVar2.f20886c = (CheckedTextView) view.findViewById(2131230887);
                bVar2.f20887d = (TextView) view.findViewById(2131230899);
                bVar2.f20885b = (TextView) view.findViewById(2131231221);
                bVar2.f20884a = (TextView) view.findViewById(2131231222);
                view.setTag(bVar2);
                bVar = bVar2;
            } else {
                bVar = (C6772b) view.getTag();
            }
            SystemContacts systemContacts = this.f20882b.get(i);
            bVar.f20885b.setText(systemContacts.getAddress());
            bVar.f20884a.setText(systemContacts.getName().trim());
            bVar.f20886c.setTag(Long.valueOf(systemContacts.getId()));
            bVar.f20887d.setVisibility(0);
            bVar.f20887d.setVisibility(4);
            if (!TextUtils.isEmpty(systemContacts.getName())) {
                sb = view;
                bVar.f20884a.setText(systemContacts.getName());
            } else {
                sb = view;
                bVar.f20884a.setText(systemContacts.getAddress());
            }
            try {
                char pinyinUpperKey = systemContacts.getPinyinUpperKey();
                view2 = view;
                if (!TextUtils.isEmpty(String.valueOf(pinyinUpperKey))) {
                    view2 = view;
                    if (pinyinUpperKey != 0) {
                        view2 = view;
                        if (pinyinUpperKey != 0) {
                            view2 = view;
                            if (this.f20883c.get(Character.valueOf(pinyinUpperKey)).intValue() == i) {
                                bVar.f20887d.setVisibility(0);
                                TextView textView = bVar.f20887d;
                                sb = new StringBuilder();
                                sb.append("");
                                sb.append(pinyinUpperKey);
                                textView.setText(sb.toString());
                                view2 = view;
                            }
                        }
                    }
                }
            } catch (Exception e) {
                sb = view;
                e.printStackTrace();
                view2 = view;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            view2 = sb;
        }
        return view2;
    }
}
