.class public final Le/a/f/a/b/v/d;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/f/a/b/v/c;",
        ">;",
        "Le/a/f/a/b/v/d;"
    }
.end annotation


# instance fields
.field public final b:Le/a/f/y/v;

.field public final c:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/f/y/v;Le/a/p5/c0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ongoingCallHelper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/f/a/b/v/d;->b:Le/a/f/y/v;

    iput-object p2, p0, Le/a/f/a/b/v/d;->c:Le/a/p5/c0;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Le/a/f/a/b/v/c;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/f/a/b/v/d;->b:Le/a/f/y/v;

    invoke-interface {v0}, Le/a/f/y/v;->s()Lq3/a/w2/r;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lq3/a/w2/r;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/f/z/n0/a;

    if-eqz v0, :cond_8

    .line 5
    new-instance p1, Le/a/f/a/b/v/e$b;

    iget-object v1, p0, Le/a/f/a/b/v/d;->c:Le/a/p5/c0;

    sget v2, Lcom/truecaller/incallui/R$string;->incallui_button_phone:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "resourceProvider.getStri\u2026ng.incallui_button_phone)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Le/a/f/a/b/v/e$b;-><init>(Ljava/lang/String;)V

    .line 6
    new-instance v1, Le/a/f/a/b/v/e$c;

    iget-object v2, p0, Le/a/f/a/b/v/d;->c:Le/a/p5/c0;

    sget v4, Lcom/truecaller/incallui/R$string;->incallui_button_speaker:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "resourceProvider.getStri\u2026.incallui_button_speaker)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/f/a/b/v/e$c;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v2, v0, Le/a/f/z/n0/a;->b:Ljava/util/List;

    .line 8
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 9
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 10
    check-cast v4, Le/a/p5/r0/a;

    .line 11
    new-instance v5, Le/a/f/a/b/v/e$a;

    .line 12
    iget-object v6, v4, Le/a/p5/r0/a;->a:Ljava/lang/String;

    .line 13
    iget-object v4, v4, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 14
    invoke-direct {v5, v6, v4}, Le/a/f/a/b/v/e$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v4, v0, Le/a/f/z/n0/a;->a:Lcom/truecaller/incallui/utils/audio/AudioRoute;

    .line 20
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-eqz v4, :cond_7

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v0, 0x2

    if-eq v4, v0, :cond_7

    const/4 p1, 0x3

    if-ne v4, p1, :cond_1

    move-object p1, v1

    goto :goto_1

    .line 21
    :cond_1
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    .line 22
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/f/a/b/v/e$a;

    .line 23
    iget-object v5, v5, Le/a/f/a/b/v/e$a;->d:Ljava/lang/String;

    .line 24
    iget-object v6, v0, Le/a/f/z/n0/a;->c:Le/a/p5/r0/a;

    if-eqz v6, :cond_4

    .line 25
    iget-object v4, v6, Le/a/p5/r0/a;->b:Ljava/lang/String;

    .line 26
    :cond_4
    invoke-static {v5, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v1

    .line 27
    :cond_5
    move-object p1, v4

    check-cast p1, Le/a/f/a/b/v/e$a;

    if-eqz p1, :cond_6

    goto :goto_1

    .line 28
    :cond_6
    invoke-static {v3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/a/b/v/e$a;

    .line 29
    :cond_7
    :goto_1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/f/a/b/v/c;

    if-eqz v0, :cond_9

    invoke-interface {v0, v2, p1}, Le/a/f/a/b/v/c;->zj(Ljava/util/List;Le/a/f/a/b/v/e;)V

    goto :goto_2

    .line 30
    :cond_8
    invoke-interface {p1}, Le/a/f/a/b/v/c;->close()V

    :cond_9
    :goto_2
    return-void
.end method
