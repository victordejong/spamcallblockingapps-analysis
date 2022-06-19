.class public final Le/a/v/a/q0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/q0/d;->G0(Le/a/v/a/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/q0/d;

.field public final synthetic b:Le/a/v/a/s;


# direct methods
.method public constructor <init>(Le/a/v/a/q0/d;Le/a/v/a/s;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/q0/d$a;->a:Le/a/v/a/q0/d;

    iput-object p2, p0, Le/a/v/a/q0/d$a;->b:Le/a/v/a/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/v/a/q0/d$a;->a:Le/a/v/a/q0/d;

    invoke-virtual {p1}, Le/a/v/a/q0/d;->getPresenter()Le/a/v/a/q0/a;

    move-result-object p1

    iget-object v0, p0, Le/a/v/a/q0/d$a;->b:Le/a/v/a/s;

    check-cast p1, Le/a/v/a/q0/c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "detailsViewModel"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/v/a/q0/c;->b:Le/a/f5/a;

    .line 4
    iget-object v2, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v2

    const-string v3, "detailsViewModel.contact.numbers"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Le/a/f5/a;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 6
    iget-object v2, p1, Le/a/v/a/q0/c;->d:Le/a/b0/a/b/b;

    .line 7
    iget-object v3, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 8
    invoke-interface {v2, v3}, Le/a/b0/a/b/b;->a(Ljava/lang/Object;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v2

    .line 9
    iget-object v3, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/v/a/q0/b;

    if-eqz v3, :cond_0

    .line 10
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-interface {v3, v0, v1, v2}, Le/a/v/a/q0/b;->o0(Lcom/truecaller/data/entity/Contact;Ljava/util/List;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    .line 12
    :cond_0
    iget-object p1, p1, Le/a/v/a/q0/c;->c:Le/a/v/a/z/a;

    .line 13
    iget-object v0, p1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    sget-object v1, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->SWISH:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;

    const-string v2, "context"

    .line 14
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "action"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactDetailsAction;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object p1, p1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v2, p1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method
