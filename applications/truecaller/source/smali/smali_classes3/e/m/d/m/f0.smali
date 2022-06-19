.class public Le/m/d/m/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/b;
.implements Le/m/d/v/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/m/d/v/b<",
        "TT;>;",
        "Le/m/d/v/a<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final synthetic c:I


# instance fields
.field public a:Le/m/d/v/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/a$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile b:Le/m/d/v/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/m/d/v/b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/m/d/v/a$a;Le/m/d/v/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/a$a<",
            "TT;>;",
            "Le/m/d/v/b<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/d/m/f0;->a:Le/m/d/v/a$a;

    .line 3
    iput-object p2, p0, Le/m/d/m/f0;->b:Le/m/d/v/b;

    return-void
.end method


# virtual methods
.method public a(Le/m/d/v/a$a;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/d/v/a$a<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/m/f0;->b:Le/m/d/v/b;

    .line 2
    sget-object v1, Le/m/d/m/k;->a:Le/m/d/m/k;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-interface {p1, v0}, Le/m/d/v/a$a;->a(Le/m/d/v/b;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-object v2, p0, Le/m/d/m/f0;->b:Le/m/d/v/b;

    if-eq v2, v1, :cond_1

    move-object v0, v2

    goto :goto_0

    .line 6
    :cond_1
    iget-object v1, p0, Le/m/d/m/f0;->a:Le/m/d/v/a$a;

    .line 7
    new-instance v3, Le/m/d/m/m;

    invoke-direct {v3, v1, p1}, Le/m/d/m/m;-><init>(Le/m/d/v/a$a;Le/m/d/v/a$a;)V

    iput-object v3, p0, Le/m/d/m/f0;->a:Le/m/d/v/a$a;

    .line 8
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p1, v2}, Le/m/d/v/a$a;->a(Le/m/d/v/b;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/d/m/f0;->b:Le/m/d/v/b;

    invoke-interface {v0}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
