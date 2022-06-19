.class public final Le/a/c/a/m/b/i;
.super Ln3/v/y0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/c/a/m/b/i$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001:\u0001\u0006B/\u0012\u0006\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u001f\u001a\u00020\u001b\u0012\u0006\u0010\u001e\u001a\u00020\u001b\u0012\u0006\u0010\u001a\u001a\u00020\u0015\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\u0003\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0019\u0010\u001a\u001a\u00020\u00158\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u0017\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001d\u00a8\u0006\""
    }
    d2 = {
        "Le/a/c/a/m/b/i;",
        "Ln3/v/y0;",
        "Ls1/s;",
        "onCleared",
        "()V",
        "Lq3/a/y;",
        "a",
        "Lq3/a/y;",
        "job",
        "Le/a/c/i/l/f/a;",
        "f",
        "Le/a/c/i/l/f/a;",
        "smartNotificationManager",
        "Lq3/a/i0;",
        "b",
        "Lq3/a/i0;",
        "scope",
        "Le/a/c/v/a;",
        "c",
        "Le/a/c/v/a;",
        "reminderManager",
        "Le/a/c/v/f/b/a;",
        "e",
        "Le/a/c/v/f/b/a;",
        "getActionHandler",
        "()Le/a/c/v/f/b/a;",
        "actionHandler",
        "Ls1/w/f;",
        "d",
        "Ls1/w/f;",
        "uiContext",
        "coroutineContext",
        "<init>",
        "(Le/a/c/v/a;Ls1/w/f;Ls1/w/f;Le/a/c/v/f/b/a;Le/a/c/i/l/f/a;)V",
        "insights-ui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Lq3/a/y;

.field public final b:Lq3/a/i0;

.field public final c:Le/a/c/v/a;

.field public final d:Ls1/w/f;

.field public final e:Le/a/c/v/f/b/a;

.field public final f:Le/a/c/i/l/f/a;


# direct methods
.method public constructor <init>(Le/a/c/v/a;Ls1/w/f;Ls1/w/f;Le/a/c/v/f/b/a;Le/a/c/i/l/f/a;)V
    .locals 1

    const-string v0, "reminderManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionHandler"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "smartNotificationManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/v/y0;-><init>()V

    iput-object p1, p0, Le/a/c/a/m/b/i;->c:Le/a/c/v/a;

    iput-object p3, p0, Le/a/c/a/m/b/i;->d:Ls1/w/f;

    iput-object p4, p0, Le/a/c/a/m/b/i;->e:Le/a/c/v/f/b/a;

    iput-object p5, p0, Le/a/c/a/m/b/i;->f:Le/a/c/i/l/f/a;

    .line 2
    new-instance p1, Le/m/e/k;

    invoke-direct {p1}, Le/m/e/k;-><init>()V

    const/4 p1, 0x0

    const/4 p3, 0x1

    .line 3
    invoke-static {p1, p3}, Ls1/a/a/a/v0/f/d;->n(Lq3/a/p1;I)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/m/b/i;->a:Lq3/a/y;

    .line 4
    invoke-interface {p2, p1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->h(Ls1/w/f;)Lq3/a/i0;

    move-result-object p1

    iput-object p1, p0, Le/a/c/a/m/b/i;->b:Lq3/a/i0;

    return-void
.end method


# virtual methods
.method public onCleared()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/m/b/i;->b:Lq3/a/i0;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Ls1/a/a/a/v0/f/d;->S(Lq3/a/i0;Ljava/util/concurrent/CancellationException;I)V

    return-void
.end method
