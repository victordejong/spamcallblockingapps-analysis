.class public final Le/a/a/k/a/a/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/k/a/a/w;


# instance fields
.field public final a:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;"
        }
    .end annotation
.end field

.field public final b:Le/a/f4/g/r;

.field public final c:Landroid/content/ContentResolver;

.field public final d:Le/a/u3/g;

.field public final e:Le/a/p5/c0;

.field public final f:Le/a/a/k/a/a/q;

.field public final g:Le/a/a/i0;


# direct methods
.method public constructor <init>(Lo3/a;Le/a/f4/g/r;Landroid/content/ContentResolver;Le/a/u3/g;Le/a/p5/c0;Le/a/a/k/a/a/q;Le/a/a/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;>;",
            "Le/a/f4/g/r;",
            "Landroid/content/ContentResolver;",
            "Le/a/u3/g;",
            "Le/a/p5/c0;",
            "Le/a/a/k/a/a/q;",
            "Le/a/a/i0;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "messagesStorage"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contentResolver"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imGroupUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/k/a/a/x;->a:Lo3/a;

    iput-object p2, p0, Le/a/a/k/a/a/x;->b:Le/a/f4/g/r;

    iput-object p3, p0, Le/a/a/k/a/a/x;->c:Landroid/content/ContentResolver;

    iput-object p4, p0, Le/a/a/k/a/a/x;->d:Le/a/u3/g;

    iput-object p5, p0, Le/a/a/k/a/a/x;->e:Le/a/p5/c0;

    iput-object p6, p0, Le/a/a/k/a/a/x;->f:Le/a/a/k/a/a/q;

    iput-object p7, p0, Le/a/a/k/a/a/x;->g:Le/a/a/i0;

    return-void
.end method

.method public static synthetic u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x4

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p3, v1

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    move p4, v1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Le/a/a/k/a/a/x;->t(Le/a/a/k/a/a/b0;Ljava/lang/String;ZZ)V

    return-void
.end method


# virtual methods
.method public a(Le/a/a/k/a/a/b0;Ljava/lang/String;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f1206e0

    .line 1
    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public b(Le/a/a/k/a/a/b0;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inviterPeerId"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/x;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const p3, 0x7f1206dc

    new-array p4, v1, [Ljava/lang/Object;

    aput-object p2, p4, v2

    invoke-virtual {p0, p3, p4}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_1

    const p2, 0x7f1206e6

    new-array p3, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p4}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p0, p2, p3}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const p2, 0x7f1206ef

    new-array p3, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {p0, p2, p3}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    move-object v0, p0

    move-object v1, p1

    .line 4
    invoke-static/range {v0 .. v5}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public c(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const p2, 0x7f1206df

    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public d(Le/a/a/k/a/a/b0;Ljava/lang/String;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f1206eb

    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v6}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public e(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/util/List;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/a/b0;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    const-string v0, "info"

    invoke-static {v7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerIds"

    move-object/from16 v1, p3

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p3 .. p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    iget-object v2, v7, Le/a/a/k/a/a/b0;->d:Ljava/lang/String;

    const/16 v3, 0x2d

    .line 4
    invoke-static {v1, v2, v3, v0}, Le/d/c/a/a;->g(Ljava/lang/StringBuilder;Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    iget-object v11, v7, Le/a/a/k/a/a/b0;->a:Ljava/lang/String;

    iget-wide v12, v7, Le/a/a/k/a/a/b0;->b:J

    iget-wide v14, v7, Le/a/a/k/a/a/b0;->c:J

    iget-boolean v2, v7, Le/a/a/k/a/a/b0;->e:Z

    const-string v3, "groupId"

    .line 6
    invoke-static {v11, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "rawId"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Le/a/a/k/a/a/b0;

    move-object v10, v3

    move-object/from16 v16, v1

    move/from16 v17, v2

    invoke-direct/range {v10 .. v17}, Le/a/a/k/a/a/b0;-><init>(Ljava/lang/String;JJLjava/lang/String;Z)V

    .line 7
    iget-object v1, v6, Le/a/a/k/a/a/x;->g:Le/a/a/i0;

    invoke-interface {v1}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    if-eqz v8, :cond_0

    const v0, 0x7f1206f1

    new-array v1, v4, [Ljava/lang/Object;

    .line 8
    invoke-virtual {v6, v8}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-virtual {v6, v0, v1}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v10, 0x4

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v10

    .line 9
    invoke-static/range {v0 .. v5}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    goto :goto_0

    :cond_1
    if-eqz v8, :cond_3

    .line 10
    invoke-static {v8, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const v1, 0x7f1206ea

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 11
    invoke-virtual {v6, v0}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-virtual {v6, v8}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v4

    invoke-virtual {v6, v1, v5}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v10, 0xc

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v10

    .line 12
    invoke-static/range {v0 .. v5}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    :cond_3
    :goto_1
    const v1, 0x7f1206e9

    new-array v4, v4, [Ljava/lang/Object;

    .line 13
    invoke-virtual {v6, v0}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-virtual {v6, v1, v4}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v10, 0xc

    move-object/from16 v0, p0

    move-object v1, v3

    move v3, v4

    move v4, v5

    move v5, v10

    .line 14
    invoke-static/range {v0 .. v5}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method public f(Le/a/a/k/a/a/b0;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerId"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/x;->f:Le/a/a/k/a/a/q;

    invoke-interface {v0, p2}, Le/a/a/k/a/a/q;->c(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p3, :cond_0

    const p2, 0x7f1206ec

    new-array p3, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p4}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    aput-object v0, p3, v2

    invoke-virtual {p0, p2, p3}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    move-object v2, p2

    goto :goto_1

    :cond_0
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_1

    .line 3
    invoke-static {p3, p4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const p2, 0x7f1206e8

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p4}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v3

    invoke-virtual {p0, p2, p3}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const p2, 0x7f1206ed

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 4
    invoke-virtual {p0, p3}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v3

    invoke-virtual {p0, p4}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v4, v2

    aput-object v0, v4, v1

    invoke-virtual {p0, p2, v4}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p0

    move-object v1, p1

    .line 5
    invoke-static/range {v0 .. v5}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    :cond_2
    return-void
.end method

.method public g(Le/a/a/k/a/a/b0;Ljava/lang/String;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f1206d9

    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public h(Le/a/a/k/a/a/b0;Ljava/lang/String;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f1206dd

    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v6}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public i(Le/a/a/k/a/a/b0;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1206e2

    .line 1
    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public j(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 1
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const p2, 0x7f1206db

    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 2
    invoke-virtual {p0, p1, p2, v1, v1}, Le/a/a/k/a/a/x;->t(Le/a/a/k/a/a/b0;Ljava/lang/String;ZZ)V

    return-void
.end method

.method public k(Le/a/a/k/a/a/b0;ILjava/lang/String;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerId"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/x;->f:Le/a/a/k/a/a/q;

    invoke-interface {v0, p2}, Le/a/a/k/a/a/q;->c(I)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const v0, 0x7f1206ee

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, p3}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v1, v2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-virtual {p0, v0, v1}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    .line 3
    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    :cond_0
    return-void
.end method

.method public l(Le/a/a/k/a/a/b0;Ljava/lang/String;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/a/b0;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "senderPeerId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerIds"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/x;->d:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->L()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/k/a/a/x;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/a/k/a/a/x;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const p2, 0x7f1206e7

    new-array p3, v1, [Ljava/lang/Object;

    .line 2
    invoke-virtual {p0, p2, p3}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1, p2, v2, v1}, Le/a/a/k/a/a/x;->t(Le/a/a/k/a/a/b0;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/a/k/a/a/x;->g:Le/a/a/i0;

    invoke-interface {v0}, Le/a/a/i0;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p3, 0x7f1206e6

    new-array v0, v2, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0, p3, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2, v1, v1}, Le/a/a/k/a/a/x;->t(Le/a/a/k/a/a/b0;Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/a/k/a/a/x;->d:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->L()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-static {p3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const p3, 0x7f1206e4

    new-array v0, v2, [Ljava/lang/Object;

    .line 8
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, v1

    invoke-virtual {p0, p3, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    .line 9
    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v2, :cond_3

    const v0, 0x7f1206e3

    new-array v3, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {p3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v3, v1

    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v3, v2

    invoke-virtual {p0, v0, v3}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move-object v4, p0

    move-object v5, p1

    .line 12
    invoke-static/range {v4 .. v9}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 14
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const v4, 0x7f100028

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    .line 15
    invoke-static {p3}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p0, p3}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    aput-object p3, v6, v1

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v6, v2

    .line 17
    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v6, v3

    .line 18
    iget-object p2, p0, Le/a/a/k/a/a/x;->e:Le/a/p5/c0;

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p2, v4, v0, p3}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    const-string p2, "resourceProvider.getQuan\u2026s, quantity, *formatArgs)"

    invoke-static {v7, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    move-object v5, p0

    move-object v6, p1

    .line 19
    invoke-static/range {v5 .. v10}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    :cond_4
    :goto_0
    return-void
.end method

.method public m(Le/a/a/k/a/a/b0;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1206e1

    .line 1
    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object v2, p0

    move-object v3, p1

    .line 2
    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public n(Le/a/a/k/a/a/b0;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1206de

    .line 1
    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public o(Le/a/a/k/a/a/b0;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/a/k/a/a/b0;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imPeerIds"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const v0, 0x7f1206e5

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v1

    invoke-virtual {p0, v0, v2}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xc

    move-object v3, p0

    move-object v4, p1

    .line 3
    invoke-static/range {v3 .. v8}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_1

    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    const v3, 0x7f100029

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 6
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Le/a/a/k/a/a/x;->v(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v5, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v5, v2

    .line 7
    iget-object p2, p0, Le/a/a/k/a/a/x;->e:Le/a/p5/c0;

    invoke-static {v5, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, v3, v0, v1}, Le/a/p5/c0;->k(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string p2, "resourceProvider.getQuan\u2026s, quantity, *formatArgs)"

    invoke-static {v6, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0xc

    move-object v4, p0

    move-object v5, p1

    .line 8
    invoke-static/range {v4 .. v9}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public p(Le/a/a/k/a/a/b0;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1206f0

    .line 1
    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public q(Le/a/a/k/a/a/b0;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1206ef

    .line 1
    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public r(Le/a/a/k/a/a/b0;Ljava/lang/String;)V
    .locals 7

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const p2, 0x7f1206dc

    .line 1
    invoke-virtual {p0, p2, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    .line 2
    invoke-static/range {v1 .. v6}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public s(Le/a/a/k/a/a/b0;)V
    .locals 8

    const-string v0, "info"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f1206da

    .line 1
    invoke-virtual {p0, v1, v0}, Le/a/a/k/a/a/x;->w(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Le/a/a/k/a/a/x;->u(Le/a/a/k/a/a/x;Le/a/a/k/a/a/b0;Ljava/lang/String;ZZI)V

    return-void
.end method

.method public final t(Le/a/a/k/a/a/b0;Ljava/lang/String;ZZ)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    if-eqz p4, :cond_2

    .line 1
    iget-object v3, v0, Le/a/a/k/a/a/b0;->a:Ljava/lang/String;

    .line 2
    iget-object v4, v1, Le/a/a/k/a/a/x;->c:Landroid/content/ContentResolver;

    .line 3
    invoke-static {}, Le/a/b0/q/g0;->C()Landroid/net/Uri;

    move-result-object v5

    const-string v6, "roles"

    .line 4
    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/String;

    aput-object v3, v8, v2

    const/4 v9, 0x0

    const-string v7, "im_group_id = ?"

    .line 5
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v4, v5

    .line 7
    :goto_0
    invoke-static {v3, v5}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v2, v0

    :try_start_1
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    move-object v4, v0

    invoke-static {v3, v2}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    move v3, v2

    :goto_1
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    return-void

    .line 8
    :cond_2
    new-instance v3, Lcom/truecaller/data/entity/messaging/Participant$b;

    const/4 v4, 0x4

    invoke-direct {v3, v4}, Lcom/truecaller/data/entity/messaging/Participant$b;-><init>(I)V

    .line 9
    iget-object v4, v0, Le/a/a/k/a/a/b0;->a:Ljava/lang/String;

    .line 10
    iput-object v4, v3, Lcom/truecaller/data/entity/messaging/Participant$b;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {v3}, Lcom/truecaller/data/entity/messaging/Participant$b;->a()Lcom/truecaller/data/entity/messaging/Participant;

    move-result-object v3

    const-string v4, "Participant.Builder(Part\u2026pId)\n            .build()"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v4, Lcom/truecaller/messaging/data/types/Message$b;

    invoke-direct {v4}, Lcom/truecaller/messaging/data/types/Message$b;-><init>()V

    .line 13
    iput-object v3, v4, Lcom/truecaller/messaging/data/types/Message$b;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 14
    iget-boolean v3, v0, Le/a/a/k/a/a/b0;->e:Z

    if-eqz v3, :cond_3

    .line 15
    iget-wide v5, v0, Le/a/a/k/a/a/b0;->b:J

    goto :goto_2

    .line 16
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    :goto_2
    invoke-virtual {v4, v5, v6}, Lcom/truecaller/messaging/data/types/Message$b;->c(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 17
    iget-wide v5, v0, Le/a/a/k/a/a/b0;->b:J

    .line 18
    invoke-virtual {v4, v5, v6}, Lcom/truecaller/messaging/data/types/Message$b;->d(J)Lcom/truecaller/messaging/data/types/Message$b;

    .line 19
    iget-wide v5, v0, Le/a/a/k/a/a/b0;->c:J

    .line 20
    iput-wide v5, v4, Lcom/truecaller/messaging/data/types/Message$b;->C:J

    const/4 v3, 0x6

    .line 21
    new-instance v5, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;

    const-wide/16 v6, -0x1

    .line 22
    iget-object v0, v0, Le/a/a/k/a/a/b0;->d:Ljava/lang/String;

    .line 23
    invoke-direct {v5, v6, v7, v0}, Lcom/truecaller/messaging/transport/status/StatusTransportInfo;-><init>(JLjava/lang/String;)V

    .line 24
    iput v3, v4, Lcom/truecaller/messaging/data/types/Message$b;->k:I

    .line 25
    iput-object v5, v4, Lcom/truecaller/messaging/data/types/Message$b;->n:Lcom/truecaller/messaging/data/types/TransportInfo;

    .line 26
    sget-object v8, Lcom/truecaller/messaging/data/types/Entity;->h:Lcom/truecaller/messaging/data/types/Entity$a;

    const-wide/16 v9, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const v31, 0x3fff5

    const-string v11, "text/plain"

    move-object/from16 v13, p2

    invoke-static/range {v8 .. v31}, Lcom/truecaller/messaging/data/types/Entity$a;->a(Lcom/truecaller/messaging/data/types/Entity$a;JLjava/lang/String;ILjava/lang/String;ZIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;DDI)Lcom/truecaller/messaging/data/types/Entity;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/truecaller/messaging/data/types/Message$b;->g(Lcom/truecaller/messaging/data/types/Entity;)Lcom/truecaller/messaging/data/types/Message$b;

    move/from16 v0, p3

    .line 27
    iput-boolean v0, v4, Lcom/truecaller/messaging/data/types/Message$b;->i:Z

    .line 28
    invoke-virtual {v4}, Lcom/truecaller/messaging/data/types/Message$b;->a()Lcom/truecaller/messaging/data/types/Message;

    move-result-object v0

    const-string v3, "Message.Builder()\n      \u2026ead)\n            .build()"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v3, v1, Le/a/a/k/a/a/x;->a:Lo3/a;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/r2/f;

    invoke-interface {v3}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/a/g/m;

    invoke-interface {v3, v0, v2}, Le/a/a/g/m;->d0(Lcom/truecaller/messaging/data/types/Message;Z)V

    return-void
.end method

.method public final v(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/x;->c:Landroid/content/ContentResolver;

    .line 2
    invoke-static {p1}, Le/a/b0/q/g0;->G(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "name"

    .line 3
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 6
    :goto_0
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v1

    invoke-static {v0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :cond_1
    move-object v2, v1

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    :try_start_2
    iget-object v0, p0, Le/a/a/k/a/a/x;->b:Le/a/f4/g/r;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    const-string v3, "UUID.randomUUID()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "imConversation"

    invoke-interface {v0, v2, v3}, Le/a/f4/g/r;->a(Ljava/util/UUID;Ljava/lang/String;)Le/a/f4/g/n;

    move-result-object v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2a

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v3, "query"

    invoke-static {v2, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object v2, v0, Le/a/f4/g/n;->a:Ljava/lang/String;

    const/16 v2, 0x17

    .line 11
    iput v2, v0, Le/a/f4/g/n;->b:I

    .line 12
    invoke-virtual {v0}, Le/a/f4/g/n;->a()Le/a/f4/g/t;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_3
    move-object v2, v1

    :goto_2
    if-eqz v2, :cond_4

    goto :goto_3

    .line 13
    :cond_4
    iget-object v0, p0, Le/a/a/k/a/a/x;->f:Le/a/a/k/a/a/q;

    invoke-interface {v0, p1}, Le/a/a/k/a/a/q;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_3
    return-object v2
.end method

.method public final varargs w(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/k/a/a/x;->e:Le/a/p5/c0;

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "resourceProvider.getString(res, *formatArgs)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
