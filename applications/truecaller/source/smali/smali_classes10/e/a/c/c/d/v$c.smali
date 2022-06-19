.class public Le/a/c/c/d/v$c;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/v;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/c/r/f/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/v;


# direct methods
.method public constructor <init>(Le/a/c/c/d/v;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/v$c;->a:Le/a/c/c/d/v;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Le/a/c/r/f/a;

    .line 2
    iget-wide v0, p2, Le/a/c/r/f/a;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p0, Le/a/c/c/d/v$c;->a:Le/a/c/c/d/v;

    .line 5
    iget-object v0, v0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    .line 6
    iget-object v1, p2, Le/a/c/r/f/a;->b:Ljava/util/Date;

    .line 7
    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 10
    :goto_0
    iget-object v0, p0, Le/a/c/c/d/v$c;->a:Le/a/c/c/d/v;

    .line 11
    iget-object v0, v0, Le/a/c/c/d/v;->c:Le/a/c/c0/g;

    .line 12
    iget-object v1, p2, Le/a/c/r/f/a;->c:Lcom/truecaller/insights/models/feedback/FeedbackType;

    .line 13
    invoke-virtual {v0, v1}, Le/a/c/c0/g;->b(Lcom/truecaller/insights/models/feedback/FeedbackType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 16
    :goto_1
    iget-object v0, p2, Le/a/c/r/f/a;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 17
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_2
    const/4 v0, 0x5

    .line 19
    iget-wide v1, p2, Le/a/c/r/f/a;->e:J

    .line 20
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 21
    iget-object v0, p2, Le/a/c/r/f/a;->f:Ljava/lang/String;

    const/4 v1, 0x6

    if-nez v0, :cond_3

    .line 22
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 23
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 24
    :goto_3
    iget-object v0, p2, Le/a/c/r/f/a;->g:Ljava/lang/String;

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 25
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 26
    :cond_4
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 27
    :goto_4
    iget-object v0, p2, Le/a/c/r/f/a;->h:Ljava/lang/String;

    const/16 v1, 0x8

    if-nez v0, :cond_5

    .line 28
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 29
    :cond_5
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 30
    :goto_5
    iget-object v0, p2, Le/a/c/r/f/a;->i:Ljava/lang/String;

    const/16 v1, 0x9

    if-nez v0, :cond_6

    .line 31
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_6

    .line 32
    :cond_6
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_6
    const/16 v0, 0xa

    .line 33
    iget-wide v1, p2, Le/a/c/r/f/a;->j:J

    .line 34
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `feedback` (`id`,`created_at`,`feedback_type`,`feedback_value`,`entity_id`,`sender`,`body`,`parser_output`,`categorizer_output`,`parent_id`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
