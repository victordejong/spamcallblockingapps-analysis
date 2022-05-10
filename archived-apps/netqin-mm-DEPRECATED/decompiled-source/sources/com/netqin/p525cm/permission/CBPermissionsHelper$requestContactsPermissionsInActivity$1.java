package com.netqin.p525cm.permission;

import kotlin.jvm.internal.Lambda;
import p131c.p431l.p432a.p468n.C6854m;
import p573f.C9946p;
import p573f.p590w.p591b.AbstractC10031l;
import p573f.p590w.p591b.AbstractC10035p;
/* renamed from: com.netqin.cm.permission.CBPermissionsHelper$requestContactsPermissionsInActivity$1 */
/* loaded from: classes2-dex2jar.jar:com/netqin/cm/permission/CBPermissionsHelper$requestContactsPermissionsInActivity$1.class */
public final class CBPermissionsHelper$requestContactsPermissionsInActivity$1 extends Lambda implements AbstractC10035p<Integer, Boolean, C9946p> {
    public final /* synthetic */ AbstractC10031l $callback;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CBPermissionsHelper$requestContactsPermissionsInActivity$1(AbstractC10031l lVar) {
        super(2);
        this.$callback = lVar;
    }

    @Override // p573f.p590w.p591b.AbstractC10035p
    public /* bridge */ /* synthetic */ C9946p invoke(Integer num, Boolean bool) {
        invoke(num.intValue(), bool.booleanValue());
        return C9946p.f37137a;
    }

    public final void invoke(int i, boolean z) {
        if (i == -2) {
            C6854m.m19556b("CONTACTS_PERMISSION_DENIED_FOREVER", true);
        }
        AbstractC10031l lVar = this.$callback;
        if (lVar != null) {
            C9946p pVar = (C9946p) lVar.invoke(Integer.valueOf(i));
        }
    }
}
