package p193e.p194a.p804h.p827f;

import com.truecaller.calling.contacts_list.ContactsHolder;
import com.truecaller.calling.contacts_list.data.SortedContactsDao;
import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import s1.e0.x;
import s1.u.i;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.h.f.a0$b */
/* loaded from: classes3-dex2jar.jar:e/a/h/f/a0$b.class */
public final class a0$b {

    /* renamed from: a */
    public final List<SortedContactsDao.C3617a>[][] f42161a;

    public a0$b() {
        this(s.a);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.List[], java.util.List<com.truecaller.calling.contacts_list.data.SortedContactsDao$a>[][]] */
    public a0$b(List<SortedContactsDao.C3617a> list) {
        l.e(list, "allContacts");
        ContactsHolder.FavoritesFilter.values();
        ?? r0 = new List[2];
        for (int i = 0; i < 2; i++) {
            ContactsHolder.PhonebookFilter.values();
            List[] listArr = new List[2];
            for (int i2 = 0; i2 < 2; i2++) {
                listArr[i2] = s.a;
            }
            r0[i] = listArr;
        }
        this.f42161a = r0;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (Object obj : list) {
            Contact contact = ((SortedContactsDao.C3617a) obj).f10708a;
            int i3 = 1;
            if (contact.m35548R() == null) {
                i3 = 1;
                if (!contact.m35508l0()) {
                    i3 = 0;
                }
            }
            Integer valueOf = Integer.valueOf(i3);
            Object obj2 = linkedHashMap.get(valueOf);
            ArrayList arrayList = obj2;
            if (obj2 == null) {
                arrayList = new ArrayList();
                linkedHashMap.put(valueOf, arrayList);
            }
            ((List) arrayList).add(obj);
        }
        List list2 = (List) linkedHashMap.get(0);
        if (list2 != null) {
            ContactsHolder.FavoritesFilter favoritesFilter = ContactsHolder.FavoritesFilter.INCLUDE_NON_FAVORITES;
            ContactsHolder.PhonebookFilter phonebookFilter = ContactsHolder.PhonebookFilter.NON_PHONEBOOK_ONLY;
            List<SortedContactsDao.C3617a> arrayList2 = new ArrayList<>();
            for (Object obj3 : list2) {
                SortedContactsDao.C3617a c3617a = (SortedContactsDao.C3617a) obj3;
                if (!(c3617a.f10708a.m35574A0() || c3617a.f10710c)) {
                    arrayList2.add(obj3);
                }
            }
            m19807d(favoritesFilter, phonebookFilter, arrayList2);
        }
        List<SortedContactsDao.C3617a> list3 = (List) linkedHashMap.get(1);
        if (list3 != null) {
            m19807d(ContactsHolder.FavoritesFilter.INCLUDE_NON_FAVORITES, ContactsHolder.PhonebookFilter.PHONEBOOK_ONLY, list3);
        }
        ContactsHolder.FavoritesFilter favoritesFilter2 = ContactsHolder.FavoritesFilter.FAVORITES_ONLY;
        ContactsHolder.PhonebookFilter phonebookFilter2 = ContactsHolder.PhonebookFilter.PHONEBOOK_ONLY;
        m19807d(favoritesFilter2, phonebookFilter2, x.r(x.k(x.f(i.h(m19810a(ContactsHolder.FavoritesFilter.INCLUDE_NON_FAVORITES, phonebookFilter2)), a.b), b.b)));
    }

    /* renamed from: a */
    public final List<SortedContactsDao.C3617a> m19810a(ContactsHolder.FavoritesFilter favoritesFilter, ContactsHolder.PhonebookFilter phonebookFilter) {
        l.e(favoritesFilter, "favoritesFilter");
        l.e(phonebookFilter, "phonebookFilter");
        return this.f42161a[m19809b(favoritesFilter)][m19808c(phonebookFilter)];
    }

    /* renamed from: b */
    public final int m19809b(ContactsHolder.FavoritesFilter favoritesFilter) {
        int ordinal = favoritesFilter.ordinal();
        int i = 1;
        if (ordinal == 0) {
            i = 0;
        } else if (ordinal != 1) {
            throw new s1.i();
        }
        return i;
    }

    /* renamed from: c */
    public final int m19808c(ContactsHolder.PhonebookFilter phonebookFilter) {
        int ordinal = phonebookFilter.ordinal();
        int i = 1;
        if (ordinal == 0) {
            i = 0;
        } else if (ordinal != 1) {
            throw new s1.i();
        }
        return i;
    }

    /* renamed from: d */
    public final void m19807d(ContactsHolder.FavoritesFilter favoritesFilter, ContactsHolder.PhonebookFilter phonebookFilter, List<SortedContactsDao.C3617a> list) {
        this.f42161a[m19809b(favoritesFilter)][m19808c(phonebookFilter)] = list;
    }
}
