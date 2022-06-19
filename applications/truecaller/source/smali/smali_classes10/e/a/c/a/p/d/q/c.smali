.class public final Le/a/c/a/p/d/q/c;
.super Le/a/c/a/p/d/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/p/d/q/a<",
        "Le/a/c/a/p/c/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static k:Z


# instance fields
.field public d:Lq3/a/p1;

.field public final e:Z

.field public final f:Le/a/c/a/g/q0;

.field public final g:Le/a/c/h/h;

.field public final h:Le/a/b0/m/c/a;

.field public final i:Le/a/c/a/i/h;

.field public final j:Ls1/z/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/c/a/g/q0;Le/a/c/h/h;Le/a/b0/m/c/a;Le/a/c/a/i/h;Ls1/z/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/g/q0;",
            "Le/a/c/h/h;",
            "Le/a/b0/m/c/a;",
            "Le/a/c/a/i/h;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchApi"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onShowTransactionClicked"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/c/a/g/q0;->a:Lcom/google/android/material/card/MaterialCardView;

    const-string v1, "binding.root"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 3
    invoke-direct {p0, v0, v1}, Le/a/c/a/p/d/q/a;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    .line 4
    iput-object p1, p0, Le/a/c/a/p/d/q/c;->f:Le/a/c/a/g/q0;

    iput-object p2, p0, Le/a/c/a/p/d/q/c;->g:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/p/d/q/c;->h:Le/a/b0/m/c/a;

    iput-object p4, p0, Le/a/c/a/p/d/q/c;->i:Le/a/c/a/i/h;

    iput-object p5, p0, Le/a/c/a/p/d/q/c;->j:Ls1/z/b/a;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/c/a/p/d/q/c;->e:Z

    return-void
.end method


# virtual methods
.method public P4()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/a/p/d/q/c;->e:Z

    return v0
.end method

.method public S4(Le/a/c/a/p/c/d;)V
    .locals 11

    .line 1
    check-cast p1, Le/a/c/a/p/c/d$a;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/c/a/p/d/q/c;->g:Le/a/c/h/h;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    const-string v3, "itemView.context"

    invoke-static {v0, v2, v3}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    .line 4
    iget-object p1, p1, Le/a/c/a/p/c/d$a;->b:Le/a/c/a/p/c/a;

    .line 5
    iget-object p1, p1, Le/a/c/a/p/c/a;->a:Le/a/c/a/p/c/b;

    .line 6
    iget-wide v3, p1, Le/a/c/a/p/c/b;->a:J

    .line 7
    iget-wide v5, p1, Le/a/c/a/p/c/b;->b:J

    const/4 v8, 0x0

    const/16 v9, 0x10

    const/4 v10, 0x0

    const-string v7, "insights_smart_feed"

    .line 8
    invoke-static/range {v1 .. v10}, Le/a/m0/a1$k;->U0(Le/a/c/h/h;Landroid/content/Context;JJLjava/lang/String;IILjava/lang/Object;)V

    return-void
.end method

.method public T4()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/c/a/p/d/q/c;->d:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
