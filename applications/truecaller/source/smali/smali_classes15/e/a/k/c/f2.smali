.class public final Le/a/k/c/f2;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.videocallerid.utils.VideoUploadUtilImpl$uploadLatestOwnVideo$2"
    f = "VideoUploadUtil.kt"
    l = {
        0x2c,
        0x34,
        0x39,
        0x46,
        0x49
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:I

.field public final synthetic i:Le/a/k/c/g2;


# direct methods
.method public constructor <init>(Le/a/k/c/g2;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/f2;

    iget-object v1, p0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    invoke-direct {v0, v1, p2}, Le/a/k/c/f2;-><init>(Le/a/k/c/g2;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/k/c/f2;

    iget-object v1, p0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    invoke-direct {v0, v1, p2}, Le/a/k/c/f2;-><init>(Le/a/k/c/g2;Ls1/w/d;)V

    iput-object p1, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/k/c/f2;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/f2;->h:I

    const/4 v3, 0x4

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v8, :cond_4

    if-eq v2, v7, :cond_3

    if-eq v2, v6, :cond_2

    if-eq v2, v3, :cond_1

    if-ne v2, v4, :cond_0

    iget-object v1, v0, Le/a/k/c/f2;->g:Ljava/lang/Object;

    check-cast v1, Le/a/k/c/p0;

    iget-object v2, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/r1;

    iget-object v3, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    check-cast v3, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object v2, v0, Le/a/k/c/f2;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/p0;

    iget-object v3, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    check-cast v3, Le/a/k/c/r1;

    iget-object v5, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    check-cast v5, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2
    iget-object v2, v0, Le/a/k/c/f2;->g:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/p0;

    iget-object v6, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    check-cast v6, Le/a/k/c/r1;

    iget-object v7, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    check-cast v7, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v6

    move-object/from16 v6, p1

    goto/16 :goto_2

    :cond_3
    iget-object v2, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    check-cast v2, Le/a/k/c/r1;

    iget-object v7, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    check-cast v7, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v8, v7

    move-object/from16 v7, p1

    goto/16 :goto_1

    :cond_4
    iget-object v2, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v8, p1

    goto :goto_0

    :cond_5
    invoke-static/range {p1 .. p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object v2, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    check-cast v2, Lq3/a/i0;

    .line 4
    iget-object v9, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 5
    iget-object v9, v9, Le/a/k/c/g2;->f:Le/a/k/p/i;

    .line 6
    sget-object v10, Lcom/truecaller/videocallerid/upload/UploadingStates;->UPLOADING:Lcom/truecaller/videocallerid/upload/UploadingStates;

    invoke-interface {v9, v10}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    .line 7
    iget-object v9, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 8
    iget-object v9, v9, Le/a/k/c/g2;->b:Le/a/k/c/s1;

    .line 9
    iput-object v2, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    iput v8, v0, Le/a/k/c/f2;->h:I

    check-cast v9, Le/a/k/c/a;

    .line 10
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v8, Le/a/k/c/u1;

    invoke-direct {v8, v9, v5}, Le/a/k/c/u1;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    .line 12
    iget-object v9, v9, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v10, Le/a/k/c/z1;

    invoke-direct {v10, v8, v5}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v9, v10, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_6

    return-object v1

    .line 13
    :cond_6
    :goto_0
    check-cast v8, Le/a/k/c/r1;

    if-nez v8, :cond_7

    .line 14
    iget-object v1, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    sget-object v2, Lcom/truecaller/videocallerid/upload/UploadingStates;->FAILED:Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 15
    iget-object v1, v1, Le/a/k/c/g2;->f:Le/a/k/p/i;

    invoke-interface {v1, v2}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    .line 16
    new-instance v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;

    sget-object v2, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->READ_FILE_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    invoke-direct {v1, v2, v5, v5}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;-><init>(Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;Ljava/lang/String;Le/a/k/c/r1;)V

    return-object v1

    .line 17
    :cond_7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Own video info to upload: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    iget-object v9, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 19
    iget-object v9, v9, Le/a/k/c/g2;->c:Le/a/k/c/k1;

    .line 20
    iput-object v2, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    iput-object v8, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    iput v7, v0, Le/a/k/c/f2;->h:I

    check-cast v9, Le/a/k/c/n1;

    .line 21
    iget-object v7, v9, Le/a/k/c/n1;->o:Ls1/w/f;

    new-instance v10, Le/a/k/c/m1;

    invoke-direct {v10, v9, v8, v5}, Le/a/k/c/m1;-><init>(Le/a/k/c/n1;Le/a/k/c/r1;Ls1/w/d;)V

    invoke-static {v7, v10, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v1, :cond_8

    return-object v1

    :cond_8
    move-object/from16 v18, v8

    move-object v8, v2

    move-object/from16 v2, v18

    .line 22
    :goto_1
    check-cast v7, Le/a/k/c/q0;

    .line 23
    instance-of v9, v7, Le/a/k/c/q0$b;

    if-eqz v9, :cond_f

    .line 24
    check-cast v7, Le/a/k/c/q0$b;

    .line 25
    iget-object v7, v7, Le/a/k/c/q0$b;->a:Le/a/k/c/p0;

    .line 26
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Video upload links "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    iget-object v9, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    iput-object v8, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    iput-object v7, v0, Le/a/k/c/f2;->g:Ljava/lang/Object;

    iput v6, v0, Le/a/k/c/f2;->h:I

    invoke-virtual {v9, v2, v7, v0}, Le/a/k/c/g2;->a(Le/a/k/c/r1;Le/a/k/c/p0;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v1, :cond_9

    return-object v1

    :cond_9
    move-object/from16 v18, v8

    move-object v8, v2

    move-object v2, v7

    move-object/from16 v7, v18

    .line 28
    :goto_2
    move-object v9, v6

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    .line 29
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 30
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_3

    :cond_a
    move-object v6, v5

    :goto_3
    check-cast v6, Ljava/lang/Boolean;

    if-eqz v6, :cond_e

    .line 31
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    new-instance v6, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;

    .line 33
    iget-object v9, v2, Le/a/k/c/p0;->a:Ljava/lang/String;

    .line 34
    iget-object v10, v8, Le/a/k/c/r1;->a:Ljava/io/File;

    .line 35
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    .line 36
    new-instance v15, Lcom/truecaller/videocallerid/data/VideoDetails;

    .line 37
    iget-object v12, v2, Le/a/k/c/p0;->c:Ljava/lang/String;

    .line 38
    iget-wide v13, v8, Le/a/k/c/r1;->c:J

    .line 39
    iget-wide v4, v8, Le/a/k/c/r1;->d:J

    .line 40
    iget-boolean v11, v8, Le/a/k/c/r1;->e:Z

    move/from16 v17, v11

    move-object v11, v15

    move-object v3, v15

    move-wide v15, v4

    .line 41
    invoke-direct/range {v11 .. v17}, Lcom/truecaller/videocallerid/data/VideoDetails;-><init>(Ljava/lang/String;JJZ)V

    .line 42
    invoke-direct {v6, v9, v10, v3}, Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/videocallerid/data/VideoDetails;)V

    .line 43
    iget-object v3, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 44
    iget-object v3, v3, Le/a/k/c/g2;->e:Le/a/k/n/g/e;

    .line 45
    iput-object v7, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    iput-object v8, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/c/f2;->g:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v0, Le/a/k/c/f2;->h:I

    check-cast v3, Le/a/k/n/g/j;

    .line 46
    iget-object v4, v3, Le/a/k/n/g/j;->b:Ls1/w/f;

    new-instance v5, Le/a/k/n/g/f;

    const/4 v9, 0x0

    invoke-direct {v5, v3, v6, v9}, Le/a/k/n/g/f;-><init>(Le/a/k/n/g/j;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;Ls1/w/d;)V

    invoke-static {v4, v5, v0}, Le/a/p5/s0/g;->h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v1, :cond_b

    goto :goto_4

    .line 47
    :cond_b
    sget-object v3, Ls1/s;->a:Ls1/s;

    :goto_4
    if-ne v3, v1, :cond_c

    return-object v1

    :cond_c
    move-object v5, v7

    move-object v3, v8

    .line 48
    :goto_5
    iget-object v4, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 49
    iget-object v4, v4, Le/a/k/c/g2;->i:Le/a/k/c/r0;

    .line 50
    invoke-interface {v4}, Le/a/k/c/r0;->a()V

    .line 51
    iget-object v4, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    sget-object v6, Lcom/truecaller/videocallerid/upload/UploadingStates;->SUCCESSFUL:Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 52
    iget-object v4, v4, Le/a/k/c/g2;->f:Le/a/k/p/i;

    invoke-interface {v4, v6}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    .line 53
    iget-object v4, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 54
    iget-object v4, v4, Le/a/k/c/g2;->g:Le/a/k/j;

    .line 55
    iput-object v5, v0, Le/a/k/c/f2;->e:Ljava/lang/Object;

    iput-object v3, v0, Le/a/k/c/f2;->f:Ljava/lang/Object;

    iput-object v2, v0, Le/a/k/c/f2;->g:Ljava/lang/Object;

    const/4 v5, 0x5

    iput v5, v0, Le/a/k/c/f2;->h:I

    check-cast v4, Le/a/k/k;

    .line 56
    iget-object v4, v4, Le/a/k/k;->h:Lo3/a;

    invoke-interface {v4}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d3/d;

    invoke-interface {v4}, Le/a/d3/d;->b()Z

    move-result v4

    .line 57
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    if-ne v4, v1, :cond_d

    return-object v1

    :cond_d
    move-object v1, v2

    move-object v2, v3

    .line 58
    :goto_6
    iget-object v3, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 59
    iget-object v3, v3, Le/a/k/c/g2;->h:Le/a/k/c/m0;

    .line 60
    invoke-virtual {v3}, Le/a/k/c/m0;->a()V

    .line 61
    new-instance v3, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;

    .line 62
    iget-object v1, v1, Le/a/k/c/p0;->a:Ljava/lang/String;

    .line 63
    invoke-direct {v3, v1, v2}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$a;-><init>(Ljava/lang/String;Le/a/k/c/r1;)V

    goto :goto_7

    .line 64
    :cond_e
    iget-object v1, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    sget-object v3, Lcom/truecaller/videocallerid/upload/UploadingStates;->FAILED:Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 65
    iget-object v1, v1, Le/a/k/c/g2;->f:Le/a/k/p/i;

    invoke-interface {v1, v3}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    .line 66
    new-instance v3, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;

    sget-object v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->UPLOAD_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    .line 67
    iget-object v2, v2, Le/a/k/c/p0;->a:Ljava/lang/String;

    .line 68
    invoke-direct {v3, v1, v2, v8}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;-><init>(Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;Ljava/lang/String;Le/a/k/c/r1;)V

    goto :goto_7

    .line 69
    :cond_f
    instance-of v1, v7, Le/a/k/c/q0$a;

    if-eqz v1, :cond_11

    .line 70
    check-cast v7, Le/a/k/c/q0$a;

    .line 71
    iget-object v1, v7, Le/a/k/c/q0$a;->a:Ljava/lang/Exception;

    if-eqz v1, :cond_10

    .line 72
    iget-object v3, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 73
    iget-object v3, v3, Le/a/k/c/g2;->j:Le/a/k/c/h2/d;

    .line 74
    invoke-interface {v3, v1}, Le/a/k/c/h2/d;->g(Ljava/lang/Exception;)Lq3/a/p1;

    .line 75
    :cond_10
    iget-object v1, v0, Le/a/k/c/f2;->i:Le/a/k/c/g2;

    .line 76
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v3, Lcom/truecaller/videocallerid/upload/UploadingStates;->FAILED:Lcom/truecaller/videocallerid/upload/UploadingStates;

    .line 78
    iget-object v1, v1, Le/a/k/c/g2;->f:Le/a/k/p/i;

    invoke-interface {v1, v3}, Le/a/k/p/i;->b(Lcom/truecaller/videocallerid/upload/UploadingStates;)V

    .line 79
    new-instance v3, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;

    sget-object v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->FETCH_UPLOAD_LINKS_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;-><init>(Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;Ljava/lang/String;Le/a/k/c/r1;)V

    :goto_7
    return-object v3

    .line 80
    :cond_11
    new-instance v1, Ls1/i;

    invoke-direct {v1}, Ls1/i;-><init>()V

    throw v1
.end method
