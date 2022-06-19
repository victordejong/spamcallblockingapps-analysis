.class public Le/a/i/e/h/a/c$c;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/e/h/a/c;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/i/e/h/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/e/h/a/c;


# direct methods
.method public constructor <init>(Le/a/i/e/h/a/c;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/i/e/h/a/c$c;->a:Le/a/i/e/h/a/c;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p2, Le/a/i/e/h/b/a;

    .line 2
    iget-wide v0, p2, Le/a/i/e/h/b/a;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/i/e/h/b/a;->b:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/i/e/h/b/a;->c:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/i/e/h/a/c$c;->a:Le/a/i/e/h/a/c;

    .line 11
    iget-object v0, v0, Le/a/i/e/h/a/c;->c:Le/a/i/y/a;

    .line 12
    iget-object v1, p2, Le/a/i/e/h/b/a;->d:Ljava/util/List;

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {v0}, Le/a/i/y/a;->c()Le/m/e/k;

    move-result-object v0

    invoke-virtual {v0, v1}, Le/m/e/k;->m(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const/4 v1, 0x4

    if-nez v0, :cond_3

    .line 15
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 17
    :goto_3
    iget-object v0, p0, Le/a/i/e/h/a/c$c;->a:Le/a/i/e/h/a/c;

    .line 18
    iget-object v0, v0, Le/a/i/e/h/a/c;->c:Le/a/i/y/a;

    .line 19
    iget-object p2, p2, Le/a/i/e/h/b/a;->e:Ljava/util/List;

    .line 20
    invoke-virtual {v0, p2}, Le/a/i/y/a;->e(Ljava/util/List;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    if-nez p2, :cond_4

    .line 21
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 22
    :cond_4
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_4
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `offline_ad_ui_config` (`_id`,`lead_gen_id`,`ui_config`,`ui_assets`,`pixels`) VALUES (nullif(?, 0),?,?,?,?)"

    return-object v0
.end method
