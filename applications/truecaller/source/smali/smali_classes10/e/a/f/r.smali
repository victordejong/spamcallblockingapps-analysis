.class public final Le/a/f/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/z/x;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/p5/g;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/h5/w;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/c1/d;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljavax/inject/Provider<",
            "Le/a/p5/g;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/h5/w;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/b0/q/z;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/a/c1/d;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/e4/p;",
            ">;",
            "Ljavax/inject/Provider<",
            "Le/a/a/g/w;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tcPermissionUtil"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "draftSender"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiSimManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "readMessageStorage"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/r;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/f/r;->b:Ljavax/inject/Provider;

    iput-object p3, p0, Le/a/f/r;->c:Ljavax/inject/Provider;

    iput-object p4, p0, Le/a/f/r;->d:Ljavax/inject/Provider;

    iput-object p5, p0, Le/a/f/r;->e:Ljavax/inject/Provider;

    iput-object p6, p0, Le/a/f/r;->f:Ljavax/inject/Provider;

    iput-object p7, p0, Le/a/f/r;->g:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    if-eqz p2, :cond_0

    const-string v1, "participants"

    .line 2
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    if-eqz p3, :cond_1

    .line 3
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.extra.TEXT"

    .line 4
    invoke-virtual {p2, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "send_intent"

    .line 5
    invoke-virtual {v0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_1
    const/high16 p2, 0x10000000

    .line 6
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/Integer;Ls1/w/d;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/f/r$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/f/r$a;

    iget v1, v0, Le/a/f/r$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/f/r$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/f/r$a;

    invoke-direct {v0, p0, p3}, Le/a/f/r$a;-><init>(Le/a/f/r;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/f/r$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/f/r$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/f/r$a;->i:Ljava/lang/Object;

    check-cast p1, [Lcom/truecaller/data/entity/messaging/Participant;

    iget-object p2, v0, Le/a/f/r$a;->h:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, v0, Le/a/f/r$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/f/r;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/f/r;->d:Ljavax/inject/Provider;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/b0/q/z;

    iget-object v2, p0, Le/a/f/r;->d:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/q/z;

    invoke-interface {v2}, Le/a/b0/q/z;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, p3, v2}, Lcom/truecaller/data/entity/messaging/Participant;->a(Ljava/lang/String;Le/a/b0/q/z;Ljava/lang/String;)Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object p1

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const/4 p3, 0x0

    new-array p3, p3, [Lcom/truecaller/data/entity/messaging/Participant;

    .line 5
    invoke-interface {p1, p3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    const-string p3, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {p1, p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    check-cast p1, [Lcom/truecaller/data/entity/messaging/Participant;

    if-nez p2, :cond_3

    .line 7
    iget-object p2, p0, Le/a/f/r;->a:Landroid/content/Context;

    .line 8
    invoke-virtual {p0, p2, p1, v3}, Le/a/f/r;->a(Landroid/content/Context;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 9
    :cond_3
    iget-object p3, p0, Le/a/f/r;->g:Ljavax/inject/Provider;

    invoke-interface {p3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Le/a/a/g/w;

    iput-object p0, v0, Le/a/f/r$a;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/f/r$a;->h:Ljava/lang/Object;

    iput-object p1, v0, Le/a/f/r$a;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/f/r$a;->e:I

    invoke-interface {p3, p1, v4, v0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, p0

    .line 10
    :goto_1
    check-cast p3, Lcom/truecaller/messaging/data/types/Draft;

    .line 11
    iget-object v1, v0, Le/a/f/r;->a:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "context.getString(message)"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p3}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v1

    .line 13
    iput-object p2, v1, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v1

    const-string v2, "draft\n            .build\u2026age)\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v2, v1, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    if-eqz v2, :cond_6

    .line 16
    iget-object v4, v0, Le/a/f/r;->f:Ljavax/inject/Provider;

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/e4/p;

    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    invoke-interface {v4, v2}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v2, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    goto :goto_2

    :cond_5
    move-object v2, v3

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_3

    .line 17
    :cond_6
    iget-object v2, v0, Le/a/f/r;->f:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "multiSimManager.get()"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/e4/p;

    invoke-interface {v2}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v2

    const-string v4, "multiSimManager.get().defaultSimToken"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_3
    move-object v7, v2

    .line 18
    iget-object v2, v0, Le/a/f/r;->e:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Le/a/a/c1/d;

    const/4 v2, 0x2

    .line 19
    invoke-static {v1, v3, v2}, Le/a/c/p/a;->Z(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 20
    invoke-interface/range {v5 .. v10}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v1

    .line 21
    instance-of v2, v1, Le/a/a/c1/b$e;

    if-eqz v2, :cond_7

    iget-object p2, v0, Le/a/f/r;->e:Ljavax/inject/Provider;

    invoke-interface {p2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Le/a/a/c1/d;

    .line 22
    move-object v5, v1

    check-cast v5, Le/a/a/c1/b$e;

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    const/16 v10, 0x8

    const/4 v11, 0x0

    const-string v7, "incallui"

    .line 23
    invoke-static/range {v4 .. v11}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Le/a/r2/x;->g()V

    goto :goto_5

    .line 25
    :cond_7
    instance-of v2, v1, Le/a/a/c1/b$d;

    if-eqz v2, :cond_8

    goto :goto_4

    :cond_8
    sget-object v2, Le/a/a/c1/b$c;->a:Le/a/a/c1/b$c;

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    :goto_4
    iget-object v1, v0, Le/a/f/r;->a:Landroid/content/Context;

    iget-object p3, p3, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-virtual {v0, v1, p3, p2}, Le/a/f/r;->a(Landroid/content/Context;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    .line 26
    :cond_9
    :goto_5
    iget-object p2, v0, Le/a/f/r;->a:Landroid/content/Context;

    .line 27
    invoke-virtual {v0, p2, p1, v3}, Le/a/f/r;->a(Landroid/content/Context;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    .line 28
    :goto_6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
