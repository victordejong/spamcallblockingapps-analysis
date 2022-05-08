package com.gogolook.whoscallsdk.core.offlinedb;

import io.realm.AbstractC10893x2b52ef08;
import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import kotlin.Metadata;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0016\u0018�� \f2\u00020\u0001:\u0001\fB\u0005¢\u0006\u0002\u0010\u0002R \u0010\u0003\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\bR \u0010\t\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0087\u000e¢\u0006\u000e\n��\u001a\u0004\b\n\u0010\u0006\"\u0004\b\u000b\u0010\b¨\u0006\r"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/offlinedb/PersonalDb;", "Lio/realm/RealmObject;", "()V", "name", "", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "number", "getNumber", "setNumber", "Companion", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/offlinedb/PersonalDb.class */
public class PersonalDb extends RealmObject implements AbstractC10893x2b52ef08 {
    public static final String COLUMN_NAME = "name";
    public static final String COLUMN_NUMBER = "number";
    public static final C3532a Companion = new C3532a(null);
    @Required
    public String name;
    @Required
    public String number;

    /* renamed from: com.gogolook.whoscallsdk.core.offlinedb.PersonalDb$a */
    /* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/offlinedb/PersonalDb$a.class */
    public static final class C3532a {
        public C3532a() {
        }

        public /* synthetic */ C3532a(C15145g gVar) {
            this();
        }
    }

    public PersonalDb() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    public final String getName() {
        return realmGet$name();
    }

    public final String getNumber() {
        return realmGet$number();
    }

    @Override // io.realm.AbstractC10893x2b52ef08
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10893x2b52ef08
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC10893x2b52ef08
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10893x2b52ef08
    public void realmSet$number(String str) {
        this.number = str;
    }

    public final void setName(String str) {
        realmSet$name(str);
    }

    public final void setNumber(String str) {
        realmSet$number(str);
    }
}
