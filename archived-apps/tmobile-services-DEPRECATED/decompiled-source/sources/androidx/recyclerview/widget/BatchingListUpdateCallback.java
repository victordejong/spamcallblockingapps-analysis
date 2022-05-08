package androidx.recyclerview.widget;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/recyclerview/widget/BatchingListUpdateCallback.class */
public class BatchingListUpdateCallback implements ListUpdateCallback {

    /* renamed from: f */
    final ListUpdateCallback f4439f;

    /* renamed from: g */
    int f4440g = 0;

    /* renamed from: h */
    int f4441h = -1;

    /* renamed from: i */
    int f4442i = -1;

    /* renamed from: j */
    Object f4443j = null;

    public BatchingListUpdateCallback(@NonNull ListUpdateCallback listUpdateCallback) {
        this.f4439f = listUpdateCallback;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: a */
    public void mo17217a(int i, int i2) {
        m17844e();
        this.f4439f.mo17217a(i, i2);
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: b */
    public void mo17216b(int i, int i2) {
        int i3;
        if (this.f4440g == 1 && i >= (i3 = this.f4441h)) {
            int i4 = this.f4442i;
            if (i <= i3 + i4) {
                this.f4442i = i4 + i2;
                this.f4441h = Math.min(i, i3);
                return;
            }
        }
        m17844e();
        this.f4441h = i;
        this.f4442i = i2;
        this.f4440g = 1;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: c */
    public void mo17215c(int i, int i2) {
        int i3;
        if (this.f4440g != 2 || (i3 = this.f4441h) < i || i3 > i + i2) {
            m17844e();
            this.f4441h = i;
            this.f4442i = i2;
            this.f4440g = 2;
            return;
        }
        this.f4442i += i2;
        this.f4441h = i;
    }

    @Override // androidx.recyclerview.widget.ListUpdateCallback
    /* renamed from: d */
    public void mo17214d(int i, int i2, Object obj) {
        int i3;
        if (this.f4440g == 3) {
            int i4 = this.f4441h;
            int i5 = this.f4442i;
            if (i <= i4 + i5 && (i3 = i + i2) >= i4 && this.f4443j == obj) {
                this.f4441h = Math.min(i, i4);
                this.f4442i = Math.max(i5 + i4, i3) - this.f4441h;
                return;
            }
        }
        m17844e();
        this.f4441h = i;
        this.f4442i = i2;
        this.f4443j = obj;
        this.f4440g = 3;
    }

    /* renamed from: e */
    public void m17844e() {
        int i = this.f4440g;
        if (i != 0) {
            if (i == 1) {
                this.f4439f.mo17216b(this.f4441h, this.f4442i);
            } else if (i == 2) {
                this.f4439f.mo17215c(this.f4441h, this.f4442i);
            } else if (i == 3) {
                this.f4439f.mo17214d(this.f4441h, this.f4442i, this.f4443j);
            }
            this.f4443j = null;
            this.f4440g = 0;
        }
    }
}
