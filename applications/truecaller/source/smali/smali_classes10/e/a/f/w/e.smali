.class public final Le/a/f/w/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/f/w/c;
.implements Lq3/a/i0;


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/f/a/g;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/w2/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/h<",
            "Le/a/f/w/f;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lq3/a/p1;

.field public final d:Le/a/f/z/k;

.field public final e:Ls1/w/f;

.field public final f:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/f/z/k;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callerInfoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/f/w/e;->d:Le/a/f/z/k;

    iput-object p2, p0, Le/a/f/w/e;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/f/w/e;->f:Ls1/w/f;

    .line 2
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Le/a/f/w/e;->a:Ljava/util/Map;

    const/4 p1, -0x1

    .line 3
    invoke-static {p1}, Ls1/a/a/a/v0/f/d;->d(I)Lq3/a/w2/h;

    move-result-object p1

    iput-object p1, p0, Le/a/f/w/e;->b:Lq3/a/w2/h;

    return-void
.end method


# virtual methods
.method public a()Lq3/a/w2/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/a/w2/h<",
            "Le/a/f/w/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/f/w/e;->b:Lq3/a/w2/h;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Le/a/f/a/g;
    .locals 1

    const-string v0, "phoneNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/f/w/e;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/a/g;

    return-object p1
.end method

.method public c(Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;)V
    .locals 9

    sget-object v0, Le/a/f/w/f$a;->a:Le/a/f/w/f$a;

    const-string v1, "searchDirection"

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/f/w/e;->c:Lq3/a/p1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v3, 0x1

    invoke-static {v1, v2, v3, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Le/a/f/w/e;->b:Lq3/a/w2/h;

    .line 3
    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Le/a/f/w/e;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5
    iget-object p2, p0, Le/a/f/w/e;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/f/a/g;

    if-eqz p1, :cond_2

    .line 6
    iget-object p2, p0, Le/a/f/w/e;->b:Lq3/a/w2/h;

    .line 7
    new-instance v0, Le/a/f/w/f$b;

    invoke-direct {v0, p1}, Le/a/f/w/f$b;-><init>(Le/a/f/a/g;)V

    invoke-interface {p2, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Le/a/f/w/e;->b:Lq3/a/w2/h;

    .line 9
    invoke-interface {p1, v0}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    :goto_0
    return-void

    .line 10
    :cond_3
    iget-object v0, p0, Le/a/f/w/e;->b:Lq3/a/w2/h;

    .line 11
    new-instance v1, Le/a/f/w/f$c;

    invoke-direct {v1, p1}, Le/a/f/w/f$c;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lq3/a/w2/d0;->offer(Ljava/lang/Object;)Z

    .line 12
    new-instance v6, Le/a/f/w/d;

    invoke-direct {v6, p0, p1, p2, v2}, Le/a/f/w/d;-><init>(Le/a/f/w/e;Ljava/lang/String;Lcom/truecaller/incallui/utils/InCallUISearchDirection;Ls1/w/d;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-object v3, p0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    iput-object p1, p0, Le/a/f/w/e;->c:Lq3/a/p1;

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/f/w/e;->e:Ls1/w/f;

    return-object v0
.end method

.method public release()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/f/w/e;->c:Lq3/a/p1;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/f/w/e;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
