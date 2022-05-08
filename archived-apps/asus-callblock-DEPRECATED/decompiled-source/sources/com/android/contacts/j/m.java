package com.android.contacts.j;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/m.class */
public final class m extends Thread {
    private f d;
    private final String c = "SmartDialUnbundle";

    /* renamed from: a  reason: collision with root package name */
    public boolean f1557a = false;

    /* renamed from: b  reason: collision with root package name */
    boolean f1558b = false;
    private Comparator<i> f = new Comparator<i>() { // from class: com.android.contacts.j.m.1
        @Override // java.util.Comparator
        public final /* synthetic */ int compare(i iVar, i iVar2) {
            int i = 1;
            i iVar3 = iVar;
            i iVar4 = iVar2;
            if (iVar3.h && iVar4.h) {
                int size = iVar4.f.size() - iVar3.f.size();
                if (size <= 0) {
                    i = size == 0 ? 0 : -1;
                }
            } else if (iVar3.h) {
                i = -1;
            } else if (!iVar4.h) {
                i = j.a().a(iVar4.f1545a) - j.a().a(iVar3.f1545a);
            }
            return i;
        }
    };
    private int e = 0;

    public m(f fVar) {
        this.d = fVar;
    }

    private void a() {
        f fVar = this.d;
        i[] e = fVar.f1525b != null ? fVar.f1525b.e() : null;
        if (e != null) {
            Arrays.sort(e, this.f);
            f fVar2 = this.d;
            if (fVar2.f1525b != null) {
                fVar2.f1525b.c();
            }
            for (i iVar : e) {
                this.d.a(iVar);
            }
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        int i;
        c cVar;
        Log.d("SmartDialUnbundle", "SmartDialWordingTask run");
        this.f1558b = true;
        j.a().c = this.f1558b;
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = 0;
        do {
            i a2 = j.a().a(this.e, true);
            i = i2;
            if (a2 == null) {
                break;
            }
            this.e++;
            if (a2.h) {
                this.d.a(a2);
            } else {
                f fVar = this.d;
                if (fVar.f1525b != null) {
                    fVar.f1525b.b(a2);
                }
            }
            i = i2;
            if (!TextUtils.isEmpty(this.d.d)) {
                int i3 = i2 + 1;
                i = i3;
                if (i3 % 1000 == 0) {
                    this.d.b();
                    i = 0;
                }
            }
            i2 = i;
        } while (!this.f1557a);
        if (i > 0) {
            this.d.b();
        }
        StringBuilder sb = new StringBuilder("[Time] SmartDialWordingTask done. #WordingData=");
        f fVar2 = this.d;
        Log.d("SmartDialUnbundle", sb.append(fVar2.f1525b != null ? fVar2.f1525b.d() : 0).append(". Spent=").append(System.currentTimeMillis() - currentTimeMillis).append(" ms.").toString());
        a();
        this.d.b();
        this.f1558b = false;
        f fVar3 = this.d;
        if (fVar3.f1525b != null) {
            fVar3.f1525b.e = j.a().f1552b;
            Log.d("SmartDialUnbundle", "ContactsListSearcher setWordDataTimeStamp= " + cVar.e);
        }
        j.a().c = this.f1558b;
        if (j.a().d) {
            if (this.d.j != null) {
                this.d.j.a(2, true);
            }
            j.a().d = false;
        }
        Log.d("SmartDialUnbundle", "SmartDialWordingTask finish");
    }
}
