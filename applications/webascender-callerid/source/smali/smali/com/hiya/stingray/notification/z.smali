.class public Lcom/hiya/stingray/notification/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/notification/w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/notification/z$b;
    }
.end annotation


# instance fields
.field private final a:Lcom/hiya/stingray/manager/i1;

.field private final b:Lcom/hiya/stingray/notification/s;

.field private final c:Lcom/hiya/stingray/manager/e1;

.field private final d:Lcom/hiya/stingray/manager/c2;

.field private final e:Lcom/hiya/stingray/manager/h4;

.field private final f:Lcom/hiya/stingray/manager/j4;

.field private final g:Lcom/hiya/stingray/r/a;

.field private h:Li/c/b0/c/c;

.field private i:Li/c/b0/c/c;


# direct methods
.method public constructor <init>(Lcom/hiya/stingray/manager/i1;Lcom/hiya/stingray/notification/s;Lcom/hiya/stingray/manager/e1;Lcom/hiya/stingray/manager/c2;Lcom/hiya/stingray/manager/h4;Lcom/hiya/stingray/manager/j4;Lcom/hiya/stingray/r/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/notification/z;->a:Lcom/hiya/stingray/manager/i1;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/notification/z;->b:Lcom/hiya/stingray/notification/s;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/notification/z;->d:Lcom/hiya/stingray/manager/c2;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/notification/z;->e:Lcom/hiya/stingray/manager/h4;

    .line 7
    iput-object p6, p0, Lcom/hiya/stingray/notification/z;->f:Lcom/hiya/stingray/manager/j4;

    .line 8
    iput-object p7, p0, Lcom/hiya/stingray/notification/z;->g:Lcom/hiya/stingray/r/a;

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->d:Lcom/hiya/stingray/manager/c2;

    iget-object v1, p0, Lcom/hiya/stingray/notification/z;->e:Lcom/hiya/stingray/manager/h4;

    invoke-virtual {v1}, Lcom/hiya/stingray/manager/h4;->a()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v2}, Lcom/google/common/collect/Lists;->j([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    sget-object v3, Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;->FULL_NUMBER:Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;

    invoke-virtual {v0, v1, v2, v3}, Lcom/hiya/stingray/manager/c2;->a(Ljava/lang/String;Ljava/util/List;Lcom/hiya/stingray/ui/customblock/ManualBlockDialog$e;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/s/b;

    invoke-direct {v1}, Lcom/hiya/stingray/s/b;-><init>()V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/notification/g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/notification/g;-><init>(Lcom/hiya/stingray/notification/z;)V

    .line 3
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->doAfterTerminate(Li/c/b0/d/a;)Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/notification/l;

    invoke-direct {v1, p1, p2}, Lcom/hiya/stingray/notification/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget-object p1, Lcom/hiya/stingray/notification/i;->f:Lcom/hiya/stingray/notification/i;

    .line 4
    invoke-virtual {v0, v1, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/z;->i:Li/c/b0/c/c;

    return-void
.end method

.method private c(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/hiya/stingray/notification/z;->g:Lcom/hiya/stingray/r/a;

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/r/a;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p1

    .line 2
    invoke-static {}, Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->j(Li/c/b0/b/j;)Li/c/b0/b/e;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/notification/f;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/notification/f;-><init>(Lcom/hiya/stingray/notification/z;)V

    .line 3
    invoke-virtual {p1, p2}, Li/c/b0/b/e;->l(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/notification/e;->f:Lcom/hiya/stingray/notification/e;

    sget-object v0, Lcom/hiya/stingray/notification/m;->f:Lcom/hiya/stingray/notification/m;

    .line 4
    invoke-virtual {p1, p2, v0}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/z;->h:Li/c/b0/c/c;

    return-void
.end method

.method private synthetic d()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->i:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method static synthetic f(Landroid/content/Context;Ljava/lang/String;Lretrofit2/Response;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 p2, 0x1

    new-array v0, p2, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Lcom/hiya/stingray/util/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f110022

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method static synthetic g(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to add new block list item"

    .line 1
    invoke-static {p0, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic h()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method static synthetic j()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method private synthetic k()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->h:Li/c/b0/c/c;

    invoke-interface {v0}, Li/c/b0/c/c;->dispose()V

    return-void
.end method

.method static synthetic m()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method static synthetic n(Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Failed to report as not spam"

    .line 1
    invoke-static {p0, v1, v0}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "notification_open"

    .line 2
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 3
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/hiya/stingray/ui/LauncherActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "launch_action_by_user"

    .line 4
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    sget-object v1, Lcom/hiya/stingray/notification/z$a;->a:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 6
    :pswitch_0
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/notification/z;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v1, "REPORT_CONTACT_DETAIL"

    .line 7
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x1

    const-string v3, "upgrade_from_notification"

    .line 8
    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 9
    :pswitch_3
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->n()Lcom/hiya/stingray/t/n0;

    move-result-object p3

    invoke-virtual {p3}, Lcom/hiya/stingray/t/n0;->h()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Lcom/hiya/stingray/util/u;->h(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 10
    :pswitch_4
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/hiya/stingray/util/u;->d(Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 11
    :pswitch_5
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/hiya/stingray/util/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :goto_0
    const-string v1, "CONTACT_DETAIL_FROM_NOTIFICATION"

    .line 12
    invoke-virtual {v2, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 13
    invoke-virtual {p3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "post_call_action_type"

    invoke-virtual {v2, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x14000000

    .line 14
    invoke-virtual {v2, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 15
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 16
    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object p1

    const-string p2, "user_prompt_action"

    invoke-virtual {p4, p2, p1}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private p(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)V
    .locals 2

    const/4 p1, 0x2

    new-array p1, p1, [Li/c/b0/b/i;

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->f:Lcom/hiya/stingray/manager/j4;

    .line 2
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/j4;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    invoke-virtual {v0}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->g:Lcom/hiya/stingray/r/a;

    .line 3
    invoke-virtual {p2}, Lcom/hiya/stingray/t/d0;->p()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/hiya/stingray/r/a;->d(Ljava/lang/String;)Li/c/b0/b/e;

    move-result-object p2

    const/4 v0, 0x1

    aput-object p2, p1, v0

    .line 4
    invoke-static {p1}, Li/c/b0/b/e;->x([Li/c/b0/b/i;)Li/c/b0/b/e;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/hiya/stingray/s/c;->a()Li/c/b0/b/j;

    move-result-object p2

    invoke-virtual {p1, p2}, Li/c/b0/b/e;->j(Li/c/b0/b/j;)Li/c/b0/b/e;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/notification/j;

    invoke-direct {p2, p0}, Lcom/hiya/stingray/notification/j;-><init>(Lcom/hiya/stingray/notification/z;)V

    .line 6
    invoke-virtual {p1, p2}, Li/c/b0/b/e;->l(Li/c/b0/d/a;)Li/c/b0/b/e;

    move-result-object p1

    sget-object p2, Lcom/hiya/stingray/notification/k;->f:Lcom/hiya/stingray/notification/k;

    sget-object v0, Lcom/hiya/stingray/notification/h;->f:Lcom/hiya/stingray/notification/h;

    .line 7
    invoke-virtual {p1, p2, v0}, Li/c/b0/b/e;->E(Li/c/b0/d/a;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/notification/z;->h:Li/c/b0/c/c;

    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->a:Lcom/hiya/stingray/manager/i1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/i1;->o(I)V

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->a:Lcom/hiya/stingray/manager/i1;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/manager/i1;->n(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/hiya/stingray/util/g0/c$a;

    invoke-direct {v0}, Lcom/hiya/stingray/util/g0/c$a;-><init>()V

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/hiya/stingray/util/g0/c$a;->l(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "notification_action"

    .line 2
    invoke-virtual {v0, v2}, Lcom/hiya/stingray/util/g0/c$a;->m(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    const-string v2, "handle_missed_call_notification"

    .line 3
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "user_prompt_action"

    if-nez v2, :cond_9

    const-string v2, "handle_post_call_notification"

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string v2, "call_action"

    .line 4
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string p3, "call"

    .line 5
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 6
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 7
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->CALL:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto/16 :goto_1

    :cond_1
    const-string v2, "text_action"

    .line 8
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p3, "notification_text_back"

    .line 9
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 10
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 11
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->TEXT:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto/16 :goto_1

    :cond_2
    const-string v2, "upgrade_action"

    .line 12
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p3, "notification_upgrade"

    .line 13
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 14
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 15
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->UPGRADE:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto/16 :goto_1

    :cond_3
    const-string v2, "block_action"

    .line 16
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p3, "notification_block"

    .line 17
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 18
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 19
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->BLOCK:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "report_action"

    .line 20
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string p3, "notification_report"

    .line 21
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 22
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 23
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->REPORT:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto/16 :goto_1

    :cond_5
    const-string v2, "add_contact_action"

    .line 24
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string p3, "save_to_contact"

    .line 25
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 26
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 27
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->ADD_CONTACT:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto/16 :goto_1

    :cond_6
    const-string v2, "yes_spam_action"

    .line 28
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string p3, "yes_spam"

    .line 29
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 30
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/notification/z;->c(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)V

    .line 32
    sget-object p3, Lcom/hiya/stingray/notification/z$b;->REPORT:Lcom/hiya/stingray/notification/z$b;

    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/hiya/stingray/notification/z;->o(Landroid/content/Context;Lcom/hiya/stingray/t/d0;Lcom/hiya/stingray/notification/z$b;Lcom/hiya/stingray/manager/e1;)V

    goto :goto_1

    :cond_7
    const-string v2, "no_spam_action"

    .line 33
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string p3, "no_spam"

    .line 34
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 35
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/hiya/stingray/notification/z;->p(Landroid/content/Context;Lcom/hiya/stingray/t/d0;)V

    .line 37
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_a

    const/16 p2, 0x1b5d

    .line 38
    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_1

    .line 39
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, p2, v0

    const-string p3, "Invalid action: %s"

    invoke-static {p1, p3, p2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    :goto_0
    const-string p3, "app_launch"

    .line 40
    invoke-virtual {v0, p3}, Lcom/hiya/stingray/util/g0/c$a;->h(Ljava/lang/String;)Lcom/hiya/stingray/util/g0/c$a;

    .line 41
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-virtual {v0}, Lcom/hiya/stingray/util/g0/c$a;->a()Lcom/hiya/stingray/util/g0/c;

    move-result-object v0

    invoke-virtual {p3, v3, v0}, Lcom/hiya/stingray/manager/e1;->c(Ljava/lang/String;Lcom/hiya/stingray/util/g0/c;)V

    .line 42
    iget-object p3, p0, Lcom/hiya/stingray/notification/z;->a:Lcom/hiya/stingray/manager/i1;

    invoke-virtual {p3}, Lcom/hiya/stingray/manager/i1;->f()I

    move-result p3

    .line 43
    const-class v0, Lcom/hiya/stingray/notification/PostCallNotificationHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/notification/z;->c:Lcom/hiya/stingray/manager/e1;

    invoke-static {p1, p2, p3, v0, v1}, Lcom/hiya/stingray/util/u;->g(Landroid/content/Context;Lcom/hiya/stingray/t/d0;ILjava/lang/String;Lcom/hiya/stingray/manager/e1;)V

    .line 44
    :cond_a
    :goto_1
    invoke-direct {p0}, Lcom/hiya/stingray/notification/z;->r()V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/notification/z;->d()V

    return-void
.end method

.method public synthetic i()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/notification/z;->h()V

    return-void
.end method

.method public synthetic l()V
    .locals 0

    invoke-direct {p0}, Lcom/hiya/stingray/notification/z;->k()V

    return-void
.end method

.method public q(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "delete_call_notification"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/hiya/stingray/notification/z;->r()V

    return-void

    :cond_0
    const-string p1, "NOTIFICATION_ITEM_PHONE"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/notification/z;->b:Lcom/hiya/stingray/notification/s;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, p0}, Lcom/hiya/stingray/notification/s;->c(Ljava/lang/String;Ljava/lang/String;Lcom/hiya/stingray/notification/w;)V

    return-void
.end method
