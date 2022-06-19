.class public Le/a/c/c/d/b$a;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/b;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/c/r/e/a/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/b;


# direct methods
.method public constructor <init>(Le/a/c/c/d/b;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/b$a;->a:Le/a/c/c/d/b;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p2, Le/a/c/r/e/a/b;

    .line 2
    iget-wide v0, p2, Le/a/c/r/e/a/b;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/c/r/e/a/b;->b:Ljava/lang/Long;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 7
    :goto_0
    iget-object v0, p2, Le/a/c/r/e/a/b;->c:Ljava/lang/Long;

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v1, v2, v3}, Ln3/e0/a/d;->l0(IJ)V

    .line 10
    :goto_1
    iget-object v0, p2, Le/a/c/r/e/a/b;->d:Ljava/lang/String;

    const/4 v1, 0x4

    if-nez v0, :cond_2

    .line 11
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 13
    :goto_2
    iget-object v0, p2, Le/a/c/r/e/a/b;->e:Ljava/lang/String;

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 14
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 15
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 16
    :goto_3
    iget-object v0, p0, Le/a/c/c/d/b$a;->a:Le/a/c/c/d/b;

    .line 17
    iget-object v0, v0, Le/a/c/c/d/b;->c:Le/a/c/c0/g;

    .line 18
    invoke-virtual {p2}, Le/a/c/r/e/a/b;->a()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/c/c0/g;->a(Ljava/util/Date;)Ljava/lang/Long;

    move-result-object p2

    const/4 v0, 0x6

    if-nez p2, :cond_4

    .line 19
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 20
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Ln3/e0/a/d;->l0(IJ)V

    :goto_4
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `account_mapping_rule_model` (`id`,`to_account`,`from_account`,`from_address`,`to_address`,`created_at`) VALUES (nullif(?, 0),?,?,?,?,?)"

    return-object v0
.end method
