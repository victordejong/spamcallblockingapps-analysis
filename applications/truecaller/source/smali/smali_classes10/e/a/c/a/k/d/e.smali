.class public final Le/a/c/a/k/d/e;
.super Le/a/c/a/a/a/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/a/a/a/e<",
        "Le/a/c/a/l/b$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Le/a/c/a/g/q1;

.field public final f:Le/a/c/a/k/d/a;

.field public final g:Le/a/c/h/h;


# direct methods
.method public constructor <init>(Le/a/c/a/g/q1;Le/a/c/a/i/h;Le/a/c/a/k/d/a;Le/a/c/h/h;Le/a/u3/g;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lifeCycleAwareAnalyticsLogger"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p5, p1, Le/a/c/a/g/q1;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.root"

    .line 2
    invoke-static {p5, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p5, p2}, Le/a/c/a/a/a/a/e;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/k/d/e;->e:Le/a/c/a/g/q1;

    iput-object p3, p0, Le/a/c/a/k/d/e;->f:Le/a/c/a/k/d/a;

    iput-object p4, p0, Le/a/c/a/k/d/e;->g:Le/a/c/h/h;

    return-void
.end method


# virtual methods
.method public S4(Ljava/lang/Object;)V
    .locals 21

    move-object/from16 v9, p0

    .line 1
    move-object/from16 v10, p1

    check-cast v10, Le/a/c/a/l/b$c;

    const-string v0, "item"

    .line 2
    invoke-static {v10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v10, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Le/a/c/h/m/d;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "marked_as_important"

    :goto_0
    move-object v5, v0

    .line 5
    iget-object v3, v10, Le/a/c/a/l/b$c;->l:Ljava/lang/String;

    .line 6
    iget-object v0, v10, Le/a/c/a/l/b$c;->h:Le/a/c/h/m/d;

    .line 7
    instance-of v4, v0, Le/a/c/h/m/d$a;

    const/4 v6, 0x0

    const/16 v7, 0x20

    const/4 v8, 0x0

    const-string v1, "marked_as_important"

    const-string v2, "inner_page_card"

    move-object/from16 v0, p0

    .line 8
    invoke-static/range {v0 .. v8}, Le/a/c/a/a/a/a/e;->Q4(Le/a/c/a/a/a/a/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    iget-object v11, v9, Le/a/c/a/k/d/e;->g:Le/a/c/h/h;

    .line 10
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    const-string v2, "itemView.context"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v12

    .line 11
    iget-wide v13, v10, Le/a/c/a/l/b$c;->a:J

    .line 12
    iget-wide v0, v10, Le/a/c/a/l/b$c;->g:J

    const/16 v18, 0x0

    const/16 v19, 0x10

    const/16 v20, 0x0

    const-string v17, "marked_as_important"

    move-wide v15, v0

    .line 13
    invoke-static/range {v11 .. v20}, Le/a/m0/a1$k;->U0(Le/a/c/h/h;Landroid/content/Context;JJLjava/lang/String;IILjava/lang/Object;)V

    return-void
.end method
