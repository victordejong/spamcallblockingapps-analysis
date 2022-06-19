.class public Lw3/b/a/g0/o;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/j;


# static fields
.field public static final a:Lw3/b/a/g0/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/o;

    invoke-direct {v0}, Lw3/b/a/g0/o;-><init>()V

    sput-object v0, Lw3/b/a/g0/o;->a:Lw3/b/a/g0/o;

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
    check-cast p1, Lw3/b/a/b0;

    invoke-interface {p1}, Lw3/b/a/b0;->l()Lw3/b/a/a;

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
    const-class v0, Lw3/b/a/b0;

    return-object v0
.end method

.method public g(Lw3/b/a/b0;Ljava/lang/Object;Lw3/b/a/a;)[I
    .locals 4

    .line 1
    check-cast p2, Lw3/b/a/b0;

    .line 2
    invoke-interface {p1}, Lw3/b/a/b0;->size()I

    move-result v0

    .line 3
    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 4
    invoke-interface {p1, v2}, Lw3/b/a/b0;->b(I)Lw3/b/a/d;

    move-result-object v3

    invoke-interface {p2, v3}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p3, p1, v1}, Lw3/b/a/a;->K(Lw3/b/a/b0;[I)V

    return-object v1
.end method
