.class public Le/a/r2/y;
.super Le/a/r2/x;
.source "SourceFile"

# interfaces
.implements Le/a/r2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/r2/y$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Le/a/r2/x<",
        "TR;>;",
        "Le/a/r2/a;"
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/b;

.field public volatile b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field public c:Le/a/r2/c0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/c0<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Le/a/r2/c0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;",
            "Le/a/r2/c0<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/r2/x;-><init>()V

    .line 2
    new-instance v0, Le/a/r2/b;

    invoke-direct {v0}, Le/a/r2/b;-><init>()V

    iput-object v0, p0, Le/a/r2/y;->a:Le/a/r2/b;

    .line 3
    iput-object p2, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    .line 4
    iput-object p1, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    .line 2
    iget-object v1, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    .line 4
    iput-object v2, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, v1}, Le/a/r2/c0;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public e(Le/a/r2/j;Le/a/r2/d0;)Le/a/r2/a;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/j;",
            "Le/a/r2/d0<",
            "TR;>;)",
            "Le/a/r2/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    .line 2
    iget-object v1, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    .line 4
    iput-object v2, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    if-eqz p2, :cond_0

    .line 5
    new-instance v3, Le/a/r2/y$b;

    iget-object v4, p0, Le/a/r2/y;->a:Le/a/r2/b;

    invoke-direct {v3, v4, v0, p2, v2}, Le/a/r2/y$b;-><init>(Le/a/r2/b;Le/a/r2/c0;Le/a/r2/d0;Le/a/r2/y$a;)V

    .line 6
    const-class p2, Le/a/r2/d0;

    invoke-interface {p1, p2, v3}, Le/a/r2/j;->a(Ljava/lang/Class;Ljava/lang/Object;)Le/a/r2/f;

    move-result-object p1

    invoke-interface {p1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/r2/d0;

    invoke-interface {p1, v1}, Le/a/r2/d0;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 7
    invoke-interface {v0, v1}, Le/a/r2/c0;->a(Ljava/lang/Object;)V

    :cond_1
    move-object v3, p0

    :goto_0
    return-object v3
.end method

.method public f(Le/a/r2/d0;)Le/a/r2/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r2/d0<",
            "TR;>;)",
            "Le/a/r2/a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    .line 2
    iget-object v1, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    const/4 v2, 0x0

    .line 3
    iput-object v2, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1, v0}, Le/a/r2/d0;->onResult(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v1, v0}, Le/a/r2/c0;->a(Ljava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    iput-object v2, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    .line 7
    iput-object v2, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    return-object p0
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/r2/y;->c:Le/a/r2/c0;

    .line 2
    iput-object v0, p0, Le/a/r2/y;->b:Ljava/lang/Object;

    return-void
.end method
