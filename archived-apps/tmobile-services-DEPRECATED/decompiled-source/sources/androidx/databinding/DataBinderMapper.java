package androidx.databinding;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.util.Collections;
import java.util.List;
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/databinding/DataBinderMapper.class */
public abstract class DataBinderMapper {
    @NonNull
    /* renamed from: a */
    public List<DataBinderMapper> mo7661a() {
        return Collections.emptyList();
    }

    /* renamed from: b */
    public abstract ViewDataBinding mo7660b(DataBindingComponent dataBindingComponent, View view, int i);

    /* renamed from: c */
    public abstract ViewDataBinding mo7659c(DataBindingComponent dataBindingComponent, View[] viewArr, int i);
}
