.class public final Le/m/b/x/b/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Le/m/b/x/b/j;

.field public b:Le/m/b/x/b/k;

.field public c:Le/m/b/x/b/k;

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Le/m/b/x/b/g;

.field public final i:Le/m/b/x/b/t;

.field public j:Ljava/lang/String;

.field public k:Le/m/b/x/b/f;

.field public l:I

.field public m:I

.field public n:Le/m/b/x/b/u;

.field public o:Le/m/b/x/b/l;

.field public p:Le/m/b/x/b/s;

.field public q:Le/m/b/x/d/s;

.field public r:Le/m/b/x/b/h;

.field public s:Z

.field public t:Z

.field public u:Le/m/b/x/d/t;

.field public final v:Lp3/b/c/v;

.field public w:Z


# direct methods
.method public constructor <init>(Le/m/b/x/b/t;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Le/m/b/x/b/k;

    invoke-direct {p2}, Le/m/b/x/b/k;-><init>()V

    iput-object p2, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    .line 3
    new-instance p2, Le/m/b/x/b/k;

    invoke-direct {p2}, Le/m/b/x/b/k;-><init>()V

    iput-object p2, p0, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    const/16 p2, 0xa

    .line 4
    iput p2, p0, Le/m/b/x/b/n;->d:I

    const/16 p2, 0x4000

    .line 5
    iput p2, p0, Le/m/b/x/b/n;->e:I

    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p0, Le/m/b/x/b/n;->f:Z

    .line 7
    iput-boolean p2, p0, Le/m/b/x/b/n;->g:Z

    const/16 v0, 0x4e20

    .line 8
    iput v0, p0, Le/m/b/x/b/n;->l:I

    .line 9
    iput v0, p0, Le/m/b/x/b/n;->m:I

    .line 10
    iput-boolean p2, p0, Le/m/b/x/b/n;->s:Z

    .line 11
    iput-boolean p2, p0, Le/m/b/x/b/n;->t:Z

    .line 12
    sget-object p2, Le/m/b/x/d/t;->a:Le/m/b/x/d/t;

    iput-object p2, p0, Le/m/b/x/b/n;->u:Le/m/b/x/d/t;

    .line 13
    sget-object p2, Le/m/b/x/b/y;->c:Lp3/b/c/v;

    .line 14
    iput-object p2, p0, Le/m/b/x/b/n;->v:Lp3/b/c/v;

    const/4 p2, 0x0

    .line 15
    iput-boolean p2, p0, Le/m/b/x/b/n;->w:Z

    .line 16
    iput-object p1, p0, Le/m/b/x/b/n;->i:Le/m/b/x/b/t;

    const/4 p1, 0x0

    .line 17
    invoke-virtual {p0, p1}, Le/m/b/x/b/n;->d(Ljava/lang/String;)Le/m/b/x/b/n;

    return-void
.end method

.method public static a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Lp3/b/c/b;

    const-string v1, "stringValue"

    .line 2
    invoke-static {p2, v1}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, p2}, Lp3/b/c/b;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, v0}, Lp3/b/c/o;->d(Ljava/lang/String;Lp3/b/c/a;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public b()Le/m/b/x/b/q;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget v0, v1, Le/m/b/x/b/n;->d:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 2
    :goto_0
    invoke-static {v0}, Ln3/g0/y;->checkArgument2(Z)V

    .line 3
    iget v0, v1, Le/m/b/x/b/n;->d:I

    .line 4
    iget-object v4, v1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    .line 5
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v4, v1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 7
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iget-object v4, v1, Le/m/b/x/b/n;->v:Lp3/b/c/v;

    sget-object v5, Le/m/b/x/b/y;->b:Ljava/lang/String;

    .line 9
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-static {}, Lp3/a/q;->l()Lp3/a/q;

    move-result-object v4

    .line 11
    sget-object v6, Lp3/b/c/a0/a;->a:Lp3/a/q$e;

    const-string v7, "context"

    invoke-static {v4, v7}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    iget-object v4, v4, Lp3/a/q;->b:Lp3/a/a1;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-interface {v4, v6, v7, v3}, Lp3/a/a1;->a(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object v4

    :goto_1
    if-nez v4, :cond_2

    const/4 v4, 0x0

    .line 15
    :cond_2
    check-cast v4, Lp3/b/c/o;

    if-nez v4, :cond_3

    .line 16
    sget-object v4, Lp3/b/c/i;->e:Lp3/b/c/i;

    :cond_3
    const-string v4, "name"

    .line 17
    invoke-static {v5, v4}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    sget-boolean v4, Le/m/b/x/b/y;->e:Z

    .line 19
    sget-object v4, Lp3/b/c/i;->e:Lp3/b/c/i;

    const/4 v5, 0x0

    move/from16 v18, v2

    move v2, v0

    move/from16 v0, v18

    :goto_2
    const-string v6, "retry #"

    .line 20
    invoke-static {v6}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Le/m/b/x/b/n;->d:I

    sub-int/2addr v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "description"

    .line 22
    invoke-static {v6, v7}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v7, Lp3/b/c/o;->c:Ljava/util/Map;

    invoke-virtual {v4, v6, v7}, Lp3/b/c/i;->f(Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v5, :cond_4

    .line 24
    invoke-virtual {v5}, Le/m/b/x/b/q;->d()V

    .line 25
    :cond_4
    iget-object v5, v1, Le/m/b/x/b/n;->a:Le/m/b/x/b/j;

    if-eqz v5, :cond_5

    .line 26
    check-cast v5, Le/m/b/x/a/b/a/a/a/a$a;

    invoke-virtual {v5, v1}, Le/m/b/x/a/b/a/a/a/a$a;->b(Le/m/b/x/b/n;)V

    .line 27
    :cond_5
    iget-object v5, v1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    invoke-virtual {v5}, Le/m/b/x/b/f;->l()Ljava/lang/String;

    move-result-object v5

    .line 28
    iget-object v6, v1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    const-string v7, "http.method"

    invoke-static {v4, v7, v6}, Le/m/b/x/b/n;->a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v6, v1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 30
    iget-object v6, v6, Le/m/b/x/b/f;->d:Ljava/lang/String;

    const-string v7, "http.host"

    .line 31
    invoke-static {v4, v7, v6}, Le/m/b/x/b/n;->a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    iget-object v6, v1, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 33
    iget-object v7, v6, Le/m/b/x/b/f;->g:Ljava/util/List;

    if-nez v7, :cond_6

    const/4 v6, 0x0

    goto :goto_3

    .line 34
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-virtual {v6, v7}, Le/m/b/x/b/f;->k(Ljava/lang/StringBuilder;)V

    .line 36
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_3
    const-string v7, "http.path"

    .line 37
    invoke-static {v4, v7, v6}, Le/m/b/x/b/n;->a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "http.url"

    .line 38
    invoke-static {v4, v6, v5}, Le/m/b/x/b/n;->a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object v6, v1, Le/m/b/x/b/n;->i:Le/m/b/x/b/t;

    iget-object v7, v1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Le/m/b/x/b/t;->a(Ljava/lang/String;Ljava/lang/String;)Le/m/b/x/b/w;

    move-result-object v6

    .line 40
    sget-object v7, Le/m/b/x/b/t;->a:Ljava/util/logging/Logger;

    .line 41
    iget-boolean v8, v1, Le/m/b/x/b/n;->f:Z

    if-eqz v8, :cond_7

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v8

    if-eqz v8, :cond_7

    move v14, v0

    goto :goto_4

    :cond_7
    move v14, v3

    :goto_4
    if-eqz v14, :cond_9

    const-string v8, "-------------- REQUEST  --------------"

    .line 42
    invoke-static {v8}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 43
    sget-object v9, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v10, v1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    .line 45
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v10, 0x20

    .line 46
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    iget-boolean v9, v1, Le/m/b/x/b/n;->g:Z

    if-eqz v9, :cond_8

    .line 50
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "curl -v --compressed"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v10, v1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    const-string v11, "GET"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    const-string v10, " -X "

    .line 52
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Le/m/b/x/b/n;->j:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    const/4 v8, 0x0

    :cond_a
    :goto_5
    move-object v15, v8

    move-object v13, v9

    .line 53
    iget-object v8, v1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {v8}, Le/m/b/x/b/k;->o()Ljava/lang/String;

    move-result-object v12

    const-string v8, "http.user_agent"

    const-string v9, "Google-HTTP-Java-Client/1.30.0 (gzip)"

    if-nez v12, :cond_b

    .line 54
    iget-object v10, v1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {v10, v9}, Le/m/b/x/b/k;->A(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 55
    invoke-static {v4, v8, v9}, Le/m/b/x/b/n;->a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v10, " "

    .line 56
    invoke-static {v12, v10, v9}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 57
    iget-object v10, v1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {v10, v9}, Le/m/b/x/b/k;->A(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 58
    invoke-static {v4, v8, v9}, Le/m/b/x/b/n;->a(Lp3/b/c/o;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_6
    iget-object v8, v1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    const-string v9, "span should not be null."

    .line 60
    invoke-static {v0, v9}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    if-eqz v8, :cond_c

    goto :goto_7

    :cond_c
    move v0, v3

    :goto_7
    const-string v3, "headers should not be null."

    .line 61
    invoke-static {v0, v3}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 62
    sget-object v0, Le/m/b/x/b/y;->f:Lp3/b/c/z/a;

    if-eqz v0, :cond_d

    sget-object v0, Le/m/b/x/b/y;->g:Lp3/b/c/z/a$a;

    if-eqz v0, :cond_d

    .line 63
    sget-object v0, Lp3/b/c/i;->e:Lp3/b/c/i;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 64
    sget-object v0, Le/m/b/x/b/y;->f:Lp3/b/c/z/a;

    .line 65
    iget-object v3, v4, Lp3/b/c/o;->a:Lp3/b/c/p;

    .line 66
    sget-object v9, Le/m/b/x/b/y;->g:Lp3/b/c/z/a$a;

    invoke-virtual {v0, v3, v8, v9}, Lp3/b/c/z/a;->a(Lp3/b/c/p;Ljava/lang/Object;Lp3/b/c/z/a$a;)V

    .line 67
    :cond_d
    iget-object v8, v1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    const/4 v0, 0x0

    move-object v9, v15

    move-object v10, v13

    move-object v11, v7

    move-object v3, v12

    move-object v12, v6

    move-object/from16 v16, v4

    move-object v4, v13

    move-object v13, v0

    .line 68
    invoke-static/range {v8 .. v13}, Le/m/b/x/b/k;->r(Le/m/b/x/b/k;Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;Ljava/util/logging/Logger;Le/m/b/x/b/w;Ljava/io/Writer;)V

    .line 69
    iget-object v0, v1, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {v0, v3}, Le/m/b/x/b/k;->A(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 70
    iget-object v0, v1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    if-eqz v0, :cond_f

    .line 71
    invoke-interface {v0}, Le/m/b/x/b/g;->b()Z

    move-result v3

    if-eqz v3, :cond_e

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v3, 0x1

    :goto_9
    const-string v8, "\'"

    if-eqz v0, :cond_19

    .line 72
    iget-object v9, v1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    invoke-interface {v9}, Le/m/b/x/b/g;->getType()Ljava/lang/String;

    move-result-object v9

    if-eqz v14, :cond_10

    .line 73
    new-instance v10, Le/m/b/x/d/q;

    sget-object v11, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    iget v12, v1, Le/m/b/x/b/n;->e:I

    invoke-direct {v10, v0, v7, v11, v12}, Le/m/b/x/d/q;-><init>(Le/m/b/x/d/u;Ljava/util/logging/Logger;Ljava/util/logging/Level;I)V

    move-object v0, v10

    .line 74
    :cond_10
    iget-object v10, v1, Le/m/b/x/b/n;->r:Le/m/b/x/b/h;

    if-nez v10, :cond_11

    .line 75
    iget-object v10, v1, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    invoke-interface {v10}, Le/m/b/x/b/g;->a()J

    move-result-wide v10

    const/4 v12, 0x0

    goto :goto_a

    .line 76
    :cond_11
    invoke-interface {v10}, Le/m/b/x/b/h;->getName()Ljava/lang/String;

    move-result-object v12

    .line 77
    new-instance v10, Le/m/b/x/b/i;

    iget-object v11, v1, Le/m/b/x/b/n;->r:Le/m/b/x/b/h;

    invoke-direct {v10, v0, v11}, Le/m/b/x/b/i;-><init>(Le/m/b/x/d/u;Le/m/b/x/b/h;)V

    if-eqz v3, :cond_12

    .line 78
    new-instance v11, Le/m/b/x/d/c;

    invoke-direct {v11}, Le/m/b/x/d/c;-><init>()V

    .line 79
    :try_start_0
    iget-object v0, v10, Le/m/b/x/b/i;->b:Le/m/b/x/b/h;

    iget-object v13, v10, Le/m/b/x/b/i;->a:Le/m/b/x/d/u;

    invoke-interface {v0, v13, v11}, Le/m/b/x/b/h;->a(Le/m/b/x/d/u;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    move-object v0, v10

    .line 81
    iget-wide v10, v11, Le/m/b/x/d/c;->a:J

    goto :goto_a

    :catchall_0
    move-exception v0

    .line 82
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    .line 83
    throw v0

    :cond_12
    move-object v0, v10

    const-wide/16 v10, -0x1

    :goto_a
    if-eqz v14, :cond_16

    const-string v13, " -H \'"

    if-eqz v9, :cond_13

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v2

    const-string v2, "Content-Type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 85
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_14

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_13
    move/from16 v17, v2

    :cond_14
    :goto_b
    if-eqz v12, :cond_15

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Encoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_15

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_15
    const-wide/16 v1, 0x0

    cmp-long v1, v10, v1

    if-ltz v1, :cond_17

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Le/m/b/x/d/v;->a:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_c

    :cond_16
    move/from16 v17, v2

    :cond_17
    :goto_c
    if-eqz v4, :cond_18

    const-string v1, " -d \'@-\'"

    .line 92
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    :cond_18
    iput-object v9, v6, Le/m/b/x/b/w;->c:Ljava/lang/String;

    .line 94
    iput-object v12, v6, Le/m/b/x/b/w;->b:Ljava/lang/String;

    .line 95
    iput-wide v10, v6, Le/m/b/x/b/w;->a:J

    .line 96
    iput-object v0, v6, Le/m/b/x/b/w;->d:Le/m/b/x/d/u;

    goto :goto_d

    :cond_19
    move/from16 v17, v2

    :goto_d
    if-eqz v14, :cond_1b

    .line 97
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    if-eqz v4, :cond_1b

    const-string v1, " -- \'"

    .line 98
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'\"\'\"\'"

    .line 99
    invoke-virtual {v5, v8, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1a

    const-string v0, " << $$$"

    .line 101
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    :cond_1a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->config(Ljava/lang/String;)V

    :cond_1b
    if-eqz v3, :cond_1c

    if-lez v17, :cond_1c

    const/4 v0, 0x1

    goto :goto_e

    :cond_1c
    const/4 v0, 0x0

    :goto_e
    move-object/from16 v2, p0

    move v1, v0

    .line 103
    iget v0, v2, Le/m/b/x/b/n;->l:I

    iget v3, v2, Le/m/b/x/b/n;->m:I

    invoke-virtual {v6, v0, v3}, Le/m/b/x/b/w;->c(II)V

    const/4 v0, 0x0

    .line 104
    invoke-virtual {v6, v0}, Le/m/b/x/b/w;->d(I)V

    .line 105
    iget-object v3, v2, Le/m/b/x/b/n;->v:Lp3/b/c/v;

    .line 106
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "span"

    move-object/from16 v4, v16

    .line 107
    invoke-static {v4, v3}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v3, Lp3/b/c/k;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v0, v5}, Lp3/b/c/k;-><init>(Lp3/b/c/o;ZLp3/b/c/j;)V

    .line 109
    iget-wide v8, v6, Le/m/b/x/b/w;->a:J

    .line 110
    sget-object v0, Lp3/b/c/m$b;->a:Lp3/b/c/m$b;

    invoke-static {v4, v8, v9, v0}, Le/m/b/x/b/y;->a(Lp3/b/c/o;JLp3/b/c/m$b;)V

    .line 111
    :try_start_1
    invoke-virtual {v6}, Le/m/b/x/b/w;->b()Le/m/b/x/b/x;

    move-result-object v5

    if-eqz v5, :cond_1e

    .line 112
    move-object v0, v5

    check-cast v0, Le/m/b/x/b/c0/d;

    .line 113
    iget-object v0, v0, Le/m/b/x/b/c0/d;->a:Ljava/net/HttpURLConnection;

    const-string v6, "Content-Length"

    invoke-virtual {v0, v6}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1d

    const-wide/16 v8, -0x1

    goto :goto_f

    .line 114
    :cond_1d
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 115
    :goto_f
    sget-object v0, Lp3/b/c/m$b;->b:Lp3/b/c/m$b;

    invoke-static {v4, v8, v9, v0}, Le/m/b/x/b/y;->a(Lp3/b/c/o;JLp3/b/c/m$b;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 116
    :cond_1e
    :try_start_2
    new-instance v0, Le/m/b/x/b/q;

    invoke-direct {v0, v2, v5}, Le/m/b/x/b/q;-><init>(Le/m/b/x/b/n;Le/m/b/x/b/x;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    invoke-virtual {v3}, Lp3/b/c/k;->close()V

    const/4 v3, 0x0

    move-object v5, v0

    goto :goto_10

    :catchall_1
    move-exception v0

    .line 118
    :try_start_3
    invoke-virtual {v5}, Le/m/b/x/b/x;->a()Ljava/io/InputStream;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 119
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 120
    :cond_1f
    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception v0

    goto/16 :goto_19

    :catch_0
    move-exception v0

    .line 121
    :try_start_4
    iget-object v5, v2, Le/m/b/x/b/n;->o:Le/m/b/x/b/l;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v5, :cond_37

    .line 122
    check-cast v5, Le/m/b/x/a/d/b;

    :try_start_5
    invoke-virtual {v5, v2, v1}, Le/m/b/x/a/d/b;->b(Le/m/b/x/b/n;Z)Z

    move-result v5

    if-eqz v5, :cond_37

    if-eqz v14, :cond_20

    .line 123
    sget-object v5, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v6, "exception thrown while executing request"

    invoke-virtual {v7, v5, v6, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 124
    :cond_20
    invoke-virtual {v3}, Lp3/b/c/k;->close()V

    const/4 v3, 0x0

    move-object v5, v3

    move-object v3, v0

    :goto_10
    if-eqz v5, :cond_23

    .line 125
    :try_start_6
    invoke-virtual {v5}, Le/m/b/x/b/q;->e()Z

    move-result v0

    if-nez v0, :cond_23

    .line 126
    iget-object v0, v2, Le/m/b/x/b/n;->n:Le/m/b/x/b/u;

    if-eqz v0, :cond_21

    .line 127
    invoke-interface {v0, v2, v5, v1}, Le/m/b/x/b/u;->a(Le/m/b/x/b/n;Le/m/b/x/b/q;Z)Z

    move-result v0

    goto :goto_11

    :cond_21
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_22

    .line 128
    iget v6, v5, Le/m/b/x/b/q;->f:I

    .line 129
    iget-object v7, v5, Le/m/b/x/b/q;->h:Le/m/b/x/b/n;

    .line 130
    iget-object v7, v7, Le/m/b/x/b/n;->c:Le/m/b/x/b/k;

    .line 131
    invoke-virtual {v2, v6, v7}, Le/m/b/x/b/n;->c(ILe/m/b/x/b/k;)Z

    move-result v6

    if-eqz v6, :cond_22

    const/4 v0, 0x1

    :cond_22
    and-int/2addr v0, v1

    if-eqz v0, :cond_25

    .line 132
    invoke-virtual {v5}, Le/m/b/x/b/q;->d()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_13

    :catchall_3
    move-exception v0

    .line 133
    invoke-virtual {v5}, Le/m/b/x/b/q;->a()V

    .line 134
    throw v0

    :cond_23
    if-nez v5, :cond_24

    const/4 v0, 0x1

    goto :goto_12

    :cond_24
    const/4 v0, 0x0

    :goto_12
    and-int/2addr v0, v1

    :cond_25
    :goto_13
    add-int/lit8 v1, v17, -0x1

    if-nez v0, :cond_36

    if-nez v5, :cond_26

    const/4 v0, 0x0

    goto :goto_14

    .line 135
    :cond_26
    iget v0, v5, Le/m/b/x/b/q;->f:I

    .line 136
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 137
    :goto_14
    sget-object v1, Lp3/b/c/l;->a:Lp3/b/c/l;

    .line 138
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    if-nez v0, :cond_27

    .line 139
    sget-object v0, Lp3/b/c/r;->e:Lp3/b/c/r;

    goto :goto_16

    .line 140
    :cond_27
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v6, 0xc8

    if-lt v4, v6, :cond_28

    const/16 v6, 0x12c

    if-ge v4, v6, :cond_28

    const/4 v4, 0x1

    goto :goto_15

    :cond_28
    const/4 v4, 0x0

    :goto_15
    if-nez v4, :cond_2f

    .line 141
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v4, 0x190

    if-eq v0, v4, :cond_2e

    const/16 v4, 0x191

    if-eq v0, v4, :cond_2d

    const/16 v4, 0x193

    if-eq v0, v4, :cond_2c

    const/16 v4, 0x194

    if-eq v0, v4, :cond_2b

    const/16 v4, 0x19c

    if-eq v0, v4, :cond_2a

    const/16 v4, 0x1f4

    if-eq v0, v4, :cond_29

    .line 142
    sget-object v0, Lp3/b/c/r;->e:Lp3/b/c/r;

    goto :goto_16

    .line 143
    :cond_29
    sget-object v0, Lp3/b/c/r;->k:Lp3/b/c/r;

    goto :goto_16

    .line 144
    :cond_2a
    sget-object v0, Lp3/b/c/r;->j:Lp3/b/c/r;

    goto :goto_16

    .line 145
    :cond_2b
    sget-object v0, Lp3/b/c/r;->g:Lp3/b/c/r;

    goto :goto_16

    .line 146
    :cond_2c
    sget-object v0, Lp3/b/c/r;->h:Lp3/b/c/r;

    goto :goto_16

    .line 147
    :cond_2d
    sget-object v0, Lp3/b/c/r;->i:Lp3/b/c/r;

    goto :goto_16

    .line 148
    :cond_2e
    sget-object v0, Lp3/b/c/r;->f:Lp3/b/c/r;

    goto :goto_16

    .line 149
    :cond_2f
    sget-object v0, Lp3/b/c/r;->d:Lp3/b/c/r;

    :goto_16
    if-nez v1, :cond_30

    const-string v1, " sampleToLocalSpanStore"

    goto :goto_17

    :cond_30
    const-string v1, ""

    .line 150
    :goto_17
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_35

    .line 151
    new-instance v1, Lp3/b/c/c;

    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 152
    invoke-direct {v1, v4, v0, v6}, Lp3/b/c/c;-><init>(ZLp3/b/c/r;Lp3/b/c/c$a;)V

    const-string v0, "options"

    .line 153
    invoke-static {v1, v0}, Le/q/f/a/d/a;->w(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_34

    .line 154
    iget-object v0, v2, Le/m/b/x/b/n;->p:Le/m/b/x/b/s;

    if-eqz v0, :cond_31

    .line 155
    check-cast v0, Le/m/b/x/a/e/b;

    invoke-virtual {v0, v5}, Le/m/b/x/a/e/b;->a(Le/m/b/x/b/q;)V

    .line 156
    :cond_31
    iget-boolean v0, v2, Le/m/b/x/b/n;->t:Z

    if-eqz v0, :cond_33

    invoke-virtual {v5}, Le/m/b/x/b/q;->e()Z

    move-result v0

    if-eqz v0, :cond_32

    goto :goto_18

    .line 157
    :cond_32
    :try_start_7
    new-instance v0, Le/m/b/x/b/r;

    invoke-direct {v0, v5}, Le/m/b/x/b/r;-><init>(Le/m/b/x/b/q;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :catchall_4
    move-exception v0

    .line 158
    invoke-virtual {v5}, Le/m/b/x/b/q;->a()V

    .line 159
    throw v0

    :cond_33
    :goto_18
    return-object v5

    .line 160
    :cond_34
    throw v3

    .line 161
    :cond_35
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Missing required properties:"

    invoke-static {v3, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v0, 0x1

    const/4 v3, 0x0

    move-object/from16 v18, v2

    move v2, v1

    move-object/from16 v1, v18

    goto/16 :goto_2

    .line 162
    :cond_37
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 163
    :goto_19
    invoke-virtual {v3}, Lp3/b/c/k;->close()V

    .line 164
    throw v0
.end method

.method public c(ILe/m/b/x/b/k;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Le/m/b/x/b/k;->m()Ljava/lang/String;

    move-result-object p2

    .line 2
    iget-boolean v0, p0, Le/m/b/x/b/n;->s:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x133

    const/4 v2, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :cond_0
    :pswitch_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    .line 3
    new-instance v0, Le/m/b/x/b/f;

    iget-object v1, p0, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :try_start_0
    invoke-virtual {v1}, Le/m/b/x/b/f;->l()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    :try_start_1
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 7
    :try_start_2
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v3, p2}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 8
    invoke-direct {v0, v1}, Le/m/b/x/b/f;-><init>(Ljava/net/URL;)V

    .line 9
    iput-object v0, p0, Le/m/b/x/b/n;->k:Le/m/b/x/b/f;

    const/16 p2, 0x12f

    const/4 v0, 0x0

    if-ne p1, p2, :cond_1

    const-string p1, "GET"

    .line 10
    invoke-virtual {p0, p1}, Le/m/b/x/b/n;->d(Ljava/lang/String;)Le/m/b/x/b/n;

    .line 11
    iput-object v0, p0, Le/m/b/x/b/n;->h:Le/m/b/x/b/g;

    .line 12
    :cond_1
    iget-object p1, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->t(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 13
    iget-object p1, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->v(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 14
    iget-object p1, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->x(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 15
    iget-object p1, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->w(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 16
    iget-object p1, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->z(Ljava/lang/String;)Le/m/b/x/b/k;

    .line 17
    iget-object p1, p0, Le/m/b/x/b/n;->b:Le/m/b/x/b/k;

    invoke-virtual {p1, v0}, Le/m/b/x/b/k;->y(Ljava/lang/String;)Le/m/b/x/b/k;

    return v2

    :catch_0
    move-exception p1

    .line 18
    :try_start_3
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    return v1

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public d(Ljava/lang/String;)Le/m/b/x/b/n;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    sget-object v0, Le/m/b/x/b/m;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    invoke-static {v0}, Ln3/g0/y;->checkArgument2(Z)V

    .line 3
    iput-object p1, p0, Le/m/b/x/b/n;->j:Ljava/lang/String;

    return-object p0
.end method
