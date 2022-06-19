.class public final Le/a/h/g/f;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.recorder.CallRecordingListItemPresenterImpl$onBindItem$1$2$fetchDurationJob$1"
    f = "CallRecordingListItemPresenterImpl.kt"
    l = {
        0x78
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Le/a/h/g/e;

.field public final synthetic i:Le/a/h/g/g;

.field public final synthetic j:Lcom/truecaller/data/entity/Contact;

.field public final synthetic k:Lcom/truecaller/data/entity/HistoryEvent;

.field public final synthetic l:Lcom/truecaller/data/entity/CallRecording;

.field public final synthetic m:Z

.field public final synthetic n:Le/a/h/g/e;

.field public final synthetic o:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/h/g/e;Le/a/h/g/g;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/CallRecording;ZLe/a/h/g/e;Ljava/lang/String;)V
    .locals 0

    iput-object p2, p0, Le/a/h/g/f;->h:Le/a/h/g/e;

    iput-object p3, p0, Le/a/h/g/f;->i:Le/a/h/g/g;

    iput-object p4, p0, Le/a/h/g/f;->j:Lcom/truecaller/data/entity/Contact;

    iput-object p5, p0, Le/a/h/g/f;->k:Lcom/truecaller/data/entity/HistoryEvent;

    iput-object p6, p0, Le/a/h/g/f;->l:Lcom/truecaller/data/entity/CallRecording;

    iput-boolean p7, p0, Le/a/h/g/f;->m:Z

    iput-object p8, p0, Le/a/h/g/f;->n:Le/a/h/g/e;

    iput-object p9, p0, Le/a/h/g/f;->o:Ljava/lang/String;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 10
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

    new-instance p1, Le/a/h/g/f;

    iget-object v2, p0, Le/a/h/g/f;->h:Le/a/h/g/e;

    iget-object v3, p0, Le/a/h/g/f;->i:Le/a/h/g/g;

    iget-object v4, p0, Le/a/h/g/f;->j:Lcom/truecaller/data/entity/Contact;

    iget-object v5, p0, Le/a/h/g/f;->k:Lcom/truecaller/data/entity/HistoryEvent;

    iget-object v6, p0, Le/a/h/g/f;->l:Lcom/truecaller/data/entity/CallRecording;

    iget-boolean v7, p0, Le/a/h/g/f;->m:Z

    iget-object v8, p0, Le/a/h/g/f;->n:Le/a/h/g/e;

    iget-object v9, p0, Le/a/h/g/f;->o:Ljava/lang/String;

    move-object v0, p1

    move-object v1, p2

    invoke-direct/range {v0 .. v9}, Le/a/h/g/f;-><init>(Ls1/w/d;Le/a/h/g/e;Le/a/h/g/g;Lcom/truecaller/data/entity/Contact;Lcom/truecaller/data/entity/HistoryEvent;Lcom/truecaller/data/entity/CallRecording;ZLe/a/h/g/e;Ljava/lang/String;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Ls1/w/d;

    invoke-virtual {p0, p1, p2}, Le/a/h/g/f;->i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;

    move-result-object p1

    check-cast p1, Le/a/h/g/f;

    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/h/g/f;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/h/g/f;->g:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/h/g/f;->f:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/data/entity/CallRecording;

    iget-object v1, p0, Le/a/h/g/f;->e:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

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
    iget-object p1, p0, Le/a/h/g/f;->i:Le/a/h/g/g;

    .line 5
    iget-object v1, p1, Le/a/h/g/g;->d:Ljava/util/HashMap;

    .line 6
    iget-object v3, p0, Le/a/h/g/f;->l:Lcom/truecaller/data/entity/CallRecording;

    .line 7
    iget-object v4, p1, Le/a/h/g/g;->r:Le/a/k0/a/s;

    .line 8
    iget-object v6, p1, Le/a/h/g/g;->t:Ls1/w/f;

    const-string p1, "$this$durationAsync"

    .line 9
    invoke-static {v3, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "metadataRetrieverProvider"

    invoke-static {v4, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "ioScheduler"

    invoke-static {v6, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    sget-object v5, Lq3/a/h1;->a:Lq3/a/h1;

    new-instance v8, Le/a/k0/a/d;

    const/4 p1, 0x0

    invoke-direct {v8, v3, v4, p1}, Le/a/k0/a/d;-><init>(Lcom/truecaller/data/entity/CallRecording;Le/a/k0/a/s;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p1

    .line 11
    iput-object v1, p0, Le/a/h/g/f;->e:Ljava/lang/Object;

    iput-object v3, p0, Le/a/h/g/f;->f:Ljava/lang/Object;

    iput v2, p0, Le/a/h/g/f;->g:I

    check-cast p1, Lq3/a/o0;

    .line 12
    invoke-virtual {p1, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, v3

    .line 13
    :goto_0
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr p1, v2

    float-to-double v2, p1

    .line 14
    invoke-static {v2, v3}, Le/q/f/a/d/a;->K2(D)J

    move-result-wide v2

    .line 15
    new-instance p1, Ljava/lang/Long;

    invoke-direct {p1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 16
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p1, p0, Le/a/h/g/f;->i:Le/a/h/g/g;

    .line 18
    iget-object p1, p1, Le/a/h/g/g;->f:Le/a/h/g/n;

    .line 19
    invoke-interface {p1}, Le/a/h/g/n;->D0()V

    .line 20
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
