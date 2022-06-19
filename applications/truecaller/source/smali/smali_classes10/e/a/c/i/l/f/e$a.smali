.class public final Le/a/c/i/l/f/e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/i/l/f/e;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.core.smartnotifications.helper.SmartNotificationManagerImpl$removeNotifyId$1"
    f = "SmartNotificationManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/i/l/f/e;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Le/a/c/i/l/f/e;ILs1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    iput p2, p0, Le/a/c/i/l/f/e$a;->f:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/c/i/l/f/e$a;

    iget-object v0, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    iget v1, p0, Le/a/c/i/l/f/e$a;->f:I

    invoke-direct {p1, v0, v1, p2}, Le/a/c/i/l/f/e$a;-><init>(Le/a/c/i/l/f/e;ILs1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    iget v1, p0, Le/a/c/i/l/f/e$a;->f:I

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    if-eqz p2, :cond_2

    .line 6
    invoke-virtual {v0}, Le/a/c/i/l/f/e;->j()Ljava/util/Set;

    move-result-object p2

    .line 7
    iput-object p2, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 8
    :cond_2
    iget-object p2, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 9
    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 10
    invoke-interface {p2, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, v0, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 12
    invoke-virtual {v0, p2}, Le/a/c/i/l/f/e;->n(Ljava/util/Collection;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    .line 3
    iget-object p1, p1, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    .line 6
    invoke-virtual {p1}, Le/a/c/i/l/f/e;->j()Ljava/util/Set;

    move-result-object v0

    .line 7
    iput-object v0, p1, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    .line 9
    iget-object p1, p1, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 10
    iget v0, p0, Le/a/c/i/l/f/e$a;->f:I

    .line 11
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    .line 12
    invoke-interface {p1, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 13
    iget-object p1, p0, Le/a/c/i/l/f/e$a;->e:Le/a/c/i/l/f/e;

    .line 14
    iget-object v0, p1, Le/a/c/i/l/f/e;->a:Ljava/util/Set;

    .line 15
    invoke-virtual {p1, v0}, Le/a/c/i/l/f/e;->n(Ljava/util/Collection;)V

    .line 16
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
