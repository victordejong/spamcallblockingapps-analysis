.class public Le/a/i/e/h/a/j$f;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/j;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/i/e/h/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/j;Ln3/c0/q;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Le/a/i/e/h/b/c;

    .line 2
    iget-wide v0, p2, Le/a/i/e/h/b/c;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/i/e/h/b/c;->b:Ljava/lang/String;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 7
    :goto_0
    iget-object v0, p2, Le/a/i/e/h/b/c;->c:Ljava/lang/String;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 10
    :goto_1
    iget-boolean p2, p2, Le/a/i/e/h/b/c;->d:Z

    const/4 v0, 0x4

    int-to-long v1, p2

    .line 11
    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `offline_leadgen` (`_id`,`lead_gen_id`,`form_response`,`form_submitted`) VALUES (nullif(?, 0),?,?,?)"

    return-object v0
.end method
