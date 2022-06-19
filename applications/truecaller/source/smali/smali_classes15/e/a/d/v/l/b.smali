.class public final Le/a/d/v/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/i0;
.implements Le/a/d/v/l/e/d;
.implements Le/a/d/v/l/e/b;
.implements Le/a/d/v/l/e/g;
.implements Le/a/d/v/l/a;


# instance fields
.field public final a:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/d/v/l/c;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/x2/i1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/i1<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Lq3/a/i0;

.field public final d:I

.field public final e:Z

.field public final f:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic g:Le/a/d/v/l/e/d;

.field public final synthetic h:Le/a/d/v/l/e/b;

.field public final synthetic i:Le/a/d/v/l/e/g;


# direct methods
.method public constructor <init>(Lq3/a/i0;IZLq3/a/x2/a1;Le/a/d/v/l/d;Le/a/d/v/l/e/d;Le/a/d/v/l/e/i;Le/a/d/v/l/e/b;Le/a/d/v/l/e/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/i0;",
            "IZ",
            "Lq3/a/x2/a1<",
            "Ljava/lang/Boolean;",
            ">;",
            "Le/a/d/v/l/d;",
            "Le/a/d/v/l/e/d;",
            "Le/a/d/v/l/e/i;",
            "Le/a/d/v/l/e/b;",
            "Le/a/d/v/l/e/g;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callScope"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reachedOngoing"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stateMachine"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "connect"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "handleCallSetting"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cancelInvite"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "end"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p6, p0, Le/a/d/v/l/b;->g:Le/a/d/v/l/e/d;

    .line 3
    iput-object p8, p0, Le/a/d/v/l/b;->h:Le/a/d/v/l/e/b;

    .line 4
    iput-object p9, p0, Le/a/d/v/l/b;->i:Le/a/d/v/l/e/g;

    iput-object p1, p0, Le/a/d/v/l/b;->c:Lq3/a/i0;

    iput p2, p0, Le/a/d/v/l/b;->d:I

    iput-boolean p3, p0, Le/a/d/v/l/b;->e:Z

    iput-object p4, p0, Le/a/d/v/l/b;->f:Lq3/a/x2/a1;

    .line 5
    iput-object p5, p0, Le/a/d/v/l/b;->a:Lq3/a/x2/i1;

    .line 6
    invoke-interface {p7}, Le/a/d/v/l/e/i;->b()Lq3/a/x2/i1;

    move-result-object p1

    iput-object p1, p0, Le/a/d/v/l/b;->b:Lq3/a/x2/i1;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/v/l/b;->e:Z

    return v0
.end method

.method public b()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/d/v/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/v/l/b;->b:Lq3/a/x2/i1;

    return-object v0
.end method

.method public c()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/b;->g:Le/a/d/v/l/e/d;

    invoke-interface {v0}, Le/a/d/v/l/e/d;->c()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/d/v/l/b;->d:I

    return v0
.end method

.method public e(Le/a/d/v/l/c$b;)Lq3/a/p1;
    .locals 1

    const-string v0, "endState"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/d/v/l/b;->i:Le/a/d/v/l/e/g;

    invoke-interface {v0, p1}, Le/a/d/v/l/e/g;->e(Le/a/d/v/l/c$b;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    instance-of v1, p1, Le/a/d/v/l/a;

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget v1, p0, Le/a/d/v/l/b;->d:I

    .line 3
    check-cast p1, Le/a/d/v/l/a;

    invoke-interface {p1}, Le/a/d/v/l/a;->d()I

    move-result p1

    if-ne v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public f()Lq3/a/x2/i1;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d/v/l/b;->f:Lq3/a/x2/a1;

    return-object v0
.end method

.method public g()Lq3/a/p1;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/b;->h:Le/a/d/v/l/e/b;

    invoke-interface {v0}, Le/a/d/v/l/e/b;->g()Lq3/a/p1;

    move-result-object v0

    return-object v0
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    iget-object v0, p0, Le/a/d/v/l/b;->c:Lq3/a/i0;

    invoke-interface {v0}, Lq3/a/i0;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lq3/a/x2/i1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/x2/i1<",
            "Le/a/d/v/l/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/v/l/b;->a:Lq3/a/x2/i1;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/d/v/l/b;->d:I

    return v0
.end method
