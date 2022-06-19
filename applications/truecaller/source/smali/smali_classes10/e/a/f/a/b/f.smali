.class public final Le/a/f/a/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/o/b/a/a/f;


# instance fields
.field public final synthetic a:Le/a/f/a/b/c;


# direct methods
.method public constructor <init>(Le/a/f/a/b/c;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/f;->a:Le/a/f/a/b/c;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V
    .locals 2

    const-string v0, "onDemandMessageSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/f/a/b/f;->a:Le/a/f/a/b/c;

    invoke-virtual {v1}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object v1

    check-cast v1, Le/a/f/a/b/j;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/f/a/b/i;->ji(Ljava/lang/String;Lcom/truecaller/contextcall/ui/reasonpicker/ondemand/OnDemandMessageSource;)V

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
    iget-object v0, p0, Le/a/f/a/b/f;->a:Le/a/f/a/b/c;

    invoke-virtual {v0}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object v0

    check-cast v0, Le/a/f/a/b/j;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/b/i;->m2()V

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
    iget-object v0, p0, Le/a/f/a/b/f;->a:Le/a/f/a/b/c;

    invoke-virtual {v0}, Le/a/f/a/b/c;->jB()Le/a/f/a/b/h;

    move-result-object v0

    check-cast v0, Le/a/f/a/b/j;

    .line 2
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/f/a/b/i;->r5()V

    :cond_0
    return-void
.end method
