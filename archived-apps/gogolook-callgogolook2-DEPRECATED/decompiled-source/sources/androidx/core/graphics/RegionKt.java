package androidx.core.graphics;

import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.RegionIterator;
import com.flurry.sdk.C3496r;
import java.util.Iterator;
import kotlin.Metadata;
import p626l.C14989s;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��4\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010(\n\u0002\b\u0007\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010��\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u0004\u001a\u00020\u0005*\u00020\u00012\u0006\u0010\u0006\u001a\u00020\u0007H\u0086\n\u001a0\u0010\b\u001a\u00020\t*\u00020\u00012!\u0010\n\u001a\u001d\u0012\u0013\u0012\u00110\u0003¢\u0006\f\b\f\u0012\b\b\r\u0012\u0004\b\b(\u000e\u0012\u0004\u0012\u00020\t0\u000bH\u0086\b\u001a\u0013\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00030\u0010*\u00020\u0001H\u0086\u0002\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0011\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u0012\u001a\u00020\u0001*\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0013\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\n\u001a\u0015\u0010\u0014\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\n\u001a\r\u0010\u0015\u001a\u00020\u0001*\u00020\u0001H\u0086\n\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\u0086\f\u001a\u0015\u0010\u0016\u001a\u00020\u0001*\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0001H\u0086\f¨\u0006\u0017"}, m815d2 = {"and", "Landroid/graphics/Region;", C3496r.f6031a, "Landroid/graphics/Rect;", "contains", "", "p", "Landroid/graphics/Point;", "forEach", "", "action", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "rect", "iterator", "", "minus", "not", "or", "plus", "unaryMinus", "xor", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/RegionKt.class */
public final class RegionKt {
    public static final Region and(Region region, Rect rect) {
        C15149k.m377b(region, "$this$and");
        C15149k.m377b(rect, C3496r.f6031a);
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.INTERSECT);
        return region2;
    }

    public static final Region and(Region region, Region region2) {
        C15149k.m377b(region, "$this$and");
        C15149k.m377b(region2, C3496r.f6031a);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.INTERSECT);
        return region3;
    }

    public static final boolean contains(Region region, Point point) {
        C15149k.m377b(region, "$this$contains");
        C15149k.m377b(point, "p");
        return region.contains(point.x, point.y);
    }

    public static final void forEach(Region region, AbstractC15118l<? super Rect, C14989s> lVar) {
        C15149k.m377b(region, "$this$forEach");
        C15149k.m377b(lVar, "action");
        RegionIterator regionIterator = new RegionIterator(region);
        while (true) {
            Rect rect = new Rect();
            if (regionIterator.next(rect)) {
                lVar.invoke(rect);
            } else {
                return;
            }
        }
    }

    public static final Iterator<Rect> iterator(Region region) {
        C15149k.m377b(region, "$this$iterator");
        return new RegionKt$iterator$1(region);
    }

    public static final Region minus(Region region, Rect rect) {
        C15149k.m377b(region, "$this$minus");
        C15149k.m377b(rect, C3496r.f6031a);
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region minus(Region region, Region region2) {
        C15149k.m377b(region, "$this$minus");
        C15149k.m377b(region2, C3496r.f6031a);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.DIFFERENCE);
        return region3;
    }

    public static final Region not(Region region) {
        C15149k.m377b(region, "$this$not");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    /* renamed from: or */
    public static final Region m37511or(Region region, Rect rect) {
        C15149k.m377b(region, "$this$or");
        C15149k.m377b(rect, C3496r.f6031a);
        Region region2 = new Region(region);
        region2.union(rect);
        return region2;
    }

    /* renamed from: or */
    public static final Region m37510or(Region region, Region region2) {
        C15149k.m377b(region, "$this$or");
        C15149k.m377b(region2, C3496r.f6031a);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.UNION);
        return region3;
    }

    public static final Region plus(Region region, Rect rect) {
        C15149k.m377b(region, "$this$plus");
        C15149k.m377b(rect, C3496r.f6031a);
        Region region2 = new Region(region);
        region2.union(rect);
        return region2;
    }

    public static final Region plus(Region region, Region region2) {
        C15149k.m377b(region, "$this$plus");
        C15149k.m377b(region2, C3496r.f6031a);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.UNION);
        return region3;
    }

    public static final Region unaryMinus(Region region) {
        C15149k.m377b(region, "$this$unaryMinus");
        Region region2 = new Region(region.getBounds());
        region2.op(region, Region.Op.DIFFERENCE);
        return region2;
    }

    public static final Region xor(Region region, Rect rect) {
        C15149k.m377b(region, "$this$xor");
        C15149k.m377b(rect, C3496r.f6031a);
        Region region2 = new Region(region);
        region2.op(rect, Region.Op.XOR);
        return region2;
    }

    public static final Region xor(Region region, Region region2) {
        C15149k.m377b(region, "$this$xor");
        C15149k.m377b(region2, C3496r.f6031a);
        Region region3 = new Region(region);
        region3.op(region2, Region.Op.XOR);
        return region3;
    }
}
