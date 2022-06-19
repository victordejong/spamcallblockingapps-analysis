.class public final Lx3/y;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/y$a;
    }
.end annotation


# static fields
.field public static final l:[C

.field public static final m:Ljava/util/regex/Pattern;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lu3/a0;

.field public c:Ljava/lang/String;

.field public d:Lu3/a0$a;

.field public final e:Lu3/g0$a;

.field public final f:Lu3/z$a;

.field public g:Lu3/c0;

.field public final h:Z

.field public i:Lu3/d0$a;

.field public j:Lu3/v$a;

.field public k:Lu3/j0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lx3/y;->l:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lx3/y;->m:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lu3/a0;Ljava/lang/String;Lu3/z;Lu3/c0;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/y;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lx3/y;->b:Lu3/a0;

    .line 4
    iput-object p3, p0, Lx3/y;->c:Ljava/lang/String;

    .line 5
    new-instance p1, Lu3/g0$a;

    invoke-direct {p1}, Lu3/g0$a;-><init>()V

    iput-object p1, p0, Lx3/y;->e:Lu3/g0$a;

    .line 6
    iput-object p5, p0, Lx3/y;->g:Lu3/c0;

    .line 7
    iput-boolean p6, p0, Lx3/y;->h:Z

    if-eqz p4, :cond_0

    .line 8
    invoke-virtual {p4}, Lu3/z;->c()Lu3/z$a;

    move-result-object p1

    iput-object p1, p0, Lx3/y;->f:Lu3/z$a;

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lu3/z$a;

    invoke-direct {p1}, Lu3/z$a;-><init>()V

    iput-object p1, p0, Lx3/y;->f:Lu3/z$a;

    :goto_0
    if-eqz p7, :cond_1

    .line 10
    new-instance p1, Lu3/v$a;

    invoke-direct {p1}, Lu3/v$a;-><init>()V

    iput-object p1, p0, Lx3/y;->j:Lu3/v$a;

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_2

    .line 11
    new-instance p1, Lu3/d0$a;

    const/4 p2, 0x0

    const/4 p3, 0x1

    .line 12
    invoke-direct {p1, p2, p3}, Lu3/d0$a;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p1, p0, Lx3/y;->i:Lu3/d0$a;

    .line 14
    sget-object p2, Lu3/d0;->h:Lu3/c0;

    invoke-virtual {p1, p2}, Lu3/d0$a;->e(Lu3/c0;)Lu3/d0$a;

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    .line 1
    sget-object v13, Lu3/a0;->l:Lu3/a0$b;

    const-string v1, "value"

    const-string v3, "name"

    if-eqz p3, :cond_0

    .line 2
    iget-object v14, v0, Lx3/y;->j:Lu3/v$a;

    .line 3
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v15, v14, Lu3/v$a;->a:Ljava/util/List;

    .line 5
    iget-object v10, v14, Lu3/v$a;->c:Ljava/nio/charset/Charset;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x53

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x53

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v13

    move-object/from16 v2, p1

    .line 6
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v15, v14, Lu3/v$a;->b:Ljava/util/List;

    .line 8
    iget-object v10, v14, Lu3/v$a;->c:Ljava/nio/charset/Charset;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v11, v22

    .line 9
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v14, v0, Lx3/y;->j:Lu3/v$a;

    .line 11
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v2, v3}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v12, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v15, v14, Lu3/v$a;->a:Ljava/util/List;

    .line 13
    iget-object v10, v14, Lu3/v$a;->c:Ljava/nio/charset/Charset;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x5b

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v11, 0x5b

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v13

    move-object/from16 v2, p1

    .line 14
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v15, v14, Lu3/v$a;->b:Ljava/util/List;

    .line 16
    iget-object v10, v14, Lu3/v$a;->c:Ljava/nio/charset/Charset;

    const-string v5, " \"\':;<=>@[]^`{}|/\\?#&!$(),~"

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v6, v18

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v11, v22

    .line 17
    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "Content-Type"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    sget-object p1, Lu3/c0;->f:Lu3/c0$a;

    invoke-static {p2}, Lu3/c0$a;->a(Ljava/lang/String;)Lu3/c0;

    move-result-object p1

    .line 3
    iput-object p1, p0, Lx3/y;->g:Lu3/c0;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Malformed content type: "

    invoke-static {v1, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_0
    iget-object v0, p0, Lx3/y;->f:Lu3/z$a;

    invoke-virtual {v0, p1, p2}, Lu3/z$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/z$a;

    :goto_0
    return-void
.end method

.method public c(Lu3/z;Lu3/j0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lx3/y;->i:Lu3/d0$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "body"

    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "Content-Type"

    .line 4
    invoke-virtual {p1, v2}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    if-eqz v2, :cond_5

    if-eqz p1, :cond_2

    const-string v2, "Content-Length"

    .line 5
    invoke-virtual {p1, v2}, Lu3/z;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    :goto_3
    if-eqz v3, :cond_4

    .line 6
    new-instance v2, Lu3/d0$c;

    invoke-direct {v2, p1, p2, v1}, Lu3/d0$c;-><init>(Lu3/z;Lu3/j0;Ls1/z/c/f;)V

    .line 7
    invoke-virtual {v0, v2}, Lu3/d0$a;->c(Lu3/d0$c;)Lu3/d0$a;

    return-void

    .line 8
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Length"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Unexpected header: Content-Type"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v12, p2

    .line 1
    iget-object v1, v0, Lx3/y;->c:Ljava/lang/String;

    const/4 v13, 0x0

    if-eqz v1, :cond_1

    .line 2
    iget-object v3, v0, Lx3/y;->b:Lu3/a0;

    invoke-virtual {v3, v1}, Lu3/a0;->g(Ljava/lang/String;)Lu3/a0$a;

    move-result-object v1

    iput-object v1, v0, Lx3/y;->d:Lu3/a0$a;

    if-eqz v1, :cond_0

    .line 3
    iput-object v13, v0, Lx3/y;->c:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Malformed URL. Base: "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lx3/y;->b:Lu3/a0;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", Relative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lx3/y;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    if-eqz p3, :cond_6

    .line 5
    iget-object v14, v0, Lx3/y;->d:Lu3/a0$a;

    .line 6
    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "encodedName"

    invoke-static {v2, v1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, v14, Lu3/a0$a;->g:Ljava/util/List;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v14, Lu3/a0$a;->g:Ljava/util/List;

    .line 8
    :cond_2
    iget-object v15, v14, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v15, :cond_5

    sget-object v16, Lu3/a0;->l:Lu3/a0$b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#&="

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v14, v14, Lu3/a0$a;->g:Ljava/util/List;

    if-eqz v14, :cond_4

    if-eqz v12, :cond_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xd3

    const-string v5, " \"\'<>#&="

    move-object/from16 v1, v16

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v11}, Lu3/a0$b;->a(Lu3/a0$b;Ljava/lang/String;IILjava/lang/String;ZZZZLjava/nio/charset/Charset;I)Ljava/lang/String;

    move-result-object v13

    :cond_3
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v13

    .line 10
    :cond_5
    invoke-static {}, Ls1/z/c/l;->k()V

    throw v13

    .line 11
    :cond_6
    iget-object v1, v0, Lx3/y;->d:Lu3/a0$a;

    invoke-virtual {v1, v2, v12}, Lu3/a0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lu3/a0$a;

    :goto_1
    return-void
.end method
