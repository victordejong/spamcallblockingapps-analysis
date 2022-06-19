.class public final synthetic Le/a/e/a/s0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/a/k3;


# direct methods
.method public synthetic constructor <init>(Le/a/e/a/k3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/a/s0;->a:Le/a/e/a/k3;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget-object p2, p0, Le/a/e/a/s0;->a:Le/a/e/a/k3;

    .line 1
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    check-cast p1, Landroid/app/Dialog;

    const v0, 0x7f0a0532

    .line 3
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p2}, Le/a/e/a/u2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/truecaller/messaging/conversation/ConversationActivity;->e:Lcom/truecaller/messaging/conversation/ConversationActivity$a;

    const-string v1, "context"

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "imId"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance v1, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 9
    iput-object p1, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 10
    iput-object p1, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->c:Ljava/lang/String;

    const/4 p1, 0x0

    .line 11
    iput-object p1, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->l:Ljava/lang/String;

    .line 12
    iput-object p1, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->m:Ljava/lang/String;

    .line 13
    iput-object p1, v1, Lcom/truecaller/data/entity/messaging/Participant$b;->g:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    const-string v1, "Participant.Builder(True\u2026\n                .build()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/truecaller/data/entity/messaging/Participant;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "participants"

    .line 16
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_hidden_number_intent"

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(context, Conversa\u2026DDEN_NUMBER_INTENT, true)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
