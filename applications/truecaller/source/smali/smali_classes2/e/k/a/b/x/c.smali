.class public abstract Le/k/a/b/x/c;
.super Le/k/a/b/u/a;
.source "SourceFile"


# static fields
.field public static final n:[I


# instance fields
.field public final i:Le/k/a/b/w/b;

.field public j:[I

.field public k:I

.field public l:Le/k/a/b/p;

.field public m:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/b/w/a;->h:[I

    .line 2
    sput-object v0, Le/k/a/b/x/c;->n:[I

    return-void
.end method

.method public constructor <init>(Le/k/a/b/w/b;ILe/k/a/b/n;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3}, Le/k/a/b/u/a;-><init>(ILe/k/a/b/n;)V

    .line 2
    sget-object p3, Le/k/a/b/x/c;->n:[I

    iput-object p3, p0, Le/k/a/b/x/c;->j:[I

    .line 3
    sget-object p3, Le/k/a/b/a0/e;->DEFAULT_ROOT_VALUE_SEPARATOR:Le/k/a/b/w/i;

    iput-object p3, p0, Le/k/a/b/x/c;->l:Le/k/a/b/p;

    .line 4
    iput-object p1, p0, Le/k/a/b/x/c;->i:Le/k/a/b/w/b;

    .line 5
    sget-object p1, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    .line 6
    iget p1, p1, Le/k/a/b/g$a;->b:I

    and-int/2addr p1, p2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-eqz p1, :cond_1

    const/16 p1, 0x7f

    .line 7
    iput p1, p0, Le/k/a/b/x/c;->k:I

    .line 8
    :cond_1
    sget-object p1, Le/k/a/b/g$a;->f:Le/k/a/b/g$a;

    .line 9
    iget p1, p1, Le/k/a/b/g$a;->b:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_2

    move p3, v0

    :cond_2
    xor-int/lit8 p1, p3, 0x1

    .line 10
    iput-boolean p1, p0, Le/k/a/b/x/c;->m:Z

    return-void
.end method


# virtual methods
.method public P(I)Le/k/a/b/g;
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iput p1, p0, Le/k/a/b/x/c;->k:I

    return-object p0
.end method

.method public h2(II)V
    .locals 4

    .line 1
    sget v0, Le/k/a/b/u/a;->h:I

    and-int/2addr v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    sget-object v0, Le/k/a/b/g$a;->i:Le/k/a/b/g$a;

    .line 3
    iget v0, v0, Le/k/a/b/g$a;->b:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    .line 4
    :goto_0
    iput-boolean v0, p0, Le/k/a/b/u/a;->f:Z

    .line 5
    sget-object v0, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    .line 6
    iget v0, v0, Le/k/a/b/g$a;->b:I

    and-int v3, p2, v0

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz v3, :cond_5

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    move v0, v1

    :goto_2
    if-eqz v0, :cond_4

    const/16 v0, 0x7f

    .line 7
    invoke-virtual {p0, v0}, Le/k/a/b/x/c;->P(I)Le/k/a/b/g;

    goto :goto_3

    .line 8
    :cond_4
    invoke-virtual {p0, v1}, Le/k/a/b/x/c;->P(I)Le/k/a/b/g;

    .line 9
    :cond_5
    :goto_3
    sget-object v0, Le/k/a/b/g$a;->k:Le/k/a/b/g$a;

    .line 10
    iget v0, v0, Le/k/a/b/g$a;->b:I

    and-int/2addr p2, v0

    if-eqz p2, :cond_6

    move p2, v2

    goto :goto_4

    :cond_6
    move p2, v1

    :goto_4
    if-eqz p2, :cond_9

    and-int p2, p1, v0

    if-eqz p2, :cond_7

    move p2, v2

    goto :goto_5

    :cond_7
    move p2, v1

    :goto_5
    if-eqz p2, :cond_8

    .line 11
    iget-object p2, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 12
    iget-object v0, p2, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    if-nez v0, :cond_9

    .line 13
    new-instance v0, Le/k/a/b/x/b;

    invoke-direct {v0, p0}, Le/k/a/b/x/b;-><init>(Ljava/lang/Object;)V

    .line 14
    iput-object v0, p2, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    .line 15
    iput-object p2, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    goto :goto_6

    .line 16
    :cond_8
    iget-object p2, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    const/4 v0, 0x0

    .line 17
    iput-object v0, p2, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    .line 18
    iput-object p2, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 19
    :cond_9
    :goto_6
    sget-object p2, Le/k/a/b/g$a;->f:Le/k/a/b/g$a;

    .line 20
    iget p2, p2, Le/k/a/b/g$a;->b:I

    and-int/2addr p1, p2

    if-eqz p1, :cond_a

    move v1, v2

    :cond_a
    xor-int/lit8 p1, v1, 0x1

    .line 21
    iput-boolean p1, p0, Le/k/a/b/x/c;->m:Z

    return-void
.end method

.method public l(Le/k/a/b/g$a;)Le/k/a/b/g;
    .locals 3

    .line 1
    iget v0, p1, Le/k/a/b/g$a;->b:I

    .line 2
    iget v1, p0, Le/k/a/b/u/a;->e:I

    not-int v2, v0

    and-int/2addr v1, v2

    iput v1, p0, Le/k/a/b/u/a;->e:I

    .line 3
    sget v1, Le/k/a/b/u/a;->h:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Le/k/a/b/g$a;->i:Le/k/a/b/g$a;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 5
    iput-boolean v1, p0, Le/k/a/b/u/a;->f:Z

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Le/k/a/b/g$a;->h:Le/k/a/b/g$a;

    if-ne p1, v0, :cond_1

    .line 7
    invoke-virtual {p0, v1}, Le/k/a/b/x/c;->P(I)Le/k/a/b/g;

    goto :goto_0

    .line 8
    :cond_1
    sget-object v0, Le/k/a/b/g$a;->k:Le/k/a/b/g$a;

    if-ne p1, v0, :cond_2

    .line 9
    iget-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Le/k/a/b/x/f;->d:Le/k/a/b/x/b;

    .line 11
    iput-object v0, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 12
    :cond_2
    :goto_0
    sget-object v0, Le/k/a/b/g$a;->f:Le/k/a/b/g$a;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Le/k/a/b/x/c;->m:Z

    :cond_3
    return-object p0
.end method

.method public o2(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1
    iget-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    .line 2
    invoke-virtual {p1}, Le/k/a/b/l;->h()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string p1, "Can not %s, expecting field name (context: %s)"

    .line 3
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Le/k/a/b/f;

    invoke-direct {v0, p1, p0}, Le/k/a/b/f;-><init>(Ljava/lang/String;Le/k/a/b/g;)V

    throw v0
.end method

.method public p2(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_4

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_2

    const/4 v0, 0x3

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    .line 1
    invoke-static {}, Le/k/a/b/a0/p;->a()V

    throw v1

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Le/k/a/b/x/c;->o2(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_1
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {p1, p0}, Le/k/a/b/o;->writeRootValueSeparator(Le/k/a/b/g;)V

    goto :goto_0

    .line 4
    :cond_2
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {p1, p0}, Le/k/a/b/o;->writeObjectFieldValueSeparator(Le/k/a/b/g;)V

    goto :goto_0

    .line 5
    :cond_3
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {p1, p0}, Le/k/a/b/o;->writeArrayValueSeparator(Le/k/a/b/g;)V

    goto :goto_0

    .line 6
    :cond_4
    iget-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {p1}, Le/k/a/b/l;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 7
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {p1, p0}, Le/k/a/b/o;->beforeArrayValues(Le/k/a/b/g;)V

    goto :goto_0

    .line 8
    :cond_5
    iget-object p1, p0, Le/k/a/b/u/a;->g:Le/k/a/b/x/f;

    invoke-virtual {p1}, Le/k/a/b/l;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 9
    iget-object p1, p0, Le/k/a/b/g;->a:Le/k/a/b/o;

    invoke-interface {p1, p0}, Le/k/a/b/o;->beforeObjectEntries(Le/k/a/b/g;)V

    :cond_6
    :goto_0
    return-void
.end method
