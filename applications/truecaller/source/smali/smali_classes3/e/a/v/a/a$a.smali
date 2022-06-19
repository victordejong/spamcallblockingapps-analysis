.class public final Le/a/v/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/v/a/a$a;->a:I

    iput-object p2, p0, Le/a/v/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Le/a/v/a/a$a;->a:I

    const-string v0, "detailsViewModel"

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 1
    iget-object p1, p0, Le/a/v/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/a;

    invoke-virtual {p1}, Le/a/v/a/a;->SA()Le/a/v/a/f;

    move-result-object p1

    check-cast p1, Le/a/v/a/q;

    .line 2
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/g;

    if-eqz v2, :cond_1

    iget-object p1, p1, Le/a/v/a/q;->d:Le/a/v/a/s;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 4
    invoke-interface {v2, p1}, Le/a/v/a/g;->d(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    return-void

    .line 5
    :cond_2
    throw v1

    .line 6
    :cond_3
    iget-object p1, p0, Le/a/v/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/a;

    invoke-virtual {p1}, Le/a/v/a/a;->QA()Le/a/v/a/e0/a;

    move-result-object p1

    check-cast p1, Le/a/v/a/e0/c;

    .line 7
    iget-object v2, p1, Le/a/v/a/e0/c;->o:Le/a/v/a/z/a;

    .line 8
    sget-object v3, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    iget-object v4, v2, Le/a/v/a/z/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->n(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object v3

    iget-object v2, v2, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v3, v2}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 9
    iget-object v2, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/v/a/e0/b;

    if-eqz v2, :cond_5

    iget-object p1, p1, Le/a/v/a/e0/c;->d:Le/a/v/a/s;

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-interface {v2, p1}, Le/a/v/a/e0/b;->e1(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_1

    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_1
    return-void
.end method
