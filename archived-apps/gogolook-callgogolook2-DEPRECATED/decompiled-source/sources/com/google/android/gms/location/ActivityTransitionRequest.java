package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;
import p081h.p203i.p204a.p224e.p235d.p240n.C7018s;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p240n.p241x.C7031b;
import p081h.p203i.p204a.p224e.p280k.C8852y;
import p081h.p203i.p204a.p224e.p280k.C8853z;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ActivityTransitionRequest.class */
public class ActivityTransitionRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new C8853z();

    /* renamed from: d */
    public static final Comparator<ActivityTransition> f6919d = new C8852y();

    /* renamed from: a */
    public final List<ActivityTransition> f6920a;
    @Nullable

    /* renamed from: b */
    public final String f6921b;

    /* renamed from: c */
    public final List<ClientIdentity> f6922c;

    public ActivityTransitionRequest(List<ActivityTransition> list, @Nullable String str, @Nullable List<ClientIdentity> list2) {
        C7021t.m21289a(list, "transitions can't be null");
        C7021t.m21285a(list.size() > 0, "transitions can't be empty.");
        TreeSet treeSet = new TreeSet(f6919d);
        for (ActivityTransition activityTransition : list) {
            C7021t.m21285a(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.f6920a = Collections.unmodifiableList(list);
        this.f6921b = str;
        this.f6922c = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityTransitionRequest.class != obj.getClass()) {
            return false;
        }
        ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
        return C7018s.m21297a(this.f6920a, activityTransitionRequest.f6920a) && C7018s.m21297a(this.f6921b, activityTransitionRequest.f6921b) && C7018s.m21297a(this.f6922c, activityTransitionRequest.f6922c);
    }

    public int hashCode() {
        int hashCode = this.f6920a.hashCode();
        String str = this.f6921b;
        int i = 0;
        int hashCode2 = str != null ? str.hashCode() : 0;
        List<ClientIdentity> list = this.f6922c;
        if (list != null) {
            i = list.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        String valueOf = String.valueOf(this.f6920a);
        String str = this.f6921b;
        String valueOf2 = String.valueOf(this.f6922c);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 61 + String.valueOf(str).length() + String.valueOf(valueOf2).length());
        sb.append("ActivityTransitionRequest [mTransitions=");
        sb.append(valueOf);
        sb.append(", mTag='");
        sb.append(str);
        sb.append('\'');
        sb.append(", mClients=");
        sb.append(valueOf2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int a = C7031b.m21230a(parcel);
        C7031b.m21201c(parcel, 1, this.f6920a, false);
        C7031b.m21215a(parcel, 2, this.f6921b, false);
        C7031b.m21201c(parcel, 3, this.f6922c, false);
        C7031b.m21229a(parcel, a);
    }
}
