.class public final Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/View;",
        "Le/a/a/h1/n/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;->b:I

    iput-object p2, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;->b:I

    const-string v1, "it"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1
    check-cast p1, Landroid/view/View;

    .line 2
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Le/a/a/h1/n/i;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    .line 4
    iget-object v1, v1, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->g:Le/a/o2/f;

    if-eqz v1, :cond_0

    .line 5
    invoke-direct {v0, p1, v1}, Le/a/a/h1/n/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    :cond_0
    const-string p1, "overflowAdapter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    .line 7
    :cond_1
    throw v2

    .line 8
    :cond_2
    check-cast p1, Landroid/view/View;

    .line 9
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v0, Le/a/a/h1/n/i;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    .line 11
    iget-object v1, v1, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->f:Le/a/o2/f;

    if-eqz v1, :cond_3

    .line 12
    invoke-direct {v0, p1, v1}, Le/a/a/h1/n/i;-><init>(Landroid/view/View;Le/a/o2/m;)V

    return-object v0

    :cond_3
    const-string p1, "adapter"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
