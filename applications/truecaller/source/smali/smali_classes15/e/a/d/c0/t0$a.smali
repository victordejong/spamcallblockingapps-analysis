.class public final Le/a/d/c0/t0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c0/t0;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/c0/j;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c0/t0;


# direct methods
.method public constructor <init>(Le/a/d/c0/t0;)V
    .locals 0

    iput-object p1, p0, Le/a/d/c0/t0$a;->a:Le/a/d/c0/t0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/d/c0/t0$a$a;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d/c0/t0$a$a;

    iget v3, v2, Le/a/d/c0/t0$a$a;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/c0/t0$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/c0/t0$a$a;

    invoke-direct {v2, v0, v1}, Le/a/d/c0/t0$a$a;-><init>(Le/a/d/c0/t0$a;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d/c0/t0$a$a;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/c0/t0$a$a;->e:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    move-object/from16 v1, p1

    check-cast v1, Le/a/d/c0/j;

    .line 5
    instance-of v4, v1, Le/a/d/c0/j$c;

    if-eqz v4, :cond_3

    const/4 v1, 0x0

    goto :goto_2

    .line 6
    :cond_3
    instance-of v4, v1, Le/a/d/c0/j$b;

    if-eqz v4, :cond_5

    check-cast v1, Le/a/d/c0/j$b;

    .line 7
    iget-object v4, v0, Le/a/d/c0/t0$a;->a:Le/a/d/c0/t0;

    iget-object v4, v4, Le/a/d/c0/t0;->g:Le/a/d/b0/c;

    .line 8
    iget v6, v4, Le/a/d/b0/c;->d:I

    .line 9
    iget-object v7, v4, Le/a/d/b0/c;->c:Ljava/lang/String;

    .line 10
    iget v4, v4, Le/a/d/b0/c;->e:I

    const-string v8, "$this$mapToPeerSupportContact"

    .line 11
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "number"

    invoke-static {v7, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v7, Le/a/d/b0/b$b;

    .line 13
    iget-object v8, v1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    .line 14
    iget-object v10, v8, Le/a/d/b0/a;->a:Ljava/lang/Long;

    .line 15
    iget-object v9, v8, Le/a/d/b0/a;->b:Ljava/lang/String;

    .line 16
    iget-object v11, v8, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 17
    iget-object v12, v8, Le/a/d/b0/a;->c:Ljava/lang/String;

    .line 18
    iget-object v13, v8, Le/a/d/b0/a;->e:Ljava/lang/String;

    .line 19
    iget-boolean v14, v8, Le/a/d/b0/a;->i:Z

    .line 20
    iget-boolean v15, v8, Le/a/d/b0/a;->j:Z

    .line 21
    iget-object v5, v8, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 22
    iget-object v8, v8, Le/a/d/b0/a;->h:Ljava/lang/Integer;

    if-eqz v8, :cond_4

    .line 23
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    goto :goto_1

    :cond_4
    const/4 v8, 0x0

    :goto_1
    move/from16 v17, v8

    .line 24
    iget-object v1, v1, Le/a/d/c0/j$b;->a:Le/a/d/b0/a;

    .line 25
    iget-boolean v1, v1, Le/a/d/b0/a;->g:Z

    .line 26
    invoke-static {v6}, Le/a/p5/s0/g;->T(I)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    move-result-object v19

    move-object v8, v7

    move-object/from16 v16, v5

    move/from16 v18, v1

    move/from16 v20, v4

    .line 27
    invoke-direct/range {v8 .. v20}, Le/a/d/b0/b$b;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/truecaller/voip/VoipUserBadge;IZLcom/truecaller/voip/user/PeerHistoryPeerStatus;I)V

    move-object v1, v7

    goto :goto_2

    .line 28
    :cond_5
    iget-object v1, v0, Le/a/d/c0/t0$a;->a:Le/a/d/c0/t0;

    iget-object v1, v1, Le/a/d/c0/t0;->g:Le/a/d/b0/c;

    .line 29
    iget v4, v1, Le/a/d/b0/c;->e:I

    .line 30
    iget v1, v1, Le/a/d/b0/c;->d:I

    .line 31
    new-instance v5, Le/a/d/b0/b$a;

    invoke-static {v1}, Le/a/p5/s0/g;->T(I)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    move-result-object v1

    invoke-direct {v5, v4, v1}, Le/a/d/b0/b$a;-><init>(ILcom/truecaller/voip/user/PeerHistoryPeerStatus;)V

    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_6

    .line 32
    iget-object v4, v0, Le/a/d/c0/t0$a;->a:Le/a/d/c0/t0;

    iget-object v5, v4, Le/a/d/c0/t0;->h:Ljava/util/Map;

    iget-object v4, v4, Le/a/d/c0/t0;->g:Le/a/d/b0/c;

    .line 33
    iget v4, v4, Le/a/d/b0/c;->e:I

    .line 34
    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 35
    new-instance v4, Le/a/d/c0/p0;

    iget-object v7, v0, Le/a/d/c0/t0$a;->a:Le/a/d/c0/t0;

    iget-object v7, v7, Le/a/d/c0/t0;->g:Le/a/d/b0/c;

    .line 36
    iget v7, v7, Le/a/d/b0/c;->e:I

    .line 37
    invoke-direct {v4, v7, v1}, Le/a/d/c0/p0;-><init>(ILe/a/d/b0/b;)V

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    iget-object v1, v0, Le/a/d/c0/t0$a;->a:Le/a/d/c0/t0;

    iget-object v4, v1, Le/a/d/c0/t0;->i:Lq3/a/x2/z0;

    iget-object v1, v1, Le/a/d/c0/t0;->h:Ljava/util/Map;

    const/4 v5, 0x1

    iput v5, v2, Le/a/d/c0/t0$a$a;->e:I

    invoke-static {v4, v1, v2}, Le/a/p5/s0/g;->B(Lq3/a/x2/z0;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_6

    return-object v3

    .line 39
    :cond_6
    :goto_3
    sget-object v1, Ls1/s;->a:Ls1/s;

    return-object v1
.end method
