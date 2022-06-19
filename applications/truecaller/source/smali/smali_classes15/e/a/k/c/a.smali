.class public final Le/a/k/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/s1;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/w/f;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/p5/c;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/a/p5/c;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/a;->c:Ls1/w/f;

    iput-object p2, p0, Le/a/k/c/a;->d:Landroid/content/Context;

    iput-object p3, p0, Le/a/k/c/a;->e:Le/a/p5/c;

    .line 2
    new-instance p1, Le/a/k/c/a$a;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Le/a/k/c/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/a;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/k/c/a$a;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Le/a/k/c/a$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/c/a;->b:Ls1/g;

    return-void
.end method

.method public static final a(Le/a/k/c/a;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/k/c/a;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public static final b(Le/a/k/c/a;)Ljava/io/File;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/k/c/a;->b:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/File;

    return-object p0
.end method

.method public static final c(Le/a/k/c/a;Ljava/io/File;)Ljava/lang/Long;
    .locals 5

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 3
    iget-object p0, p0, Le/a/k/c/a;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p0, 0x9

    .line 4
    invoke-virtual {v0, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 5
    invoke-static {p0}, Ls1/f0/q;->j(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    move-object p1, p0

    .line 7
    :cond_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V

    return-object p1
.end method


# virtual methods
.method public d(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/a$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/a$c;

    iget v1, v0, Le/a/k/c/a$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/a$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/a$c;

    invoke-direct {v0, p0, p2}, Le/a/k/c/a$c;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/a$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/a$c;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-instance p2, Le/a/k/c/a$b;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Le/a/k/c/a$b;-><init>(Le/a/k/c/a;Ljava/lang/String;Ls1/w/d;)V

    iput v3, v0, Le/a/k/c/a$c;->e:I

    .line 4
    iget-object p1, p0, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v3, Le/a/k/c/z1;

    invoke-direct {v3, p2, v2}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Ls1/s;

    if-eqz p2, :cond_4

    goto :goto_2

    .line 6
    :cond_4
    sget-object p2, Ls1/s;->a:Ls1/s;

    :goto_2
    return-object p2
.end method

.method public e(Ljava/io/File;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/c/a$d;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/c/a$d;

    iget v1, v0, Le/a/k/c/a$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/a$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/a$d;

    invoke-direct {v0, p0, p2}, Le/a/k/c/a$d;-><init>(Le/a/k/c/a;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/c/a$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/a$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    new-instance p2, Le/a/k/c/a$e;

    const/4 v2, 0x0

    invoke-direct {p2, p0, p1, v2}, Le/a/k/c/a$e;-><init>(Le/a/k/c/a;Ljava/io/File;Ls1/w/d;)V

    iput v3, v0, Le/a/k/c/a$d;->e:I

    .line 4
    iget-object p1, p0, Le/a/k/c/a;->c:Ls1/w/f;

    new-instance v3, Le/a/k/c/z1;

    invoke-direct {v3, p2, v2}, Le/a/k/c/z1;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v3, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    .line 6
    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
