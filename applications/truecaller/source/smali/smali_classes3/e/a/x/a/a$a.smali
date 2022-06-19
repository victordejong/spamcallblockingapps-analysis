.class public final Le/a/x/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/x/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/x/a/a$a;->a:I

    iput-object p2, p0, Le/a/x/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/x/a/a$a;->a:I

    const-string v0, "presenter"

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 1
    iget-object p1, p0, Le/a/x/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/x/a/a;

    .line 2
    iget-object p1, p1, Le/a/x/a/a;->g:Le/a/x/a/g;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    throw v1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/x/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/x/a/a;

    .line 5
    iget-object p1, p1, Le/a/x/a/a;->g:Le/a/x/a/g;

    if-eqz p1, :cond_3

    .line 6
    check-cast p1, Le/a/x/a/f;

    .line 7
    iget-object v0, p1, Le/a/x/a/f;->g:Le/a/x/l;

    invoke-interface {v0}, Le/a/x/l;->v()V

    .line 8
    iget-object p1, p1, Le/a/x/a/f;->h:Le/a/x/h0/a;

    sget-object v0, Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;->CallDeclined:Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "ghostCallInCallUIAction"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v1, Le/a/x/h0/b/b;

    .line 11
    iget-object v2, p1, Le/a/x/h0/a;->d:Le/a/l/a/v;

    invoke-virtual {v2}, Le/a/l/a/v;->a()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-direct {v1, v0, v2}, Le/a/x/h0/b/b;-><init>(Lcom/truecaller/ghost_call/analytics/events/GhostCallInCallUIAction;Ljava/lang/String;)V

    .line 13
    invoke-static {v1, p1}, Le/a/c/p/a;->O1(Le/a/l/l2/a;Le/a/l/l2/c;)V

    return-void

    .line 14
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method
