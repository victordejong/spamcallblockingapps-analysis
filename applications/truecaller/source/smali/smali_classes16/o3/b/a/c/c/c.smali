.class public final Lo3/b/a/c/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo3/b/b/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/b/a/c/c/c$d;,
        Lo3/b/a/c/c/c$b;,
        Lo3/b/a/c/c/c$c;,
        Lo3/b/a/c/c/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo3/b/b/b<",
        "Lo3/b/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Ln3/v/a1;

.field public volatile b:Lo3/b/a/b/a;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/activity/ComponentActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo3/b/a/c/c/c;->c:Ljava/lang/Object;

    .line 3
    new-instance v0, Ln3/v/a1;

    new-instance v1, Lo3/b/a/c/c/b;

    invoke-direct {v1, p0, p1}, Lo3/b/a/c/c/b;-><init>(Lo3/b/a/c/c/c;Landroid/content/Context;)V

    .line 4
    invoke-interface {p1}, Ln3/v/c1;->getViewModelStore()Ln3/v/b1;

    move-result-object p1

    invoke-direct {v0, p1, v1}, Ln3/v/a1;-><init>(Ln3/v/b1;Ln3/v/a1$b;)V

    .line 5
    iput-object v0, p0, Lo3/b/a/c/c/c;->a:Ln3/v/a1;

    return-void
.end method


# virtual methods
.method public Yt()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lo3/b/a/c/c/c;->b:Lo3/b/a/b/a;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lo3/b/a/c/c/c;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lo3/b/a/c/c/c;->b:Lo3/b/a/b/a;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lo3/b/a/c/c/c;->a:Ln3/v/a1;

    const-class v2, Lo3/b/a/c/c/c$b;

    invoke-virtual {v1, v2}, Ln3/v/a1;->a(Ljava/lang/Class;)Ln3/v/y0;

    move-result-object v1

    check-cast v1, Lo3/b/a/c/c/c$b;

    .line 5
    iget-object v1, v1, Lo3/b/a/c/c/c$b;->a:Lo3/b/a/b/a;

    .line 6
    iput-object v1, p0, Lo3/b/a/c/c/c;->b:Lo3/b/a/b/a;

    .line 7
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lo3/b/a/c/c/c;->b:Lo3/b/a/b/a;

    return-object v0
.end method
