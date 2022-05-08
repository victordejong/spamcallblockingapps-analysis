package org.mozilla.javascript;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
/* loaded from: classes2-dex2jar.jar:org/mozilla/javascript/ObjArray.class */
public class ObjArray implements Serializable {
    private static final int FIELDS_STORE_SIZE = 5;
    static final long serialVersionUID = 4174889037736658296L;
    private transient Object[] data;

    /* renamed from: f0 */
    private transient Object f776f0;

    /* renamed from: f1 */
    private transient Object f777f1;

    /* renamed from: f2 */
    private transient Object f778f2;

    /* renamed from: f3 */
    private transient Object f779f3;

    /* renamed from: f4 */
    private transient Object f780f4;
    private boolean sealed;
    private int size;

    private void ensureCapacity(int i) {
        int i2 = i - 5;
        if (i2 <= 0) {
            throw new IllegalArgumentException();
        } else if (this.data == null) {
            if (10 >= i2) {
                i2 = 10;
            }
            this.data = new Object[i2];
        } else {
            int length = this.data.length;
            if (length < i2) {
                int i3 = length <= 5 ? 10 : length * 2;
                if (i3 >= i2) {
                    i2 = i3;
                }
                Object[] objArr = new Object[i2];
                if (this.size > 5) {
                    System.arraycopy(this.data, 0, objArr, 0, this.size - 5);
                }
                this.data = objArr;
            }
        }
    }

    private Object getImpl(int i) {
        switch (i) {
            case 0:
                return this.f776f0;
            case 1:
                return this.f777f1;
            case 2:
                return this.f778f2;
            case 3:
                return this.f779f3;
            case 4:
                return this.f780f4;
            default:
                return this.data[i - 5];
        }
    }

    private static RuntimeException onEmptyStackTopRead() {
        throw new RuntimeException("Empty stack");
    }

    private static RuntimeException onInvalidIndex(int i, int i2) {
        throw new IndexOutOfBoundsException(i + " ∉ [0, " + i2 + ')');
    }

    private static RuntimeException onSeledMutation() {
        throw new IllegalStateException("Attempt to modify sealed array");
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        int i = this.size;
        if (i > 5) {
            this.data = new Object[i - 5];
        }
        for (int i2 = 0; i2 != i; i2++) {
            setImpl(i2, objectInputStream.readObject());
        }
    }

