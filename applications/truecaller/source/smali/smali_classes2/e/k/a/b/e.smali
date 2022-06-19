.class public Le/k/a/b/e;
.super Le/k/a/b/s;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/b/e$a;
    }
.end annotation


# static fields
.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:Le/k/a/b/p;


# instance fields
.field public final transient a:Le/k/a/b/y/b;

.field public final transient b:Le/k/a/b/y/a;

.field public c:I

.field public d:I

.field public e:I

.field public f:Le/k/a/b/n;

.field public g:Le/k/a/b/p;

.field public h:I

.field public final i:C


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    .line 1
    invoke-static {}, Le/k/a/b/e$a;->values()[Le/k/a/b/e$a;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v2, v4, :cond_1

    aget-object v4, v0, v2

    .line 2
    iget-boolean v5, v4, Le/k/a/b/e$a;->a:Z

    if-eqz v5, :cond_0

    .line 3
    invoke-virtual {v4}, Le/k/a/b/e$a;->a()I

    move-result v4

    or-int/2addr v3, v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_1
    sput v3, Le/k/a/b/e;->j:I

    .line 5
    invoke-static {}, Le/k/a/b/j$a;->values()[Le/k/a/b/j$a;

    move-result-object v0

    move v2, v1

    :goto_1
    const/16 v3, 0xf

    if-ge v1, v3, :cond_3

    aget-object v3, v0, v1

    .line 6
    iget-boolean v4, v3, Le/k/a/b/j$a;->a:Z

    if-eqz v4, :cond_2

    .line 7
    iget v3, v3, Le/k/a/b/j$a;->b:I

    or-int/2addr v2, v3

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 8
    :cond_3
    sput v2, Le/k/a/b/e;->k:I

    .line 9
    invoke-static {}, Le/k/a/b/g$a;->a()I

    move-result v0

    sput v0, Le/k/a/b/e;->l:I

    .line 10
    sget-object v0, Le/k/a/b/a0/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Le/k/a/b/w/i;

    sput-object v0, Le/k/a/b/e;->m:Le/k/a/b/p;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/k/a/b/e;-><init>(Le/k/a/b/n;)V

    return-void
.end method

.method public constructor <init>(Le/k/a/b/e;Le/k/a/b/n;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Le/k/a/b/s;-><init>()V

    .line 12
    invoke-static {}, Le/k/a/b/y/b;->c()Le/k/a/b/y/b;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/e;->a:Le/k/a/b/y/b;

    .line 13
    invoke-static {}, Le/k/a/b/y/a;->k()Le/k/a/b/y/a;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/e;->b:Le/k/a/b/y/a;

    .line 14
    sget v0, Le/k/a/b/e;->j:I

    iput v0, p0, Le/k/a/b/e;->c:I

    .line 15
    sget v0, Le/k/a/b/e;->k:I

    iput v0, p0, Le/k/a/b/e;->d:I

    .line 16
    sget v0, Le/k/a/b/e;->l:I

    iput v0, p0, Le/k/a/b/e;->e:I

    .line 17
    sget-object v0, Le/k/a/b/e;->m:Le/k/a/b/p;

    iput-object v0, p0, Le/k/a/b/e;->g:Le/k/a/b/p;

    .line 18
    iput-object p2, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    .line 19
    iget p2, p1, Le/k/a/b/e;->c:I

    iput p2, p0, Le/k/a/b/e;->c:I

    .line 20
    iget p2, p1, Le/k/a/b/e;->d:I

    iput p2, p0, Le/k/a/b/e;->d:I

    .line 21
    iget p2, p1, Le/k/a/b/e;->e:I

    iput p2, p0, Le/k/a/b/e;->e:I

    .line 22
    iget-object p2, p1, Le/k/a/b/e;->g:Le/k/a/b/p;

    iput-object p2, p0, Le/k/a/b/e;->g:Le/k/a/b/p;

    .line 23
    iget p2, p1, Le/k/a/b/e;->h:I

    iput p2, p0, Le/k/a/b/e;->h:I

    .line 24
    iget-char p1, p1, Le/k/a/b/e;->i:C

    iput-char p1, p0, Le/k/a/b/e;->i:C

    return-void
.end method

.method public constructor <init>(Le/k/a/b/n;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Le/k/a/b/s;-><init>()V

    .line 3
    invoke-static {}, Le/k/a/b/y/b;->c()Le/k/a/b/y/b;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/e;->a:Le/k/a/b/y/b;

    .line 4
    invoke-static {}, Le/k/a/b/y/a;->k()Le/k/a/b/y/a;

    move-result-object v0

    iput-object v0, p0, Le/k/a/b/e;->b:Le/k/a/b/y/a;

    .line 5
    sget v0, Le/k/a/b/e;->j:I

    iput v0, p0, Le/k/a/b/e;->c:I

    .line 6
    sget v0, Le/k/a/b/e;->k:I

    iput v0, p0, Le/k/a/b/e;->d:I

    .line 7
    sget v0, Le/k/a/b/e;->l:I

    iput v0, p0, Le/k/a/b/e;->e:I

    .line 8
    sget-object v0, Le/k/a/b/e;->m:Le/k/a/b/p;

    iput-object v0, p0, Le/k/a/b/e;->g:Le/k/a/b/p;

    .line 9
    iput-object p1, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    const/16 p1, 0x22

    .line 10
    iput-char p1, p0, Le/k/a/b/e;->i:C

    return-void
.end method


# virtual methods
.method public a(Ljava/io/Writer;Le/k/a/b/w/b;)Le/k/a/b/g;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v6, Le/k/a/b/x/j;

    iget v2, p0, Le/k/a/b/e;->e:I

    iget-object v3, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    iget-char v5, p0, Le/k/a/b/e;->i:C

    move-object v0, v6

    move-object v1, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/b/x/j;-><init>(Le/k/a/b/w/b;ILe/k/a/b/n;Ljava/io/Writer;C)V

    .line 2
    iget p1, p0, Le/k/a/b/e;->h:I

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {v6, p1}, Le/k/a/b/x/c;->P(I)Le/k/a/b/g;

    .line 4
    :cond_0
    iget-object p1, p0, Le/k/a/b/e;->g:Le/k/a/b/p;

    .line 5
    sget-object p2, Le/k/a/b/e;->m:Le/k/a/b/p;

    if-eq p1, p2, :cond_1

    .line 6
    iput-object p1, v6, Le/k/a/b/x/c;->l:Le/k/a/b/p;

    :cond_1
    return-object v6
.end method

.method public b(Ljava/io/InputStream;Le/k/a/b/w/b;)Le/k/a/b/j;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/b/x/a;

    invoke-direct {v0, p2, p1}, Le/k/a/b/x/a;-><init>(Le/k/a/b/w/b;Ljava/io/InputStream;)V

    iget v1, p0, Le/k/a/b/e;->d:I

    iget-object v2, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    iget-object v3, p0, Le/k/a/b/e;->b:Le/k/a/b/y/a;

    iget-object v4, p0, Le/k/a/b/e;->a:Le/k/a/b/y/b;

    iget v5, p0, Le/k/a/b/e;->c:I

    invoke-virtual/range {v0 .. v5}, Le/k/a/b/x/a;->b(ILe/k/a/b/n;Le/k/a/b/y/a;Le/k/a/b/y/b;I)Le/k/a/b/j;

    move-result-object p1

    return-object p1
.end method

.method public c()Le/k/a/b/a0/a;
    .locals 5

    .line 1
    sget-object v0, Le/k/a/b/e$a;->e:Le/k/a/b/e$a;

    iget v1, p0, Le/k/a/b/e;->c:I

    invoke-virtual {v0, v1}, Le/k/a/b/e$a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    sget-object v0, Le/k/a/b/a0/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/b/a0/a;

    :goto_0
    if-nez v0, :cond_3

    .line 4
    new-instance v0, Le/k/a/b/a0/a;

    invoke-direct {v0}, Le/k/a/b/a0/a;-><init>()V

    .line 5
    sget-object v1, Le/k/a/b/a0/b;->a:Le/k/a/b/a0/o;

    if-eqz v1, :cond_1

    .line 6
    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, v1, Le/k/a/b/a0/o;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2, v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 7
    iget-object v3, v1, Le/k/a/b/a0/o;->a:Ljava/util/Map;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    :goto_1
    iget-object v3, v1, Le/k/a/b/a0/o;->b:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v3}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/SoftReference;

    if-eqz v3, :cond_2

    .line 9
    iget-object v4, v1, Le/k/a/b/a0/o;->a:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 10
    :cond_1
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 11
    :cond_2
    sget-object v1, Le/k/a/b/a0/b;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_3
    return-object v0

    .line 12
    :cond_4
    new-instance v0, Le/k/a/b/a0/a;

    invoke-direct {v0}, Le/k/a/b/a0/a;-><init>()V

    return-object v0
.end method

.method public d(Ljava/io/OutputStream;Le/k/a/b/d;)Le/k/a/b/g;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v1, Le/k/a/b/w/b;

    invoke-virtual {p0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 2
    iput-object p2, v1, Le/k/a/b/w/b;->b:Le/k/a/b/d;

    .line 3
    sget-object v0, Le/k/a/b/d;->d:Le/k/a/b/d;

    if-ne p2, v0, :cond_2

    .line 4
    new-instance p2, Le/k/a/b/x/h;

    iget v2, p0, Le/k/a/b/e;->e:I

    iget-object v3, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    iget-char v5, p0, Le/k/a/b/e;->i:C

    move-object v0, p2

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Le/k/a/b/x/h;-><init>(Le/k/a/b/w/b;ILe/k/a/b/n;Ljava/io/OutputStream;C)V

    .line 5
    iget p1, p0, Le/k/a/b/e;->h:I

    if-lez p1, :cond_0

    .line 6
    invoke-virtual {p2, p1}, Le/k/a/b/x/c;->P(I)Le/k/a/b/g;

    .line 7
    :cond_0
    iget-object p1, p0, Le/k/a/b/e;->g:Le/k/a/b/p;

    .line 8
    sget-object v0, Le/k/a/b/e;->m:Le/k/a/b/p;

    if-eq p1, v0, :cond_1

    .line 9
    iput-object p1, p2, Le/k/a/b/x/c;->l:Le/k/a/b/p;

    :cond_1
    return-object p2

    :cond_2
    if-ne p2, v0, :cond_3

    .line 10
    new-instance p2, Le/k/a/b/w/k;

    invoke-direct {p2, v1, p1}, Le/k/a/b/w/k;-><init>(Le/k/a/b/w/b;Ljava/io/OutputStream;)V

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Ljava/io/OutputStreamWriter;

    .line 12
    iget-object p2, p2, Le/k/a/b/d;->a:Ljava/lang/String;

    .line 13
    invoke-direct {v0, p1, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    move-object p2, v0

    .line 14
    :goto_0
    invoke-virtual {p0, p2, v1}, Le/k/a/b/e;->a(Ljava/io/Writer;Le/k/a/b/w/b;)Le/k/a/b/g;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/io/Writer;)Le/k/a/b/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/b/w/b;

    invoke-virtual {p0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 2
    invoke-virtual {p0, p1, v0}, Le/k/a/b/e;->a(Ljava/io/Writer;Le/k/a/b/w/b;)Le/k/a/b/g;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/io/InputStream;)Le/k/a/b/j;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/i;
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/b/w/b;

    invoke-virtual {p0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 2
    invoke-virtual {p0, p1, v0}, Le/k/a/b/e;->b(Ljava/io/InputStream;Le/k/a/b/w/b;)Le/k/a/b/j;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;)Le/k/a/b/j;
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Le/k/a/b/i;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    const v3, 0x8000

    const/4 v4, 0x0

    if-gt v2, v3, :cond_0

    const/4 v3, 0x1

    .line 2
    new-instance v6, Le/k/a/b/w/b;

    invoke-virtual/range {p0 .. p0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v5

    invoke-direct {v6, v5, v1, v3}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 3
    iget-object v3, v6, Le/k/a/b/w/b;->h:[C

    invoke-virtual {v6, v3}, Le/k/a/b/w/b;->a(Ljava/lang/Object;)V

    .line 4
    iget-object v3, v6, Le/k/a/b/w/b;->d:Le/k/a/b/a0/a;

    invoke-virtual {v3, v4, v2}, Le/k/a/b/a0/a;->b(II)[C

    move-result-object v11

    iput-object v11, v6, Le/k/a/b/w/b;->h:[C

    .line 5
    invoke-virtual {v1, v4, v2, v11, v4}, Ljava/lang/String;->getChars(II[CI)V

    const/4 v14, 0x1

    .line 6
    new-instance v1, Le/k/a/b/x/g;

    iget v7, v0, Le/k/a/b/e;->d:I

    iget-object v9, v0, Le/k/a/b/e;->f:Le/k/a/b/n;

    iget-object v3, v0, Le/k/a/b/e;->a:Le/k/a/b/y/b;

    iget v5, v0, Le/k/a/b/e;->c:I

    .line 7
    invoke-virtual {v3, v5}, Le/k/a/b/y/b;->e(I)Le/k/a/b/y/b;

    move-result-object v10

    add-int v13, v4, v2

    const/4 v8, 0x0

    const/4 v12, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v14}, Le/k/a/b/x/g;-><init>(Le/k/a/b/w/b;ILjava/io/Reader;Le/k/a/b/n;Le/k/a/b/y/b;[CIIZ)V

    return-object v1

    .line 8
    :cond_0
    new-instance v2, Ljava/io/StringReader;

    invoke-direct {v2, v1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 9
    new-instance v1, Le/k/a/b/w/b;

    invoke-virtual/range {p0 .. p0}, Le/k/a/b/e;->c()Le/k/a/b/a0/a;

    move-result-object v3

    invoke-direct {v1, v3, v2, v4}, Le/k/a/b/w/b;-><init>(Le/k/a/b/a0/a;Ljava/lang/Object;Z)V

    .line 10
    new-instance v3, Le/k/a/b/x/g;

    iget v4, v0, Le/k/a/b/e;->d:I

    iget-object v5, v0, Le/k/a/b/e;->f:Le/k/a/b/n;

    iget-object v6, v0, Le/k/a/b/e;->a:Le/k/a/b/y/b;

    iget v7, v0, Le/k/a/b/e;->c:I

    .line 11
    invoke-virtual {v6, v7}, Le/k/a/b/y/b;->e(I)Le/k/a/b/y/b;

    move-result-object v20

    move-object v15, v3

    move-object/from16 v16, v1

    move/from16 v17, v4

    move-object/from16 v18, v2

    move-object/from16 v19, v5

    invoke-direct/range {v15 .. v20}, Le/k/a/b/x/g;-><init>(Le/k/a/b/w/b;ILjava/io/Reader;Le/k/a/b/n;Le/k/a/b/y/b;)V

    return-object v3
.end method

.method public h()Le/k/a/b/n;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Le/k/a/b/e;

    iget-object v1, p0, Le/k/a/b/e;->f:Le/k/a/b/n;

    invoke-direct {v0, p0, v1}, Le/k/a/b/e;-><init>(Le/k/a/b/e;Le/k/a/b/n;)V

    return-object v0
.end method
