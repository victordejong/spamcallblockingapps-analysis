.class final Lcom/hiya/client/callerid/dao/o$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/o;->k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lg/g/b/c/d;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/o;

.field final synthetic g:Ljava/io/File;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:Lg/g/b/c/d;

.field final synthetic j:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/o;Ljava/io/File;Ljava/lang/String;Lg/g/b/c/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/o$b;->g:Ljava/io/File;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/o$b;->h:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/client/callerid/dao/o$b;->i:Lg/g/b/c/d;

    iput-object p5, p0, Lcom/hiya/client/callerid/dao/o$b;->j:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/Response;)Lg/g/b/c/a;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lm/h0;",
            ">;)",
            "Lg/g/b/c/a;"
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "it"

    move-object/from16 v2, p1

    .line 1
    invoke-static {v2, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "it.headers()"

    if-eqz v1, :cond_e

    .line 2
    iget-object v1, v0, Lcom/hiya/client/callerid/dao/o$b;->g:Ljava/io/File;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3
    :cond_0
    iget-object v1, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/o;->c(Lcom/hiya/client/callerid/dao/o;)Lcom/hiya/client/callerid/dao/a;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v6

    invoke-static {v6, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/hiya/client/callerid/dao/a;->a(Lm/x;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/h0;

    const/4 v6, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm/h0;->contentType()Lm/a0;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lm/a0;->j()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v6

    :goto_0
    const-string v7, ""

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v7

    .line 5
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lm/h0;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lm/h0;->contentType()Lm/a0;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lm/a0;->i()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    move-object v8, v6

    :goto_2
    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    move-object v8, v7

    .line 6
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_4

    :cond_5
    const/4 v9, 0x0

    :goto_4
    if-nez v9, :cond_b

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_6

    const/4 v9, 0x1

    goto :goto_5

    :cond_6
    const/4 v9, 0x0

    :goto_5
    if-eqz v9, :cond_7

    goto/16 :goto_6

    :cond_7
    const-string v3, "image"

    .line 7
    invoke-static {v1, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "it.body()!!"

    if-eqz v3, :cond_9

    const-string v3, "gif"

    invoke-static {v8, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    if-eqz v3, :cond_9

    .line 8
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/o;->d(Lcom/hiya/client/callerid/dao/o;)Lg/g/b/a/k/a;

    move-result-object v10

    .line 9
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-static {v3, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    check-cast v11, Lm/h0;

    .line 10
    iget-object v12, v0, Lcom/hiya/client/callerid/dao/o$b;->h:Ljava/lang/String;

    .line 11
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lg/g/b/a/k/i;->a(Lm/x;)Ljava/lang/String;

    move-result-object v13

    .line 12
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/hiya/client/callerid/dao/o;->f(Lcom/hiya/client/callerid/dao/o;Lm/x;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 13
    iget-object v15, v0, Lcom/hiya/client/callerid/dao/o$b;->i:Lg/g/b/c/d;

    .line 14
    new-instance v2, Lcom/hiya/client/callerid/dao/o$b$a;

    invoke-direct {v2, v0}, Lcom/hiya/client/callerid/dao/o$b$a;-><init>(Lcom/hiya/client/callerid/dao/o$b;)V

    move-object/from16 v16, v2

    .line 15
    invoke-virtual/range {v10 .. v16}, Lg/g/b/a/k/a;->k(Lm/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lg/g/b/c/d;Lkotlin/w/b/l;)Ljava/io/File;

    move-result-object v2

    goto :goto_7

    .line 16
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6

    .line 17
    :cond_9
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v3}, Lcom/hiya/client/callerid/dao/o;->d(Lcom/hiya/client/callerid/dao/o;)Lg/g/b/a/k/a;

    move-result-object v10

    .line 18
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-static {v3, v9}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v11, v3

    check-cast v11, Lm/h0;

    .line 19
    iget-object v12, v0, Lcom/hiya/client/callerid/dao/o$b;->h:Ljava/lang/String;

    .line 20
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v3

    invoke-static {v3, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Lg/g/b/a/k/i;->a(Lm/x;)Ljava/lang/String;

    move-result-object v13

    .line 21
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v2}, Lcom/hiya/client/callerid/dao/o;->f(Lcom/hiya/client/callerid/dao/o;Lm/x;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    .line 22
    iget-object v15, v0, Lcom/hiya/client/callerid/dao/o$b;->i:Lg/g/b/c/d;

    .line 23
    invoke-virtual/range {v10 .. v15}, Lg/g/b/a/k/a;->l(Lm/h0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Lg/g/b/c/d;)Ljava/io/File;

    move-result-object v2

    goto :goto_7

    .line 24
    :cond_a
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v6

    .line 25
    :cond_b
    :goto_6
    invoke-static {}, Lcom/hiya/client/callerid/dao/p;->a()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Asset response body is null or missing contentType or subtype."

    invoke-static {v2, v4, v3}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v2, v6

    :goto_7
    if-eqz v2, :cond_c

    .line 26
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    :cond_c
    if-eqz v6, :cond_d

    move-object v7, v6

    :cond_d
    new-instance v2, Lg/g/b/c/a;

    invoke-direct {v2, v7, v1, v8}, Lg/g/b/c/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    .line 27
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->code()I

    move-result v1

    const/16 v6, 0x130

    if-ne v1, v6, :cond_12

    .line 28
    iget-object v1, v0, Lcom/hiya/client/callerid/dao/o$b;->g:Ljava/io/File;

    if-nez v1, :cond_f

    .line 29
    invoke-static {}, Lcom/hiya/client/callerid/dao/p;->a()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ETag = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/hiya/client/callerid/dao/o$b;->j:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ". No content found and the result code is 304."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    .line 31
    invoke-static {v1, v2, v3}, Lcom/hiya/client/support/logging/d;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v2

    goto :goto_9

    .line 33
    :cond_f
    invoke-static {v1}, Lg/g/b/c/c;->e(Ljava/io/File;)Lg/g/b/c/b;

    move-result-object v3

    .line 34
    invoke-virtual {v3}, Lg/g/b/c/b;->c()Lg/g/b/c/a;

    move-result-object v1

    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v6

    invoke-static {v1, v6}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v4

    if-eqz v1, :cond_11

    .line 35
    iget-object v1, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-static {v1}, Lcom/hiya/client/callerid/dao/o;->d(Lcom/hiya/client/callerid/dao/o;)Lg/g/b/a/k/a;

    move-result-object v1

    .line 36
    iget-object v10, v0, Lcom/hiya/client/callerid/dao/o$b;->g:Ljava/io/File;

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 37
    iget-object v8, v0, Lcom/hiya/client/callerid/dao/o$b;->f:Lcom/hiya/client/callerid/dao/o;

    invoke-virtual/range {p1 .. p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v2}, Lcom/hiya/client/callerid/dao/o;->f(Lcom/hiya/client/callerid/dao/o;Lm/x;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v8, 0x7

    const/4 v9, 0x0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v2

    invoke-static/range {v3 .. v9}, Lg/g/b/c/b;->b(Lg/g/b/c/b;Lg/g/b/c/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ILjava/lang/Object;)Lg/g/b/c/b;

    move-result-object v2

    .line 38
    iget-object v3, v0, Lcom/hiya/client/callerid/dao/o$b;->i:Lg/g/b/c/d;

    .line 39
    invoke-virtual {v1, v10, v2, v3}, Lg/g/b/a/k/a;->h(Ljava/io/File;Lg/g/b/c/b;Lg/g/b/c/d;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 40
    invoke-static {v1}, Lg/g/b/c/c;->c(Ljava/io/File;)Lg/g/b/c/a;

    move-result-object v1

    if-eqz v1, :cond_10

    goto :goto_8

    :cond_10
    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v1

    goto :goto_8

    .line 41
    :cond_11
    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v1

    :goto_8
    move-object v2, v1

    goto :goto_9

    .line 42
    :cond_12
    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v2

    :goto_9
    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/o$b;->a(Lretrofit2/Response;)Lg/g/b/c/a;

    move-result-object p1

    return-object p1
.end method
