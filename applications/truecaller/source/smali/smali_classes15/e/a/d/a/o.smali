.class public final Le/a/d/a/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/d/v/l/a;
.implements Lq3/a/i0;


# instance fields
.field public a:Z

.field public b:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/v/l/c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lq3/a/y;

.field public final e:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:Le/a/d/a/p;


# direct methods
.method public constructor <init>(ILe/a/d/a/p;)V
    .locals 1

    const-string v0, "callInfo"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Le/a/d/a/o;->f:I

    iput-object p2, p0, Le/a/d/a/o;->g:Le/a/d/a/p;

    .line 2
    sget-object p1, Le/a/d/v/l/c$a;->b:Le/a/d/v/l/c$a;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/o;->b:Lq3/a/x2/a1;

    .line 3
    new-instance p1, Le/a/d/v/a;

    const/4 p2, 0x0

    const/4 v0, 0x7

    invoke-direct {p1, p2, p2, p2, v0}, Le/a/d/v/a;-><init>(ZZZI)V

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 4
    invoke-static {p1, p2, p1}, Ls1/a/a/a/v0/f/d;->j(Lq3/a/p1;ILjava/lang/Object;)Lq3/a/y;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/o;->d:Lq3/a/y;

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/a/o;->e:Lq3/a/x2/i1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/a/o;->a:Z

    return v0
.end method

.method public b()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    return-object v0
.end method

.method public c()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/o$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/o$b;-><init>(Le/a/d/a/o;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/d/a/o;->f:I

    return v0
.end method

.method public e(Le/a/d/v/l/c$b;)Lq3/a/p1;
    .locals 7

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Le/a/d/a/o$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/d/a/o$c;-><init>(Le/a/d/a/o;Le/a/d/v/l/c$b;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Le/a/d/a/o;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Le/a/d/a/o;->f:I

    .line 3
    check-cast p1, Le/a/d/a/o;

    .line 4
    iget p1, p1, Le/a/d/a/o;->f:I

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/a/o;->e:Lq3/a/x2/i1;

    return-object v0
.end method

.method public g()Lq3/a/p1;
    .locals 6

    .line 1
    new-instance v3, Le/a/d/a/o$a;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Le/a/d/a/o$a;-><init>(Le/a/d/a/o;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    sget-object v0, Lq3/a/t0;->d:Lq3/a/g0;

    .line 2
    iget-object v1, p0, Le/a/d/a/o;->d:Lq3/a/y;

    invoke-virtual {v0, v1}, Ls1/w/a;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/a/o;->b:Lq3/a/x2/a1;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/d/a/o;->f:I

    return v0
.end method
