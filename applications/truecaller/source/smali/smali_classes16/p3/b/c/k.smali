.class public final Lp3/b/c/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Lp3/a/q;

.field public final b:Lp3/b/c/o;

.field public final c:Z


# direct methods
.method public constructor <init>(Lp3/b/c/o;ZLp3/b/c/j;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/b/c/k;->b:Lp3/b/c/o;

    .line 3
    iput-boolean p2, p0, Lp3/b/c/k;->c:Z

    .line 4
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object p2

    .line 5
    sget-object p3, Lp3/b/c/a0/a;->a:Lp3/a/q$e;

    const-string p3, "context"

    .line 6
    invoke-static {p2, p3}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p3, Lp3/b/c/a0/a;->a:Lp3/a/q$e;

    .line 7
    iget-object v0, p2, Lp3/a/q;->b:Lp3/a/a1;

    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lp3/a/z0;

    invoke-direct {v0, p3, p1}, Lp3/a/z0;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, p3, p1, v1, v2}, Lp3/a/a1;->b(Ljava/lang/Object;Ljava/lang/Object;II)Lp3/a/a1;

    move-result-object v0

    .line 10
    :goto_0
    new-instance p1, Lp3/a/q;

    invoke-direct {p1, p2, v0}, Lp3/a/q;-><init>(Lp3/a/q;Lp3/a/a1;)V

    .line 11
    invoke-virtual {p1}, Lp3/a/q;->d()Lp3/a/q;

    move-result-object p1

    iput-object p1, p0, Lp3/b/c/k;->a:Lp3/a/q;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 1
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object v0

    iget-object v1, p0, Lp3/b/c/k;->a:Lp3/a/q;

    invoke-virtual {v0, v1}, Lp3/a/q;->q(Lp3/a/q;)V

    .line 2
    iget-boolean v0, p0, Lp3/b/c/k;->c:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lp3/b/c/k;->b:Lp3/b/c/o;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    sget-object v1, Lp3/b/c/l;->a:Lp3/b/c/l;

    invoke-virtual {v0, v1}, Lp3/b/c/o;->c(Lp3/b/c/l;)V

    :cond_0
    return-void
.end method
