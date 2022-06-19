.class public final Le/a/d/a/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/w/a;
.implements Le/a/d/w/b;


# instance fields
.field public final a:Le/a/d/a/p;

.field public final b:Le/a/d/v/d;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final synthetic e:Le/a/d/a/a0;


# direct methods
.method public constructor <init>(Le/a/d/a/p;Le/a/d/v/d;Le/a/d/c0/y0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "idProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerSaid"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assistantAvatarUrl"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/a/d/a/a0;

    invoke-direct {v0, p1, p2, p3}, Le/a/d/a/a0;-><init>(Le/a/d/a/p;Le/a/d/v/d;Le/a/d/c0/y0;)V

    iput-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    iput-object p1, p0, Le/a/d/a/n;->a:Le/a/d/a/p;

    iput-object p2, p0, Le/a/d/a/n;->b:Le/a/d/v/d;

    iput-object p4, p0, Le/a/d/a/n;->c:Ljava/lang/String;

    iput-object p5, p0, Le/a/d/a/n;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    invoke-virtual {v0}, Le/a/d/a/a0;->a()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public b()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    invoke-virtual {v0}, Le/a/d/a/a0;->b()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public c()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    invoke-virtual {v0}, Le/a/d/a/a0;->c()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public d()Le/a/d/c0/z1/d;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/n;->a:Le/a/d/a/p;

    return-object v0
.end method

.method public e(Le/a/d/w/h$b;)Lq3/a/p1;
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    invoke-virtual {v0, p1}, Le/a/d/a/a0;->e(Le/a/d/w/h$b;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/a/d/b0/a;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/b0/a;",
            ")",
            "Ljava/util/List<",
            "Le/a/d/c0/x0;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public g()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/d/b0/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    .line 1
    iget-object v0, v0, Le/a/d/a/a0;->d:Lq3/a/x2/a1;

    return-object v0
.end method

.method public getChannelId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    .line 1
    iget-object v0, v0, Le/a/d/a/a0;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/d/w/h;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    .line 1
    iget-object v0, v0, Le/a/d/a/a0;->c:Lq3/a/x2/a1;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/n;->d:Ljava/lang/String;

    return-object v0
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Le/a/d/a/n;->e:Le/a/d/a/a0;

    .line 1
    iget-object v0, v0, Le/a/d/a/a0;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
