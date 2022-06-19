.class public final Le/a/i/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static volatile a:Z

.field public static final b:Lq3/a/b3/c;

.field public static final c:Le/a/i/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/i/r;

    invoke-direct {v0}, Le/a/i/r;-><init>()V

    sput-object v0, Le/a/i/r;->c:Le/a/i/r;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v0

    sput-object v0, Le/a/i/r;->b:Lq3/a/b3/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ls1/w/d;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/i/r$a;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/i/r$a;

    iget v2, v1, Le/a/i/r$a;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/i/r$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/i/r$a;

    invoke-direct {v1, p0, p2}, Le/a/i/r$a;-><init>(Le/a/i/r;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/i/r$a;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/i/r$a;->e:I

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_3

    if-eq v3, v6, :cond_2

    if-ne v3, v5, :cond_1

    iget-object p1, v1, Le/a/i/r$a;->g:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p2

    goto :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/i/r$a;->h:Ljava/lang/Object;

    check-cast p1, Lq3/a/b3/c;

    iget-object v3, v1, Le/a/i/r$a;->g:Ljava/lang/Object;

    check-cast v3, Landroid/content/Context;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p2, Le/a/i/r;->b:Lq3/a/b3/c;

    invoke-interface {p2}, Lq3/a/b3/c;->a()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-boolean v3, Le/a/i/r;->a:Z

    if-eqz v3, :cond_4

    return-object v0

    .line 5
    :cond_4
    iput-object p1, v1, Le/a/i/r$a;->g:Ljava/lang/Object;

    iput-object p2, v1, Le/a/i/r$a;->h:Ljava/lang/Object;

    iput v6, v1, Le/a/i/r$a;->e:I

    invoke-interface {p2, v7, v1}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v2, :cond_5

    return-object v2

    :cond_5
    move-object v3, p1

    move-object p1, p2

    .line 6
    :goto_1
    :try_start_1
    sget-boolean p2, Le/a/i/r;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_6

    .line 7
    invoke-interface {p1, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    .line 8
    :cond_6
    :try_start_2
    iput-object p1, v1, Le/a/i/r$a;->g:Ljava/lang/Object;

    iput-object v7, v1, Le/a/i/r$a;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/i/r$a;->e:I

    .line 9
    new-instance p2, Lq3/a/o;

    invoke-static {v1}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v5

    invoke-direct {p2, v5, v6}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 10
    invoke-virtual {p2}, Lq3/a/o;->z()V

    .line 11
    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    new-instance v5, Le/a/i/q;

    invoke-direct {v5, p2}, Le/a/i/q;-><init>(Lq3/a/n;)V

    invoke-static {v3, v5}, Lcom/google/android/gms/ads/MobileAds;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    .line 12
    invoke-virtual {p2}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v2, :cond_7

    const-string v3, "frame"

    .line 13
    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_7
    if-ne p2, v2, :cond_8

    return-object v2

    .line 14
    :cond_8
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 15
    :goto_3
    :try_start_3
    sget-object v1, Le/a/i/h0/k;->c:Le/a/i/h0/k;

    invoke-virtual {v1, p2}, Le/a/i/h0/k;->a(Ljava/lang/Throwable;)V

    .line 16
    :goto_4
    sput-boolean v4, Le/a/i/r;->a:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    invoke-interface {p1, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object v0

    :catchall_1
    move-exception p2

    invoke-interface {p1, v7}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p2
.end method
