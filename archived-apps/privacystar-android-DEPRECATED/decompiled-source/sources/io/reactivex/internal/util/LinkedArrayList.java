package io.reactivex.internal.util;

import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/util/LinkedArrayList.class */
public class LinkedArrayList {
    final int capacityHint;
    Object[] head;
    int indexInTail;
    volatile int size;
    Object[] tail;

    public LinkedArrayList(int i) {
        this.capacityHint = i;
    }

    public void add(Object obj) {
        if (this.size == 0) {
            this.head = new Object[this.capacityHint + 1];
            this.tail = this.head;
            this.head[0] = obj;
            this.indexInTail = 1;
            this.size = 1;
        } else if (this.indexInTail == this.capacityHint) {
            Object[] objArr = new Object[this.capacityHint + 1];
            objArr[0] = obj;
            this.tail[this.capacityHint] = objArr;
            this.tail = objArr;
            this.indexInTail = 1;
            this.size++;
        } else {
            this.tail[this.indexInTail] = obj;
            this.indexInTail++;
            this.size++;
        }
    }

    public Object[] head() {
        return this.head;
    }

    public int size() {
        return this.size;
    }

    public String toString() {
        int i;
        int i2 = this.capacityHint;
        int i3 = this.size;
        ArrayList arrayList = new ArrayList(i3 + 1);
        Object[] head = head();
        int i4 = 0;
        while (true) {
            int i5 = 0;
            while (i4 < i3) {
                arrayList.add(head[i5]);
                i = i4 + 1;
                int i6 = i5 + 1;
                i4 = i;
                i5 = i6;
                if (i6 == i2) {
                    break;
                }
            }
            return arrayList.toString();
            head = head[i2];
            i4 = i;
        }
    }
}
