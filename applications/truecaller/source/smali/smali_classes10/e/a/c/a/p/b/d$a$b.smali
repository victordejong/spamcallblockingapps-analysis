.class public final Le/a/c/a/p/b/d$a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/p/b/d$a;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Ls1/l<",
        "+",
        "Le/a/c/y/m;",
        ">;",
        "Ls1/w/d<",
        "-",
        "Le/a/c/y/m;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.insights.ui.smartfeed.domain.GetInsightsSmartFeedUseCase$mapToInsightsSmartFeed$1$1"
    f = "GetInsightsSmartFeedUseCase.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Le/a/c/a/p/b/d$a;


# direct methods
.method public constructor <init>(Ls1/w/d;Le/a/c/a/p/b/d$a;)V
    .locals 0

    iput-object p2, p0, Le/a/c/a/p/b/d$a$b;->f:Le/a/c/a/p/b/d$a;

    const/4 p2, 0x2

    invoke-direct {p0, p2, p1}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/c/a/p/b/d$a$b;

    iget-object v1, p0, Le/a/c/a/p/b/d$a$b;->f:Le/a/c/a/p/b/d$a;

    invoke-direct {v0, p2, v1}, Le/a/c/a/p/b/d$a$b;-><init>(Ls1/w/d;Le/a/c/a/p/b/d$a;)V

    check-cast p1, Ls1/l;

    .line 1
    iget-object p1, p1, Ls1/l;->a:Ljava/lang/Object;

    .line 2
    iput-object p1, v0, Le/a/c/a/p/b/d$a$b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/p/b/d$a$b;->f:Le/a/c/a/p/b/d$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    check-cast p1, Ls1/l;

    .line 4
    iget-object p1, p1, Ls1/l;->a:Ljava/lang/Object;

    .line 5
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 6
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    .line 8
    sget-object v1, Le/a/c/h/l/b;->a:Ljava/text/SimpleDateFormat;

    if-eqz p2, :cond_0

    .line 9
    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 10
    sget-object v1, Le/a/c/h/l/b;->b:Le/a/n3/a/d;

    if-eqz v1, :cond_0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Le/a/c/h/l/b;->a:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-static {p2}, Le/q/f/a/d/a;->X2(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 14
    iget-object v1, v1, Le/a/n3/a/d;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p2}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    instance-of p2, p1, Ls1/l$a;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    move-object p1, v1

    .line 16
    :cond_1
    check-cast p1, Le/a/c/y/m;

    if-eqz p1, :cond_3

    .line 17
    iget-object p2, v0, Le/a/c/a/p/b/d$a;->b:Le/a/c/a/p/b/g;

    iget-object v0, v0, Le/a/c/a/p/b/d$a;->c:Ljava/util/Set;

    .line 18
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    if-eqz p2, :cond_2

    .line 20
    new-instance p2, Le/a/c/w/o0/k/e$c;

    .line 21
    iget-object v2, p1, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 22
    invoke-direct {p2, v2}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    :cond_2
    if-eqz v2, :cond_3

    move-object v1, p1

    :cond_3
    return-object v1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/c/a/p/b/d$a$b;->e:Ljava/lang/Object;

    .line 2
    invoke-static {p1}, Ls1/l;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    .line 3
    sget-object v1, Le/a/c/h/l/b;->a:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 5
    sget-object v1, Le/a/c/h/l/b;->b:Le/a/n3/a/d;

    if-eqz v1, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Le/a/c/h/l/b;->a:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-static {v0}, Le/q/f/a/d/a;->X2(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, v1, Le/a/n3/a/d;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, v0}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    instance-of v0, p1, Ls1/l$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move-object p1, v1

    .line 11
    :cond_1
    check-cast p1, Le/a/c/y/m;

    if-eqz p1, :cond_3

    .line 12
    iget-object v0, p0, Le/a/c/a/p/b/d$a$b;->f:Le/a/c/a/p/b/d$a;

    iget-object v2, v0, Le/a/c/a/p/b/d$a;->b:Le/a/c/a/p/b/g;

    iget-object v0, v0, Le/a/c/a/p/b/d$a;->c:Ljava/util/Set;

    .line 13
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 15
    new-instance v2, Le/a/c/w/o0/k/e$c;

    .line 16
    iget-object v3, p1, Le/a/c/y/m;->g:Ljava/lang/String;

    .line 17
    invoke-direct {v2, v3}, Le/a/c/w/o0/k/e$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    :cond_2
    if-eqz v3, :cond_3

    move-object v1, p1

    :cond_3
    return-object v1
.end method
