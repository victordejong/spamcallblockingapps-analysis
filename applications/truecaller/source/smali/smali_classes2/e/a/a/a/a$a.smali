.class public final Le/a/a/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/a/a/a$a;->a:I

    iput-object p2, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget p1, p0, Le/a/a/a/a$a;->a:I

    if-eqz p1, :cond_a

    const/4 v0, 0x1

    const-string v1, "share"

    if-eq p1, v0, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/a;

    invoke-virtual {p1}, Le/a/a/a/a;->PA()Le/a/a/a/d;

    move-result-object p1

    check-cast p1, Le/a/a/a/g;

    .line 2
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/e;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/a/a/e;->Jd()V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 3
    throw p1

    .line 4
    :cond_2
    iget-object p1, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/a;

    invoke-virtual {p1}, Le/a/a/a/a;->PA()Le/a/a/a/d;

    move-result-object p1

    check-cast p1, Le/a/a/a/g;

    .line 5
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/a/e;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Le/a/a/a/g;->Ij()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/a/a/e;->gz(Ljava/lang/String;)V

    .line 6
    :cond_3
    invoke-virtual {p1, v1}, Le/a/a/a/g;->Jj(Ljava/lang/String;)V

    return-void

    .line 7
    :cond_4
    iget-object p1, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/a;

    invoke-virtual {p1}, Le/a/a/a/a;->PA()Le/a/a/a/d;

    move-result-object p1

    check-cast p1, Le/a/a/a/g;

    .line 8
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/a/e;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Le/a/a/a/g;->Ij()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/a/a/e;->Zi(Ljava/lang/String;)V

    :cond_5
    const-string v0, "copy"

    .line 9
    invoke-virtual {p1, v0}, Le/a/a/a/g;->Jj(Ljava/lang/String;)V

    return-void

    .line 10
    :cond_6
    iget-object p1, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/a;

    invoke-virtual {p1}, Le/a/a/a/a;->PA()Le/a/a/a/d;

    move-result-object p1

    check-cast p1, Le/a/a/a/g;

    .line 11
    new-instance v8, Lcom/truecaller/messaging/ForwardContentItem;

    .line 12
    invoke-virtual {p1}, Le/a/a/a/g;->Ij()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v0, v8

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/truecaller/messaging/ForwardContentItem;-><init>(Ljava/lang/String;ZLcom/truecaller/messaging/data/types/BinaryEntity;ILjava/util/List;Lcom/truecaller/messaging/data/types/ImForwardInfo;I)V

    .line 14
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/a/e;

    if-eqz v0, :cond_7

    invoke-interface {v0, v8}, Le/a/a/a/e;->It(Lcom/truecaller/messaging/ForwardContentItem;)V

    :cond_7
    const-string v0, "tcSend"

    .line 15
    invoke-virtual {p1, v0}, Le/a/a/a/g;->Jj(Ljava/lang/String;)V

    return-void

    .line 16
    :cond_8
    iget-object p1, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/a;

    invoke-virtual {p1}, Le/a/a/a/a;->PA()Le/a/a/a/d;

    move-result-object p1

    check-cast p1, Le/a/a/a/g;

    .line 17
    iget-object v0, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/a/a/e;

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Le/a/a/a/g;->Ij()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Le/a/a/a/e;->gz(Ljava/lang/String;)V

    .line 18
    :cond_9
    invoke-virtual {p1, v1}, Le/a/a/a/g;->Jj(Ljava/lang/String;)V

    return-void

    .line 19
    :cond_a
    iget-object p1, p0, Le/a/a/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/a/a/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method
