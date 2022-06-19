.class public final Le/a/a/c/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/a/t;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Z

.field public final synthetic d:Ls1/z/b/l;

.field public final synthetic e:Le/a/c/r/j/h;

.field public final synthetic f:Lcom/truecaller/messaging/data/types/Message;

.field public final synthetic g:Le/a/c/r/j/p;


# direct methods
.method public constructor <init>(Le/a/a/c/a/t;Ljava/lang/String;ZLs1/z/b/l;Le/a/c/r/j/h;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/a/q;->a:Le/a/a/c/a/t;

    iput-object p2, p0, Le/a/a/c/a/q;->b:Ljava/lang/String;

    iput-boolean p3, p0, Le/a/a/c/a/q;->c:Z

    iput-object p4, p0, Le/a/a/c/a/q;->d:Ls1/z/b/l;

    iput-object p5, p0, Le/a/a/c/a/q;->e:Le/a/c/r/j/h;

    iput-object p6, p0, Le/a/a/c/a/q;->f:Lcom/truecaller/messaging/data/types/Message;

    iput-object p7, p0, Le/a/a/c/a/q;->g:Le/a/c/r/j/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/a/c/a/q;->a:Le/a/a/c/a/t;

    iget-object v0, p0, Le/a/a/c/a/q;->b:Ljava/lang/String;

    iget-boolean v1, p0, Le/a/a/c/a/q;->c:Z

    new-instance v2, Le/a/a/c/a/q$a;

    invoke-direct {v2, p0}, Le/a/a/c/a/q$a;-><init>(Le/a/a/c/a/q;)V

    .line 2
    iget-object p1, p1, Le/a/a/c/a/b;->n:Landroid/view/View;

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v3, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity"

    invoke-static {p1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-virtual {p1}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v3, "(itemView.context as Con\u2026y).supportFragmentManager"

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Le/a/c/a/b/a/f;->m:Le/a/c/a/b/a/f$b;

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v1, v4, v2}, Le/a/c/a/b/a/f$b;->a(Ljava/lang/String;ZLjava/lang/String;Ls1/z/b/p;)Le/a/c/a/b/a/f;

    move-result-object v0

    .line 5
    sget-object v1, Le/a/c/a/b/a/f;->l:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, p1, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
