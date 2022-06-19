.class public final Le/a/v/a/c0/g;
.super Ls1/z/c/m;
.source "SourceFile"

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
.field public final synthetic b:Le/a/k3/l/d;

.field public final synthetic c:Le/a/v/a/c0/k;


# direct methods
.method public constructor <init>(Le/a/k3/l/d;Le/a/v/a/c0/k;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c0/g;->b:Le/a/k3/l/d;

    iput-object p2, p0, Le/a/v/a/c0/g;->c:Le/a/v/a/c0/k;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/v/a/c0/g;->c:Le/a/v/a/c0/k;

    iget-object v1, p0, Le/a/v/a/c0/g;->b:Le/a/k3/l/d;

    .line 2
    iget-object v2, v0, Le/a/v/a/c0/k;->b:Le/a/v/a/z/a;

    iget-object v3, v1, Le/a/k3/l/d;->d:Ljava/lang/String;

    const-string v4, "action.packageName"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "subAction"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "detailView"

    const-string v6, "context"

    .line 4
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "externalApp"

    const-string v6, "action"

    .line 5
    invoke-static {v4, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v6, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v6, v4, v3, v5}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, v2, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v6, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 8
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/c0/e;

    if-eqz v0, :cond_0

    iget-object v1, v1, Le/a/k3/l/d;->c:Landroid/content/Intent;

    const-string v2, "action.actionIntent"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/v/a/c0/e;->V(Landroid/content/Intent;)V

    .line 9
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
