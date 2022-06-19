.class public final Lu3/p0/e/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/e/e$c;,
        Lu3/p0/e/e$a;,
        Lu3/p0/e/e$b;
    }
.end annotation


# static fields
.field public static final v:Ls1/f0/h;

# The value of this static final field might be set in the static constructor
.field public static final w:Ljava/lang/String; = "CLEAN"

# The value of this static final field might be set in the static constructor
.field public static final x:Ljava/lang/String; = "DIRTY"

# The value of this static final field might be set in the static constructor
.field public static final y:Ljava/lang/String; = "REMOVE"

# The value of this static final field might be set in the static constructor
.field public static final z:Ljava/lang/String; = "READ"


# instance fields
.field public a:J

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Ljava/io/File;

.field public e:J

.field public f:Lv3/g;

.field public final g:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lu3/p0/e/e$b;",
            ">;"
        }
    .end annotation
.end field

.field public h:I

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Z

.field public n:Z

.field public o:J

.field public final p:Lu3/p0/f/c;

.field public final q:Lu3/p0/e/e$d;

.field public final r:Lu3/p0/k/b;

.field public final s:Ljava/io/File;

.field public final t:I

.field public final u:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/f0/h;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    sput-object v0, Lu3/p0/e/e;->v:Ls1/f0/h;

    const-string v0, "CLEAN"

    .line 2
    sput-object v0, Lu3/p0/e/e;->w:Ljava/lang/String;

    const-string v0, "DIRTY"

    .line 3
    sput-object v0, Lu3/p0/e/e;->x:Ljava/lang/String;

    const-string v0, "REMOVE"

    .line 4
    sput-object v0, Lu3/p0/e/e;->y:Ljava/lang/String;

    const-string v0, "READ"

    .line 5
    sput-object v0, Lu3/p0/e/e;->z:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lu3/p0/k/b;Ljava/io/File;IIJLu3/p0/f/d;)V
    .locals 4

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskRunner"

    invoke-static {p7, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iput-object p2, p0, Lu3/p0/e/e;->s:Ljava/io/File;

    iput p3, p0, Lu3/p0/e/e;->t:I

    iput p4, p0, Lu3/p0/e/e;->u:I

    .line 2
    iput-wide p5, p0, Lu3/p0/e/e;->a:J

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 p3, 0x0

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p1, p3, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {p7}, Lu3/p0/f/d;->f()Lu3/p0/f/c;

    move-result-object p1

    iput-object p1, p0, Lu3/p0/e/e;->p:Lu3/p0/f/c;

    .line 5
    new-instance p1, Lu3/p0/e/e$d;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lu3/p0/c;->g:Ljava/lang/String;

    const-string v2, " Cache"

    invoke-static {p7, v0, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    invoke-direct {p1, p0, p7}, Lu3/p0/e/e$d;-><init>(Lu3/p0/e/e;Ljava/lang/String;)V

    iput-object p1, p0, Lu3/p0/e/e;->q:Lu3/p0/e/e$d;

    const-wide/16 v2, 0x0

    cmp-long p1, p5, v2

    if-lez p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, p3

    :goto_0
    if-eqz p1, :cond_3

    if-lez p4, :cond_1

    move p3, v1

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    new-instance p1, Ljava/io/File;

    const-string p3, "journal"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    .line 7
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.tmp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lu3/p0/e/e;->c:Ljava/io/File;

    .line 8
    new-instance p1, Ljava/io/File;

    const-string p3, "journal.bkp"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    return-void

    .line 9
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "valueCount <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final E()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 3
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "i.next()"

    invoke-static {v1, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lu3/p0/e/e$b;

    .line 5
    iget-object v2, v1, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iget v2, p0, Lu3/p0/e/e;->u:I

    :goto_1
    if-ge v3, v2, :cond_0

    .line 7
    iget-wide v4, p0, Lu3/p0/e/e;->e:J

    .line 8
    iget-object v6, v1, Lu3/p0/e/e$b;->a:[J

    .line 9
    aget-wide v7, v6, v3

    add-long/2addr v4, v7

    iput-wide v4, p0, Lu3/p0/e/e;->e:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 10
    iput-object v2, v1, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    .line 11
    iget v2, p0, Lu3/p0/e/e;->u:I

    :goto_2
    if-ge v3, v2, :cond_2

    .line 12
    iget-object v4, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    .line 13
    iget-object v5, v1, Lu3/p0/e/e$b;->b:Ljava/util/List;

    .line 14
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    .line 15
    iget-object v4, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    .line 16
    iget-object v5, v1, Lu3/p0/e/e$b;->c:Ljava/util/List;

    .line 17
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final I()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v2, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v1, v2}, Lu3/p0/k/b;->g(Ljava/io/File;)Lv3/b0;

    move-result-object v1

    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->K(Lv3/b0;)Lv3/h;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    .line 7
    invoke-static {v7, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    const-string v7, "1"

    invoke-static {v7, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 8
    iget v7, p0, Lu3/p0/e/e;->t:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 9
    iget v4, p0, Lu3/p0/e/e;->u:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 10
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v7, 0x0

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    if-nez v8, :cond_2

    .line 11
    :goto_1
    :try_start_1
    invoke-interface {v1}, Lv3/h;->o1()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lu3/p0/e/e;->J(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int/2addr v7, v0

    iput v7, p0, Lu3/p0/e/e;->h:I

    .line 13
    invoke-interface {v1}, Lv3/h;->N1()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lu3/p0/e/e;->K()V

    goto :goto_2

    .line 15
    :cond_1
    invoke-virtual {p0}, Lu3/p0/e/e;->s()Lv3/g;

    move-result-object v0

    iput-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_2
    const/4 v0, 0x0

    .line 16
    invoke-static {v1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 17
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 20
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final J(Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    const/4 v1, 0x0

    const/4 v2, 0x6

    .line 1
    invoke-static {p1, v0, v1, v1, v2}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v3

    const-string v4, "unexpected journal line: "

    const/4 v5, -0x1

    if-eq v3, v5, :cond_8

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x4

    .line 2
    invoke-static {p1, v0, v6, v1, v7}, Ls1/f0/v;->G(Ljava/lang/CharSequence;CIZI)I

    move-result v7

    const-string v8, "(this as java.lang.String).substring(startIndex)"

    const/4 v9, 0x2

    if-ne v7, v5, :cond_0

    .line 3
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v10, Lu3/p0/e/e;->y:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v3, v11, :cond_1

    invoke-static {p1, v10, v1, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 5
    iget-object p1, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v10, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v6, v10}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v10, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lu3/p0/e/e$b;

    if-nez v10, :cond_2

    .line 8
    new-instance v10, Lu3/p0/e/e$b;

    invoke-direct {v10, p0, v6}, Lu3/p0/e/e$b;-><init>(Lu3/p0/e/e;Ljava/lang/String;)V

    .line 9
    iget-object v11, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eq v7, v5, :cond_4

    .line 10
    sget-object v6, Lu3/p0/e/e;->w:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v3, v11, :cond_4

    invoke-static {p1, v6, v1, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v3, 0x1

    add-int/2addr v7, v3

    .line 11
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v8}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v3, [C

    aput-char v0, v5, v1

    .line 12
    invoke-static {p1, v5, v1, v1, v2}, Ls1/f0/v;->T(Ljava/lang/CharSequence;[CZII)Ljava/util/List;

    move-result-object p1

    .line 13
    iput-boolean v3, v10, Lu3/p0/e/e$b;->d:Z

    const/4 v0, 0x0

    .line 14
    iput-object v0, v10, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    const-string v0, "strings"

    .line 15
    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, v10, Lu3/p0/e/e$b;->j:Lu3/p0/e/e;

    .line 17
    iget v2, v2, Lu3/p0/e/e;->u:I

    if-ne v0, v2, :cond_3

    .line 18
    :try_start_0
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_6

    .line 19
    iget-object v2, v10, Lu3/p0/e/e$b;->a:[J

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 20
    :catch_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    if-ne v7, v5, :cond_5

    .line 22
    sget-object v0, Lu3/p0/e/e;->x:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_5

    invoke-static {p1, v0, v1, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 23
    new-instance p1, Lu3/p0/e/e$a;

    invoke-direct {p1, p0, v10}, Lu3/p0/e/e$a;-><init>(Lu3/p0/e/e;Lu3/p0/e/e$b;)V

    .line 24
    iput-object p1, v10, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    goto :goto_1

    :cond_5
    if-ne v7, v5, :cond_7

    .line 25
    sget-object v0, Lu3/p0/e/e;->z:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v3, v2, :cond_7

    invoke-static {p1, v0, v1, v9}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_6
    :goto_1
    return-void

    .line 26
    :cond_7
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_8
    new-instance v0, Ljava/io/IOException;

    invoke-static {v4, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized K()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lv3/z;->close()V

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->h(Ljava/io/File;)Lv3/z;

    move-result-object v0

    invoke-static {v0}, Ls1/a/a/a/v0/f/d;->J(Lv3/z;)Lv3/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    :try_start_1
    const-string v2, "libcore.io.DiskLruCache"

    .line 3
    invoke-interface {v0, v2}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Lv3/g;->j0(I)Lv3/g;

    const-string v2, "1"

    .line 4
    invoke-interface {v0, v2}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v2

    invoke-interface {v2, v3}, Lv3/g;->j0(I)Lv3/g;

    .line 5
    iget v2, p0, Lu3/p0/e/e;->t:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lv3/g;->d0(J)Lv3/g;

    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;

    .line 6
    iget v2, p0, Lu3/p0/e/e;->u:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Lv3/g;->d0(J)Lv3/g;

    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;

    .line 7
    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;

    .line 8
    iget-object v2, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lu3/p0/e/e$b;

    .line 9
    iget-object v5, v4, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    .line 10
    sget-object v5, Lu3/p0/e/e;->x:Ljava/lang/String;

    invoke-interface {v0, v5}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v5

    invoke-interface {v5, v6}, Lv3/g;->j0(I)Lv3/g;

    .line 11
    iget-object v4, v4, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 13
    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;

    goto :goto_0

    .line 14
    :cond_1
    sget-object v5, Lu3/p0/e/e;->w:Ljava/lang/String;

    invoke-interface {v0, v5}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v5

    invoke-interface {v5, v6}, Lv3/g;->j0(I)Lv3/g;

    .line 15
    iget-object v5, v4, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 16
    invoke-interface {v0, v5}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 17
    invoke-virtual {v4, v0}, Lu3/p0/e/e$b;->b(Lv3/g;)V

    .line 18
    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 19
    :cond_2
    :try_start_2
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 20
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 21
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    iget-object v2, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lu3/p0/k/b;->b(Ljava/io/File;Ljava/io/File;)V

    .line 22
    :cond_3
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->c:Ljava/io/File;

    iget-object v2, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lu3/p0/k/b;->b(Ljava/io/File;Ljava/io/File;)V

    .line 23
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    .line 24
    invoke-virtual {p0}, Lu3/p0/e/e;->s()Lv3/g;

    move-result-object v0

    iput-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lu3/p0/e/e;->i:Z

    .line 26
    iput-boolean v0, p0, Lu3/p0/e/e;->n:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 27
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 28
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final P(Lu3/p0/e/e$b;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lu3/p0/e/e;->j:Z

    const/4 v1, 0x1

    const/16 v2, 0xa

    const/16 v3, 0x20

    if-nez v0, :cond_2

    .line 2
    iget v0, p1, Lu3/p0/e/e$b;->g:I

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz v0, :cond_0

    .line 4
    sget-object v4, Lu3/p0/e/e;->x:Ljava/lang/String;

    invoke-interface {v0, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 5
    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;

    .line 6
    iget-object v4, p1, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 7
    invoke-interface {v0, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 8
    invoke-interface {v0, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 9
    invoke-interface {v0}, Lv3/g;->flush()V

    .line 10
    :cond_0
    iget v0, p1, Lu3/p0/e/e$b;->g:I

    if-gtz v0, :cond_1

    .line 11
    iget-object v0, p1, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    if-eqz v0, :cond_2

    .line 12
    :cond_1
    iput-boolean v1, p1, Lu3/p0/e/e$b;->e:Z

    return v1

    .line 13
    :cond_2
    iget-object v0, p1, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0}, Lu3/p0/e/e$a;->c()V

    :cond_3
    const/4 v0, 0x0

    .line 15
    iget v4, p0, Lu3/p0/e/e;->u:I

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v0, v4, :cond_4

    .line 16
    iget-object v7, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    .line 17
    iget-object v8, p1, Lu3/p0/e/e$b;->b:Ljava/util/List;

    .line 18
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/io/File;

    invoke-interface {v7, v8}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    .line 19
    iget-wide v7, p0, Lu3/p0/e/e;->e:J

    .line 20
    iget-object v9, p1, Lu3/p0/e/e$b;->a:[J

    .line 21
    aget-wide v10, v9, v0

    sub-long/2addr v7, v10

    iput-wide v7, p0, Lu3/p0/e/e;->e:J

    .line 22
    aput-wide v5, v9, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23
    :cond_4
    iget v0, p0, Lu3/p0/e/e;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lu3/p0/e/e;->h:I

    .line 24
    iget-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz v0, :cond_5

    .line 25
    sget-object v4, Lu3/p0/e/e;->y:Ljava/lang/String;

    invoke-interface {v0, v4}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 26
    invoke-interface {v0, v3}, Lv3/g;->j0(I)Lv3/g;

    .line 27
    iget-object v3, p1, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 28
    invoke-interface {v0, v3}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 29
    invoke-interface {v0, v2}, Lv3/g;->j0(I)Lv3/g;

    .line 30
    :cond_5
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    .line 31
    iget-object p1, p1, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 32
    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    invoke-virtual {p0}, Lu3/p0/e/e;->q()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 34
    iget-object p1, p0, Lu3/p0/e/e;->p:Lu3/p0/f/c;

    iget-object v0, p0, Lu3/p0/e/e;->q:Lu3/p0/e/e$d;

    const/4 v2, 0x2

    invoke-static {p1, v0, v5, v6, v2}, Lu3/p0/f/c;->d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V

    :cond_6
    return v1
.end method

.method public final Q()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v0, p0, Lu3/p0/e/e;->e:J

    iget-wide v2, p0, Lu3/p0/e/e;->a:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 2
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lu3/p0/e/e$b;

    .line 3
    iget-boolean v3, v2, Lu3/p0/e/e$b;->e:Z

    if-nez v3, :cond_1

    const-string v0, "toEvict"

    .line 4
    invoke-static {v2, v0}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lu3/p0/e/e;->P(Lu3/p0/e/e$b;)Z

    const/4 v1, 0x1

    :cond_2
    if-nez v1, :cond_0

    return-void

    .line 5
    :cond_3
    iput-boolean v1, p0, Lu3/p0/e/e;->m:Z

    return-void
.end method

.method public final S(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lu3/p0/e/e;->v:Ls1/f0/h;

    invoke-virtual {v0, p1}, Ls1/f0/h;->d(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x22

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lu3/p0/e/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "cache is closed"

    .line 3
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lu3/p0/e/e;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lu3/p0/e/e;->l:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lu3/p0/e/e$b;

    .line 3
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, [Lu3/p0/e/e$b;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 4
    iget-object v4, v4, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    if-eqz v4, :cond_1

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v4}, Lu3/p0/e/e$a;->c()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lu3/p0/e/e;->Q()V

    .line 7
    iget-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lv3/z;->close()V

    .line 8
    iput-object v2, p0, Lu3/p0/e/e;->f:Lv3/g;

    .line 9
    iput-boolean v1, p0, Lu3/p0/e/e;->l:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_3
    :try_start_1
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 12
    :cond_4
    :try_start_2
    new-instance v0, Ls1/p;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Ls1/p;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lu3/p0/e/e;->l:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d(Lu3/p0/e/e$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "editor"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lu3/p0/e/e$a;->c:Lu3/p0/e/e$b;

    .line 2
    iget-object v1, v0, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    .line 3
    invoke-static {v1, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 4
    iget-boolean v3, v0, Lu3/p0/e/e$b;->d:Z

    if-nez v3, :cond_3

    .line 5
    iget v3, p0, Lu3/p0/e/e;->u:I

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_3

    .line 6
    iget-object v5, p1, Lu3/p0/e/e$a;->a:[Z

    if-eqz v5, :cond_2

    .line 7
    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    .line 8
    iget-object v5, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    .line 9
    iget-object v6, v0, Lu3/p0/e/e$b;->c:Ljava/util/List;

    .line 10
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5, v6}, Lu3/p0/k/b;->d(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 11
    invoke-virtual {p1}, Lu3/p0/e/e$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lu3/p0/e/e$a;->a()V

    .line 14
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 16
    :cond_3
    :try_start_2
    iget p1, p0, Lu3/p0/e/e;->u:I

    :goto_1
    if-ge v1, p1, :cond_6

    .line 17
    iget-object v3, v0, Lu3/p0/e/e$b;->c:Ljava/util/List;

    .line 18
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz p2, :cond_4

    .line 19
    iget-boolean v4, v0, Lu3/p0/e/e$b;->e:Z

    if-nez v4, :cond_4

    .line 20
    iget-object v4, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    invoke-interface {v4, v3}, Lu3/p0/k/b;->d(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 21
    iget-object v4, v0, Lu3/p0/e/e$b;->b:Ljava/util/List;

    .line 22
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 23
    iget-object v5, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    invoke-interface {v5, v3, v4}, Lu3/p0/k/b;->b(Ljava/io/File;Ljava/io/File;)V

    .line 24
    iget-object v3, v0, Lu3/p0/e/e$b;->a:[J

    .line 25
    aget-wide v5, v3, v1

    .line 26
    iget-object v3, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    invoke-interface {v3, v4}, Lu3/p0/k/b;->f(Ljava/io/File;)J

    move-result-wide v3

    .line 27
    iget-object v7, v0, Lu3/p0/e/e$b;->a:[J

    .line 28
    aput-wide v3, v7, v1

    .line 29
    iget-wide v7, p0, Lu3/p0/e/e;->e:J

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    iput-wide v7, p0, Lu3/p0/e/e;->e:J

    goto :goto_2

    .line 30
    :cond_4
    iget-object v4, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    invoke-interface {v4, v3}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 31
    :cond_6
    iput-object v2, v0, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;

    .line 32
    iget-boolean p1, v0, Lu3/p0/e/e$b;->e:Z

    if-eqz p1, :cond_7

    .line 33
    invoke-virtual {p0, v0}, Lu3/p0/e/e;->P(Lu3/p0/e/e$b;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 34
    monitor-exit p0

    return-void

    .line 35
    :cond_7
    :try_start_3
    iget p1, p0, Lu3/p0/e/e;->h:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lu3/p0/e/e;->h:I

    .line 36
    iget-object p1, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz p1, :cond_d

    .line 37
    iget-boolean v2, v0, Lu3/p0/e/e$b;->d:Z

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-nez v2, :cond_9

    if-eqz p2, :cond_8

    goto :goto_3

    .line 38
    :cond_8
    iget-object p2, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    .line 39
    iget-object v1, v0, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 40
    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object p2, Lu3/p0/e/e;->y:Ljava/lang/String;

    invoke-interface {p1, p2}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p2

    invoke-interface {p2, v4}, Lv3/g;->j0(I)Lv3/g;

    .line 42
    iget-object p2, v0, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 43
    invoke-interface {p1, p2}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 44
    invoke-interface {p1, v3}, Lv3/g;->j0(I)Lv3/g;

    goto :goto_4

    .line 45
    :cond_9
    :goto_3
    iput-boolean v1, v0, Lu3/p0/e/e$b;->d:Z

    .line 46
    sget-object v1, Lu3/p0/e/e;->w:Ljava/lang/String;

    invoke-interface {p1, v1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v1

    invoke-interface {v1, v4}, Lv3/g;->j0(I)Lv3/g;

    .line 47
    iget-object v1, v0, Lu3/p0/e/e$b;->i:Ljava/lang/String;

    .line 48
    invoke-interface {p1, v1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    .line 49
    invoke-virtual {v0, p1}, Lu3/p0/e/e$b;->b(Lv3/g;)V

    .line 50
    invoke-interface {p1, v3}, Lv3/g;->j0(I)Lv3/g;

    if-eqz p2, :cond_a

    .line 51
    iget-wide v1, p0, Lu3/p0/e/e;->o:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lu3/p0/e/e;->o:J

    .line 52
    iput-wide v1, v0, Lu3/p0/e/e$b;->h:J

    .line 53
    :cond_a
    :goto_4
    invoke-interface {p1}, Lv3/g;->flush()V

    .line 54
    iget-wide p1, p0, Lu3/p0/e/e;->e:J

    iget-wide v0, p0, Lu3/p0/e/e;->a:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_b

    invoke-virtual {p0}, Lu3/p0/e/e;->q()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 55
    :cond_b
    iget-object p1, p0, Lu3/p0/e/e;->p:Lu3/p0/f/c;

    iget-object p2, p0, Lu3/p0/e/e;->q:Lu3/p0/e/e$d;

    const-wide/16 v0, 0x0

    const/4 v2, 0x2

    invoke-static {p1, p2, v0, v1, v2}, Lu3/p0/f/c;->d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 56
    :cond_c
    monitor-exit p0

    return-void

    .line 57
    :cond_d
    :try_start_4
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_e
    :try_start_5
    const-string p1, "Check failed."

    .line 58
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lu3/p0/e/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lu3/p0/e/e;->b()V

    .line 3
    invoke-virtual {p0}, Lu3/p0/e/e;->Q()V

    .line 4
    iget-object v0, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lv3/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized j(Ljava/lang/String;J)Lu3/p0/e/e$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lu3/p0/e/e;->l()V

    .line 2
    invoke-virtual {p0}, Lu3/p0/e/e;->b()V

    .line 3
    invoke-virtual {p0, p1}, Lu3/p0/e/e;->S(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/p0/e/e$b;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    .line 5
    iget-wide v3, v0, Lu3/p0/e/e$b;->h:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p2, v3, p2

    if-eqz p2, :cond_1

    .line 6
    :cond_0
    monitor-exit p0

    return-object v2

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    iget-object p2, v0, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object p2, v2

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    monitor-exit p0

    return-object v2

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    :try_start_2
    iget p2, v0, Lu3/p0/e/e$b;->g:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 10
    monitor-exit p0

    return-object v2

    .line 11
    :cond_4
    :try_start_3
    iget-boolean p2, p0, Lu3/p0/e/e;->m:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lu3/p0/e/e;->n:Z

    if-eqz p2, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    iget-object p2, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz p2, :cond_8

    .line 13
    sget-object p3, Lu3/p0/e/e;->x:Ljava/lang/String;

    invoke-interface {p2, p3}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p3

    const/16 v1, 0x20

    .line 14
    invoke-interface {p3, v1}, Lv3/g;->j0(I)Lv3/g;

    move-result-object p3

    .line 15
    invoke-interface {p3, p1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p3

    const/16 v1, 0xa

    .line 16
    invoke-interface {p3, v1}, Lv3/g;->j0(I)Lv3/g;

    .line 17
    invoke-interface {p2}, Lv3/g;->flush()V

    .line 18
    iget-boolean p2, p0, Lu3/p0/e/e;->i:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_6

    .line 19
    monitor-exit p0

    return-object v2

    :cond_6
    if-nez v0, :cond_7

    .line 20
    :try_start_4
    new-instance v0, Lu3/p0/e/e$b;

    invoke-direct {v0, p0, p1}, Lu3/p0/e/e$b;-><init>(Lu3/p0/e/e;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    new-instance p1, Lu3/p0/e/e$a;

    invoke-direct {p1, p0, v0}, Lu3/p0/e/e$a;-><init>(Lu3/p0/e/e;Lu3/p0/e/e$b;)V

    .line 23
    iput-object p1, v0, Lu3/p0/e/e$b;->f:Lu3/p0/e/e$a;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    monitor-exit p0

    return-object p1

    .line 25
    :cond_8
    :try_start_5
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v2

    .line 26
    :cond_9
    :goto_1
    :try_start_6
    iget-object p1, p0, Lu3/p0/e/e;->p:Lu3/p0/f/c;

    iget-object p2, p0, Lu3/p0/e/e;->q:Lu3/p0/e/e$d;

    const-wide/16 v0, 0x0

    const/4 p3, 0x2

    invoke-static {p1, p2, v0, v1, p3}, Lu3/p0/f/c;->d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 27
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Ljava/lang/String;)Lu3/p0/e/e$c;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lu3/p0/e/e;->l()V

    .line 2
    invoke-virtual {p0}, Lu3/p0/e/e;->b()V

    .line 3
    invoke-virtual {p0, p1}, Lu3/p0/e/e;->S(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lu3/p0/e/e$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "lruEntries[key] ?: return null"

    invoke-static {v0, v2}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lu3/p0/e/e$b;->a()Lu3/p0/e/e$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget v2, p0, Lu3/p0/e/e;->h:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lu3/p0/e/e;->h:I

    .line 7
    iget-object v2, p0, Lu3/p0/e/e;->f:Lv3/g;

    if-eqz v2, :cond_1

    sget-object v1, Lu3/p0/e/e;->z:Ljava/lang/String;

    invoke-interface {v2, v1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object v1

    const/16 v2, 0x20

    .line 8
    invoke-interface {v1, v2}, Lv3/g;->j0(I)Lv3/g;

    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Lv3/g;->d1(Ljava/lang/String;)Lv3/g;

    move-result-object p1

    const/16 v1, 0xa

    .line 10
    invoke-interface {p1, v1}, Lv3/g;->j0(I)Lv3/g;

    .line 11
    invoke-virtual {p0}, Lu3/p0/e/e;->q()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lu3/p0/e/e;->p:Lu3/p0/f/c;

    iget-object v1, p0, Lu3/p0/e/e;->q:Lu3/p0/e/e$d;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    invoke-static {p1, v1, v2, v3, v4}, Lu3/p0/f/c;->d(Lu3/p0/f/c;Lu3/p0/f/a;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-object v0

    .line 14
    :cond_1
    :try_start_1
    invoke-static {}, Ls1/z/c/l;->k()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 15
    :cond_2
    monitor-exit p0

    return-object v1

    .line 16
    :cond_3
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized l()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lu3/p0/c;->a:[B

    .line 2
    iget-boolean v0, p0, Lu3/p0/e/e;->k:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz v0, :cond_0

    .line 3
    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    iget-object v2, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lu3/p0/k/b;->b(Ljava/io/File;Ljava/io/File;)V

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->d:Ljava/io/File;

    const-string v2, "$this$isCivilized"

    .line 9
    invoke-static {v0, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "file"

    invoke-static {v1, v2}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v0, v1}, Lu3/p0/k/b;->h(Ljava/io/File;)Lv3/z;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 11
    :try_start_2
    invoke-interface {v0, v1}, Lu3/p0/k/b;->c(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 12
    :try_start_3
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move v0, v5

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 13
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_5
    invoke-static {v2, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v1

    :catch_0
    invoke-static {v2, v3}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 14
    invoke-interface {v0, v1}, Lu3/p0/k/b;->c(Ljava/io/File;)V

    move v0, v4

    .line 15
    :goto_1
    iput-boolean v0, p0, Lu3/p0/e/e;->j:Z

    .line 16
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->d(Ljava/io/File;)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v0, :cond_3

    .line 17
    :try_start_6
    invoke-virtual {p0}, Lu3/p0/e/e;->I()V

    .line 18
    invoke-virtual {p0}, Lu3/p0/e/e;->E()V

    .line 19
    iput-boolean v5, p0, Lu3/p0/e/e;->k:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 20
    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    .line 21
    :try_start_7
    sget-object v1, Lu3/p0/l/h;->c:Lu3/p0/l/h$a;

    .line 22
    sget-object v1, Lu3/p0/l/h;->a:Lu3/p0/l/h;

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DiskLruCache "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lu3/p0/e/e;->s:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", removing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 24
    invoke-virtual {v1, v2, v3, v0}, Lu3/p0/l/h;->i(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 25
    :try_start_8
    invoke-virtual {p0}, Lu3/p0/e/e;->close()V

    .line 26
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->s:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->a(Ljava/io/File;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 27
    :try_start_9
    iput-boolean v4, p0, Lu3/p0/e/e;->l:Z

    goto :goto_2

    :catchall_2
    move-exception v0

    iput-boolean v4, p0, Lu3/p0/e/e;->l:Z

    throw v0

    .line 28
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lu3/p0/e/e;->K()V

    .line 29
    iput-boolean v5, p0, Lu3/p0/e/e;->k:Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 30
    monitor-exit p0

    return-void

    :catchall_3
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final q()Z
    .locals 2

    .line 1
    iget v0, p0, Lu3/p0/e/e;->h:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lu3/p0/e/e;->g:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final s()Lv3/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu3/p0/e/e;->r:Lu3/p0/k/b;

    iget-object v1, p0, Lu3/p0/e/e;->b:Ljava/io/File;

    invoke-interface {v0, v1}, Lu3/p0/k/b;->e(Ljava/io/File;)Lv3/z;

    move-result-object v0

    .line 2
    new-instance v1, Lu3/p0/e/g;

    new-instance v2, Lu3/p0/e/e$e;

    invoke-direct {v2, p0}, Lu3/p0/e/e$e;-><init>(Lu3/p0/e/e;)V

    invoke-direct {v1, v0, v2}, Lu3/p0/e/g;-><init>(Lv3/z;Ls1/z/b/l;)V

    const-string v0, "$this$buffer"

    .line 3
    invoke-static {v1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lv3/u;

    invoke-direct {v0, v1}, Lv3/u;-><init>(Lv3/z;)V

    return-object v0
.end method
