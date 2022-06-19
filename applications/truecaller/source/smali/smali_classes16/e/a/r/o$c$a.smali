.class public final Le/a/r/o$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/r/o$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.wizard.WizardListenerImpl$triggerAccountActions$3$1"
    f = "WizardListenerImpl.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/r/o$c;


# direct methods
.method public constructor <init>(Le/a/r/o$c;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/r/o$c$a;->e:Le/a/r/o$c;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
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

    new-instance p1, Le/a/r/o$c$a;

    iget-object v0, p0, Le/a/r/o$c$a;->e:Le/a/r/o$c;

    invoke-direct {p1, v0, p2}, Le/a/r/o$c$a;-><init>(Le/a/r/o$c;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/r/o$c$a;->e:Le/a/r/o$c;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 5
    iget-object p2, p2, Le/a/r/o;->o:Lo3/a;

    .line 6
    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v2/c;

    invoke-interface {p2}, Le/a/v2/c;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, v0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 8
    iget-object p2, p2, Le/a/r/o;->o:Lo3/a;

    .line 9
    invoke-interface {p2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/v2/c;

    invoke-interface {p2}, Le/a/v2/c;->a()Le/a/v2/l;

    move-result-object p2

    .line 10
    instance-of v1, p2, Le/a/v2/l$a;

    if-eqz v1, :cond_1

    check-cast p2, Le/a/v2/l$a;

    .line 11
    iget-boolean p2, p2, Le/a/v2/l$a;->a:Z

    if-eqz p2, :cond_1

    .line 12
    iget-object p2, v0, Le/a/r/o$c;->f:Le/a/r/o;

    .line 13
    iget-object v0, p2, Le/a/r/o;->h:Le/a/y2/q/a;

    const-wide/16 v1, 0x0

    const/4 p2, 0x2

    and-int/2addr p2, p2

    if-eqz p2, :cond_0

    const-wide/16 v1, 0x3c

    :cond_0
    const-string p2, "backgroundWorkTrigger"

    .line 14
    invoke-static {v0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-static {v1, v2}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AttestationWorkAction"

    .line 16
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    :cond_1
    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/r/o$c$a;->e:Le/a/r/o$c;

    iget-object p1, p1, Le/a/r/o$c;->f:Le/a/r/o;

    .line 3
    iget-object p1, p1, Le/a/r/o;->o:Lo3/a;

    .line 4
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/c;

    invoke-interface {p1}, Le/a/v2/c;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Le/a/r/o$c$a;->e:Le/a/r/o$c;

    iget-object p1, p1, Le/a/r/o$c;->f:Le/a/r/o;

    .line 6
    iget-object p1, p1, Le/a/r/o;->o:Lo3/a;

    .line 7
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/v2/c;

    invoke-interface {p1}, Le/a/v2/c;->a()Le/a/v2/l;

    move-result-object p1

    .line 8
    instance-of v0, p1, Le/a/v2/l$a;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/v2/l$a;

    .line 9
    iget-boolean p1, p1, Le/a/v2/l$a;->a:Z

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Le/a/r/o$c$a;->e:Le/a/r/o$c;

    iget-object p1, p1, Le/a/r/o$c;->f:Le/a/r/o;

    .line 11
    iget-object v0, p1, Le/a/r/o;->h:Le/a/y2/q/a;

    const-wide/16 v1, 0x3c

    const-string p1, "backgroundWorkTrigger"

    .line 12
    invoke-static {v0, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {v1, v2}, Le/m/d/y/n;->G0(J)Ls1/k;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    const-string v1, "AttestationWorkAction"

    .line 14
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->z1(Le/a/y2/q/a;Ljava/lang/String;Ls1/k;Ln3/m0/f;ILjava/lang/Object;)Ln3/m0/s;

    .line 15
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
