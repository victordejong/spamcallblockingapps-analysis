.class public final Lu3/p0/i/b$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu3/p0/i/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation


# instance fields
.field public final a:Lv3/m;

.field public b:Z

.field public final synthetic c:Lu3/p0/i/b;


# direct methods
.method public constructor <init>(Lu3/p0/i/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lu3/p0/i/b$e;->c:Lu3/p0/i/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lv3/m;

    .line 3
    iget-object p1, p1, Lu3/p0/i/b;->g:Lv3/g;

    .line 4
    invoke-interface {p1}, Lv3/z;->i()Lv3/c0;

    move-result-object p1

    invoke-direct {v0, p1}, Lv3/m;-><init>(Lv3/c0;)V

    iput-object v0, p0, Lu3/p0/i/b$e;->a:Lv3/m;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lu3/p0/i/b$e;->b:Z

    .line 3
    iget-object v0, p0, Lu3/p0/i/b$e;->c:Lu3/p0/i/b;

    iget-object v1, p0, Lu3/p0/i/b$e;->a:Lv3/m;

    invoke-static {v0, v1}, Lu3/p0/i/b;->i(Lu3/p0/i/b;Lv3/m;)V

    .line 4
    iget-object v0, p0, Lu3/p0/i/b$e;->c:Lu3/p0/i/b;

    const/4 v1, 0x3

    .line 5
    iput v1, v0, Lu3/p0/i/b;->a:I

    return-void
.end method

.method public flush()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$e;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/p0/i/b$e;->c:Lu3/p0/i/b;

    .line 3
    iget-object v0, v0, Lu3/p0/i/b;->g:Lv3/g;

    .line 4
    invoke-interface {v0}, Lv3/g;->flush()V

    return-void
.end method

.method public h1(Lv3/f;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lu3/p0/i/b$e;->b:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p1, Lv3/f;->b:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    .line 3
    invoke-static/range {v1 .. v6}, Lu3/p0/c;->c(JJJ)V

    .line 4
    iget-object v0, p0, Lu3/p0/i/b$e;->c:Lu3/p0/i/b;

    .line 5
    iget-object v0, v0, Lu3/p0/i/b;->g:Lv3/g;

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lv3/z;->h1(Lv3/f;J)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lu3/p0/i/b$e;->a:Lv3/m;

    return-object v0
.end method
