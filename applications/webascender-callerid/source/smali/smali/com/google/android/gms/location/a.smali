.class public Lcom/google/android/gms/location/a;
.super Lcom/google/android/gms/common/api/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/location/a$b;,
        Lcom/google/android/gms/location/a$d;,
        Lcom/google/android/gms/location/a$c;,
        Lcom/google/android/gms/location/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/c<",
        "Lcom/google/android/gms/common/api/a$d$d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/google/android/gms/location/d;->c:Lcom/google/android/gms/common/api/a;

    new-instance v1, Lcom/google/android/gms/common/api/internal/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/api/internal/a;-><init>()V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/gms/common/api/c;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/api/a;Lcom/google/android/gms/common/api/a$d;Lcom/google/android/gms/common/api/internal/p;)V

    return-void
.end method

.method static synthetic v(Lcom/google/android/gms/location/a;Lcom/google/android/gms/tasks/h;)Lg/f/a/d/c/i/e;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/location/a;->w(Lcom/google/android/gms/tasks/h;)Lg/f/a/d/c/i/e;

    move-result-object p0

    return-object p0
.end method

.method private final w(Lcom/google/android/gms/tasks/h;)Lg/f/a/d/c/i/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/h<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lg/f/a/d/c/i/e;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/location/f;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/location/f;-><init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/tasks/h;)V

    return-object v0
.end method

.method private final x(Lg/f/a/d/c/i/s;Lcom/google/android/gms/location/b;Landroid/os/Looper;Lcom/google/android/gms/location/a$a;)Lcom/google/android/gms/tasks/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/d/c/i/s;",
            "Lcom/google/android/gms/location/b;",
            "Landroid/os/Looper;",
            "Lcom/google/android/gms/location/a$a;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lg/f/a/d/c/i/w;->b(Landroid/os/Looper;)Landroid/os/Looper;

    move-result-object p3

    const-class v0, Lcom/google/android/gms/location/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {p2, p3, v0}, Lcom/google/android/gms/common/api/internal/j;->a(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i;

    move-result-object p3

    .line 3
    new-instance v0, Lcom/google/android/gms/location/g;

    invoke-direct {v0, p0, p3}, Lcom/google/android/gms/location/g;-><init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/common/api/internal/i;)V

    .line 4
    new-instance v8, Lcom/google/android/gms/location/e;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v0

    move-object v4, p2

    move-object v5, p4

    move-object v6, p1

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/google/android/gms/location/e;-><init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/location/a$c;Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/a$a;Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;)V

    .line 5
    invoke-static {}, Lcom/google/android/gms/common/api/internal/m;->a()Lcom/google/android/gms/common/api/internal/m$a;

    move-result-object p1

    .line 6
    invoke-virtual {p1, v8}, Lcom/google/android/gms/common/api/internal/m$a;->b(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/m$a;

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/gms/common/api/internal/m$a;->c(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/m$a;

    .line 8
    invoke-virtual {p1, p3}, Lcom/google/android/gms/common/api/internal/m$a;->d(Lcom/google/android/gms/common/api/internal/i;)Lcom/google/android/gms/common/api/internal/m$a;

    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/m$a;->a()Lcom/google/android/gms/common/api/internal/m;

    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->e(Lcom/google/android/gms/common/api/internal/m;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public s()Lcom/google/android/gms/tasks/g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/g<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/android/gms/common/api/internal/r;->a()Lcom/google/android/gms/common/api/internal/r$a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/location/z;

    invoke-direct {v1, p0}, Lcom/google/android/gms/location/z;-><init>(Lcom/google/android/gms/location/a;)V

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/internal/r$a;->b(Lcom/google/android/gms/common/api/internal/n;)Lcom/google/android/gms/common/api/internal/r$a;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/internal/r$a;->a()Lcom/google/android/gms/common/api/internal/r;

    move-result-object v0

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/c;->d(Lcom/google/android/gms/common/api/internal/r;)Lcom/google/android/gms/tasks/g;

    move-result-object v0

    return-object v0
.end method

.method public t(Lcom/google/android/gms/location/b;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/b;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcom/google/android/gms/location/b;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gms/common/api/internal/j;->b(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/android/gms/common/api/internal/i$a;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/c;->f(Lcom/google/android/gms/common/api/internal/i$a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/common/api/internal/s;->c(Lcom/google/android/gms/tasks/g;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method public u(Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/b;Landroid/os/Looper;)Lcom/google/android/gms/tasks/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/location/LocationRequest;",
            "Lcom/google/android/gms/location/b;",
            "Landroid/os/Looper;",
            ")",
            "Lcom/google/android/gms/tasks/g<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Lg/f/a/d/c/i/s;->z1(Ljava/lang/String;Lcom/google/android/gms/location/LocationRequest;)Lg/f/a/d/c/i/s;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/location/a;->x(Lg/f/a/d/c/i/s;Lcom/google/android/gms/location/b;Landroid/os/Looper;Lcom/google/android/gms/location/a$a;)Lcom/google/android/gms/tasks/g;

    move-result-object p1

    return-object p1
.end method

.method final synthetic y(Lg/f/a/d/c/i/p;Lcom/google/android/gms/tasks/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/f/a/d/c/i/p;->v0(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 2
    invoke-virtual {p2, p1}, Lcom/google/android/gms/tasks/h;->c(Ljava/lang/Object;)V

    return-void
.end method

.method final synthetic z(Lcom/google/android/gms/location/a$c;Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/a$a;Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;Lg/f/a/d/c/i/p;Lcom/google/android/gms/tasks/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/location/a$b;

    new-instance v1, Lcom/google/android/gms/location/a0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/gms/location/a0;-><init>(Lcom/google/android/gms/location/a;Lcom/google/android/gms/location/a$c;Lcom/google/android/gms/location/b;Lcom/google/android/gms/location/a$a;)V

    invoke-direct {v0, p7, v1}, Lcom/google/android/gms/location/a$b;-><init>(Lcom/google/android/gms/tasks/h;Lcom/google/android/gms/location/a$a;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/common/api/c;->k()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Lg/f/a/d/c/i/s;->y1(Ljava/lang/String;)Lg/f/a/d/c/i/s;

    .line 3
    invoke-virtual {p6, p4, p5, v0}, Lg/f/a/d/c/i/p;->w0(Lg/f/a/d/c/i/s;Lcom/google/android/gms/common/api/internal/i;Lg/f/a/d/c/i/e;)V

    return-void
.end method
