.class public final Le/a/v/a/a$d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a$d;->v1(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a$d;

.field public final synthetic b:Lcom/truecaller/common/ui/avatar/AvatarXConfig;


# direct methods
.method public constructor <init>(Le/a/v/a/a$d;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/a$d$c;->a:Le/a/v/a/a$d;

    iput-object p2, p0, Le/a/v/a/a$d$c;->b:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/v/a/a$d$c;->a:Le/a/v/a/a$d;

    iget-object p1, p1, Le/a/v/a/a$d;->c:Le/a/v/a/a;

    invoke-virtual {p1}, Le/a/v/a/a;->QA()Le/a/v/a/e0/a;

    move-result-object p1

    iget-object v0, p0, Le/a/v/a/a$d$c;->b:Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    check-cast p1, Le/a/v/a/e0/c;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "avatarXConfig"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/v/a/e0/c;->o:Le/a/v/a/z/a;

    .line 4
    iget-object v2, v1, Le/a/v/a/z/a;->a:Ljava/lang/String;

    const-string v3, "context"

    .line 5
    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "avatar"

    const-string v4, "action"

    .line 6
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v4, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5, v2}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, v1, Le/a/v/a/z/a;->b:Le/a/q2/a;

    invoke-static {v4, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 9
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/e0/b;

    if-eqz v1, :cond_1

    iget-object p1, p1, Le/a/v/a/e0/c;->d:Le/a/v/a/s;

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 11
    invoke-interface {v1, p1, v0}, Le/a/v/a/e0/b;->G1(Lcom/truecaller/data/entity/Contact;Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V

    goto :goto_0

    :cond_0
    const-string p1, "detailsViewModel"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :cond_1
    :goto_0
    return-void
.end method
