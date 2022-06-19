.class public Le/a/c/c/d/g0$b;
.super Ln3/c0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/c/d/g0;-><init>(Ln3/c0/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/c0/k<",
        "Le/a/c/r/i/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/c/d/g0;


# direct methods
.method public constructor <init>(Le/a/c/c/d/g0;Ln3/c0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/c/c/d/g0$b;->a:Le/a/c/c/d/g0;

    invoke-direct {p0, p2}, Ln3/c0/k;-><init>(Ln3/c0/q;)V

    return-void
.end method


# virtual methods
.method public bind(Ln3/e0/a/f;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p2, Le/a/c/r/i/a;

    .line 2
    iget-wide v0, p2, Le/a/c/r/i/a;->a:J

    const/4 v2, 0x1

    .line 3
    invoke-interface {p1, v2, v0, v1}, Ln3/e0/a/d;->l0(IJ)V

    .line 4
    iget-object v0, p2, Le/a/c/r/i/a;->b:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/c/r/i/a;->c:Ljava/lang/String;

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
    iget-object v0, p2, Le/a/c/r/i/a;->d:Ljava/lang/String;

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
    iget-object v0, p0, Le/a/c/c/d/g0$b;->a:Le/a/c/c/d/g0;

    .line 14
    iget-object v0, v0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 15
    iget-object v1, p2, Le/a/c/r/i/a;->e:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    .line 16
    invoke-virtual {v0, v1}, Le/a/c/c0/g;->f(Lcom/truecaller/insights/source/SmartSMSFeatureStatus;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    if-nez v0, :cond_3

    .line 17
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_3

    .line 18
    :cond_3
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 19
    :goto_3
    iget-object v0, p0, Le/a/c/c/d/g0$b;->a:Le/a/c/c/d/g0;

    .line 20
    iget-object v0, v0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 21
    iget-object v1, p2, Le/a/c/r/i/a;->f:Ljava/util/List;

    .line 22
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "list"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x3e

    const-string v2, ","

    .line 23
    invoke-static/range {v1 .. v8}, Ls1/u/i;->O(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    .line 24
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 25
    iget-object v0, p0, Le/a/c/c/d/g0$b;->a:Le/a/c/c/d/g0;

    .line 26
    iget-object v0, v0, Le/a/c/c/d/g0;->c:Le/a/c/c0/g;

    .line 27
    iget-object v1, p2, Le/a/c/r/i/a;->g:Lcom/truecaller/insights/source/SourceType;

    .line 28
    invoke-virtual {v0, v1}, Le/a/c/c0/g;->g(Lcom/truecaller/insights/source/SourceType;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    if-nez v0, :cond_4

    .line 29
    invoke-interface {p1, v1}, Ln3/e0/a/d;->y0(I)V

    goto :goto_4

    .line 30
    :cond_4
    invoke-interface {p1, v1, v0}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    .line 31
    :goto_4
    iget-object p2, p2, Le/a/c/r/i/a;->h:Ljava/lang/String;

    const/16 v0, 0x8

    if-nez p2, :cond_5

    .line 32
    invoke-interface {p1, v0}, Ln3/e0/a/d;->y0(I)V

    goto :goto_5

    .line 33
    :cond_5
    invoke-interface {p1, v0, p2}, Ln3/e0/a/d;->f0(ILjava/lang/String;)V

    :goto_5
    return-void
.end method

.method public createQuery()Ljava/lang/String;
    .locals 1

    const-string v0, "INSERT OR REPLACE INTO `sender_info` (`id`,`sender`,`sender_name`,`sender_type`,`smart_features_status`,`grammars_enabled`,`source_type`,`country_code`) VALUES (nullif(?, 0),?,?,?,?,?,?,?)"

    return-object v0
.end method
