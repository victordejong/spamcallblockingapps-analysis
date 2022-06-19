.class public final Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;
.super Ln3/b/a/h;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/n/l;
.implements Le/a/a/c/f3;
.implements Le/a/a/c/g8;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000{\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\t*\u00011\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008M\u0010\u0007J\u000f\u0010\u0006\u001a\u00020\u0005H\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0019\u0010\n\u001a\u00020\u00052\u0008\u0010\t\u001a\u0004\u0018\u00010\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000f\u0010\u000c\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000c\u0010\u0007J\u000f\u0010\r\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\r\u0010\u0007J\u000f\u0010\u000e\u001a\u00020\u0005H\u0014\u00a2\u0006\u0004\u0008\u000e\u0010\u0007J\u0017\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0013\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0007J\u000f\u0010\u0014\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0007J\u0017\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0015H\u0016\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0017\u0010\u0019\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u0012J\u0017\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u001a\u0010\u0012J\u000f\u0010\u001c\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ\u0017\u0010\u001f\u001a\u00020\u00052\u0006\u0010\u001e\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008\u001f\u0010 J\u000f\u0010!\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008!\u0010\u0007R\u0018\u0010$\u001a\u0004\u0018\u00010\u001b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#R\u0016\u0010(\u001a\u00020%8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008&\u0010\'R\u0016\u0010,\u001a\u00020)8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008*\u0010+R\u0016\u00100\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00106\u001a\u00020-8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00085\u0010/R\u0018\u0010:\u001a\u0004\u0018\u0001078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00088\u00109R\u001d\u0010@\u001a\u00020;8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008<\u0010=\u001a\u0004\u0008>\u0010?R\u0018\u0010D\u001a\u0004\u0018\u00010A8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008B\u0010CR\"\u0010L\u001a\u00020E8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008F\u0010G\u001a\u0004\u0008H\u0010I\"\u0004\u0008J\u0010K\u00a8\u0006N"
    }
    d2 = {
        "Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;",
        "Ln3/b/a/h;",
        "Le/a/a/h1/n/l;",
        "Le/a/a/c/f3;",
        "Le/a/a/c/g8;",
        "Ls1/s;",
        "ra",
        "()V",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onStart",
        "onStop",
        "onDestroy",
        "",
        "conversationId",
        "Y8",
        "(J)V",
        "d1",
        "c0",
        "",
        "visible",
        "I3",
        "(Z)V",
        "u2",
        "w7",
        "Le/a/a/c/v3;",
        "z9",
        "()Le/a/a/c/v3;",
        "component",
        "j4",
        "(Le/a/a/c/v3;)V",
        "Q2",
        "i",
        "Le/a/a/c/v3;",
        "conversationComponent",
        "Landroid/os/Handler;",
        "j",
        "Landroid/os/Handler;",
        "handler",
        "Ljava/lang/Runnable;",
        "l",
        "Ljava/lang/Runnable;",
        "maybeReplayTapRunnable",
        "Le/a/o2/f;",
        "f",
        "Le/a/o2/f;",
        "adapter",
        "com/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f",
        "k",
        "Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;",
        "serviceConnection",
        "g",
        "overflowAdapter",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;",
        "e",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;",
        "binder",
        "Le/a/m3/f;",
        "d",
        "Ls1/g;",
        "pa",
        "()Le/a/m3/f;",
        "binding",
        "Landroidx/fragment/app/Fragment;",
        "h",
        "Landroidx/fragment/app/Fragment;",
        "conversationFragment",
        "Le/a/a/h1/n/j;",
        "a",
        "Le/a/a/h1/n/j;",
        "qa",
        "()Le/a/a/h1/n/j;",
        "setPresenter",
        "(Le/a/a/h1/n/j;)V",
        "presenter",
        "<init>",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic m:I


# instance fields
.field public a:Le/a/a/h1/n/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/a/h1/n/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/a/h1/n/h;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final d:Ls1/g;

.field public e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

.field public f:Le/a/o2/f;

.field public g:Le/a/o2/f;

.field public h:Landroidx/fragment/app/Fragment;

.field public i:Le/a/a/c/v3;

.field public final j:Landroid/os/Handler;

.field public final k:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;

.field public final l:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    sget-object v0, Ls1/h;->c:Ls1/h;

    new-instance v1, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$c;

    invoke-direct {v1, p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$c;-><init>(Ln3/b/a/h;)V

    invoke-static {v0, v1}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    .line 3
    iput-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->d:Ls1/g;

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->j:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;-><init>(Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->k:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;

    .line 6
    new-instance v0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$d;-><init>(Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->l:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public I3(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.overflowRecyclerView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public Q2()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/h1/n/j;->L0()V

    return-void

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public Y8(J)V
    .locals 3

    .line 1
    new-instance v0, Le/a/a/c/y3;

    invoke-direct {v0}, Le/a/a/c/y3;-><init>()V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "conversation_id"

    .line 3
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p1, "is_bubble_intent"

    const/4 p2, 0x1

    .line 4
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "is_urgent_intent"

    .line 5
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 6
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 7
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 8
    new-instance v1, Ln3/r/a/a;

    invoke-direct {v1, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 9
    iput-boolean p2, v1, Ln3/r/a/f0;->p:Z

    const p1, 0x7f0a07e4

    const/4 p2, 0x0

    .line 10
    invoke-virtual {v1, p1, v0, p2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 11
    invoke-virtual {v1}, Ln3/r/a/a;->f()I

    .line 12
    iput-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->h:Landroidx/fragment/app/Fragment;

    return-void
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->f:Le/a/o2/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->g:Le/a/o2/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void

    :cond_0
    const-string v0, "overflowAdapter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v0, "adapter"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public d1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->h:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 3
    new-instance v2, Ln3/r/a/a;

    invoke-direct {v2, v1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v2, Ln3/r/a/f0;->p:Z

    .line 5
    invoke-virtual {v2, v0}, Ln3/r/a/a;->l(Landroidx/fragment/app/Fragment;)Ln3/r/a/f0;

    .line 6
    invoke-virtual {v2}, Ln3/r/a/f0;->f()I

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->h:Landroidx/fragment/app/Fragment;

    :cond_0
    return-void
.end method

.method public j4(Le/a/a/c/v3;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->i:Le/a/a/c/v3;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, v0}, Le/a/l4/k;->m0(Landroid/app/Activity;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const v2, 0x7f080151

    invoke-virtual {v1, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const-string v2, "window"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v3, 0x7f060699

    .line 5
    invoke-static {p0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v4

    .line 6
    invoke-virtual {v1, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 9
    invoke-virtual {v1, v3}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v1, v2}, Le/a/l4/k;->j(Landroid/view/Window;Z)V

    .line 11
    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 12
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v1, 0x280000

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 14
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object p1

    const-string v1, "binding"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object p1, p1, Le/a/m3/f;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 16
    invoke-virtual {p0, p1}, Ln3/b/a/h;->setContentView(Landroid/view/View;)V

    .line 17
    new-instance p1, Le/a/p5/i0;

    invoke-direct {p1, p0}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Le/a/w1;

    invoke-interface {v1}, Le/a/w1;->s()Le/a/j2;

    move-result-object v1

    const-string v3, "(applicationContext as GraphHolder).objectsGraph"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    const-class v3, Le/a/p5/h0;

    invoke-static {p1, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 20
    const-class v3, Le/a/j2;

    invoke-static {v1, v3}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 21
    new-instance v3, Le/a/a/h1/n/a;

    const/4 v4, 0x0

    invoke-direct {v3, v1, p1, v4}, Le/a/a/h1/n/a;-><init>(Le/a/j2;Le/a/p5/h0;Le/a/a/h1/n/a$a;)V

    .line 22
    iget-object p1, v3, Le/a/a/h1/n/a;->e:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/h1/n/j;

    .line 23
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    .line 24
    invoke-virtual {v3}, Le/a/a/h1/n/a;->a()Le/a/a/h1/n/h;

    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->b:Le/a/a/h1/n/h;

    .line 26
    invoke-virtual {v3}, Le/a/a/h1/n/a;->a()Le/a/a/h1/n/h;

    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->c:Le/a/a/h1/n/h;

    .line 28
    new-instance p1, Le/a/o2/f;

    new-instance v1, Le/a/o2/r;

    .line 29
    iget-object v3, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->b:Le/a/a/h1/n/h;

    if-eqz v3, :cond_6

    .line 30
    new-instance v5, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;

    invoke-direct {v5, v2, p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;-><init>(ILjava/lang/Object;)V

    .line 31
    sget-object v2, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$b;->c:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$b;

    const v6, 0x7f0d02cc

    .line 32
    invoke-direct {v1, v3, v6, v5, v2}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    invoke-direct {p1, v1}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    iput-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->f:Le/a/o2/f;

    .line 33
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    .line 34
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v1, "binding.recyclerView"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->f:Le/a/o2/f;

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 35
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->c:Le/a/a/h1/n/h;

    if-eqz p1, :cond_4

    .line 36
    iput-boolean v0, p1, Le/a/a/h1/n/h;->b:Z

    .line 37
    new-instance v1, Le/a/o2/f;

    new-instance v2, Le/a/o2/r;

    .line 38
    new-instance v3, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;

    invoke-direct {v3, v0, p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$a;-><init>(ILjava/lang/Object;)V

    .line 39
    sget-object v5, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$b;->d:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$b;

    .line 40
    invoke-direct {v2, p1, v6, v3, v5}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    invoke-direct {v1, v2}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    iput-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->g:Le/a/o2/f;

    .line 41
    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$g;->setHasStableIds(Z)V

    .line 42
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "binding.overflowRecyclerView"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->g:Le/a/o2/f;

    if-eqz v0, :cond_3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 43
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    if-eqz p1, :cond_2

    invoke-interface {p1, p0}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 44
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object p1

    iget-object p1, p1, Le/a/m3/f;->b:Landroidx/appcompat/widget/AppCompatButton;

    new-instance v0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$e;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$e;-><init>(Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f0a00cb

    .line 45
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "stub"

    .line 46
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v4, v0

    :goto_0
    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_1

    .line 47
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const v0, 0x7f0a00cc

    .line 48
    invoke-virtual {p0, v0}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "placeholder"

    .line 49
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 50
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 52
    invoke-virtual {v2, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    const-string p1, "presenter"

    .line 53
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_3
    const-string p1, "overflowAdapter"

    .line 54
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_4
    const-string p1, "overflowItemPresenter"

    .line 55
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_5
    const-string p1, "adapter"

    .line 56
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_6
    const-string p1, "itemPresenter"

    .line 57
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->j:Landroid/os/Handler;

    iget-object v2, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/f;->f:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.recyclerView"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->pa()Le/a/m3/f;

    move-result-object v0

    iget-object v0, v0, Le/a/m3/f;->e:Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "binding.overflowRecyclerView"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    return-void

    :cond_0
    const-string v0, "presenter"

    .line 6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onStart()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStart()V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->k:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->l:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onStop()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->k:Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity$f;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->ra()V

    return-void
.end method

.method public final pa()Le/a/m3/f;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/m3/f;

    return-object v0
.end method

.method public final qa()Le/a/a/h1/n/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "presenter"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final ra()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    .line 3
    iget-object v2, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    const-string v3, "presenter"

    if-eqz v2, :cond_2

    const-string v4, "listener"

    .line 4
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/h1/o/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Le/a/a/h1/o/i;->qi(Le/a/a/h1/o/h;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->a:Le/a/a/h1/n/j;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/u2/a/f;->xb()V

    return-void

    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method public u2(J)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "conversation_id"

    .line 2
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public w7(J)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "applicationContext"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->e(Landroid/content/Context;J)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.truecaller.messaging.urgent.ACTION_FINISH_UM_KEYGUARD_ACTIVITY"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public z9()Le/a/a/c/v3;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;->i:Le/a/a/c/v3;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Conversation component not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
