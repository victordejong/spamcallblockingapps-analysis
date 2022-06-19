.class public final Le/a/d/m$h;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/m;->e(Ljava/lang/String;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.voip.VoipSupportImpl$sendMessage$1"
    f = "VoipSupportImpl.kt"
    l = {
        0xea
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/d/m;

.field public final synthetic g:[Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/d/m;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Integer;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/d/m$h;->f:Le/a/d/m;

    iput-object p2, p0, Le/a/d/m$h;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p3, p0, Le/a/d/m$h;->h:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/m$h;

    iget-object v0, p0, Le/a/d/m$h;->f:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$h;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p0, Le/a/d/m$h;->h:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/m$h;-><init>(Le/a/d/m;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Integer;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/d/m$h;

    iget-object v0, p0, Le/a/d/m$h;->f:Le/a/d/m;

    iget-object v1, p0, Le/a/d/m$h;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, p0, Le/a/d/m$h;->h:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/d/m$h;-><init>(Le/a/d/m;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/Integer;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/d/m$h;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/d/m$h;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/d/m$h;->f:Le/a/d/m;

    .line 5
    iget-object p1, p1, Le/a/d/m;->j:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/a/g/w;

    iget-object v1, p0, Le/a/d/m$h;->g:[Lcom/truecaller/data/entity/messaging/Participant;

    iput v2, p0, Le/a/d/m$h;->e:I

    invoke-interface {p1, v1, v2, p0}, Le/a/a/g/w;->u([Lcom/truecaller/data/entity/messaging/Participant;ILs1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 7
    :cond_2
    :goto_0
    check-cast p1, Lcom/truecaller/messaging/data/types/Draft;

    .line 8
    iget-object v0, p0, Le/a/d/m$h;->f:Le/a/d/m;

    .line 9
    iget-object v1, v0, Le/a/d/m;->c:Landroid/content/Context;

    .line 10
    iget-object v2, p0, Le/a/d/m$h;->h:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "context.getString(message)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcom/truecaller/messaging/data/types/Draft;->b()Lcom/truecaller/messaging/data/types/Draft$b;

    move-result-object v2

    .line 13
    iput-object v1, v2, Lcom/truecaller/messaging/data/types/Draft$b;->e:Ljava/lang/String;

    .line 14
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Draft$b;->c()Lcom/truecaller/messaging/data/types/Draft;

    move-result-object v2

    const-string v3, "draft\n            .build\u2026age)\n            .build()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v3, v2, Lcom/truecaller/messaging/data/types/Draft;->b:Lcom/truecaller/messaging/data/types/Conversation;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 16
    iget-object v5, v0, Le/a/d/m;->i:Lo3/a;

    invoke-interface {v5}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/e4/p;

    iget-object v3, v3, Lcom/truecaller/messaging/data/types/Conversation;->h:Ljava/lang/String;

    invoke-interface {v5, v3}, Le/a/e4/p;->v(Ljava/lang/String;)Lcom/truecaller/multisim/SimInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, v3, Lcom/truecaller/multisim/SimInfo;->b:Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    if-eqz v3, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    iget-object v3, v0, Le/a/d/m;->i:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v5, "multiSimManager.get()"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Le/a/e4/p;

    invoke-interface {v3}, Le/a/e4/p;->b()Ljava/lang/String;

    move-result-object v3

    const-string v5, "multiSimManager.get().defaultSimToken"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    move-object v8, v3

    .line 18
    iget-object v3, v0, Le/a/d/m;->h:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v6, v3

    check-cast v6, Le/a/a/c1/d;

    const/4 v3, 0x2

    .line 19
    invoke-static {v2, v4, v3}, Le/a/c/p/a;->Z(Lcom/truecaller/messaging/data/types/Draft;Ljava/util/Collection;I)Ljava/util/List;

    move-result-object v7

    .line 20
    iget-object v2, v0, Le/a/d/m;->k:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/a/k/t;

    iget-object v3, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    invoke-interface {v2, v3}, Le/a/a/k/t;->p([Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 21
    invoke-interface/range {v6 .. v11}, Le/a/a/c1/d;->c(Ljava/util/List;Ljava/lang/String;ZZZ)Le/a/a/c1/b;

    move-result-object v2

    .line 22
    instance-of v3, v2, Le/a/a/c1/b$e;

    if-eqz v3, :cond_5

    iget-object p1, v0, Le/a/d/m;->h:Lo3/a;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Le/a/a/c1/d;

    .line 23
    move-object v4, v2

    check-cast v4, Le/a/a/c1/b$e;

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    const-string v6, "voip"

    .line 24
    invoke-static/range {v3 .. v10}, Le/a/c/p/a;->y2(Le/a/a/c1/d;Le/a/a/c1/b$e;ZLjava/lang/String;JILjava/lang/Object;)Le/a/r2/x;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Le/a/r2/x;->g()V

    goto :goto_4

    .line 26
    :cond_5
    instance-of v3, v2, Le/a/a/c1/b$d;

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    sget-object v3, Le/a/a/c1/b$c;->a:Le/a/a/c1/b$c;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 27
    :goto_3
    iget-object v2, v0, Le/a/d/m;->c:Landroid/content/Context;

    .line 28
    iget-object p1, p1, Lcom/truecaller/messaging/data/types/Draft;->e:[Lcom/truecaller/data/entity/messaging/Participant;

    .line 29
    invoke-virtual {v0, v2, p1, v1}, Le/a/d/m;->H(Landroid/content/Context;[Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;)V

    .line 30
    :cond_7
    :goto_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
