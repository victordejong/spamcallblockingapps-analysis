package p081h.p203i.p204a.p224e.p280k;

import android.location.Location;
import androidx.annotation.RequiresPermission;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationRequest;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6825f;
import p081h.p203i.p204a.p224e.p235d.p236k.AbstractC6829g;
@Deprecated
/* renamed from: h.i.a.e.k.c */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/c.class */
public interface AbstractC8817c {
    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    /* renamed from: a */
    Location mo16894a(AbstractC6825f fVar);

    @RequiresPermission(anyOf = {"android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION"})
    /* renamed from: a */
    AbstractC6829g<Status> mo16893a(AbstractC6825f fVar, LocationRequest locationRequest, AbstractC8825g gVar);

    /* renamed from: a */
    AbstractC6829g<Status> mo16892a(AbstractC6825f fVar, AbstractC8825g gVar);
}
