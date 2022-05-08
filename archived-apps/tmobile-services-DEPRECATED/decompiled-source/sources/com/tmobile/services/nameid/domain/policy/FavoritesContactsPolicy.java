package com.tmobile.services.nameid.domain.policy;

import com.tmobile.services.nameid.model.Contact;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��B!\u0012\b\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0006\u0010\b\u001a\u00020\u0001\u0012\u0006\u0010\u0005\u001a\u00020\u0001¢\u0006\u0004\b\u000b\u0010\fJ\r\u0010\u0002\u001a\u00020\u0001¢\u0006\u0004\b\u0002\u0010\u0003J\r\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0004\u0010\u0003R\u0016\u0010\u0005\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0007\u0010\u0006R\u0016\u0010\b\u001a\u00020\u00018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\u0006¨\u0006\r"}, d2 = {"Lcom/tmobile/services/nameid/domain/policy/FavoritesContactsPolicy;", "", "shouldAskForPermission", "()Z", "shouldShowModal", "canAskForPermission", "Z", "hasContact", "hasPermission", "Lcom/tmobile/services/nameid/model/Contact;", "contact", "<init>", "(Lcom/tmobile/services/nameid/model/Contact;ZZ)V", "app-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/domain/policy/FavoritesContactsPolicy.class */
public final class FavoritesContactsPolicy {

    /* renamed from: a */
    private final boolean f13474a;

    /* renamed from: b */
    private final boolean f13475b;

    /* renamed from: c */
    private final boolean f13476c;

    public FavoritesContactsPolicy(@Nullable Contact contact, boolean z, boolean z2) {
        this.f13475b = z;
        this.f13476c = z2;
        this.f13474a = contact != null;
    }

    /* renamed from: a */
    public final boolean m6585a() {
        return !this.f13475b && this.f13476c;
    }

    /* renamed from: b */
    public final boolean m6584b() {
        return !this.f13474a && (this.f13475b || this.f13476c);
    }
}
