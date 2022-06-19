.class public final Lcom/google/android/gms/internal/firebase-auth-api/ck;
.super Lcom/google/android/gms/internal/firebase-auth-api/nk;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/android/gms/common/l/a;


# instance fields
.field private final a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

.field private final b:Lcom/google/android/gms/internal/firebase-auth-api/bm;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/common/l/a;

    const-string v1, "FirebaseAuthFallback:"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "FirebaseAuth"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/common/l/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/firebase-auth-api/nk;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/firebase-auth-api/yk;->b()Lcom/google/android/gms/internal/firebase-auth-api/yk;

    move-result-object v3

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/fi;

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/zk;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v2, p2

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/zk;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yk;Lcom/google/android/gms/internal/firebase-auth-api/sl;Lcom/google/android/gms/internal/firebase-auth-api/pk;Lcom/google/android/gms/internal/firebase-auth-api/qk;)V

    .line 6
    invoke-direct {v7, v8}, Lcom/google/android/gms/internal/firebase-auth-api/fi;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/ol;)V

    iput-object v7, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/bm;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/bm;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    return-void
.end method

.method private static w(JZ)Z
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    const/4 p1, 0x0

    new-array p2, p1, [Ljava/lang/Object;

    const-string v0, "App hash will not be appended to the request."

    .line 1
    invoke-virtual {p0, v0, p2}, Lcom/google/android/gms/common/l/a;->h(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1
.end method


# virtual methods
.method public final B1(Lcom/google/android/gms/internal/firebase-auth-api/qf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qf;->y1()Lcom/google/firebase/auth/d;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/qf;->y1()Lcom/google/firebase/auth/d;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->A(Lcom/google/firebase/auth/d;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final C1(Lcom/google/android/gms/internal/firebase-auth-api/ze;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ze;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ze;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ze;->y1()Lcom/google/firebase/auth/a;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->D(Ljava/lang/String;Lcom/google/firebase/auth/a;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final E1(Lcom/google/android/gms/internal/firebase-auth-api/hg;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/hg;->z1()Lcom/google/firebase/auth/a;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/hg;->zza()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/hg;->y1()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/bn;->a(Lcom/google/firebase/auth/a;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bn;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    .line 6
    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->c(Lcom/google/android/gms/internal/firebase-auth-api/bn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final E2(Lcom/google/android/gms/internal/firebase-auth-api/yd;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yd;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yd;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yd;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yd;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->w(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final H1(Lcom/google/android/gms/internal/firebase-auth-api/pe;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pe;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pe;->zza()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/pe;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->B(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final I(Lcom/google/android/gms/internal/firebase-auth-api/fe;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fe;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fe;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fe;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fe;->y1()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/fe;->z1()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v3, p2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 8
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final J(Lcom/google/android/gms/internal/firebase-auth-api/re;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/re;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/re;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/re;->z1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/re;->zza()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/re;->y1()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/re;->z1()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v3, p2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 9
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->I(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final K(Lcom/google/android/gms/internal/firebase-auth-api/ce;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ce;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ce;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ce;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ce;->y1()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ce;->z1()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v3, p2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 8
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->F(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final M0(Lcom/google/android/gms/internal/firebase-auth-api/xe;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xe;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/xe;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->d(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final N(Lcom/google/android/gms/internal/firebase-auth-api/of;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/of;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/of;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/of;->zza()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/of;->y1()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/of;->z1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object p1, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v6, p2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    const/4 v2, 0x0

    .line 8
    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->z(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final P(Lcom/google/android/gms/internal/firebase-auth-api/if;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/if;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->t(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final P1(Lcom/google/android/gms/internal/firebase-auth-api/eg;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/eg;->z1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/eg;->y1()Lcom/google/firebase/auth/x;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/eg;->z1()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/eg;->y1()Lcom/google/firebase/auth/x;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->u(Ljava/lang/String;Lcom/google/firebase/auth/x;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final Q(Lcom/google/android/gms/internal/firebase-auth-api/ve;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ve;->y1()Lcom/google/firebase/auth/q;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Lcom/google/firebase/auth/q;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ve;->zza()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-static {v0}, Lcom/google/android/gms/internal/firebase-auth-api/rl;->a(Lcom/google/firebase/auth/q;)Lcom/google/android/gms/internal/firebase-auth-api/oo;

    move-result-object v0

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    const/4 p2, 0x0

    .line 6
    invoke-virtual {v1, p2, p1, v0, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->J(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/oo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final R(Lcom/google/android/gms/internal/firebase-auth-api/yf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yf;->zza()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/yf;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->N(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final S(Lcom/google/android/gms/internal/firebase-auth-api/mf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mf;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/io;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mf;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/mf;->y1()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/internal/firebase-auth-api/io;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    .line 6
    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->r(Lcom/google/android/gms/internal/firebase-auth-api/io;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final S0(Lcom/google/android/gms/internal/firebase-auth-api/he;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/he;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/he;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->e(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final V1(Lcom/google/android/gms/internal/firebase-auth-api/gf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/gf;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->f(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final Z(Lcom/google/android/gms/internal/firebase-auth-api/ag;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ag;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ag;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->L(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final Z0(Lcom/google/android/gms/internal/firebase-auth-api/ne;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ne;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ne;->zza()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 5
    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->q(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final a0(Lcom/google/android/gms/internal/firebase-auth-api/sf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sf;->y1()Lcom/google/firebase/auth/q;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/firebase/auth/q;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/rl;->a(Lcom/google/firebase/auth/q;)Lcom/google/android/gms/internal/firebase-auth-api/oo;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->H(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/oo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final c2(Lcom/google/android/gms/internal/firebase-auth-api/ud;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ud;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ud;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ud;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->x(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final d1(Lcom/google/android/gms/internal/firebase-auth-api/te;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/te;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/te;->y1()Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/te;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/te;->y1()Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->K(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final h0(Lcom/google/android/gms/internal/firebase-auth-api/bf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bf;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bf;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bf;->y1()Lcom/google/firebase/auth/a;

    move-result-object v2

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/bf;->z1()Ljava/lang/String;

    move-result-object p1

    new-instance v3, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v4, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v3, p2, v4}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 7
    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->C(Ljava/lang/String;Lcom/google/firebase/auth/a;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final m1(Lcom/google/android/gms/internal/firebase-auth-api/wd;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wd;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wd;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wd;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/wd;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->v(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final m2(Lcom/google/android/gms/internal/firebase-auth-api/wf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->y1()Lcom/google/firebase/auth/t;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/firebase/auth/t;->B1()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    move-object/from16 v3, p2

    .line 4
    invoke-direct {v8, v3, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 5
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->C1()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 7
    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 9
    invoke-virtual {v2, v8, v1}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->c(Lcom/google/android/gms/internal/firebase-auth-api/yj;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->B1()J

    move-result-wide v5

    .line 11
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->F1()Z

    move-result v7

    .line 12
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->z1()Ljava/lang/String;

    move-result-object v9

    .line 13
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->y1()Lcom/google/firebase/auth/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/t;->C1()Ljava/lang/String;

    move-result-object v10

    .line 14
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->y1()Lcom/google/firebase/auth/t;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/t;->B1()Ljava/lang/String;

    move-result-object v11

    .line 15
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->A1()Ljava/lang/String;

    move-result-object v12

    .line 16
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->E1()Ljava/lang/String;

    move-result-object v13

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/firebase-auth-api/wf;->D1()Ljava/lang/String;

    move-result-object v14

    .line 18
    invoke-static/range {v9 .. v14}, Lcom/google/android/gms/internal/firebase-auth-api/bo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/bo;

    move-result-object v9

    .line 19
    invoke-static {v5, v6, v7}, Lcom/google/android/gms/internal/firebase-auth-api/ck;->w(JZ)Z

    move-result v2

    if-eqz v2, :cond_2

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/gm;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 20
    invoke-virtual {v3}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->d()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/gm;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Lcom/google/android/gms/internal/firebase-auth-api/bo;->c(Lcom/google/android/gms/internal/firebase-auth-api/gm;)V

    :cond_2
    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    move-object v3, v1

    move-object v4, v8

    .line 21
    invoke-virtual/range {v2 .. v7}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;JZ)V

    iget-object v2, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v3, v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    new-instance v4, Lcom/google/android/gms/internal/firebase-auth-api/yl;

    .line 22
    invoke-direct {v4, v3, v8, v1}, Lcom/google/android/gms/internal/firebase-auth-api/yl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/bm;Lcom/google/android/gms/internal/firebase-auth-api/yj;Ljava/lang/String;)V

    .line 23
    invoke-virtual {v2, v9, v4}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->b(Lcom/google/android/gms/internal/firebase-auth-api/bo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final n1(Lcom/google/android/gms/internal/firebase-auth-api/ae;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ae;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ae;->zza()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/ae;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 6
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->E(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final n2(Lcom/google/android/gms/internal/firebase-auth-api/kf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/kf;->y1()Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/kf;->y1()Lcom/google/android/gms/internal/firebase-auth-api/fo;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    const/4 p2, 0x0

    .line 5
    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->s(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/fo;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final o0(Lcom/google/android/gms/internal/firebase-auth-api/uf;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->y1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    .line 4
    invoke-direct {v7, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 5
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->B1()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 7
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 9
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->c(Lcom/google/android/gms/internal/firebase-auth-api/yj;Ljava/lang/String;)V

    return-void

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->A1()J

    move-result-wide v3

    .line 11
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->E1()Z

    move-result v5

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->zza()Ljava/lang/String;

    move-result-object p2

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->y1()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->z1()Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->D1()Ljava/lang/String;

    move-result-object v2

    .line 16
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/uf;->C1()Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-static {p2, v0, v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zn;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/zn;

    move-result-object p1

    .line 18
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/ck;->w(JZ)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/gm;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/gm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zn;->c(Lcom/google/android/gms/internal/firebase-auth-api/gm;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    move-object v1, v6

    move-object v2, v7

    .line 20
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;JZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yl;

    .line 21
    invoke-direct {v1, v0, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/yl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/bm;Lcom/google/android/gms/internal/firebase-auth-api/yj;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->O(Lcom/google/android/gms/internal/firebase-auth-api/zn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final o1(Lcom/google/android/gms/internal/firebase-auth-api/cg;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cg;->zza()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cg;->y1()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/common/internal/r;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cg;->zza()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/cg;->y1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    .line 7
    invoke-virtual {v0, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->M(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final p2(Lcom/google/android/gms/internal/firebase-auth-api/df;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/df;->y1()Lcom/google/android/gms/internal/firebase-auth-api/sn;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/firebase-auth-api/sn;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->y1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    .line 5
    invoke-direct {v7, p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 6
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->A1()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 8
    invoke-virtual {p2, v6}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 10
    invoke-virtual {p1, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->c(Lcom/google/android/gms/internal/firebase-auth-api/yj;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->z1()J

    move-result-wide v3

    .line 12
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->C1()Z

    move-result v5

    .line 13
    invoke-static {v3, v4, v5}, Lcom/google/android/gms/internal/firebase-auth-api/ck;->w(JZ)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/google/android/gms/internal/firebase-auth-api/gm;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    .line 14
    invoke-virtual {v0}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/firebase-auth-api/gm;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/firebase-auth-api/sn;->D1(Lcom/google/android/gms/internal/firebase-auth-api/gm;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    move-object v1, v6

    move-object v2, v7

    .line 15
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/firebase-auth-api/bm;->b(Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;JZ)V

    iget-object p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->b:Lcom/google/android/gms/internal/firebase-auth-api/bm;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yl;

    .line 16
    invoke-direct {v1, v0, v7, v6}, Lcom/google/android/gms/internal/firebase-auth-api/yl;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/bm;Lcom/google/android/gms/internal/firebase-auth-api/yj;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->G(Lcom/google/android/gms/internal/firebase-auth-api/sn;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final x2(Lcom/google/android/gms/internal/firebase-auth-api/le;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/le;->z1()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/le;->y1()Lcom/google/firebase/auth/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/q;->D1()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/le;->y1()Lcom/google/firebase/auth/q;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/auth/q;->A1()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/qm;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/qm;

    move-result-object p1

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v2, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v1, p2, v2}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    const/4 p2, 0x0

    .line 7
    invoke-virtual {v0, p2, p1, v1}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->a(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/qm;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method

.method public final z0(Lcom/google/android/gms/internal/firebase-auth-api/je;Lcom/google/android/gms/internal/firebase-auth-api/lk;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/google/android/gms/common/internal/r;->k(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/ck;->a:Lcom/google/android/gms/internal/firebase-auth-api/fi;

    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/je;->z1()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/je;->y1()Lcom/google/firebase/auth/q;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/firebase/auth/q;->D1()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/je;->y1()Lcom/google/firebase/auth/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/firebase/auth/q;->A1()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/je;->A1()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/firebase-auth-api/om;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/firebase-auth-api/om;

    move-result-object v1

    .line 8
    invoke-virtual {p1}, Lcom/google/android/gms/internal/firebase-auth-api/je;->z1()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/google/android/gms/internal/firebase-auth-api/yj;

    sget-object v3, Lcom/google/android/gms/internal/firebase-auth-api/ck;->c:Lcom/google/android/gms/common/l/a;

    invoke-direct {v2, p2, v3}, Lcom/google/android/gms/internal/firebase-auth-api/yj;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/lk;Lcom/google/android/gms/common/l/a;)V

    const/4 p2, 0x0

    .line 9
    invoke-virtual {v0, p2, v1, p1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/fi;->P(Landroid/content/Context;Lcom/google/android/gms/internal/firebase-auth-api/om;Ljava/lang/String;Lcom/google/android/gms/internal/firebase-auth-api/yj;)V

    return-void
.end method
