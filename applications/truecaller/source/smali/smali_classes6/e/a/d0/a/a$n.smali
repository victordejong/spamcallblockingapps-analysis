.class public final Le/a/d0/a/a$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;->o(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d0/a/a;


# direct methods
.method public constructor <init>(Le/a/d0/a/a;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/a$n;->a:Le/a/d0/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/d0/a/a$n;->a:Le/a/d0/a/a;

    invoke-virtual {p1}, Le/a/d0/a/a;->C()Le/a/d0/a/k;

    move-result-object p1

    check-cast p1, Le/a/d0/a/m;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "callerId"

    const-string v1, "context"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "CloseButton"

    const-string v2, "subAction"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "dismissed"

    const-string v3, "action"

    .line 4
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v3, v2, v1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Le/a/d0/a/m;->r:Le/a/q2/a;

    invoke-static {v3, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 7
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d0/a/l;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 8
    invoke-interface {p1, v0}, Le/a/d0/a/l;->L5(Z)V

    :cond_0
    return-void
.end method
