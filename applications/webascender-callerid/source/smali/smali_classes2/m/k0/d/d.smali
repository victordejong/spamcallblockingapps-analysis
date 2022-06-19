.class public final Lm/k0/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/d/d$c;,
        Lm/k0/d/d$a;,
        Lm/k0/d/d$b;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "journal"

.field public static final B:Ljava/lang/String; = "journal.tmp"

.field public static final C:Ljava/lang/String; = "journal.bkp"

.field public static final D:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field public static final E:Ljava/lang/String; = "1"

.field public static final F:J = -0x1L

.field public static final G:Lkotlin/c0/j;

# The value of this static final field might be set in the static constructor
.field public static final H:Ljava/lang/String; = "CLEAN"

# The value of this static final field might be set in the static constructor
.field public static final I:Ljava/lang/String; = "DIRTY"

# The value of this static final field might be set in the static constructor
.field public static final J:Ljava/lang/String; = "REMOVE"

# The value of this static final field might be set in the static constructor
.field public static final K:Ljava/lang/String; = "READ"


# instance fields
.field private f:J

.field private final g:Ljava/io/File;

.field private final h:Ljava/io/File;

.field private final i:Ljava/io/File;

.field private j:J

.field private k:Ln/g;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lm/k0/d/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:J

.field private final u:Lm/k0/e/d;

.field private final v:Lm/k0/d/d$d;

.field private final w:Lm/k0/h/b;

