.class public Lw3/b/a/g0/p;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/k;


# static fields
.field public static final a:Lw3/b/a/g0/p;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/p;

    invoke-direct {v0}, Lw3/b/a/g0/p;-><init>()V

    sput-object v0, Lw3/b/a/g0/p;->a:Lw3/b/a/g0/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lw3/b/a/w;Ljava/lang/Object;Lw3/b/a/a;)V
    .locals 0

    .line 1
    check-cast p2, Lw3/b/a/c0;

    invoke-interface {p1, p2}, Lw3/b/a/w;->c(Lw3/b/a/c0;)V

    return-void
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Lw3/b/a/c0;

    return-object v0
.end method

.method public e(Ljava/lang/Object;)Lw3/b/a/v;
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/c0;

    .line 2
    invoke-interface {p1}, Lw3/b/a/c0;->g()Lw3/b/a/v;

    move-result-object p1

    return-object p1
.end method
