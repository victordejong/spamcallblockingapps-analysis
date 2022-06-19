.class public final Le/a/k/c/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k/c/e2;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Le/a/k/c/s1;

.field public final c:Le/a/k/c/k1;

.field public final d:Le/a/k/c/y;

.field public final e:Le/a/k/n/g/e;

.field public final f:Le/a/k/p/i;

.field public final g:Le/a/k/j;

.field public final h:Le/a/k/c/m0;

.field public final i:Le/a/k/c/r0;

.field public final j:Le/a/k/c/h2/d;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/k/c/s1;Le/a/k/c/k1;Le/a/k/c/y;Le/a/k/n/g/e;Le/a/k/p/i;Le/a/k/j;Le/a/k/c/m0;Le/a/k/c/r0;Le/a/k/c/h2/d;)V
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

    const-string v0, "videoFileUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "stubManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "httpClient"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outgoingVideoRepository"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoUploadStateHolder"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoCallerIdSupport"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "shareVideoUpdateWorkerLauncher"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availability"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsUtil"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/k/c/g2;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/k/c/g2;->b:Le/a/k/c/s1;

    iput-object p3, p0, Le/a/k/c/g2;->c:Le/a/k/c/k1;

    iput-object p4, p0, Le/a/k/c/g2;->d:Le/a/k/c/y;

    iput-object p5, p0, Le/a/k/c/g2;->e:Le/a/k/n/g/e;

    iput-object p6, p0, Le/a/k/c/g2;->f:Le/a/k/p/i;

    iput-object p7, p0, Le/a/k/c/g2;->g:Le/a/k/j;

    iput-object p8, p0, Le/a/k/c/g2;->h:Le/a/k/c/m0;

    iput-object p9, p0, Le/a/k/c/g2;->i:Le/a/k/c/r0;

    iput-object p10, p0, Le/a/k/c/g2;->j:Le/a/k/c/h2/d;

    return-void
.end method


# virtual methods
.method public final a(Le/a/k/c/r1;Le/a/k/c/p0;Ls1/w/d;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/c/r1;",
            "Le/a/k/c/p0;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/k/c/g2$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/k/c/g2$a;

    iget v1, v0, Le/a/k/c/g2$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/c/g2$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/c/g2$a;

    invoke-direct {v0, p0, p3}, Le/a/k/c/g2$a;-><init>(Le/a/k/c/g2;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/k/c/g2$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/c/g2$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/k/c/g2$a;->g:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Le/a/k/c/p0;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uploading video process is started. File info: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", upload links: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 5
    new-instance p3, Le/a/k/c/x;

    .line 6
    iget-object v5, p1, Le/a/k/c/r1;->a:Ljava/io/File;

    .line 7
    iget-wide v6, p1, Le/a/k/c/r1;->c:J

    .line 8
    iget-object v8, p1, Le/a/k/c/r1;->b:Ljava/lang/String;

    .line 9
    iget-object v9, p2, Le/a/k/c/p0;->b:Ljava/lang/String;

    .line 10
    iget-object v10, p2, Le/a/k/c/p0;->d:Ljava/util/Map;

    move-object v4, p3

    .line 11
    invoke-direct/range {v4 .. v10}, Le/a/k/c/x;-><init>(Ljava/io/File;JLjava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 12
    iget-object p1, p0, Le/a/k/c/g2;->d:Le/a/k/c/y;

    iput-object p2, v0, Le/a/k/c/g2$a;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/k/c/g2$a;->e:I

    check-cast p1, Le/a/k/c/a0;

    .line 13
    iget-object v2, p1, Le/a/k/c/a0;->a:Ls1/w/f;

    new-instance v4, Le/a/k/c/z;

    const/4 v5, 0x0

    invoke-direct {v4, p1, p3, v5}, Le/a/k/c/z;-><init>(Le/a/k/c/a0;Le/a/k/c/x;Ls1/w/d;)V

    invoke-static {v2, v4, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    .line 14
    :cond_3
    :goto_1
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p2, Le/a/k/c/p0;->c:Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    .line 16
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
