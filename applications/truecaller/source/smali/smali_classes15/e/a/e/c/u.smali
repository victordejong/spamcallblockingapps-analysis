.class public final synthetic Le/a/e/c/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/r2/d0;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;

.field public final synthetic b:Le/a/e/c2/u;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;Le/a/e/c2/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/u;->a:Le/a/e/c/s1;

    iput-object p2, p0, Le/a/e/c/u;->b:Le/a/e/c2/u;

    return-void
.end method


# virtual methods
.method public final onResult(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Le/a/e/c/u;->a:Le/a/e/c/s1;

    iget-object v1, p0, Le/a/e/c/u;->b:Le/a/e/c2/u;

    check-cast p1, Lcom/truecaller/data/entity/HistoryEvent;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 2
    iget-wide v2, p1, Lcom/truecaller/data/entity/HistoryEvent;->i:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, v0, Le/a/e/c/s1;->s:Ln3/b/a/h;

    invoke-static {p1, v2, v3}, Le/a/b0/q/m;->e(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f120188

    .line 4
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Le/a/e/c/s1;->t1:Ljava/lang/String;

    .line 5
    invoke-virtual {v1, p1}, Le/a/e/c2/u;->setDetailsText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method
