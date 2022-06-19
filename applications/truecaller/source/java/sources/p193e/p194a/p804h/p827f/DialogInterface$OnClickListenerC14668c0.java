package p193e.p194a.p804h.p827f;

import android.content.DialogInterface;
import com.truecaller.calling.contacts_list.ContactTabFragment;
import com.truecaller.calling.contacts_list.ContactsHolder;
import java.util.Objects;
import s1.z.c.l;
/* renamed from: e.a.h.f.c0 */
/* loaded from: classes3-dex2jar.jar:e/a/h/f/c0.class */
public final class DialogInterface$OnClickListenerC14668c0 implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ b f42167a;

    public DialogInterface$OnClickListenerC14668c0(b bVar) {
        this.f42167a = bVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        b bVar = this.f42167a;
        ContactsHolder.SortingMode sortingMode = ContactsHolder.SortingMode.values()[i];
        if (!bVar.a.isEmpty()) {
            for (ContactTabFragment contactTabFragment : bVar.a) {
                Objects.requireNonNull(contactTabFragment);
                l.e(sortingMode, "sortingMode");
                if (contactTabFragment.isAdded()) {
                    x xVar = contactTabFragment.g;
                    if (xVar == null) {
                        l.l("presenter");
                        throw null;
                    }
                    xVar.uq(sortingMode);
                }
            }
        }
        dialogInterface.dismiss();
    }
}
