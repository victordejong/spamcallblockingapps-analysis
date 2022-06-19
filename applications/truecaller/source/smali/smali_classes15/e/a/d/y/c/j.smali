.class public final Le/a/d/y/c/j;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/y/c/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/y/c/h;",
        ">;",
        "Le/a/d/y/c/g;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Le/a/d/y/c/f;

.field public final f:Le/a/d/c0/m0;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/d/y/c/f;Le/a/d/c0/m0;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "missedVoipCallsModel"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipBitmapUtil"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/d/y/c/j;->d:Ls1/w/f;

    iput-object p3, p0, Le/a/d/y/c/j;->e:Le/a/d/y/c/f;

    iput-object p4, p0, Le/a/d/y/c/j;->f:Le/a/d/c0/m0;

    return-void
.end method


# virtual methods
.method public final Ij(Ls1/w/d;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    instance-of v2, v1, Le/a/d/y/c/j$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d/y/c/j$a;

    iget v3, v2, Le/a/d/y/c/j$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/y/c/j$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/y/c/j$a;

    invoke-direct {v2, v0, v1}, Le/a/d/y/c/j$a;-><init>(Le/a/d/y/c/j;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d/y/c/j$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/y/c/j$a;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v3, v2, Le/a/d/y/c/j$a;->h:Ljava/lang/Object;

    check-cast v3, Le/a/d/y/c/e;

    iget-object v2, v2, Le/a/d/y/c/j$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/d/y/c/j;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v4, v2, Le/a/d/y/c/j$a;->g:Ljava/lang/Object;

    check-cast v4, Le/a/d/y/c/j;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/d/y/c/j;->d:Ls1/w/f;

    new-instance v4, Le/a/d/y/c/j$b;

    invoke-direct {v4, v0, v5}, Le/a/d/y/c/j$b;-><init>(Le/a/d/y/c/j;Ls1/w/d;)V

    iput-object v0, v2, Le/a/d/y/c/j$a;->g:Ljava/lang/Object;

    iput v7, v2, Le/a/d/y/c/j$a;->e:I

    invoke-static {v1, v4, v2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v4, v0

    :goto_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_11

    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-eqz v8, :cond_f

    const/4 v9, 0x0

    if-eq v8, v7, :cond_6

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-le v2, v3, :cond_5

    invoke-interface {v1, v9, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_5
    move-object v2, v1

    .line 8
    :goto_2
    iget-object v3, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v3, Le/a/d/y/c/h;

    if-eqz v3, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v3, v2, v1}, Le/a/d/y/c/h;->b(Ljava/util/List;I)V

    goto/16 :goto_9

    .line 9
    :cond_6
    invoke-static {v1}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/y/c/e;

    .line 10
    iget-object v8, v4, Le/a/d/y/c/j;->f:Le/a/d/c0/m0;

    .line 11
    iget-object v10, v1, Le/a/d/y/c/e;->c:Ljava/lang/String;

    if-eqz v10, :cond_7

    .line 12
    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_7
    move-object v11, v5

    .line 13
    iget-object v12, v1, Le/a/d/y/c/e;->b:Ljava/lang/String;

    const/4 v13, 0x0

    .line 14
    iget-object v5, v1, Le/a/d/y/c/e;->a:Ljava/lang/String;

    .line 15
    invoke-static {v5}, Le/a/p5/s0/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 16
    iget-object v5, v1, Le/a/d/y/c/e;->d:Lcom/truecaller/voip/VoipUserBadge;

    if-eqz v5, :cond_8

    .line 17
    iget-boolean v10, v5, Lcom/truecaller/voip/VoipUserBadge;->b:Z

    move/from16 v19, v10

    goto :goto_3

    :cond_8
    move/from16 v19, v9

    :goto_3
    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    if-eqz v5, :cond_9

    .line 18
    iget-boolean v10, v5, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    move/from16 v20, v10

    goto :goto_4

    :cond_9
    move/from16 v20, v9

    :goto_4
    if-eqz v5, :cond_a

    .line 19
    iget-boolean v10, v5, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    goto :goto_5

    :cond_a
    move v10, v9

    :goto_5
    if-nez v10, :cond_c

    .line 20
    iget-boolean v10, v1, Le/a/d/y/c/e;->e:Z

    if-eqz v10, :cond_b

    goto :goto_6

    :cond_b
    move v15, v9

    goto :goto_7

    :cond_c
    :goto_6
    move v15, v7

    :goto_7
    const/16 v21, 0x0

    if-eqz v5, :cond_d

    .line 21
    iget-boolean v9, v5, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    :cond_d
    move/from16 v22, v9

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const v27, 0xf4e4

    .line 22
    new-instance v5, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-object v10, v5

    invoke-direct/range {v10 .. v27}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    .line 23
    iput-object v4, v2, Le/a/d/y/c/j$a;->g:Ljava/lang/Object;

    iput-object v1, v2, Le/a/d/y/c/j$a;->h:Ljava/lang/Object;

    iput v6, v2, Le/a/d/y/c/j$a;->e:I

    invoke-virtual {v8, v5, v2}, Le/a/d/c0/m0;->a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v3, :cond_e

    return-object v3

    :cond_e
    move-object v3, v1

    move-object v1, v2

    move-object v2, v4

    .line 24
    :goto_8
    check-cast v1, Landroid/graphics/Bitmap;

    .line 25
    iget-object v2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/y/c/h;

    if-eqz v2, :cond_10

    invoke-interface {v2, v3, v1}, Le/a/d/y/c/h;->g(Le/a/d/y/c/e;Landroid/graphics/Bitmap;)V

    goto :goto_9

    .line 26
    :cond_f
    iget-object v1, v4, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/d/y/c/h;

    if-eqz v1, :cond_10

    invoke-interface {v1}, Le/a/d/y/c/h;->d()V

    .line 27
    :cond_10
    :goto_9
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 28
    :cond_11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1
.end method
