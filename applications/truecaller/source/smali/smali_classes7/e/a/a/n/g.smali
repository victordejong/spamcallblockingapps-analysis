.class public final Le/a/a/n/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/a/n/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/a/n/f;",
        ">;",
        "Le/a/a/n/e;"
    }
.end annotation


# instance fields
.field public d:J

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;

.field public final g:Lcom/truecaller/messaging/data/types/Conversation;

.field public final h:Ljava/lang/String;

.field public final i:Z

.field public final j:Le/a/p5/c;

.field public final k:Le/a/a/n/c;

.field public final l:Le/a/a/i1/b;

.field public final m:Le/a/a/o/f;

.field public final n:Le/a/a/o/p;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Lcom/truecaller/messaging/data/types/Conversation;Ljava/lang/String;ZLe/a/p5/c;Le/a/a/n/c;Le/a/a/i1/b;Le/a/a/o/f;Le/a/a/o/p;)V
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
    .param p5    # Z
        .annotation runtime Ljavax/inject/Named;
            value = "is_delete_mode"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageUtil"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageUtils"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/a/n/g;->e:Ls1/w/f;

    iput-object p2, p0, Le/a/a/n/g;->f:Ls1/w/f;

    iput-object p3, p0, Le/a/a/n/g;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iput-object p4, p0, Le/a/a/n/g;->h:Ljava/lang/String;

    iput-boolean p5, p0, Le/a/a/n/g;->i:Z

    iput-object p6, p0, Le/a/a/n/g;->j:Le/a/p5/c;

    iput-object p7, p0, Le/a/a/n/g;->k:Le/a/a/n/c;

    iput-object p8, p0, Le/a/a/n/g;->l:Le/a/a/i1/b;

    iput-object p9, p0, Le/a/a/n/g;->m:Le/a/a/o/f;

    iput-object p10, p0, Le/a/a/n/g;->n:Le/a/a/o/p;

    return-void
.end method


# virtual methods
.method public Ij()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Le/a/a/n/g;->i:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 2
    new-instance v4, Le/a/a/n/g$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Le/a/a/n/g$a;-><init>(Le/a/a/n/g;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public X7()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/n/g;->i:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/n/f;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/a/n/g;->l:Le/a/a/i1/b;

    iget-object v1, p0, Le/a/a/n/g;->g:Lcom/truecaller/messaging/data/types/Conversation;

    invoke-interface {v0, v1}, Le/a/a/i1/b;->n(Lcom/truecaller/messaging/data/types/Conversation;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/a/n/f;->setTitle(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Le/a/a/n/g;->Ij()V

    return-void
.end method

.method public o3()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Le/a/a/n/g;->Ij()V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/g;->j:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    iput-wide v0, p0, Le/a/a/n/g;->d:J

    return-void
.end method

.method public onStop()V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/n/g;->j:Le/a/p5/c;

    invoke-interface {v0}, Le/a/p5/c;->a()J

    move-result-wide v0

    iget-wide v2, p0, Le/a/a/n/g;->d:J

    sub-long/2addr v0, v2

    .line 2
    iget-object v2, p0, Le/a/a/n/g;->k:Le/a/a/n/c;

    iget-object v3, p0, Le/a/a/n/g;->g:Lcom/truecaller/messaging/data/types/Conversation;

    iget-object v4, p0, Le/a/a/n/g;->h:Ljava/lang/String;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "conversation"

    invoke-static {v3, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "context"

    invoke-static {v4, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "MediaManagerVisited"

    .line 4
    invoke-virtual {v2, v5, v3}, Le/a/a/n/c;->a(Ljava/lang/String;Lcom/truecaller/messaging/data/types/Conversation;)Le/a/q2/e0;

    move-result-object v3

    const-string v5, "initiatedVia"

    .line 5
    invoke-virtual {v3, v5, v4}, Le/a/q2/e0;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Le/a/q2/e0;

    long-to-double v0, v0

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    .line 6
    invoke-virtual {v3, v0, v1}, Le/a/q2/e0;->e(D)Le/a/q2/e0;

    .line 7
    invoke-virtual {v3}, Le/a/q2/e0;->a()Le/a/l5/a/p3;

    move-result-object v0

    .line 8
    iget-object v1, v2, Le/a/a/n/c;->a:Le/a/q2/a;

    invoke-interface {v1, v0}, Le/a/q2/a;->a(Lorg/apache/avro/generic/GenericRecord;)V

    return-void
.end method
