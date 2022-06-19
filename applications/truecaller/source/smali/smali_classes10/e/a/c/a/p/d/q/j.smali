.class public final Le/a/c/a/p/d/q/j;
.super Le/a/c/a/p/d/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/p/d/q/a<",
        "Le/a/c/a/p/c/d$e;",
        ">;"
    }
.end annotation


# instance fields
.field public d:Lq3/a/p1;

.field public final e:Z

.field public final f:Z

.field public final g:Le/a/c/a/g/y0;

.field public final h:Le/a/c/h/h;

.field public final i:Le/a/b0/m/c/a;

.field public final j:Le/a/c/a/i/h;


# direct methods
.method public constructor <init>(Le/a/c/a/g/y0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/y0;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, p4}, Le/a/c/a/p/d/q/a;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    iput-object p1, p0, Le/a/c/a/p/d/q/j;->g:Le/a/c/a/g/y0;

    iput-object p2, p0, Le/a/c/a/p/d/q/j;->h:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/p/d/q/j;->i:Le/a/b0/m/c/a;

    iput-object p4, p0, Le/a/c/a/p/d/q/j;->j:Le/a/c/a/i/h;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Le/a/c/a/p/d/q/j;->e:Z

    .line 4
    iput-boolean p1, p0, Le/a/c/a/p/d/q/j;->f:Z

    return-void
.end method


# virtual methods
.method public P4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/a/p/d/q/j;->e:Z

    return v0
.end method

.method public Q4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/a/p/d/q/j;->f:Z

    return v0
.end method

.method public S4(Le/a/c/a/p/c/d;)V
    .locals 12

    .line 1
    check-cast p1, Le/a/c/a/p/c/d$e;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/c/a/p/d/q/j;->j:Le/a/c/a/i/h;

    const-string v1, "click"

    invoke-static {p1, v1}, Le/a/c/p/a;->O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;

    move-result-object v1

    invoke-virtual {v1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object v1

    invoke-interface {v0, v1}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 4
    iget-object v2, p0, Le/a/c/a/p/d/q/j;->h:Le/a/c/h/h;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    const-string v3, "itemView.context"

    invoke-static {v0, v1, v3}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v3

    .line 5
    iget-object p1, p1, Le/a/c/a/p/c/d$e;->b:Le/a/c/a/p/c/a;

    .line 6
    iget-object p1, p1, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    .line 7
    iget-wide v4, p1, Le/a/c/a/p/c/b;->a:J

    .line 8
    iget-wide v6, p1, Le/a/c/a/p/c/b;->b:J

    const/4 v9, 0x0

    const/16 v10, 0x10

    const/4 v11, 0x0

    const-string v8, "insights_smart_feed"

    .line 9
    invoke-static/range {v2 .. v11}, Le/a/m0/a1$k;->U0(Le/a/c/h/h;Landroid/content/Context;JJLjava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public T4()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/p/d/q/j;->d:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final U4(Le/a/c/y/i;Le/a/c/a/p/c/d$e;)V
    .locals 3

    const-string v0, "smartCardAction"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "click"

    .line 1
    invoke-static {p2, v0}, Le/a/c/p/a;->O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Le/a/c/y/i;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Le/a/c/p/a;->n3(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p2, v0}, Le/a/c/r/d/c;->b(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Le/a/c/a/p/d/q/j;->j:Le/a/c/a/i/h;

    invoke-virtual {p2}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object p2

    invoke-interface {v0, p2}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    .line 5
    invoke-static {p1}, Le/a/c/p/a;->f1(Le/a/c/y/i;)V

    return-void
.end method
