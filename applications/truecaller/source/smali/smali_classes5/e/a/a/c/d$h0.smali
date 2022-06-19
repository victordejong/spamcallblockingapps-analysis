.class public final Le/a/a/c/d$h0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/d;->q1(Le/a/a/c/c3;Le/a/c/y/f;Le/a/a/c/k/a/j$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/c/d;

.field public final synthetic b:Le/a/a/c/c3;

.field public final synthetic c:Le/a/c/y/f;


# direct methods
.method public constructor <init>(Le/a/a/c/d;Le/a/a/c/c3;Le/a/c/y/f;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/d$h0;->a:Le/a/a/c/d;

    iput-object p2, p0, Le/a/a/c/d$h0;->b:Le/a/a/c/c3;

    iput-object p3, p0, Le/a/a/c/d$h0;->c:Le/a/c/y/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    iget-object p1, p0, Le/a/a/c/d$h0;->b:Le/a/a/c/c3;

    iget-object p1, p1, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/a/a/c/d$h0;->a:Le/a/a/c/d;

    .line 3
    iget-object v0, v0, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    .line 4
    iget-object v1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v1, v1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v2, "participant.normalizedAddress"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, Le/a/a/c/d$h0;->c:Le/a/c/y/f;

    .line 6
    iget-object v2, v2, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 7
    iget-boolean v2, v2, Le/a/c/y/l;->m:Z

    const-string v3, "infocard"

    .line 8
    invoke-interface {v0, v1, v2, v3}, Le/a/a/c/k/a/j;->e(Ljava/lang/String;ZLjava/lang/String;)V

    .line 9
    new-instance v0, Le/a/c/i/e/a;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v5

    const-string v1, "buildMessageText()"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v6, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 12
    iget-object p1, p0, Le/a/a/c/d$h0;->c:Le/a/c/y/f;

    .line 13
    iget-object v8, p1, Le/a/c/y/f;->g:Lw3/b/a/b;

    .line 14
    iget-object v9, p1, Le/a/c/y/f;->h:Le/a/c/r/j/p;

    .line 15
    iget-object p1, p1, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 16
    iget-boolean v10, p1, Le/a/c/y/l;->m:Z

    const-string v7, "non-spam"

    move-object v4, v0

    .line 17
    invoke-direct/range {v4 .. v10}, Le/a/c/i/e/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lw3/b/a/b;Le/a/c/r/j/p;Z)V

    .line 18
    sget-object p1, Le/a/c/a/b/a/v;->k:Le/a/c/a/b/a/v$b;

    invoke-static {v0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 19
    iget-object v2, v0, Le/a/c/i/e/a;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, ""

    .line 20
    :goto_0
    iget-boolean v0, v0, Le/a/c/i/e/a;->f:Z

    .line 21
    invoke-virtual {p1, v1, v2, v0}, Le/a/c/a/b/a/v$b;->a(Ljava/util/List;Ljava/lang/String;Z)Le/a/c/a/b/a/v;

    move-result-object p1

    .line 22
    iget-object v0, p0, Le/a/a/c/d$h0;->a:Le/a/a/c/d;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 23
    sget-object v1, Le/a/c/a/b/a/v;->j:Ljava/lang/String;

    .line 24
    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
