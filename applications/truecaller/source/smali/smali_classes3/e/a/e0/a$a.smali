.class public final Le/a/e0/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e0/a;->d(Ljava/lang/String;Ljava/lang/String;Le/a/e0/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/e0/a$a;->b:I

    iput-object p2, p0, Le/a/e0/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/e0/a$a;->b:I

    const-string v2, "afterCallWarnFriends"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    .line 1
    iget-object v1, p0, Le/a/e0/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/e0/a;

    .line 2
    iget-object v1, v1, Le/a/e0/a;->b:Le/a/e0/e;

    .line 3
    iget-object v1, v1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast v1, Le/a/g/j/m0;

    .line 4
    iget-object v1, v1, Le/a/g/j/m0;->d:Lcom/truecaller/settings/CallingSettings;

    invoke-interface {v1, v2}, Lcom/truecaller/settings/CallingSettings;->l(Ljava/lang/String;)I

    return-object v0

    .line 5
    :cond_0
    throw v3

    .line 6
    :cond_1
    iget-object v1, p0, Le/a/e0/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/e0/a;

    .line 7
    iget-object v1, v1, Le/a/e0/a;->b:Le/a/e0/e;

    .line 8
    iget-object v4, v1, Le/a/e0/e;->b:Ljava/lang/String;

    if-eqz v4, :cond_2

    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent$DialogWarnFriendsAction;->WARN_FRIENDS:Lcom/truecaller/analytics/common/event/ViewActionEvent$DialogWarnFriendsAction;

    const-string v5, "context"

    .line 9
    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "subAction"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v3}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DialogWarnFriendsAction;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v5, "Click"

    const-string v6, "action"

    .line 11
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v6, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v6, v5, v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    iget-object v3, v1, Le/a/e0/e;->f:Le/a/q2/a;

    invoke-static {v6, v3}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 14
    iget-object v1, v1, Le/a/e0/e;->c:Le/a/e0/c;

    check-cast v1, Le/a/g/j/m0;

    .line 15
    iget-object v1, v1, Le/a/g/j/m0;->d:Lcom/truecaller/settings/CallingSettings;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    return-object v0

    :cond_2
    const-string v0, "analyticsContext"

    .line 16
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
