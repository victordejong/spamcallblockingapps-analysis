.class public final Le/a/d0/a/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/a/r2/d0<",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d0/a/m;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/d0/a/m;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Le/a/d0/a/v;->a:Le/a/d0/a/m;

    iput-object p2, p0, Le/a/d0/a/v;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Ljava/lang/Object;)V
    .locals 7

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent;

    if-eqz p1, :cond_1

    .line 2
    iget-wide v0, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 3
    iget-object v2, p0, Le/a/d0/a/v;->a:Le/a/d0/a/m;

    .line 4
    iget-object v3, v2, Le/a/d0/a/m;->h:Ljava/lang/Long;

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6
    iput-object v0, v2, Le/a/d0/a/m;->h:Ljava/lang/Long;

    .line 7
    iget-object v0, p0, Le/a/d0/a/v;->a:Le/a/d0/a/m;

    .line 8
    iget-object v1, v0, Le/a/d0/a/m;->l:Le/a/o5/b0;

    .line 9
    iget-wide v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x80000

    .line 10
    invoke-interface/range {v1 .. v6}, Le/a/o5/b0;->q(JJI)Ljava/lang/CharSequence;

    move-result-object p1

    .line 11
    iget-object v0, p0, Le/a/d0/a/v;->a:Le/a/d0/a/m;

    .line 12
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/l;

    if-eqz v0, :cond_1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/a/d0/a/v;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \u00b7 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Le/a/d0/a/v;->a:Le/a/d0/a/m;

    .line 14
    iget-object v2, v2, Le/a/d0/a/m;->i:Le/a/p5/h0;

    const v3, 0x7f120163

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    .line 15
    invoke-interface {v2, v3, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Le/a/d0/a/l;->z5(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