.field private final x:Ljava/io/File;

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lkotlin/c0/j;

    const-string v1, "[a-z0-9_-]{1,120}"

    invoke-direct {v0, v1}, Lkotlin/c0/j;-><init>(Ljava/lang/String;)V

    sput-object v0, Lm/k0/d/d;->G:Lkotlin/c0/j;

    const-string v0, "CLEAN"

    .line 2
    sput-object v0, Lm/k0/d/d;->H:Ljava/lang/String;

    const-string v0, "DIRTY"

    .line 3
    sput-object v0, Lm/k0/d/d;->I:Ljava/lang/String;

    const-string v0, "REMOVE"

    .line 4
    sput-object v0, Lm/k0/d/d;->J:Ljava/lang/String;

    const-string v0, "READ"

    .line 5
    sput-object v0, Lm/k0/d/d;->K:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lm/k0/h/b;Ljava/io/File;IIJLm/k0/e/e;)V
    .locals 4

    const-string v0, "fileSystem"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "directory"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskRunner"

    invoke-static {p7, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iput-object p2, p0, Lm/k0/d/d;->x:Ljava/io/File;

    iput p3, p0, Lm/k0/d/d;->y:I

    iput p4, p0, Lm/k0/d/d;->z:I

    .line 2
    iput-wide p5, p0, Lm/k0/d/d;->f:J

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 p3, 0x0

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p1, p3, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {p7}, Lm/k0/e/e;->i()Lm/k0/e/d;

    move-result-object p1

    iput-object p1, p0, Lm/k0/d/d;->u:Lm/k0/e/d;

    .line 5
    new-instance p1, Lm/k0/d/d$d;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lm/k0/b;->h:Ljava/lang/String;

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Cache"

    invoke-virtual {p7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p7

    invoke-direct {p1, p0, p7}, Lm/k0/d/d$d;-><init>(Lm/k0/d/d;Ljava/lang/String;)V

    iput-object p1, p0, Lm/k0/d/d;->v:Lm/k0/d/d$d;

    const-wide/16 v2, 0x0

    cmp-long p1, p5, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_3

    if-lez p4, :cond_1

    const/4 p3, 0x1

    :cond_1
    if-eqz p3, :cond_2

    .line 6
    new-instance p1, Ljava/io/File;

    sget-object p3, Lm/k0/d/d;->A:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lm/k0/d/d;->g:Ljava/io/File;

    .line 7
    new-instance p1, Ljava/io/File;

    sget-object p3, Lm/k0/d/d;->B:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lm/k0/d/d;->h:Ljava/io/File;

    .line 8
    new-instance p1, Ljava/io/File;

    sget-object p3, Lm/k0/d/d;->C:Ljava/lang/String;

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lm/k0/d/d;->i:Ljava/io/File;

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

.method private final I0(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lm/k0/d/d;->G:Lkotlin/c0/j;

    invoke-virtual {v0, p1}, Lkotlin/c0/j;->c(Ljava/lang/CharSequence;)Z

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

.method private final X()Z
    .locals 2

    .line 1
    iget v0, p0, Lm/k0/d/d;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

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

.method private final Y()Ln/g;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->g(Ljava/io/File;)Ln/b0;

    move-result-object v0

    .line 2
    new-instance v1, Lm/k0/d/e;

    new-instance v2, Lm/k0/d/d$e;

    invoke-direct {v2, p0}, Lm/k0/d/d$e;-><init>(Lm/k0/d/d;)V

    invoke-direct {v1, v0, v2}, Lm/k0/d/e;-><init>(Ln/b0;Lkotlin/w/b/l;)V

    .line 3
    invoke-static {v1}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v0

    return-object v0
.end method

.method public static final synthetic a(Lm/k0/d/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/k0/d/d;->o:Z

    return p0
.end method

.method public static final synthetic b(Lm/k0/d/d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/k0/d/d;->p:Z

    return p0
.end method

.method public static final synthetic c(Lm/k0/d/d;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lm/k0/d/d;->X()Z

    move-result p0

    return p0
.end method

.method public static final synthetic e(Lm/k0/d/d;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/k0/d/d;->n:Z

    return-void
.end method

.method public static final synthetic f(Lm/k0/d/d;Ln/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/k0/d/d;->k:Ln/g;

    return-void
.end method

.method public static final synthetic g(Lm/k0/d/d;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/k0/d/d;->s:Z

    return-void
.end method

.method public static final synthetic i(Lm/k0/d/d;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/k0/d/d;->r:Z

    return-void
.end method

.method public static final synthetic j(Lm/k0/d/d;I)V
    .locals 0

    .line 1
    iput p1, p0, Lm/k0/d/d;->m:I

    return-void
.end method

.method private final k0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->h:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->f(Ljava/io/File;)V

    .line 2
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

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

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lm/k0/d/d$b;

    .line 5
    invoke-virtual {v1}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 6
    iget v2, p0, Lm/k0/d/d;->z:I

    :goto_1
    if-ge v3, v2, :cond_0

    .line 7
    iget-wide v4, p0, Lm/k0/d/d;->j:J

    invoke-virtual {v1}, Lm/k0/d/d$b;->e()[J

    move-result-object v6

    aget-wide v7, v6, v3

    add-long/2addr v4, v7

    iput-wide v4, p0, Lm/k0/d/d;->j:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v1, v2}, Lm/k0/d/d$b;->l(Lm/k0/d/d$a;)V

    .line 9
    iget v2, p0, Lm/k0/d/d;->z:I

    :goto_2
    if-ge v3, v2, :cond_2

    .line 10
    iget-object v4, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-virtual {v1}, Lm/k0/d/d$b;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lm/k0/h/b;->f(Ljava/io/File;)V

    .line 11
    iget-object v4, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-virtual {v1}, Lm/k0/d/d$b;->c()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    invoke-interface {v4, v5}, Lm/k0/h/b;->f(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 12
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final declared-synchronized l()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lm/k0/d/d;->q:Z
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

.method private final l0()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    .line 1
    iget-object v1, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v2, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v1, v2}, Lm/k0/h/b;->a(Ljava/io/File;)Ln/d0;

    move-result-object v1

    invoke-static {v1}, Ln/r;->d(Ln/d0;)Ln/h;

    move-result-object v1

    .line 2
    :try_start_0
    invoke-interface {v1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-interface {v1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-interface {v1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-interface {v1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-interface {v1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v6

    .line 7
    sget-object v7, Lm/k0/d/d;->D:Ljava/lang/String;

    invoke-static {v7, v2}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    sget-object v7, Lm/k0/d/d;->E:Ljava/lang/String;

    invoke-static {v7, v3}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    xor-int/2addr v7, v8

    if-nez v7, :cond_2

    .line 8
    iget v7, p0, Lm/k0/d/d;->y:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/2addr v4, v8

    if-nez v4, :cond_2

    .line 9
    iget v4, p0, Lm/k0/d/d;->z:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v5}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    const/4 v8, 0x0

    :goto_0
    if-nez v8, :cond_2

    .line 11
    :goto_1
    :try_start_1
    invoke-interface {v1}, Ln/h;->P0()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lm/k0/d/d;->p0(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 12
    :catch_0
    :try_start_2
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    sub-int/2addr v7, v0

    iput v7, p0, Lm/k0/d/d;->m:I

    .line 13
    invoke-interface {v1}, Ln/h;->S()Z

    move-result v0

    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lm/k0/d/d;->q0()V

    goto :goto_2

    .line 15
    :cond_1
    invoke-direct {p0}, Lm/k0/d/d;->Y()Ln/g;

    move-result-object v0

    iput-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    .line 16
    :goto_2
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    .line 17
    invoke-static {v1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    .line 18
    :cond_2
    :try_start_3
    new-instance v4, Ljava/io/IOException;

    .line 19
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

    .line 20
    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    .line 21
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v1, v0}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private final p0(Ljava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {v1 .. v6}, Lkotlin/c0/m;->S(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    const-string v9, "unexpected journal line: "

    const/4 v10, -0x1

    if-eq v8, v10, :cond_9

    add-int/lit8 v11, v8, 0x1

    const/16 v2, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v3, v11

    .line 2
    invoke-static/range {v1 .. v6}, Lkotlin/c0/m;->S(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    const-string v2, "(this as java.lang.String).substring(startIndex)"

    const-string v3, "null cannot be cast to non-null type java.lang.String"

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v1, v10, :cond_1

    if-eqz v7, :cond_0

    .line 3
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v12, Lm/k0/d/d;->J:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v8, v13, :cond_2

    invoke-static {v7, v12, v6, v4, v5}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 5
    iget-object v1, v0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v11}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 6
    :cond_0
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-eqz v7, :cond_8

    .line 7
    invoke-virtual {v7, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v11, v12}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    :cond_2
    iget-object v12, v0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lm/k0/d/d$b;

    if-nez v12, :cond_3

    .line 9
    new-instance v12, Lm/k0/d/d$b;

    invoke-direct {v12, v0, v11}, Lm/k0/d/d$b;-><init>(Lm/k0/d/d;Ljava/lang/String;)V

    .line 10
    iget-object v13, v0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-interface {v13, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eq v1, v10, :cond_5

    .line 11
    sget-object v11, Lm/k0/d/d;->H:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v8, v13, :cond_5

    invoke-static {v7, v11, v6, v4, v5}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v4, 0x1

    add-int/2addr v1, v4

    if-eqz v7, :cond_4

    .line 12
    invoke-virtual {v7, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v14, v4, [C

    const/16 v1, 0x20

    aput-char v1, v14, v6

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x6

    const/16 v18, 0x0

    .line 13
    invoke-static/range {v13 .. v18}, Lkotlin/c0/m;->q0(Ljava/lang/CharSequence;[CZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-virtual {v12, v4}, Lm/k0/d/d$b;->o(Z)V

    .line 15
    invoke-virtual {v12, v5}, Lm/k0/d/d$b;->l(Lm/k0/d/d$a;)V

    .line 16
    invoke-virtual {v12, v1}, Lm/k0/d/d$b;->m(Ljava/util/List;)V

    goto :goto_0

    .line 17
    :cond_4
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    if-ne v1, v10, :cond_6

    .line 18
    sget-object v2, Lm/k0/d/d;->I:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v8, v3, :cond_6

    invoke-static {v7, v2, v6, v4, v5}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    new-instance v1, Lm/k0/d/d$a;

    invoke-direct {v1, v0, v12}, Lm/k0/d/d$a;-><init>(Lm/k0/d/d;Lm/k0/d/d$b;)V

    invoke-virtual {v12, v1}, Lm/k0/d/d$b;->l(Lm/k0/d/d$a;)V

    goto :goto_0

    :cond_6
    if-ne v1, v10, :cond_7

    .line 20
    sget-object v1, Lm/k0/d/d;->K:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v8, v2, :cond_7

    invoke-static {v7, v1, v6, v4, v5}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    return-void

    .line 21
    :cond_7
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 22
    :cond_8
    new-instance v1, Lkotlin/TypeCastException;

    invoke-direct {v1, v3}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_9
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private final y0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lm/k0/d/d$b;

    .line 2
    invoke-virtual {v1}, Lm/k0/d/d$b;->i()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v0, "toEvict"

    .line 3
    invoke-static {v1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lm/k0/d/d;->u0(Lm/k0/d/d$b;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic z(Lm/k0/d/d;Ljava/lang/String;JILjava/lang/Object;)Lm/k0/d/d$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    .line 1
    sget-wide p2, Lm/k0/d/d;->F:J

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lm/k0/d/d;->y(Ljava/lang/String;J)Lm/k0/d/d$a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized A()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lm/k0/d/d;->N()V

    .line 2
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "lruEntries.values"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v2, v1, [Lm/k0/d/d$b;

    .line 3
    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast v0, [Lm/k0/d/d$b;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    const-string v5, "entry"

    .line 4
    invoke-static {v4, v5}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lm/k0/d/d;->u0(Lm/k0/d/d$b;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iput-boolean v1, p0, Lm/k0/d/d;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    .line 7
    :cond_1
    :try_start_1
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized C(Ljava/lang/String;)Lm/k0/d/d$c;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lm/k0/d/d;->N()V

    .line 2
    invoke-direct {p0}, Lm/k0/d/d;->l()V

    .line 3
    invoke-direct {p0, p1}, Lm/k0/d/d;->I0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/k0/d/d$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "lruEntries[key] ?: return null"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lm/k0/d/d$b;->r()Lm/k0/d/d$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6
    iget v2, p0, Lm/k0/d/d;->m:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lm/k0/d/d;->m:I

    .line 7
    iget-object v2, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz v2, :cond_1

    sget-object v1, Lm/k0/d/d;->K:Ljava/lang/String;

    invoke-interface {v2, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v1

    const/16 v2, 0x20

    .line 8
    invoke-interface {v1, v2}, Ln/g;->T(I)Ln/g;

    move-result-object v1

    .line 9
    invoke-interface {v1, p1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object p1

    const/16 v1, 0xa

    .line 10
    invoke-interface {p1, v1}, Ln/g;->T(I)Ln/g;

    .line 11
    invoke-direct {p0}, Lm/k0/d/d;->X()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object v1, p0, Lm/k0/d/d;->u:Lm/k0/e/d;

    iget-object v2, p0, Lm/k0/d/d;->v:Lm/k0/d/d$d;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lm/k0/e/d;->j(Lm/k0/e/d;Lm/k0/e/a;JILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    :cond_0
    monitor-exit p0

    return-object v0

    .line 14
    :cond_1
    :try_start_1
    invoke-static {}, Lkotlin/w/c/k;->o()V
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

.method public final D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lm/k0/d/d;->q:Z

    return v0
.end method

.method public final G0()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :cond_0
    iget-wide v0, p0, Lm/k0/d/d;->j:J

    iget-wide v2, p0, Lm/k0/d/d;->f:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 2
    invoke-direct {p0}, Lm/k0/d/d;->y0()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lm/k0/d/d;->r:Z

    return-void
.end method

.method public final K()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/d/d;->x:Ljava/io/File;

    return-object v0
.end method

.method public final L()Lm/k0/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    return-object v0
.end method

.method public final M()I
    .locals 1

    .line 1
    iget v0, p0, Lm/k0/d/d;->z:I

    return v0
.end method

.method public final declared-synchronized N()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    sget-boolean v0, Lm/k0/b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    const-string v3, "Thread.currentThread()"

    invoke-static {v2, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " MUST hold lock on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 3
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lm/k0/d/d;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    .line 4
    monitor-exit p0

    return-void

    .line 5
    :cond_2
    :try_start_1
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->i:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->i:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->f(Ljava/io/File;)V

    goto :goto_1

    .line 8
    :cond_3
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->i:Ljava/io/File;

    iget-object v2, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lm/k0/h/b;->e(Ljava/io/File;Ljava/io/File;)V

    .line 9
    :cond_4
    :goto_1
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->i:Ljava/io/File;

    invoke-static {v0, v1}, Lm/k0/b;->C(Lm/k0/h/b;Ljava/io/File;)Z

    move-result v0

    iput-boolean v0, p0, Lm/k0/d/d;->o:Z

    .line 10
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->d(Ljava/io/File;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 11
    :try_start_2
    invoke-direct {p0}, Lm/k0/d/d;->l0()V

    .line 12
    invoke-direct {p0}, Lm/k0/d/d;->k0()V

    .line 13
    iput-boolean v1, p0, Lm/k0/d/d;->p:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14
    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    .line 15
    :try_start_3
    sget-object v2, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v2}, Lm/k0/i/h$a;->g()Lm/k0/i/h;

    move-result-object v2

    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lm/k0/d/d;->x:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", removing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 17
    invoke-virtual {v2, v3, v4, v0}, Lm/k0/i/h;->k(Ljava/lang/String;ILjava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v0, 0x0

    .line 18
    :try_start_4
    invoke-virtual {p0}, Lm/k0/d/d;->r()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 19
    :try_start_5
    iput-boolean v0, p0, Lm/k0/d/d;->q:Z

    goto :goto_2

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lm/k0/d/d;->q:Z

    throw v1

    .line 20
    :cond_5
    :goto_2
    invoke-virtual {p0}, Lm/k0/d/d;->q0()V

    .line 21
    iput-boolean v1, p0, Lm/k0/d/d;->p:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 22
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized close()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lm/k0/d/d;->p:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lm/k0/d/d;->q:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v2, "lruEntries.values"

    invoke-static {v0, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    new-array v3, v2, [Lm/k0/d/d$b;

    .line 3
    invoke-interface {v0, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    check-cast v0, [Lm/k0/d/d$b;

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 4
    invoke-virtual {v4}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v4}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lm/k0/d/d$a;->c()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lm/k0/d/d;->G0()V

    .line 7
    iget-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ln/b0;->close()V

    .line 8
    iput-object v2, p0, Lm/k0/d/d;->k:Ln/g;

    .line 9
    iput-boolean v1, p0, Lm/k0/d/d;->q:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_3
    :try_start_1
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 12
    :cond_4
    :try_start_2
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 13
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lm/k0/d/d;->q:Z
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
    iget-boolean v0, p0, Lm/k0/d/d;->p:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lm/k0/d/d;->l()V

    .line 3
    invoke-virtual {p0}, Lm/k0/d/d;->G0()V

    .line 4
    iget-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ln/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_2
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x0

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o(Lm/k0/d/d$a;Z)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "editor"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lm/k0/d/d$a;->d()Lm/k0/d/d$b;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v1

    invoke-static {v1, p1}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_3

    .line 3
    invoke-virtual {v0}, Lm/k0/d/d$b;->g()Z

    move-result v3

    if-nez v3, :cond_3

    .line 4
    iget v3, p0, Lm/k0/d/d;->z:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 5
    invoke-virtual {p1}, Lm/k0/d/d$a;->e()[Z

    move-result-object v5

    if-eqz v5, :cond_2

    aget-boolean v5, v5, v4

    if-eqz v5, :cond_1

    .line 6
    iget-object v5, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-virtual {v0}, Lm/k0/d/d$b;->c()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5, v6}, Lm/k0/h/b;->d(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7
    invoke-virtual {p1}, Lm/k0/d/d$a;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lm/k0/d/d$a;->a()V

    .line 10
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

    .line 11
    :cond_2
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 12
    :cond_3
    :try_start_2
    iget p1, p0, Lm/k0/d/d;->z:I

    :goto_1
    if-ge v1, p1, :cond_6

    .line 13
    invoke-virtual {v0}, Lm/k0/d/d$b;->c()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    if-eqz p2, :cond_4

    .line 14
    invoke-virtual {v0}, Lm/k0/d/d$b;->i()Z

    move-result v4

    if-nez v4, :cond_4

    .line 15
    iget-object v4, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-interface {v4, v3}, Lm/k0/h/b;->d(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 16
    invoke-virtual {v0}, Lm/k0/d/d$b;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 17
    iget-object v5, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-interface {v5, v3, v4}, Lm/k0/h/b;->e(Ljava/io/File;Ljava/io/File;)V

    .line 18
    invoke-virtual {v0}, Lm/k0/d/d$b;->e()[J

    move-result-object v3

    aget-wide v5, v3, v1

    .line 19
    iget-object v3, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-interface {v3, v4}, Lm/k0/h/b;->h(Ljava/io/File;)J

    move-result-wide v3

    .line 20
    invoke-virtual {v0}, Lm/k0/d/d$b;->e()[J

    move-result-object v7

    aput-wide v3, v7, v1

    .line 21
    iget-wide v7, p0, Lm/k0/d/d;->j:J

    sub-long/2addr v7, v5

    add-long/2addr v7, v3

    iput-wide v7, p0, Lm/k0/d/d;->j:J

    goto :goto_2

    .line 22
    :cond_4
    iget-object v4, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-interface {v4, v3}, Lm/k0/h/b;->f(Ljava/io/File;)V

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 23
    :cond_6
    invoke-virtual {v0, v2}, Lm/k0/d/d$b;->l(Lm/k0/d/d$a;)V

    .line 24
    invoke-virtual {v0}, Lm/k0/d/d$b;->i()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 25
    invoke-virtual {p0, v0}, Lm/k0/d/d;->u0(Lm/k0/d/d$b;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 26
    monitor-exit p0

    return-void

    .line 27
    :cond_7
    :try_start_3
    iget p1, p0, Lm/k0/d/d;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lm/k0/d/d;->m:I

    .line 28
    iget-object p1, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz p1, :cond_d

    .line 29
    invoke-virtual {v0}, Lm/k0/d/d$b;->g()Z

    move-result v2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-nez v2, :cond_9

    if-eqz p2, :cond_8

    goto :goto_3

    .line 30
    :cond_8
    iget-object p2, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object p2, Lm/k0/d/d;->J:Ljava/lang/String;

    invoke-interface {p1, p2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object p2

    invoke-interface {p2, v4}, Ln/g;->T(I)Ln/g;

    .line 32
    invoke-virtual {v0}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 33
    invoke-interface {p1, v3}, Ln/g;->T(I)Ln/g;

    goto :goto_4

    .line 34
    :cond_9
    :goto_3
    invoke-virtual {v0, v1}, Lm/k0/d/d$b;->o(Z)V

    .line 35
    sget-object v1, Lm/k0/d/d;->H:Ljava/lang/String;

    invoke-interface {p1, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v1

    invoke-interface {v1, v4}, Ln/g;->T(I)Ln/g;

    .line 36
    invoke-virtual {v0}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 37
    invoke-virtual {v0, p1}, Lm/k0/d/d$b;->s(Ln/g;)V

    .line 38
    invoke-interface {p1, v3}, Ln/g;->T(I)Ln/g;

    if-eqz p2, :cond_a

    .line 39
    iget-wide v1, p0, Lm/k0/d/d;->t:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lm/k0/d/d;->t:J

    invoke-virtual {v0, v1, v2}, Lm/k0/d/d$b;->p(J)V

    .line 40
    :cond_a
    :goto_4
    invoke-interface {p1}, Ln/g;->flush()V

    .line 41
    iget-wide p1, p0, Lm/k0/d/d;->j:J

    iget-wide v0, p0, Lm/k0/d/d;->f:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_b

    invoke-direct {p0}, Lm/k0/d/d;->X()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 42
    :cond_b
    iget-object v0, p0, Lm/k0/d/d;->u:Lm/k0/e/d;

    iget-object v1, p0, Lm/k0/d/d;->v:Lm/k0/d/d$d;

    const-wide/16 v2, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lm/k0/e/d;->j(Lm/k0/e/d;Lm/k0/e/a;JILjava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 43
    :cond_c
    monitor-exit p0

    return-void

    .line 44
    :cond_d
    :try_start_4
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    :cond_e
    :try_start_5
    const-string p1, "Check failed."

    .line 45
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

.method public final declared-synchronized q0()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ln/b0;->close()V

    .line 2
    :cond_0
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->h:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->b(Ljava/io/File;)Ln/b0;

    move-result-object v0

    invoke-static {v0}, Ln/r;->c(Ln/b0;)Ln/g;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x0

    .line 3
    :try_start_1
    sget-object v2, Lm/k0/d/d;->D:Ljava/lang/String;

    invoke-interface {v0, v2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v2

    const/16 v3, 0xa

    invoke-interface {v2, v3}, Ln/g;->T(I)Ln/g;

    .line 4
    sget-object v2, Lm/k0/d/d;->E:Ljava/lang/String;

    invoke-interface {v0, v2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v2

    invoke-interface {v2, v3}, Ln/g;->T(I)Ln/g;

    .line 5
    iget v2, p0, Lm/k0/d/d;->y:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Ln/g;->p1(J)Ln/g;

    move-result-object v2

    invoke-interface {v2, v3}, Ln/g;->T(I)Ln/g;

    .line 6
    iget v2, p0, Lm/k0/d/d;->z:I

    int-to-long v4, v2

    invoke-interface {v0, v4, v5}, Ln/g;->p1(J)Ln/g;

    move-result-object v2

    invoke-interface {v2, v3}, Ln/g;->T(I)Ln/g;

    .line 7
    invoke-interface {v0, v3}, Ln/g;->T(I)Ln/g;

    .line 8
    iget-object v2, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

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

    check-cast v4, Lm/k0/d/d$b;

    .line 9
    invoke-virtual {v4}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v5

    const/16 v6, 0x20

    if-eqz v5, :cond_1

    .line 10
    sget-object v5, Lm/k0/d/d;->I:Ljava/lang/String;

    invoke-interface {v0, v5}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v5

    invoke-interface {v5, v6}, Ln/g;->T(I)Ln/g;

    .line 11
    invoke-virtual {v4}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 12
    invoke-interface {v0, v3}, Ln/g;->T(I)Ln/g;

    goto :goto_0

    .line 13
    :cond_1
    sget-object v5, Lm/k0/d/d;->H:Ljava/lang/String;

    invoke-interface {v0, v5}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object v5

    invoke-interface {v5, v6}, Ln/g;->T(I)Ln/g;

    .line 14
    invoke-virtual {v4}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 15
    invoke-virtual {v4, v0}, Lm/k0/d/d$b;->s(Ln/g;)V

    .line 16
    invoke-interface {v0, v3}, Ln/g;->T(I)Ln/g;

    goto :goto_0

    .line 17
    :cond_2
    sget-object v2, Lkotlin/r;->a:Lkotlin/r;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    :try_start_2
    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 19
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->d(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->g:Ljava/io/File;

    iget-object v2, p0, Lm/k0/d/d;->i:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lm/k0/h/b;->e(Ljava/io/File;Ljava/io/File;)V

    .line 21
    :cond_3
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->h:Ljava/io/File;

    iget-object v2, p0, Lm/k0/d/d;->g:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lm/k0/h/b;->e(Ljava/io/File;Ljava/io/File;)V

    .line 22
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->i:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->f(Ljava/io/File;)V

    .line 23
    invoke-direct {p0}, Lm/k0/d/d;->Y()Ln/g;

    move-result-object v0

    iput-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lm/k0/d/d;->n:Z

    .line 25
    iput-boolean v0, p0, Lm/k0/d/d;->s:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 26
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    .line 27
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Lkotlin/io/a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final r()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lm/k0/d/d;->close()V

    .line 2
    iget-object v0, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    iget-object v1, p0, Lm/k0/d/d;->x:Ljava/io/File;

    invoke-interface {v0, v1}, Lm/k0/h/b;->c(Ljava/io/File;)V

    return-void
.end method

.method public final declared-synchronized s0(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lm/k0/d/d;->N()V

    .line 2
    invoke-direct {p0}, Lm/k0/d/d;->l()V

    .line 3
    invoke-direct {p0, p1}, Lm/k0/d/d;->I0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm/k0/d/d$b;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "lruEntries[key] ?: return false"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lm/k0/d/d;->u0(Lm/k0/d/d$b;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    iget-wide v1, p0, Lm/k0/d/d;->j:J

    iget-wide v3, p0, Lm/k0/d/d;->f:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    iput-boolean v0, p0, Lm/k0/d/d;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    :cond_0
    monitor-exit p0

    return p1

    .line 8
    :cond_1
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final u0(Lm/k0/d/d$b;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lm/k0/d/d;->o:Z

    const/16 v1, 0xa

    const/16 v2, 0x20

    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lm/k0/d/d$b;->f()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz v0, :cond_0

    .line 4
    sget-object v4, Lm/k0/d/d;->I:Ljava/lang/String;

    invoke-interface {v0, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 5
    invoke-interface {v0, v2}, Ln/g;->T(I)Ln/g;

    .line 6
    invoke-virtual {p1}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 7
    invoke-interface {v0, v1}, Ln/g;->T(I)Ln/g;

    .line 8
    invoke-interface {v0}, Ln/g;->flush()V

    .line 9
    :cond_0
    invoke-virtual {p1}, Lm/k0/d/d$b;->f()I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    :cond_1
    invoke-virtual {p1, v3}, Lm/k0/d/d$b;->q(Z)V

    return v3

    .line 11
    :cond_2
    invoke-virtual {p1}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lm/k0/d/d$a;->c()V

    :cond_3
    const/4 v0, 0x0

    .line 12
    iget v4, p0, Lm/k0/d/d;->z:I

    :goto_0
    if-ge v0, v4, :cond_4

    .line 13
    iget-object v5, p0, Lm/k0/d/d;->w:Lm/k0/h/b;

    invoke-virtual {p1}, Lm/k0/d/d$b;->a()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/io/File;

    invoke-interface {v5, v6}, Lm/k0/h/b;->f(Ljava/io/File;)V

    .line 14
    iget-wide v5, p0, Lm/k0/d/d;->j:J

    invoke-virtual {p1}, Lm/k0/d/d$b;->e()[J

    move-result-object v7

    aget-wide v8, v7, v0

    sub-long/2addr v5, v8

    iput-wide v5, p0, Lm/k0/d/d;->j:J

    .line 15
    invoke-virtual {p1}, Lm/k0/d/d$b;->e()[J

    move-result-object v5

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 16
    :cond_4
    iget v0, p0, Lm/k0/d/d;->m:I

    add-int/2addr v0, v3

    iput v0, p0, Lm/k0/d/d;->m:I

    .line 17
    iget-object v0, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz v0, :cond_5

    .line 18
    sget-object v4, Lm/k0/d/d;->J:Ljava/lang/String;

    invoke-interface {v0, v4}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 19
    invoke-interface {v0, v2}, Ln/g;->T(I)Ln/g;

    .line 20
    invoke-virtual {p1}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 21
    invoke-interface {v0, v1}, Ln/g;->T(I)Ln/g;

    .line 22
    :cond_5
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Lm/k0/d/d$b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    invoke-direct {p0}, Lm/k0/d/d;->X()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 24
    iget-object v4, p0, Lm/k0/d/d;->u:Lm/k0/e/d;

    iget-object v5, p0, Lm/k0/d/d;->v:Lm/k0/d/d$d;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lm/k0/e/d;->j(Lm/k0/e/d;Lm/k0/e/a;JILjava/lang/Object;)V

    :cond_6
    return v3
.end method

.method public final declared-synchronized y(Ljava/lang/String;J)Lm/k0/d/d$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lm/k0/d/d;->N()V

    .line 2
    invoke-direct {p0}, Lm/k0/d/d;->l()V

    .line 3
    invoke-direct {p0, p1}, Lm/k0/d/d;->I0(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lm/k0/d/d$b;

    .line 5
    sget-wide v1, Lm/k0/d/d;->F:J

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lm/k0/d/d$b;->h()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1

    .line 6
    :cond_0
    monitor-exit p0

    return-object v3

    :cond_1
    if-eqz v0, :cond_2

    .line 7
    :try_start_1
    invoke-virtual {v0}, Lm/k0/d/d$b;->b()Lm/k0/d/d$a;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move-object p2, v3

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    monitor-exit p0

    return-object v3

    :cond_3
    if-eqz v0, :cond_4

    .line 9
    :try_start_2
    invoke-virtual {v0}, Lm/k0/d/d$b;->f()I

    move-result p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_4

    .line 10
    monitor-exit p0

    return-object v3

    .line 11
    :cond_4
    :try_start_3
    iget-boolean p2, p0, Lm/k0/d/d;->r:Z

    if-nez p2, :cond_9

    iget-boolean p2, p0, Lm/k0/d/d;->s:Z

    if-eqz p2, :cond_5

    goto :goto_1

    .line 12
    :cond_5
    iget-object p2, p0, Lm/k0/d/d;->k:Ln/g;

    if-eqz p2, :cond_8

    .line 13
    sget-object p3, Lm/k0/d/d;->I:Ljava/lang/String;

    invoke-interface {p2, p3}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object p3

    const/16 v1, 0x20

    .line 14
    invoke-interface {p3, v1}, Ln/g;->T(I)Ln/g;

    move-result-object p3

    .line 15
    invoke-interface {p3, p1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    move-result-object p3

    const/16 v1, 0xa

    .line 16
    invoke-interface {p3, v1}, Ln/g;->T(I)Ln/g;

    .line 17
    invoke-interface {p2}, Ln/g;->flush()V

    .line 18
    iget-boolean p2, p0, Lm/k0/d/d;->n:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz p2, :cond_6

    .line 19
    monitor-exit p0

    return-object v3

    :cond_6
    if-nez v0, :cond_7

    .line 20
    :try_start_4
    new-instance v0, Lm/k0/d/d$b;

    invoke-direct {v0, p0, p1}, Lm/k0/d/d$b;-><init>(Lm/k0/d/d;Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lm/k0/d/d;->l:Ljava/util/LinkedHashMap;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_7
    new-instance p1, Lm/k0/d/d$a;

    invoke-direct {p1, p0, v0}, Lm/k0/d/d$a;-><init>(Lm/k0/d/d;Lm/k0/d/d$b;)V

    .line 23
    invoke-virtual {v0, p1}, Lm/k0/d/d$b;->l(Lm/k0/d/d$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 24
    monitor-exit p0

    return-object p1

    .line 25
    :cond_8
    :try_start_5
    invoke-static {}, Lkotlin/w/c/k;->o()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3

    .line 26
    :cond_9
    :goto_1
    :try_start_6
    iget-object v4, p0, Lm/k0/d/d;->u:Lm/k0/e/d;

    iget-object v5, p0, Lm/k0/d/d;->v:Lm/k0/d/d$d;

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lm/k0/e/d;->j(Lm/k0/e/d;Lm/k0/e/a;JILjava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 27
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
