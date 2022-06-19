.class public final Ld3;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Ld3;->b:I

    iput-object p2, p0, Ld3;->c:Ljava/lang/Object;

    iput-object p3, p0, Ld3;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Ld3;->b:I

    const-string v2, "action"

    const-string v3, "context"

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const/4 v5, 0x1

    if-ne v1, v5, :cond_1

    .line 1
    iget-object v1, p0, Ld3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 2
    iget-object v1, v1, Le/a/v/a/i0/d;->f:Le/a/v/a/z/a;

    .line 3
    iget-object v5, v1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    .line 4
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "message"

    .line 5
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, v1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v2, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 8
    iget-object v1, p0, Ld3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 9
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/c;

    if-eqz v1, :cond_0

    .line 10
    iget-object v2, p0, Ld3;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Le/a/v/a/i0/c;->e5(Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 11
    :cond_1
    throw v4

    .line 12
    :cond_2
    iget-object v1, p0, Ld3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 13
    iget-object v1, v1, Le/a/v/a/i0/d;->f:Le/a/v/a/z/a;

    .line 14
    iget-object v5, v1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v6, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->COPY:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    .line 15
    invoke-static {v5, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v6}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 17
    invoke-static {v3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v2, v3, v4, v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v1, v1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v2, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 20
    iget-object v1, p0, Ld3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 21
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/c;

    if-eqz v1, :cond_3

    .line 22
    iget-object v2, p0, Ld3;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1, v2}, Le/a/v/a/i0/c;->f5(Ljava/lang/String;)V

    .line 23
    :cond_3
    iget-object v1, p0, Ld3;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/d;

    .line 24
    iget-object v1, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/i0/c;

    if-eqz v1, :cond_4

    .line 25
    invoke-interface {v1}, Le/a/v/a/i0/c;->h5()V

    :cond_4
    return-object v0
.end method
