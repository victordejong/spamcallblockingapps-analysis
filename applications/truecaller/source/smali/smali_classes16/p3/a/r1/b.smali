.class public final Lp3/a/r1/b;
.super Lp3/a/j0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/j0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lp3/a/i0$d;)Lp3/a/i0;
    .locals 1

    .line 1
    new-instance v0, Lp3/a/r1/a;

    invoke-direct {v0, p1}, Lp3/a/r1/a;-><init>(Lp3/a/i0$d;)V

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    const-string v0, "round_robin"

    return-object v0
.end method

.method public c()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/util/Map;)Lp3/a/r0$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)",
            "Lp3/a/r0$b;"
        }
    .end annotation

    .line 1
    new-instance p1, Lp3/a/r0$b;

    const-string v0, "no service config"

    invoke-direct {p1, v0}, Lp3/a/r0$b;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method
