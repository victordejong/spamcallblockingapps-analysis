.class public final Le/a/i/d0/g0/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i/d0/g0/c/b;


# instance fields
.field public final a:Ln3/c0/q;

.field public final b:Ln3/c0/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c0/k<",
            "Le/a/i/d0/g0/c/e;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Le/a/i/y/a;

.field public final d:Ln3/c0/c0;


# direct methods
.method public constructor <init>(Ln3/c0/q;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/i/y/a;

    invoke-direct {v0}, Le/a/i/y/a;-><init>()V

    iput-object v0, p0, Le/a/i/d0/g0/c/c;->c:Le/a/i/y/a;

    .line 3
    iput-object p1, p0, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    .line 4
    new-instance v0, Le/a/i/d0/g0/c/c$c;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/g0/c/c$c;-><init>(Le/a/i/d0/g0/c/c;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/d0/g0/c/c;->b:Ln3/c0/k;

    .line 5
    new-instance v0, Le/a/i/d0/g0/c/c$d;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/g0/c/c$d;-><init>(Le/a/i/d0/g0/c/c;Ln3/c0/q;)V

    .line 6
    new-instance v0, Le/a/i/d0/g0/c/c$e;

    invoke-direct {v0, p0, p1}, Le/a/i/d0/g0/c/c$e;-><init>(Le/a/i/d0/g0/c/c;Ln3/c0/q;)V

    iput-object v0, p0, Le/a/i/d0/g0/c/c;->d:Ln3/c0/c0;

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Le/a/i/d0/g0/c/e;",
            ">;",
            "Ls1/w/d<",
            "-[J>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/d0/g0/c/c$f;

    invoke-direct {v1, p0, p1}, Le/a/i/d0/g0/c/c$f;-><init>(Le/a/i/d0/g0/c/c;Ljava/util/List;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1, p2}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/i/d0/g0/c/e;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "\n            Select * from predictive_ecpm_config\n            WHERE placement_id = ?\n            AND partner_id = ?\n            AND (ad_types is null OR ad_types LIKE \'%\' || ? || \'%\')\n            LIMIT 1\n            "

    const/4 v1, 0x3

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Ln3/c0/y;->y0(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, v2, p1}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_0
    const/4 p1, 0x2

    if-nez p2, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ln3/c0/y;->y0(I)V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0, p1, p2}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    :goto_1
    if-nez p3, :cond_2

    .line 6
    invoke-virtual {v0, v1}, Ln3/c0/y;->y0(I)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {v0, v1, p3}, Ln3/c0/y;->f0(ILjava/lang/String;)V

    .line 8
    :goto_2
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 9
    iget-object p2, p0, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    const/4 p3, 0x0

    new-instance v1, Le/a/i/d0/g0/c/c$a;

    invoke-direct {v1, p0, v0}, Le/a/i/d0/g0/c/c$a;-><init>(Le/a/i/d0/g0/c/c;Ln3/c0/y;)V

    invoke-static {p2, p3, p1, v1, p4}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/i/d0/g0/c/e;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/d0/g0/c/c$g;

    invoke-direct {v1, p0, p1}, Le/a/i/d0/g0/c/c$g;-><init>(Le/a/i/d0/g0/c/c;Ljava/util/List;)V

    invoke-static {v0, v1, p2}, Landroid/support/v4/media/session/MediaSessionCompat;->M1(Ln3/c0/q;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public z(JLs1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "Select expires_at from predictive_ecpm_config WHERE expires_at > ? LIMIT 1"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Ln3/c0/y;->l0(IJ)V

    .line 3
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p2, p0, Le/a/i/d0/g0/c/c;->a:Ln3/c0/q;

    new-instance v1, Le/a/i/d0/g0/c/c$b;

    invoke-direct {v1, p0, v0}, Le/a/i/d0/g0/c/c$b;-><init>(Le/a/i/d0/g0/c/c;Ln3/c0/y;)V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1, v1, p3}, Ln3/c0/g;->b(Ln3/c0/q;ZLandroid/os/CancellationSignal;Ljava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
