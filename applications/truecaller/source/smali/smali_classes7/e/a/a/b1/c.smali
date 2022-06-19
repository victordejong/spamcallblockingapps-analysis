.class public final Le/a/a/b1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/b1/b;


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/f4/g/r;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/f4/g/r;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiCoroutineContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/b1/c;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/a/b1/c;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/a/b1/c;->c:Le/a/f4/g/r;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Le/a/a/b1/a;)V
    .locals 9

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v2, p0, Le/a/a/b1/c;->b:Ls1/w/f;

    new-instance v0, Le/a/a/b1/c$a;

    const/4 v8, 0x0

    move-object v3, v0

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v3 .. v8}, Le/a/a/b1/c$a;-><init>(Le/a/a/b1/c;Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Le/a/a/b1/a;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v4, v0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Lcom/truecaller/data/entity/messaging/Participant;Ljava/lang/String;Ljava/util/List;)Le/a/f4/g/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/messaging/Participant;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)",
            "Le/a/f4/g/t;"
        }
    .end annotation

    const-string v0, "participant"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchSource"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messages"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    iget v0, p1, Lcom/truecaller/data/entity/messaging/Participant;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "UUID.randomUUID()"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 p3, 0x3

    if-eq v0, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_1
    iget-object p3, p0, Le/a/a/b1/c;->c:Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v0, p2}, Le/a/f4/g/r;->a(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/n;

    move-result-object p2

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2a

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "query"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iput-object p1, p2, Le/a/f4/g/n;->a:Ljava/lang/String;

    const/16 p1, 0x17

    .line 6
    iput p1, p2, Le/a/f4/g/n;->b:I

    .line 7
    invoke-virtual {p2}, Le/a/f4/g/n;->a()Le/a/f4/g/t;

    move-result-object p1

    goto :goto_1

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/a/b1/c;->c:Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2, p2}, Le/a/f4/g/r;->b(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/p;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    .line 10
    iget-object p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    .line 11
    iput-object p1, p2, Le/a/f4/g/p;->p:Ljava/lang/String;

    const/16 p1, 0x14

    .line 12
    iput p1, p2, Le/a/f4/g/p;->o:I

    .line 13
    iput-object p3, p2, Le/a/f4/g/p;->f:Ljava/util/List;

    .line 14
    invoke-virtual {p2}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
