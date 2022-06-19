.class public Le/a/c/c/d/d$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/d;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/c/r/e/a/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/d;


# direct methods
.method public constructor <init>(Le/a/c/c/d/d;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/d$a;->a:Le/a/c/c/d/d;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Le/a/c/r/e/a/c;

    .line 2
    iget-wide v0, p2, Le/a/c/r/e/a/c;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p0, Le/a/c/c/d/d$a;->a:Le/a/c/c/d/d;

    .line 5
    iget-object v0, v0, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    .line 6
    iget-object v1, p2, Le/a/c/r/e/a/c;->b:Ljava/util/Date;

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
    iget-object v0, p2, Le/a/c/r/e/a/c;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 11
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 13
    :goto_1
    iget-object v0, p2, Le/a/c/r/e/a/c;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 15
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 16
    :goto_2
    iget-object v0, p2, Le/a/c/r/e/a/c;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 18
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_3
    const/4 v0, 0x6

    .line 19
    iget v1, p2, Le/a/c/r/e/a/c;->f:F

    float-to-double v1, v1

    .line 20
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->T0(ID)V

    .line 21
    iget-boolean v0, p2, Le/a/c/r/e/a/c;->g:Z

    const/4 v1, 0x7

    int-to-long v2, v0

    .line 22
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    const/16 v0, 0x8

    .line 23
    iget-wide v1, p2, Le/a/c/r/e/a/c;->h:J

    .line 24
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    .line 25
    iget-object v0, p0, Le/a/c/c/d/d$a;->a:Le/a/c/c/d/d;

    .line 26
    iget-object v0, v0, Le/a/c/c/d/d;->c:Le/a/c/c0/g;

    .line 27
    iget-object v1, p2, Le/a/c/r/e/a/c;->i:Ljava/util/Date;

    .line 28
    invoke-virtual {v0, v1}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object v0

    const/16 v1, 0x9

    if-nez v0, :cond_4

    .line 29
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 30
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 31
    :goto_4
    iget-boolean v0, p2, Le/a/c/r/e/a/c;->j:Z

    const/16 v1, 0xa

    int-to-long v2, v0

    .line 32
    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 33
    iget-object p2, p2, Le/a/c/r/e/a/c;->k:Ljava/lang/String;

    const/16 v0, 0xb

    if-nez p2, :cond_5

    .line 34
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 35
    :cond_5
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_5
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `account_model_table` (`id`,`created_at`,`address`,`account_type`,`account_number`,`balance`,`active`,`record_count`,`update_stamp`,`root_account`,`normalized_name`) VALUES (nullif(?, 0),?,?,?,?,?,?,?,?,?,?)"

    return-object v0
.end method
