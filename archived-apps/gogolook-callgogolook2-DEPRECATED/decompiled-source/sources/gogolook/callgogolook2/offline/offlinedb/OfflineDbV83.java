package gogolook.callgogolook2.offline.offlinedb;

import gogolook.callgogolook2.gson.NumberInfo;
import io.realm.AbstractC10897x85e0d1a6;
import io.realm.RealmObject;
import io.realm.annotations.Required;
import io.realm.internal.RealmObjectProxy;
import java.util.HashMap;
import kotlin.Metadata;
import kotlinx.coroutines.DebugKt;
import p459j.p460a.p515i0.p516a.AbstractC12422e;
import p459j.p460a.p515i0.p516a.C12419d;
import p626l.p631e0.C14966w;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0011\b\u0016\u0018��2\u00020\u00012\u00020\u0002B\u0005¢\u0006\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR0\u0010\n\u001a\u001e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r0\u000bj\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\r`\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R \u0010\u0011\u001a\u0004\u0018\u00010\f8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R \u0010\u0016\u001a\u0004\u0018\u00010\f8\u0016@\u0016X\u0097\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0017\u0010\u0013\"\u0004\b\u0018\u0010\u0015R\u001a\u0010\u0019\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u0007\"\u0004\b\u001b\u0010\tR\u001a\u0010\u001c\u001a\u00020\u0005X\u0096\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\t¨\u0006\u001f"}, m815d2 = {"Lgogolook/callgogolook2/offline/offlinedb/OfflineDbV83;", "Lio/realm/RealmObject;", "Lgogolook/callgogolook2/offline/offlinedb/IOfflineDb;", "()V", "categ", "", "getCateg", "()I", "setCateg", "(I)V", "hit", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "getHit", "()Ljava/util/HashMap;", "name", "getName", "()Ljava/lang/String;", "setName", "(Ljava/lang/String;)V", "number", "getNumber", "setNumber", "source", "getSource", "setSource", "type", "getType", "setType", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/offline/offlinedb/OfflineDbV83.class */
public class OfflineDbV83 extends RealmObject implements AbstractC12422e, AbstractC10897x85e0d1a6 {
    public int categ;
    @Required
    public String name;
    @Required
    public String number;
    public int source;
    public int type;

    public OfflineDbV83() {
        if (this instanceof RealmObjectProxy) {
            ((RealmObjectProxy) this).realm$injectObjectContext();
        }
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public int getCateg() {
        return realmGet$categ();
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public HashMap<String, Object> getHit() {
        HashMap<String, Object> hashMap = new HashMap<>();
        String name = getName();
        hashMap.put("name", Boolean.valueOf(!(name == null || C14966w.m724a((CharSequence) name))));
        hashMap.put("spam", Boolean.valueOf(C12419d.m6220a(getType(), 2)));
        hashMap.put(NumberInfo.KEY_DATA_SOURCE, DebugKt.DEBUG_PROPERTY_VALUE_OFF);
        String b = C12419d.m6211b(getRealm(), realmGet$source());
        if (b == null) {
            b = "";
        }
        hashMap.put(NumberInfo.KEY_NAME_SOURCE, b);
        return hashMap;
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public String getName() {
        return realmGet$name();
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public String getNumber() {
        return realmGet$number();
    }

    public final int getSource() {
        return realmGet$source();
    }

    @Override // p459j.p460a.p515i0.p516a.AbstractC12422e
    public int getType() {
        return realmGet$type();
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public int realmGet$categ() {
        return this.categ;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public String realmGet$name() {
        return this.name;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public String realmGet$number() {
        return this.number;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public int realmGet$source() {
        return this.source;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public int realmGet$type() {
        return this.type;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public void realmSet$categ(int i) {
        this.categ = i;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public void realmSet$name(String str) {
        this.name = str;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public void realmSet$number(String str) {
        this.number = str;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public void realmSet$source(int i) {
        this.source = i;
    }

    @Override // io.realm.AbstractC10897x85e0d1a6
    public void realmSet$type(int i) {
        this.type = i;
    }

    public void setCateg(int i) {
        realmSet$categ(i);
    }

    public void setName(String str) {
        realmSet$name(str);
    }

    public void setNumber(String str) {
        realmSet$number(str);
    }

    public final void setSource(int i) {
        realmSet$source(i);
    }

    public void setType(int i) {
        realmSet$type(i);
    }
}
