package androidx.constraintlayout.solver;

import androidx.constraintlayout.solver.Pools;
import com.google.firebase.appindexing.Indexable;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/solver/Cache.class */
public class Cache {

    /* renamed from: a */
    Pools.Pool<ArrayRow> f2050a = new Pools.SimplePool(Indexable.MAX_URL_LENGTH);

    /* renamed from: b */
    Pools.Pool<ArrayRow> f2051b = new Pools.SimplePool(Indexable.MAX_URL_LENGTH);

    /* renamed from: c */
    Pools.Pool<SolverVariable> f2052c = new Pools.SimplePool(Indexable.MAX_URL_LENGTH);

    /* renamed from: d */
    SolverVariable[] f2053d = new SolverVariable[32];
}
