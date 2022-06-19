.class public final Lq3/a/a3/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/a/a3/a;->Q(JLs1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a8\u0006\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "kotlinx/coroutines/RunnableKt$Runnable$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field public final synthetic a:Lq3/a/a3/a;

.field public final synthetic b:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Lq3/a/a3/a;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Lq3/a/a3/a$e;->a:Lq3/a/a3/a;

    iput-object p2, p0, Lq3/a/a3/a$e;->b:Ls1/z/b/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lq3/a/a3/a$e;->a:Lq3/a/a3/a;

    invoke-virtual {v0}, Lq3/a/a3/a;->v()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    iget-object v6, p0, Lq3/a/a3/a$e;->b:Ls1/z/b/l;

    iget-object v0, p0, Lq3/a/a3/a$e;->a:Lq3/a/a3/a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v1, "$this$createCoroutineUnintercepted"

    .line 4
    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "completion"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    instance-of v1, v6, Ls1/w/k/a/a;

    if-eqz v1, :cond_0

    .line 7
    check-cast v6, Ls1/w/k/a/a;

    invoke-virtual {v6, v0}, Ls1/w/k/a/a;->l(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Lq3/a/a3/a;->getContext()Ls1/w/f;

    move-result-object v5

    .line 9
    sget-object v1, Ls1/w/h;->a:Ls1/w/h;

    if-ne v5, v1, :cond_1

    .line 10
    new-instance v1, Ls1/w/j/b;

    invoke-direct {v1, v0, v0, v6}, Ls1/w/j/b;-><init>(Ls1/w/d;Ls1/w/d;Ls1/z/b/l;)V

    goto :goto_0

    .line 11
    :cond_1
    new-instance v7, Ls1/w/j/c;

    move-object v1, v7

    move-object v2, v0

    move-object v3, v5

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Ls1/w/j/c;-><init>(Ls1/w/d;Ls1/w/f;Ls1/w/d;Ls1/w/f;Ls1/z/b/l;)V

    move-object v1, v7

    .line 12
    :goto_0
    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v1

    sget-object v2, Ls1/s;->a:Ls1/s;

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-static {v1, v2, v3, v4}, Lq3/a/y2/j;->b(Ls1/w/d;Ljava/lang/Object;Ls1/z/b/l;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 13
    invoke-static {v1}, Le/q/f/a/d/a;->a0(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lq3/a/a3/a;->c(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method
