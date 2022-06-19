.class public Lw3/b/a/g0/m;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/g;
.implements Lw3/b/a/g0/j;


# static fields
.field public static final a:Lw3/b/a/g0/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/m;

    invoke-direct {v0}, Lw3/b/a/g0/m;-><init>()V

    sput-object v0, Lw3/b/a/g0/m;->a:Lw3/b/a/g0/m;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/g0/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lw3/b/a/a;)Lw3/b/a/a;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    check-cast p1, Lw3/b/a/z;

    invoke-interface {p1}, Lw3/b/a/z;->l()Lw3/b/a/a;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p2

    :cond_0
    return-object p2
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
    const-class v0, Lw3/b/a/z;

    return-object v0
.end method

.method public f(Ljava/lang/Object;Lw3/b/a/a;)J
    .locals 0

    .line 1
    check-cast p1, Lw3/b/a/z;

    invoke-interface {p1}, Lw3/b/a/z;->k()J

    move-result-wide p1

    return-wide p1
.end method
