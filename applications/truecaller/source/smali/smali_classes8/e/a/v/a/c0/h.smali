.class public final Le/a/v/a/c0/h;
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
.field public final synthetic b:Le/a/v/a/c0/k;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/v/a/c0/k;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c0/h;->b:Le/a/v/a/c0/k;

    iput-object p3, p0, Le/a/v/a/c0/h;->c:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    iget-object v0, p0, Le/a/v/a/c0/h;->b:Le/a/v/a/c0/k;

    .line 2
    iget-object v0, v0, Le/a/v/a/c0/k;->b:Le/a/v/a/z/a;

    .line 3
    iget-object v1, v0, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v2, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->EMAIL:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v3, "context"

    .line 4
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "action"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4, v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, v0, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 9
    iget-object v0, p0, Le/a/v/a/c0/h;->b:Le/a/v/a/c0/k;

    .line 10
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/c0/e;

    if-eqz v0, :cond_0

    .line 11
    iget-object v1, p0, Le/a/v/a/c0/h;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Le/a/v/a/c0/e;->Q(Ljava/lang/String;)V

    .line 12
    :cond_0
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
