.class public final Lq3/b/l/g;
.super Lq3/b/l/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lq3/b/l/l/c;)V
    .locals 2

    const-string v0, "configuration"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lq3/b/l/a;-><init>(Lq3/b/l/l/c;Ls1/z/c/f;)V

    .line 2
    iget-object p1, p1, Lq3/b/l/l/c;->k:Lq3/b/m/b;

    .line 3
    sget-object v0, Lq3/b/m/d;->a:Lq3/b/m/b;

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lq3/b/l/l/n;

    .line 6
    iget-object v0, p0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    .line 7
    iget-boolean v1, v0, Lq3/b/l/l/c;->h:Z

    iget-object v0, v0, Lq3/b/l/l/c;->i:Ljava/lang/String;

    invoke-direct {p1, v1, v0}, Lq3/b/l/l/n;-><init>(ZLjava/lang/String;)V

    .line 8
    iget-object v0, p0, Lq3/b/l/a;->a:Lq3/b/l/l/c;

    iget-object v0, v0, Lq3/b/l/l/c;->k:Lq3/b/m/b;

    .line 9
    invoke-virtual {v0, p1}, Lq3/b/m/b;->a(Lq3/b/m/c;)V

    :goto_0
    return-void
.end method
