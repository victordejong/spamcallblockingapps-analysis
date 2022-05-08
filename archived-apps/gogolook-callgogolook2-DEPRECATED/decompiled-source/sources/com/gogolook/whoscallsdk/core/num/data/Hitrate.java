package com.gogolook.whoscallsdk.core.num.data;

import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u001b\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\b\u0018��2\u00020\u0001BA\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\b\u0012\b\b\u0002\u0010\t\u001a\u00020\n¢\u0006\u0002\u0010\u000bJ\t\u0010\u001e\u001a\u00020\u0003HÆ\u0003J\t\u0010\u001f\u001a\u00020\u0003HÆ\u0003J\t\u0010 \u001a\u00020\u0003HÆ\u0003J\t\u0010!\u001a\u00020\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\t\u0010#\u001a\u00020\nHÆ\u0003JE\u0010$\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\b2\b\b\u0002\u0010\t\u001a\u00020\nHÆ\u0001J\u0013\u0010%\u001a\u00020&2\b\u0010'\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010(\u001a\u00020)HÖ\u0001J\t\u0010*\u001a\u00020\u0003HÖ\u0001R\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001a\u0010\t\u001a\u00020\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\r\"\u0004\b\u0017\u0010\u000fR\u001a\u0010\u0006\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0018\u0010\r\"\u0004\b\u0019\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\u001b\"\u0004\b\u001c\u0010\u001d¨\u0006+"}, m815d2 = {"Lcom/gogolook/whoscallsdk/core/num/data/Hitrate;", "", "id", "", "aws_id", "data_id", "nginx_id", "ts", "", "data", "Lcom/gogolook/whoscallsdk/core/num/data/DataWrapper;", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/gogolook/whoscallsdk/core/num/data/DataWrapper;)V", "getAws_id", "()Ljava/lang/String;", "setAws_id", "(Ljava/lang/String;)V", "getData", "()Lcom/gogolook/whoscallsdk/core/num/data/DataWrapper;", "setData", "(Lcom/gogolook/whoscallsdk/core/num/data/DataWrapper;)V", "getData_id", "setData_id", "getId", "setId", "getNginx_id", "setNginx_id", "getTs", "()J", "setTs", "(J)V", "component1", "component2", "component3", "component4", "component5", "component6", "copy", "equals", "", "other", "hashCode", "", "toString", "whoscallSDK_core_whoscallDebug"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/gogolook/whoscallsdk/core/num/data/Hitrate.class */
public final class Hitrate {
    public String aws_id;
    public DataWrapper data;
    public String data_id;

    /* renamed from: id */
    public String f6160id;
    public String nginx_id;

    /* renamed from: ts */
    public long f6161ts;

    public Hitrate() {
        this(null, null, null, null, 0L, null, 63, null);
    }

