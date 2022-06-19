.class public final Le/k/a/c/l0/s/p;
.super Le/k/a/c/n;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/n<",
        "Ljava/lang/Object;",
        ">;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/j0/h;

.field public final b:Le/k/a/c/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/j0/h;Le/k/a/c/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/h;",
            "Le/k/a/c/n<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/k/a/c/n;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/p;->a:Le/k/a/c/j0/h;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/s/p;->b:Le/k/a/c/n;

    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/p;->b:Le/k/a/c/n;

    .line 2
    instance-of v1, v0, Le/k/a/c/l0/i;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0, p2}, Le/k/a/c/a0;->I(Le/k/a/c/n;Le/k/a/c/d;)Le/k/a/c/n;

    move-result-object v0

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/c/l0/s/p;->b:Le/k/a/c/n;

    if-ne v0, p1, :cond_1

    return-object p0

    .line 5
    :cond_1
    new-instance p1, Le/k/a/c/l0/s/p;

    iget-object p2, p0, Le/k/a/c/l0/s/p;->a:Le/k/a/c/j0/h;

    invoke-direct {p1, p2, v0}, Le/k/a/c/l0/s/p;-><init>(Le/k/a/c/j0/h;Le/k/a/c/n;)V

    return-object p1
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Object;

    return-object v0
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/p;->b:Le/k/a/c/n;

    iget-object v1, p0, Le/k/a/c/l0/s/p;->a:Le/k/a/c/j0/h;

    invoke-virtual {v0, p1, p2, p3, v1}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/s/p;->b:Le/k/a/c/n;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/k/a/c/n;->g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V

    return-void
.end method
