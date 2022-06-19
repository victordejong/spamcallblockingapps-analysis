.class public Le/a/r2/y$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;
.implements Le/a/r2/a;
.implements Le/a/r2/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/r2/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "TR;>;",
        "Le/a/r2/a;",
        "Le/a/r2/p;"
    }
.end annotation


# instance fields
.field public final a:Le/a/r2/b;

.field public b:Le/a/r2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/d0<",
            "TR;>;"
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
.method public constructor <init>(Le/a/r2/b;Le/a/r2/c0;Le/a/r2/d0;Le/a/r2/y$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/r2/y$b;->a:Le/a/r2/b;

    .line 3
    iput-object p2, p0, Le/a/r2/y$b;->c:Le/a/r2/c0;

    .line 4
    iput-object p3, p0, Le/a/r2/y$b;->b:Le/a/r2/d0;

    return-void
.end method


# virtual methods
.method public a()Le/a/r2/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r2/y$b;->a:Le/a/r2/b;

    return-object v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/r2/y$b;->b:Le/a/r2/d0;

    return-void
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/r2/y$b;->b:Le/a/r2/d0;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-interface {v0, p1}, Le/a/r2/d0;->onResult(Ljava/lang/Object;)V
    :try_end_0
    .catch Le/a/r2/e0; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    iget-object v0, p0, Le/a/r2/y$b;->c:Le/a/r2/c0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {v0, p1}, Le/a/r2/c0;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/a/r2/y$b;->c:Le/a/r2/c0;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {v0, p1}, Le/a/r2/c0;->a(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Le/a/r2/y$b;->c:Le/a/r2/c0;

    .line 8
    iput-object p1, p0, Le/a/r2/y$b;->b:Le/a/r2/d0;

    return-void
.end method
