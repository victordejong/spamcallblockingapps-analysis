.class public final Le/a/f/a/a/m;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ljava/lang/String;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.incallui.callui.incoming.IncomingCallPresenter$subscribeToBusinessVideoCallerIdPlaying$1"
    f = "IncomingCallPresenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/f/a/a/i;

.field public final synthetic f:Lcom/truecaller/data/entity/Contact;

.field public final synthetic g:Z


# direct methods
.method public constructor <init>(Le/a/f/a/a/i;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    iput-object p2, p0, Le/a/f/a/a/m;->f:Lcom/truecaller/data/entity/Contact;

    iput-boolean p3, p0, Le/a/f/a/a/m;->g:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/f/a/a/m;

    iget-object v0, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    iget-object v1, p0, Le/a/f/a/a/m;->f:Lcom/truecaller/data/entity/Contact;

    iget-boolean v2, p0, Le/a/f/a/a/m;->g:Z

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/f/a/a/m;-><init>(Le/a/f/a/a/i;Lcom/truecaller/data/entity/Contact;ZLs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    iget-object v1, p0, Le/a/f/a/a/m;->f:Lcom/truecaller/data/entity/Contact;

    iget-boolean v2, p0, Le/a/f/a/a/m;->g:Z

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_0

    .line 5
    invoke-interface {p2}, Le/a/f/a/a/g;->nx()V

    .line 6
    :cond_0
    iget-object p2, v0, Le/a/f/a/f;->d:Le/a/m5/c;

    if-eqz p2, :cond_2

    .line 7
    instance-of p2, p2, Le/a/b/j/b;

    if-eqz p2, :cond_2

    const/4 p2, 0x1

    .line 8
    iput-boolean p2, v0, Le/a/f/a/a/i;->n:Z

    .line 9
    iget-object p2, v0, Le/a/f/a/a/i;->w:Le/a/f/z/a0;

    .line 10
    iget-boolean v3, v0, Le/a/f/a/a/i;->n:Z

    .line 11
    check-cast p2, Le/a/f/z/b0;

    .line 12
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 13
    iget-object p2, p2, Le/a/f/z/b0;->d:Le/a/b/j/b;

    .line 14
    new-instance v4, Le/a/b/j/a$d;

    invoke-direct {v4, v1, v2, v3}, Le/a/b/j/a$d;-><init>(Lcom/truecaller/data/entity/Contact;ZZ)V

    .line 15
    invoke-virtual {p2, v4}, Le/a/b/j/b;->Jj(Le/a/b/j/a;)V

    .line 16
    :cond_1
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/f/a/a/g;

    if-eqz p2, :cond_2

    .line 17
    invoke-interface {p2}, Le/a/f/a/e;->zl()V

    :cond_2
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/f/a/a/g;->nx()V

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    .line 6
    iget-object v0, p1, Le/a/f/a/f;->d:Le/a/m5/c;

    if-eqz v0, :cond_2

    .line 7
    instance-of v0, v0, Le/a/b/j/b;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Le/a/f/a/a/i;->n:Z

    .line 9
    iget-object p1, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    .line 10
    iget-object v0, p1, Le/a/f/a/a/i;->w:Le/a/f/z/a0;

    .line 11
    iget-object v1, p0, Le/a/f/a/a/m;->f:Lcom/truecaller/data/entity/Contact;

    .line 12
    iget-boolean v2, p0, Le/a/f/a/a/m;->g:Z

    .line 13
    iget-boolean p1, p1, Le/a/f/a/a/i;->n:Z

    .line 14
    check-cast v0, Le/a/f/z/b0;

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 16
    iget-object v0, v0, Le/a/f/z/b0;->d:Le/a/b/j/b;

    .line 17
    new-instance v3, Le/a/b/j/a$d;

    invoke-direct {v3, v1, v2, p1}, Le/a/b/j/a$d;-><init>(Lcom/truecaller/data/entity/Contact;ZZ)V

    .line 18
    invoke-virtual {v0, v3}, Le/a/b/j/b;->Jj(Le/a/b/j/a;)V

    .line 19
    :cond_1
    iget-object p1, p0, Le/a/f/a/a/m;->e:Le/a/f/a/a/i;

    .line 20
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/f/a/a/g;

    if-eqz p1, :cond_2

    .line 21
    invoke-interface {p1}, Le/a/f/a/e;->zl()V

    .line 22
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
