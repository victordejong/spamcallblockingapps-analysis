package p193e.p194a.p765f5;

import android.content.Context;
import android.content.DialogInterface;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import java.util.List;
/* renamed from: e.a.f5.c */
/* loaded from: classes14-dex2jar.jar:e/a/f5/c.class */
public final class DialogInterface$OnClickListenerC14049c implements DialogInterface.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C14047b f40623a;

    /* renamed from: b */
    public final /* synthetic */ Context f40624b;

    /* renamed from: c */
    public final /* synthetic */ Contact f40625c;

    /* renamed from: d */
    public final /* synthetic */ List f40626d;

    /* renamed from: e */
    public final /* synthetic */ AvatarXConfig f40627e;

    public DialogInterface$OnClickListenerC14049c(C14047b c14047b, Context context, Contact contact, List list, AvatarXConfig avatarXConfig) {
        this.f40623a = c14047b;
        this.f40624b = context;
        this.f40625c = contact;
        this.f40626d = list;
        this.f40627e = avatarXConfig;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.f40623a.m20812i(this.f40624b, this.f40625c, ((Number) this.f40626d.get(i)).m35479e(), this.f40627e);
    }
}
