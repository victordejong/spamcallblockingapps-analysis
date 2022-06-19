.class public final Le/m/a/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/q1/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/z$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/y;

.field public final b:Le/m/a/c/z$a;

.field public c:Le/m/a/c/u0;

.field public d:Le/m/a/c/q1/p;

.field public e:Z

.field public f:Z


# direct methods
.method public constructor <init>(Le/m/a/c/z$a;Le/m/a/c/q1/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/z;->b:Le/m/a/c/z$a;

    .line 3
    new-instance p1, Le/m/a/c/q1/y;

    invoke-direct {p1, p2}, Le/m/a/c/q1/y;-><init>(Le/m/a/c/q1/f;)V

    iput-object p1, p0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Le/m/a/c/z;->e:Z

    return-void
.end method


# virtual methods
.method public getPlaybackParameters()Le/m/a/c/o0;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/m/a/c/q1/p;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    .line 3
    iget-object v0, v0, Le/m/a/c/q1/y;->e:Le/m/a/c/o0;

    :goto_0
    return-object v0
.end method

.method public r()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Le/m/a/c/z;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v0}, Le/m/a/c/q1/y;->r()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    invoke-interface {v0}, Le/m/a/c/q1/p;->r()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public t(Le/m/a/c/o0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Le/m/a/c/q1/p;->t(Le/m/a/c/o0;)V

    .line 3
    iget-object p1, p0, Le/m/a/c/z;->d:Le/m/a/c/q1/p;

    invoke-interface {p1}, Le/m/a/c/q1/p;->getPlaybackParameters()Le/m/a/c/o0;

    move-result-object p1

    .line 4
    :cond_0
    iget-object v0, p0, Le/m/a/c/z;->a:Le/m/a/c/q1/y;

    invoke-virtual {v0, p1}, Le/m/a/c/q1/y;->t(Le/m/a/c/o0;)V

    return-void
.end method
