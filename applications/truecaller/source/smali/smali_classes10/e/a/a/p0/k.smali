.class public final Le/a/a/p0/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/c/b/j;

.field public final b:Landroid/content/ContentResolver;

.field public final c:Le/a/a/p0/b;

.field public final d:Le/a/a/k/m;

.field public final e:Le/a/c/i/i/a;

.field public final f:Le/a/c/i/c/c;

.field public final g:Le/a/a/g1/b;

.field public final h:Le/a/c/b/l;

.field public final i:Le/a/q2/a;

.field public final j:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/c/b/j;Landroid/content/ContentResolver;Le/a/a/p0/b;Le/a/a/k/m;Le/a/c/i/i/a;Le/a/c/i/c/c;Le/a/a/g1/b;Le/a/c/b/l;Le/a/q2/a;Ls1/w/f;)V
    .locals 1
    .param p10    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "insightsStatusProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "categorizerManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "participantCache"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parseManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionManager"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "translateManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsVersionProvider"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coroutineContext"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/p0/k;->a:Le/a/c/b/j;

    iput-object p2, p0, Le/a/a/p0/k;->b:Landroid/content/ContentResolver;

    iput-object p3, p0, Le/a/a/p0/k;->c:Le/a/a/p0/b;

    iput-object p4, p0, Le/a/a/p0/k;->d:Le/a/a/k/m;

    iput-object p5, p0, Le/a/a/p0/k;->e:Le/a/c/i/i/a;

    iput-object p6, p0, Le/a/a/p0/k;->f:Le/a/c/i/c/c;

    iput-object p7, p0, Le/a/a/p0/k;->g:Le/a/a/g1/b;

    iput-object p8, p0, Le/a/a/p0/k;->h:Le/a/c/b/l;

    iput-object p9, p0, Le/a/a/p0/k;->i:Le/a/q2/a;

    iput-object p10, p0, Le/a/a/p0/k;->j:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final a(JLjava/lang/String;JJLcom/truecaller/messaging/data/types/Message;ILjava/lang/String;Z)Le/a/c/r/h/f;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget-object v1, Le/a/c/r/h/f$a;->a:Le/a/c/r/h/f$a;

    .line 2
    iget-object v2, v0, Le/a/a/p0/k;->a:Le/a/c/b/j;

    invoke-interface {v2}, Le/a/c/b/j;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, v0, Le/a/a/p0/k;->e:Le/a/c/i/i/a;

    .line 4
    new-instance v15, Le/a/c/h/m/c;

    .line 5
    invoke-virtual/range {p8 .. p8}, Lcom/truecaller/messaging/data/types/Message;->a()Ljava/lang/String;

    move-result-object v6

    const-string v2, "message.buildMessageText()"

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v7, Ljava/util/Date;

    move-wide/from16 v2, p6

    invoke-direct {v7, v2, v3}, Ljava/util/Date;-><init>(J)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v16, 0x1c0

    move-object v2, v15

    move-wide/from16 v3, p1

    move-object/from16 v5, p3

    move-wide/from16 v8, p4

    move/from16 v10, p9

    move/from16 v14, p11

    move-object/from16 v17, v15

    move-object/from16 v15, p10

    .line 7
    invoke-direct/range {v2 .. v16}, Le/a/c/h/m/c;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/util/Date;JILjava/lang/String;ILjava/lang/String;ZLjava/lang/String;I)V

    move-object/from16 v2, v17

    .line 8
    invoke-interface {v1, v2}, Le/a/c/i/i/a;->z(Le/a/c/h/m/c;)Le/a/c/r/h/f;

    move-result-object v1

    :cond_0
    return-object v1
.end method
