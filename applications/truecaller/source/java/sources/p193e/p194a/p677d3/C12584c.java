package p193e.p194a.p677d3;

import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import com.truecaller.log.AssertionUtil;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import s1.z.c.l;
/* renamed from: e.a.d3.c */
/* loaded from: classes6-dex2jar.jar:e/a/d3/c.class */
public final class C12584c implements AbstractC12583b {

    /* renamed from: a */
    public final File f36718a;

    @Inject
    public C12584c(File file) {
        l.e(file, "businessCardFile");
        this.f36718a = file;
    }

    @Override // p193e.p194a.p677d3.AbstractC12583b
    /* renamed from: a */
    public SignedBusinessCard mo22860a() {
        File file = this.f36718a;
        SignedBusinessCard signedBusinessCard = null;
        if (file.exists()) {
            try {
                DataInputStream dataInputStream = new DataInputStream(new FileInputStream(file));
                SignedBusinessCard parseFrom = SignedBusinessCard.parseFrom(dataInputStream);
                C25225a.m4016G(dataInputStream, null);
                signedBusinessCard = parseFrom;
            } catch (IOException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                C19291g.m13543i1(file);
            }
        }
        return signedBusinessCard;
    }

    @Override // p193e.p194a.p677d3.AbstractC12583b
    /* renamed from: b */
    public boolean mo22859b(SignedBusinessCard signedBusinessCard) {
        l.e(signedBusinessCard, "businessCard");
        boolean z = false;
        if (mo22860a() == null || this.f36718a.delete()) {
            try {
                DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f36718a));
                signedBusinessCard.writeTo(dataOutputStream);
                C25225a.m4016G(dataOutputStream, null);
                z = true;
            } catch (Exception e) {
                if (!(e instanceof IOException) && !(e instanceof SecurityException)) {
                    throw e;
                }
                AssertionUtil.reportThrowableButNeverCrash(e);
            }
            return z;
        }
        return false;
    }
}
