.class public final Le/a/d0/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/a/a/f;


# instance fields
.field public final synthetic a:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Le/a/d0/a/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/d0/a/i;->a:Le/a/d0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V
    .locals 2

    const-string v0, "onDemandMessageSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/d0/a/i;->a:Le/a/d0/a/a;

    invoke-virtual {v1}, Le/a/d0/a/a;->C()Le/a/d0/a/k;

    move-result-object v1

    check-cast v1, Le/a/d0/a/m;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_0

    invoke-interface {v0, p2, p1}, Le/a/d0/a/l;->c6(Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/truecaller/data/entity/CallContextMessage;)V
    .locals 1

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/a/i;->a:Le/a/d0/a/a;

    invoke-virtual {v0}, Le/a/d0/a/a;->C()Le/a/d0/a/k;

    move-result-object v0

    check-cast v0, Le/a/d0/a/m;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d0/a/l;->m2()V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/d0/a/i;->a:Le/a/d0/a/a;

    invoke-virtual {v0}, Le/a/d0/a/a;->C()Le/a/d0/a/k;

    move-result-object v0

    check-cast v0, Le/a/d0/a/m;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d0/a/l;->r5()V

    :cond_0
    return-void
.end method
