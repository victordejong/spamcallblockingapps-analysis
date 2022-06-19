.class public Lw3/b/a/g0/n;
.super Lw3/b/a/g0/a;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/g0/c;
.implements Lw3/b/a/g0/k;


# static fields
.field public static final a:Lw3/b/a/g0/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/g0/n;

    invoke-direct {v0}, Lw3/b/a/g0/n;-><init>()V

    sput-object v0, Lw3/b/a/g0/n;->a:Lw3/b/a/g0/n;

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
    .locals 6

    .line 1
    check-cast p2, Lw3/b/a/a0;

    .line 2
    invoke-interface {p2}, Lw3/b/a/a0;->a()J

    move-result-wide v2

    .line 3
    invoke-interface {p2}, Lw3/b/a/a0;->b()J

    move-result-wide v4

    move-object v0, p3

    move-object v1, p1

    .line 4
    invoke-virtual/range {v0 .. v5}, Lw3/b/a/a;->o(Lw3/b/a/c0;JJ)[I

    move-result-object p2

    const/4 p3, 0x0

    .line 5
    :goto_0
    array-length v0, p2

    if-ge p3, v0, :cond_0

    .line 6
    aget v0, p2, p3

    invoke-interface {p1, p3, v0}, Lw3/b/a/w;->a(II)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
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
    const-class v0, Lw3/b/a/a0;

    return-object v0
.end method
