.class public Le/k/a/c/l0/t/g0;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Le/k/a/c/m;",
        ">;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final c:Le/k/a/c/l0/t/g0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/l0/t/g0;

    invoke-direct {v0}, Le/k/a/c/l0/t/g0;-><init>()V

    sput-object v0, Le/k/a/c/l0/t/g0;->c:Le/k/a/c/l0/t/g0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Le/k/a/c/m;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public d(Le/k/a/c/a0;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    check-cast p2, Le/k/a/c/m;

    .line 2
    instance-of v0, p2, Le/k/a/c/m$a;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Le/k/a/c/m$a;

    invoke-virtual {p2, p1}, Le/k/a/c/m$a;->d(Le/k/a/c/a0;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/k/a/c/m;

    .line 2
    invoke-interface {p1, p2, p3}, Le/k/a/c/m;->c(Le/k/a/b/g;Le/k/a/c/a0;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Le/k/a/c/m;

    .line 2
    invoke-interface {p1, p2, p3, p4}, Le/k/a/c/m;->b(Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void
.end method
