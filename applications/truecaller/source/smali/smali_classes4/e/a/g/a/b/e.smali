.class public final Le/a/g/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/a/a/f;


# instance fields
.field public final synthetic a:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/e;->a:Le/a/g/a/b/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V
    .locals 1

    const-string v0, "onDemandMessageSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/a/b/e;->a:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    invoke-virtual {v0, p1, p2}, Le/a/g/a/m;->lk(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/CallContextMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/a/b/e;->a:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    invoke-virtual {v0, p1}, Le/a/g/a/m;->jk(Lcom/truecaller/data/entity/CallContextMessage;)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/b/e;->a:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Le/a/g/a/m;->s:Z

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/g/a/b/e;->a:Le/a/g/a/b/a;

    invoke-virtual {v0}, Le/a/g/a/b/a;->RA()Le/a/g/a/b/g;

    move-result-object v0

    check-cast v0, Le/a/g/a/m;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/h;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/g/a/h;->Kn()V

    :cond_0
    return-void
.end method
