package p193e.p194a.p372b0.p406e;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.backup.BackupManager;
import com.truecaller.log.AssertionUtil;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import s1.z.c.l;
/* renamed from: e.a.b0.e.k */
/* loaded from: classes7-dex2jar.jar:e/a/b0/e/k.class */
public final class C8431k {

    /* renamed from: a */
    public final String f26116a;

    /* renamed from: b */
    public final String f26117b;

    /* renamed from: c */
    public final File f26118c;

    /* renamed from: d */
    public final AccountManager f26119d;

    /* renamed from: e */
    public final BackupManager f26120e;

    /* renamed from: f */
    public final AbstractC8438a f26121f;

    @Inject
    public C8431k(@Named("account_name") String str, @Named("account_type") String str2, @Named("backup_file") File file, AccountManager accountManager, BackupManager backupManager, AbstractC8438a abstractC8438a) {
        l.e(str, "accountName");
        l.e(str2, "accountType");
        l.e(file, "backupFile");
        l.e(accountManager, "accountManager");
        l.e(backupManager, "backupManager");
        l.e(abstractC8438a, "accountSettings");
        this.f26116a = str;
        this.f26117b = str2;
        this.f26118c = file;
        this.f26119d = accountManager;
        this.f26120e = backupManager;
        this.f26121f = abstractC8438a;
    }

    /* renamed from: a */
    public final Account m28585a() {
        Account[] accountsByType = this.f26119d.getAccountsByType(this.f26117b);
        l.d(accountsByType, "accountManager.getAccountsByType(accountType)");
        return (Account) C25225a.m3830v0(accountsByType);
    }

    /* renamed from: b */
    public void m28584b(C8416c c8416c) {
        boolean z;
        l.e(c8416c, "accountState");
        Account m28585a = m28585a();
        Account account = m28585a;
        if (m28585a == null) {
            try {
                z = this.f26119d.addAccountExplicitly(new Account(this.f26116a, this.f26117b), null, null);
            } catch (SecurityException e) {
                AssertionUtil.reportThrowableButNeverCrash(e);
                z = false;
            }
            account = m28585a;
            if (z) {
                account = m28585a();
            }
        }
        if (account != null) {
            this.f26119d.setAuthToken(account, "installation_id_backup", c8416c.f26096a);
            this.f26119d.setUserData(account, "normalized_number_backup", c8416c.f26097b.f26095b);
            this.f26119d.setUserData(account, "country_code_backup", c8416c.f26097b.f26094a);
            AccountManager accountManager = this.f26119d;
            C8415b c8415b = c8416c.f26098c;
            accountManager.setUserData(account, "secondary_normalized_number_backup", c8415b != null ? c8415b.f26095b : null);
            AccountManager accountManager2 = this.f26119d;
            C8415b c8415b2 = c8416c.f26098c;
            accountManager2.setUserData(account, "secondary_country_code_backup", c8415b2 != null ? c8415b2.f26094a : null);
        }
        try {
            DataOutputStream dataOutputStream = new DataOutputStream(new FileOutputStream(this.f26118c));
            dataOutputStream.writeInt(3);
            dataOutputStream.writeUTF(c8416c.f26096a);
            dataOutputStream.writeUTF(c8416c.f26097b.f26094a);
            dataOutputStream.writeUTF(c8416c.f26097b.f26095b);
            if (c8416c.f26098c == null) {
                dataOutputStream.writeBoolean(false);
            } else {
                dataOutputStream.writeBoolean(true);
                dataOutputStream.writeUTF(c8416c.f26098c.f26094a);
                dataOutputStream.writeUTF(c8416c.f26098c.f26095b);
            }
            C25225a.m4016G(dataOutputStream, null);
        } catch (IOException e2) {
            AssertionUtil.reportThrowableButNeverCrash(e2);
        }
        this.f26120e.dataChanged();
    }
}