    private void setImpl(int i, Object obj) {
        switch (i) {
            case 0:
                this.f776f0 = obj;
                return;
            case 1:
                this.f777f1 = obj;
                return;
            case 2:
                this.f778f2 = obj;
                return;
            case 3:
                this.f779f3 = obj;
                return;
            case 4:
                this.f780f4 = obj;
                return;
            default:
                this.data[i - 5] = obj;
                return;
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        int i = this.size;
        for (int i2 = 0; i2 != i; i2++) {
            objectOutputStream.writeObject(getImpl(i2));
        }
    }

    public final void add(int i, Object obj) {
        int i2 = this.size;
        if (i < 0 || i > i2) {
            throw onInvalidIndex(i, i2 + 1);
        } else if (this.sealed) {
            throw onSeledMutation();
        } else {
            Object obj2 = obj;
            Object obj3 = obj;
            switch (i) {
                case 0:
                    if (i2 == 0) {
                        this.f776f0 = obj;
                        break;
                    } else {
                        obj = this.f776f0;
                        this.f776f0 = obj;
                    }
                case 1:
                    if (i2 == 1) {
                        this.f777f1 = obj;
                        break;
                    } else {
                        obj2 = this.f777f1;
                        this.f777f1 = obj;
                    }
                case 2:
                    if (i2 == 2) {
                        this.f778f2 = obj2;
                        break;
                    } else {
                        obj = this.f778f2;
                        this.f778f2 = obj2;
                    }
                case 3:
                    if (i2 == 3) {
                        this.f779f3 = obj;
                        break;
                    } else {
                        obj3 = this.f779f3;
                        this.f779f3 = obj;
                    }
                case 4:
                    if (i2 == 4) {
                        this.f780f4 = obj3;
                        break;
                    } else {
                        obj = this.f780f4;
                        this.f780f4 = obj3;
                        i = 5;
                    }
                default:
                    ensureCapacity(i2 + 1);
                    if (i != i2) {
                        int i3 = i - 5;
                        System.arraycopy(this.data, i3, this.data, i3 + 1, i2 - i);
                    }
                    this.data[i - 5] = obj;
                    break;
            }
            this.size = i2 + 1;
        }
    }

    public final void add(Object obj) {
        if (this.sealed) {
            throw onSeledMutation();
        }
        int i = this.size;
        if (i >= 5) {
            ensureCapacity(i + 1);
        }
        this.size = i + 1;
        setImpl(i, obj);
    }

    public final void clear() {
        if (this.sealed) {
            throw onSeledMutation();
        }
        int i = this.size;
        for (int i2 = 0; i2 != i; i2++) {
            setImpl(i2, null);
        }
        this.size = 0;
    }

    public final Object get(int i) {
        if (i >= 0 && i < this.size) {
            return getImpl(i);
        }
        throw onInvalidIndex(i, this.size);
    }

    public int indexOf(Object obj) {
        int i = this.size;
        for (int i2 = 0; i2 != i; i2++) {
            Object impl = getImpl(i2);
            if (impl == obj || (impl != null && impl.equals(obj))) {
                return i2;
            }
        }
        return -1;
    }

    public final boolean isEmpty() {
        return this.size == 0;
    }

    public final boolean isSealed() {
        return this.sealed;
    }

    public int lastIndexOf(Object obj) {
        int i = this.size;
        while (i != 0) {
            int i2 = i - 1;
            Object impl = getImpl(i2);
            if (impl != obj) {
                i = i2;
                if (impl != null) {
                    i = i2;
                    if (impl.equals(obj)) {
                    }
                }
            }
            return i2;
        }
        return -1;
    }

    public final Object peek() {
        int i = this.size;
        if (i != 0) {
            return getImpl(i - 1);
        }
        throw onEmptyStackTopRead();
    }

    public final Object pop() {
        Object obj;
        if (this.sealed) {
            throw onSeledMutation();
        }
        int i = this.size - 1;
        switch (i) {
            case -1:
                throw onEmptyStackTopRead();
            case 0:
                obj = this.f776f0;
                this.f776f0 = null;
                break;
            case 1:
                obj = this.f777f1;
                this.f777f1 = null;
                break;
            case 2:
                obj = this.f778f2;
                this.f778f2 = null;
                break;
            case 3:
                obj = this.f779f3;
                this.f779f3 = null;
                break;
            case 4:
                obj = this.f780f4;
                this.f780f4 = null;
                break;
            default:
                int i2 = i - 5;
                obj = this.data[i2];
                this.data[i2] = null;
                break;
        }
        this.size = i;
        return obj;
    }

    public final void push(Object obj) {
        add(obj);
    }

    public final void remove(int i) {
        int i2 = this.size;
        if (i < 0 || i >= i2) {
            throw onInvalidIndex(i, i2);
        } else if (this.sealed) {
            throw onSeledMutation();
        } else {
            int i3 = i2 - 1;
            switch (i) {
                case 0:
                    if (i3 == 0) {
                        this.f776f0 = null;
                        break;
                    } else {
                        this.f776f0 = this.f777f1;
                    }
                case 1:
                    if (i3 == 1) {
                        this.f777f1 = null;
                        break;
                    } else {
                        this.f777f1 = this.f778f2;
                    }
                case 2:
                    if (i3 == 2) {
                        this.f778f2 = null;
                        break;
                    } else {
                        this.f778f2 = this.f779f3;
                    }
                case 3:
                    if (i3 == 3) {
                        this.f779f3 = null;
                        break;
                    } else {
                        this.f779f3 = this.f780f4;
                    }
                case 4:
                    if (i3 == 4) {
                        this.f780f4 = null;
                        break;
                    } else {
                        this.f780f4 = this.data[0];
                        i = 5;
                    }
                default:
                    if (i != i3) {
                        int i4 = i - 5;
                        System.arraycopy(this.data, i4 + 1, this.data, i4, i3 - i);
                    }
                    this.data[i3 - 5] = null;
                    break;
            }
            this.size = i3;
        }
    }

    public final void seal() {
        this.sealed = true;
    }

    public final void set(int i, Object obj) {
        if (i < 0 || i >= this.size) {
            throw onInvalidIndex(i, this.size);
        } else if (this.sealed) {
            throw onSeledMutation();
        } else {
            setImpl(i, obj);
        }
    }

    public final void setSize(int i) {
        if (i < 0) {
            throw new IllegalArgumentException();
        } else if (this.sealed) {
            throw onSeledMutation();
        } else {
            int i2 = this.size;
            if (i < i2) {
                for (int i3 = i; i3 != i2; i3++) {
                    setImpl(i3, null);
                }
            } else if (i > i2 && i > 5) {
                ensureCapacity(i);
            }
            this.size = i;
        }
    }

    public final int size() {
        return this.size;
    }

    public final void toArray(Object[] objArr) {
        toArray(objArr, 0);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final void toArray(Object[] objArr, int i) {
        int i2 = this.size;
        switch (i2) {
            case 0:
                return;
            case 1:
                break;
            case 2:
                objArr[i + 1] = this.f777f1;
                break;
            case 3:
                objArr[i + 2] = this.f778f2;
                objArr[i + 1] = this.f777f1;
                break;
            case 4:
                objArr[i + 3] = this.f779f3;
                objArr[i + 2] = this.f778f2;
                objArr[i + 1] = this.f777f1;
                break;
            case 5:
                objArr[i + 4] = this.f780f4;
                objArr[i + 3] = this.f779f3;
                objArr[i + 2] = this.f778f2;
                objArr[i + 1] = this.f777f1;
                break;
            default:
                System.arraycopy(this.data, 0, objArr, i + 5, i2 - 5);
                objArr[i + 4] = this.f780f4;
                objArr[i + 3] = this.f779f3;
                objArr[i + 2] = this.f778f2;
                objArr[i + 1] = this.f777f1;
                break;
        }
        objArr[i + 0] = this.f776f0;
    }

    public final Object[] toArray() {
        Object[] objArr = new Object[this.size];
        toArray(objArr, 0);
        return objArr;
    }
}
