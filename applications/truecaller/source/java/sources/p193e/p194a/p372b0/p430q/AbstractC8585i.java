package p193e.p194a.p372b0.p430q;

import android.widget.Filter;
import com.truecaller.common.network.country.CountryListDto;
import java.util.ArrayList;
import java.util.List;
import s1.f0.v;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.b0.q.i */
/* loaded from: classes7-dex2jar.jar:e/a/b0/q/i.class */
public abstract class AbstractC8585i extends Filter {

    /* renamed from: a */
    public List<? extends CountryListDto.C3679a> f26402a = s.a;

    /* renamed from: b */
    public CharSequence f26403b = "";

    /* renamed from: c */
    public final List<CountryListDto.C3679a> f26404c;

    /* JADX WARN: Multi-variable type inference failed */
    public AbstractC8585i(List<? extends CountryListDto.C3679a> list) {
        l.e(list, "countries");
        this.f26404c = list;
    }

    @Override // android.widget.Filter
    public Filter.FilterResults performFiltering(CharSequence charSequence) {
        List<CountryListDto.C3679a> list;
        if (charSequence == null || charSequence.length() == 0) {
            list = this.f26404c;
        } else {
            List<? extends CountryListDto.C3679a> list2 = (!(this.f26403b.length() > 0) || !v.z(charSequence, this.f26403b, true)) ? this.f26404c : this.f26402a;
            ArrayList arrayList = new ArrayList();
            for (Object obj : list2) {
                String str = ((CountryListDto.C3679a) obj).f10911b;
                if (str != null ? v.z(str, charSequence, true) : false) {
                    arrayList.add(obj);
                }
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            for (Object obj2 : arrayList) {
                String str2 = ((CountryListDto.C3679a) obj2).f10911b;
                if (str2 != null ? v.V(str2, charSequence, true) : false) {
                    arrayList2.add(obj2);
                } else {
                    arrayList3.add(obj2);
                }
            }
            list = i.l0(arrayList2, arrayList3);
        }
        this.f26402a = list;
        String obj3 = charSequence != null ? charSequence.toString() : null;
        if (obj3 == null) {
            obj3 = "";
        }
        this.f26403b = obj3;
        Filter.FilterResults filterResults = new Filter.FilterResults();
        List<? extends CountryListDto.C3679a> list3 = this.f26402a;
        filterResults.values = list3;
        filterResults.count = list3.size();
        return filterResults;
    }
}
