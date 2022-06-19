.class public final Le/a/c/a/n/c/d/c/e;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Le/a/c/a/l/b$e;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lq3/a/p1;

.field public final f:Le/a/c/a/g/r1;

.field public final g:Le/a/c/h/h;

.field public final h:Le/a/b0/m/c/a;

.field public final i:Le/a/c/a/a/a/a/b;

.field public final j:Le/a/c/b/j;

.field public final k:Le/a/c/a/n/c/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/g/r1;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Le/a/c/a/a/a/a/b;Le/a/c/b/j;Le/a/c/a/n/c/d/a;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsDetail"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusProvider"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "collapseState"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/r1;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/n/c/d/c/e;->f:Le/a/c/a/g/r1;

    iput-object p2, p0, Le/a/c/a/n/c/d/c/e;->g:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/n/c/d/c/e;->h:Le/a/b0/m/c/a;

    iput-object p5, p0, Le/a/c/a/n/c/d/c/e;->i:Le/a/c/a/a/a/a/b;

    iput-object p6, p0, Le/a/c/a/n/c/d/c/e;->j:Le/a/c/b/j;

    iput-object p7, p0, Le/a/c/a/n/c/d/c/e;->k:Le/a/c/a/n/c/d/a;

    return-void
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v9, p0

    .line 1
    move-object/from16 v10, p1

    check-cast v10, Le/a/c/a/l/b$e;

    const-string v0, "item"

    .line 2
    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v9, Le/a/c/a/n/c/d/c/e;->i:Le/a/c/a/a/a/a/b;

    .line 4
    iget-object v1, v0, Le/a/c/a/a/a/a/b;->a:Ljava/lang/String;

    .line 5
    iget-object v2, v10, Le/a/c/a/l/b$e;->p:Ljava/lang/String;

    .line 6
    iget-object v3, v10, Le/a/c/a/l/b$e;->f:Ljava/lang/String;

    .line 7
    iget-boolean v4, v10, Le/a/c/a/l/b$e;->r:Z

    .line 8
    iget-object v5, v0, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    move-object/from16 v0, p0

    .line 9
    invoke-static/range {v0 .. v8}, Le/a/c/a/a/a/a/e;->Q4(Le/a/c/a/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 10
    iget-object v11, v9, Le/a/c/a/n/c/d/c/e;->g:Le/a/c/h/h;

    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    const-string v2, "itemView.context"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v12

    .line 11
    iget-wide v13, v10, Le/a/c/a/l/b$e;->a:J

    .line 12
    iget-wide v0, v10, Le/a/c/a/l/b$e;->m:J

    .line 13
    iget-object v2, v9, Le/a/c/a/n/c/d/c/e;->i:Le/a/c/a/a/a/a/b;

    .line 14
    iget-object v2, v2, Le/a/c/a/a/a/a/b;->b:Ljava/lang/String;

    .line 15
    iget v3, v10, Le/a/c/a/l/b$e;->q:I

    .line 16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move/from16 v18, v3

    goto :goto_2

    :cond_2
    move/from16 v18, v6

    :goto_2
    move-wide v15, v0

    move-object/from16 v17, v2

    .line 17
    invoke-interface/range {v11 .. v18}, Le/a/c/h/h;->a(Landroid/content/Context;JJLjava/lang/String;I)V

    return-void
.end method