    public Hitrate(String str, String str2, String str3, String str4, long j, DataWrapper dataWrapper) {
        C15149k.m377b(str, "id");
        C15149k.m377b(str2, "aws_id");
        C15149k.m377b(str3, "data_id");
        C15149k.m377b(str4, "nginx_id");
        C15149k.m377b(dataWrapper, "data");
        this.f6160id = str;
        this.aws_id = str2;
        this.data_id = str3;
        this.nginx_id = str4;
        this.f6161ts = j;
        this.data = dataWrapper;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public /* synthetic */ Hitrate(java.lang.String r10, java.lang.String r11, java.lang.String r12, java.lang.String r13, long r14, com.gogolook.whoscallsdk.core.num.data.DataWrapper r16, int r17, p626l.p641z.p643d.C15145g r18) {
        /*
            r9 = this;
            java.lang.String r0 = ""
            r18 = r0
            r0 = r17
            r1 = 1
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0011
            java.lang.String r0 = ""
            r10 = r0
            goto L_0x0011
        L_0x0011:
            r0 = r17
            r1 = 2
            r0 = r0 & r1
            if (r0 == 0) goto L_0x001e
            java.lang.String r0 = ""
            r11 = r0
            goto L_0x001e
        L_0x001e:
            r0 = r17
            r1 = 4
            r0 = r0 & r1
            if (r0 == 0) goto L_0x002b
            java.lang.String r0 = ""
            r12 = r0
            goto L_0x002b
        L_0x002b:
            r0 = r17
            r1 = 8
            r0 = r0 & r1
            if (r0 == 0) goto L_0x003a
            r0 = r18
            r13 = r0
            goto L_0x003a
        L_0x003a:
            r0 = r17
            r1 = 16
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0047
            long r0 = java.lang.System.currentTimeMillis()
            r14 = r0
        L_0x0047:
            r0 = r17
            r1 = 32
            r0 = r0 & r1
            if (r0 == 0) goto L_0x0061
            com.gogolook.whoscallsdk.core.num.data.DataWrapper r0 = new com.gogolook.whoscallsdk.core.num.data.DataWrapper
            r1 = r0
            r2 = 0
            r3 = 0
            r4 = 0
            r5 = 7
            r6 = 0
            r1.<init>(r2, r3, r4, r5, r6)
            r16 = r0
            goto L_0x0061
        L_0x0061:
            r0 = r9
            r1 = r10
            r2 = r11
            r3 = r12
            r4 = r13
            r5 = r14
            r6 = r16
            r0.<init>(r1, r2, r3, r4, r5, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.gogolook.whoscallsdk.core.num.data.Hitrate.<init>(java.lang.String, java.lang.String, java.lang.String, java.lang.String, long, com.gogolook.whoscallsdk.core.num.data.DataWrapper, int, l.z.d.g):void");
    }

    public static /* synthetic */ Hitrate copy$default(Hitrate hitrate, String str, String str2, String str3, String str4, long j, DataWrapper dataWrapper, int i, Object obj) {
        if ((i & 1) != 0) {
            str = hitrate.f6160id;
        }
        if ((i & 2) != 0) {
            str2 = hitrate.aws_id;
        }
        if ((i & 4) != 0) {
            str3 = hitrate.data_id;
        }
        if ((i & 8) != 0) {
            str4 = hitrate.nginx_id;
        }
        if ((i & 16) != 0) {
            j = hitrate.f6161ts;
        }
        if ((i & 32) != 0) {
            dataWrapper = hitrate.data;
        }
        return hitrate.copy(str, str2, str3, str4, j, dataWrapper);
    }

    public final String component1() {
        return this.f6160id;
    }

    public final String component2() {
        return this.aws_id;
    }

    public final String component3() {
        return this.data_id;
    }

    public final String component4() {
        return this.nginx_id;
    }

    public final long component5() {
        return this.f6161ts;
    }

    public final DataWrapper component6() {
        return this.data;
    }

    public final Hitrate copy(String str, String str2, String str3, String str4, long j, DataWrapper dataWrapper) {
        C15149k.m377b(str, "id");
        C15149k.m377b(str2, "aws_id");
        C15149k.m377b(str3, "data_id");
        C15149k.m377b(str4, "nginx_id");
        C15149k.m377b(dataWrapper, "data");
        return new Hitrate(str, str2, str3, str4, j, dataWrapper);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Hitrate)) {
            return false;
        }
        Hitrate hitrate = (Hitrate) obj;
        if (!C15149k.m384a((Object) this.f6160id, (Object) hitrate.f6160id) || !C15149k.m384a((Object) this.aws_id, (Object) hitrate.aws_id) || !C15149k.m384a((Object) this.data_id, (Object) hitrate.data_id) || !C15149k.m384a((Object) this.nginx_id, (Object) hitrate.nginx_id)) {
            return false;
        }
        return ((this.f6161ts > hitrate.f6161ts ? 1 : (this.f6161ts == hitrate.f6161ts ? 0 : -1)) == 0) && C15149k.m384a(this.data, hitrate.data);
    }

    public final String getAws_id() {
        return this.aws_id;
    }

    public final DataWrapper getData() {
        return this.data;
    }

    public final String getData_id() {
        return this.data_id;
    }

    public final String getId() {
        return this.f6160id;
    }

    public final String getNginx_id() {
        return this.nginx_id;
    }

    public final long getTs() {
        return this.f6161ts;
    }

    public int hashCode() {
        String str = this.f6160id;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.aws_id;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.data_id;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.nginx_id;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        long j = this.f6161ts;
        int i2 = (int) (j ^ (j >>> 32));
        DataWrapper dataWrapper = this.data;
        if (dataWrapper != null) {
            i = dataWrapper.hashCode();
        }
        return (((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + i;
    }

    public final void setAws_id(String str) {
        C15149k.m377b(str, "<set-?>");
        this.aws_id = str;
    }

    public final void setData(DataWrapper dataWrapper) {
        C15149k.m377b(dataWrapper, "<set-?>");
        this.data = dataWrapper;
    }

    public final void setData_id(String str) {
        C15149k.m377b(str, "<set-?>");
        this.data_id = str;
    }

    public final void setId(String str) {
        C15149k.m377b(str, "<set-?>");
        this.f6160id = str;
    }

    public final void setNginx_id(String str) {
        C15149k.m377b(str, "<set-?>");
        this.nginx_id = str;
    }

    public final void setTs(long j) {
        this.f6161ts = j;
    }

    public String toString() {
        return "Hitrate(id=" + this.f6160id + ", aws_id=" + this.aws_id + ", data_id=" + this.data_id + ", nginx_id=" + this.nginx_id + ", ts=" + this.f6161ts + ", data=" + this.data + ")";
    }
}
