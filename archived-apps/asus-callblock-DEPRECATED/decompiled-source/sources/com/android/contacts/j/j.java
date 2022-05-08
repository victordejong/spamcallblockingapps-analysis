package com.android.contacts.j;

import android.content.Context;
import android.util.Log;
import android.util.LongSparseArray;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/contacts/j/j.class */
public class j {
    private static j e = null;
    private k g;

    /* renamed from: b  reason: collision with root package name */
    public long f1552b = 0;
    boolean c = false;
    boolean d = false;

    /* renamed from: a  reason: collision with root package name */
    LongSparseArray<Integer> f1551a = new LongSparseArray<>();
    private ArrayList<i> f = new ArrayList<>();

    protected j() {
        Log.d("SmartDialUnbundle", "SmartDialData init");
    }

    public static j a() {
        if (e == null) {
            synchronized (j.class) {
                try {
                    if (e == null) {
                        e = new j();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return e;
    }

    public static String a(int i) {
        String str;
        switch (i) {
            case 1:
                str = new String("LOAD_DATA_PRIORITY LOW");
                break;
            case 2:
                str = new String("LOAD_DATA_PRIORITY NORMAL");
                break;
            case 3:
                str = new String("LOAD_DATA_PRIORITY HIGH");
                break;
            default:
                str = new String("Type Not Supported.");
                break;
        }
        return str;
    }

    public final int a(long j) {
        int i;
        if (this.f1551a != null) {
            synchronized (this.f1551a) {
                Integer num = this.f1551a.get(j);
                i = num == null ? 0 : num.intValue();
            }
        } else {
            i = 0;
        }
        return i;
    }

    public final i a(int i, boolean z) {
        i iVar;
        synchronized (this) {
            if (this.f != null) {
                if ((this.g != null && this.g.f1553a) || (this.g != null && z && this.g.f1554b)) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException e2) {
                            e2.printStackTrace();
                        }
                        iVar = null;
                        if (this.f != null) {
                            if (this.f.size() <= i) {
                                iVar = null;
                                if (this.g != null) {
                                    if (!this.g.b()) {
                                        iVar = null;
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                iVar = this.f.get(i);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } else if (this.g == null || !this.g.b()) {
                    iVar = null;
                    if (this.f.size() > i) {
                        iVar = null;
                        if (i >= 0) {
                            iVar = this.f.get(i);
                        }
                    }
                } else if (this.f.size() <= i || i < 0) {
                    while (true) {
                        try {
                            wait();
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                        iVar = null;
                        if (this.f != null) {
                            if (this.f.size() <= i) {
                                iVar = null;
                                if (this.g != null) {
                                    if (!this.g.b()) {
                                        iVar = null;
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            } else {
                                iVar = this.f.get(i);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    iVar = this.f.get(i);
                }
            } else {
                iVar = null;
            }
        }
        return iVar;
    }

    public final void a(Context context, int i) {
        Log.d("SmartDialUnbundle", "SmartDialData loadContactDataTask");
        if (this.g == null) {
            this.g = new k(context);
            this.d = this.g.a(i);
            this.g.start();
        } else if (!this.g.b()) {
            this.g = null;
            this.g = new k(context);
            this.d = this.g.a(i);
            this.g.start();
        } else if (this.g.c != 2) {
            int max = Math.max(this.g.c, i);
            this.g.a();
            this.g = null;
            this.g = new k(context);
            this.d = this.g.a(max);
            this.g.start();
        }
    }

    public final void a(i iVar) {
        synchronized (this) {
            if (this.f != null) {
                this.f.add(iVar);
            }
            if (c() % 100 == 0 && this.c) {
                notify();
            }
        }
    }

    public final void b() {
        synchronized (this) {
            notify();
        }
    }

    public final void b(int i) {
        synchronized (this) {
            try {
                if (this.f != null) {
                    this.f.remove(i);
                }
            } catch (IndexOutOfBoundsException e2) {
                Log.e("SmartDialUnbundle", "Exception occurred in SmartDialData.remove, msg: " + e2.getMessage());
            }
        }
    }

    public final int c() {
        return this.f == null ? 0 : this.f.size();
    }

    public final void d() {
        synchronized (this) {
            Log.d("SmartDialUnbundle", "SmartDialData reset");
            if (this.f != null) {
                this.f.clear();
                this.f.trimToSize();
            }
            if (this.f1551a != null) {
                this.f1551a.clear();
            }
        }
    }

    public final void e() {
        synchronized (this) {
            Log.d("SmartDialUnbundle", "SmartDialData finish");
            if (this.f != null) {
                this.f.clear();
                this.f.trimToSize();
                this.f = null;
            }
            if (this.f1551a != null) {
                this.f1551a.clear();
                this.f1551a = null;
            }
            if (this.g != null) {
                if (this.g.b()) {
                    this.g.a();
                }
                this.g = null;
            }
            this.f1552b = 0L;
            e = null;
        }
    }

    public final void f() {
        this.f1552b++;
    }
}
