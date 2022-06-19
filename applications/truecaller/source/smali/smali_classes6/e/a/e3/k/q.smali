.class public final Le/a/e3/k/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e3/k/p;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Landroid/content/Context;

.field public final c:Le/a/e3/k/f;

.field public final d:Le/a/b0/q/z;

.field public final e:Le/a/p5/g;

.field public final f:Le/a/u3/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/e3/k/f;Le/a/b0/q/z;Le/a/p5/g;Le/a/u3/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p6    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "settings"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumberHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e3/k/q;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/e3/k/q;->b:Landroid/content/Context;

    iput-object p3, p0, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    iput-object p4, p0, Le/a/e3/k/q;->d:Le/a/b0/q/z;

    iput-object p5, p0, Le/a/e3/k/q;->e:Le/a/p5/g;

    iput-object p6, p0, Le/a/e3/k/q;->f:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public a(Z)Z
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e3/k/q;->f:Le/a/u3/g;

    .line 2
    iget-object v1, v0, Le/a/u3/g;->j0:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x3b

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    check-cast v0, Le/a/u3/i;

    .line 3
    invoke-interface {v0}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const-string v4, ","

    .line 5
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {v0, v4, v1, v1, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    .line 6
    iget-object v4, p0, Le/a/e3/k/q;->e:Le/a/p5/g;

    invoke-interface {v4}, Le/a/p5/g;->e()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    xor-int/2addr v5, v2

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_5

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6, v2}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v3, v5

    :cond_3
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    .line 9
    iget-object p1, p0, Le/a/e3/k/q;->b:Landroid/content/Context;

    invoke-static {p1}, Le/a/p5/s0/g;->F(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move v2, v1

    :goto_4
    return v2
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    const-string v0, "normalizedNumber"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    const-string v1, "callSilenceNormalizedNumber"

    invoke-interface {v0, v1, p1}, Le/a/e3/k/f;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/e3/k/q;->c:Le/a/e3/k/f;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const-string v1, "Calendar.getInstance()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    const-string v2, "callSilenceTimestamp"

    invoke-interface {p1, v2, v0, v1}, Le/a/e3/k/f;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/e3/k/q;->a:Ls1/w/f;

    new-instance v1, Le/a/e3/k/q$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/e3/k/q$a;-><init>(Le/a/e3/k/q;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
