.class public abstract Lcom/google/android/gms/internal/measurement/a4;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/Object;

.field private static volatile h:Lcom/google/android/gms/internal/measurement/z3;

.field private static final i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final synthetic j:I


# instance fields
.field final a:Lcom/google/android/gms/internal/measurement/y3;

.field final b:Ljava/lang/String;

.field private final c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private volatile e:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/a4;->g:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 1
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/measurement/c4;

    sget-object v1, Lcom/google/android/gms/internal/measurement/s3;->a:Lcom/google/android/gms/internal/measurement/d4;

    .line 2
    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/c4;-><init>(Lcom/google/android/gms/internal/measurement/d4;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/measurement/a4;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/y3;Ljava/lang/String;Ljava/lang/Object;ZLcom/google/android/gms/internal/measurement/u3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, -0x1

    iput p4, p0, Lcom/google/android/gms/internal/measurement/a4;->d:I

    iget-object p4, p1, Lcom/google/android/gms/internal/measurement/y3;->b:Landroid/net/Uri;

    if-eqz p4, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    iput-object p2, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/measurement/a4;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/measurement/a4;->f:Z

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Must pass a valid SharedPreferences file name or ContentProvider URI"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static b(Landroid/content/Context;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/measurement/a4;->g:Ljava/lang/Object;

    .line 1
    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/measurement/a4;->h:Lcom/google/android/gms/internal/measurement/z3;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object p0, v2

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a()Landroid/content/Context;

    move-result-object v1

    if-eq v1, p0, :cond_2

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/measurement/g3;->e()V

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/measurement/b4;->c()V

    .line 5
    invoke-static {}, Lcom/google/android/gms/internal/measurement/n3;->d()V

    new-instance v1, Lcom/google/android/gms/internal/measurement/r3;

    .line 6
    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/measurement/r3;-><init>(Landroid/content/Context;)V

    .line 7
    invoke-static {v1}, Lcom/google/android/gms/internal/measurement/m4;->a(Lcom/google/android/gms/internal/measurement/i4;)Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/measurement/d3;

    .line 8
    invoke-direct {v2, p0, v1}, Lcom/google/android/gms/internal/measurement/d3;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/i4;)V

    sput-object v2, Lcom/google/android/gms/internal/measurement/a4;->h:Lcom/google/android/gms/internal/measurement/z3;

    sget-object p0, Lcom/google/android/gms/internal/measurement/a4;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 10
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static c()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/measurement/a4;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method


# virtual methods
.method abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 1
    iget-object v0, v0, Lcom/google/android/gms/internal/measurement/y3;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/measurement/a4;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Ljava/lang/String;

    const-string v1, "flagName must not be null"

    .line 1
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/measurement/a4;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lcom/google/android/gms/internal/measurement/a4;->d:I

    if-ge v1, v0, :cond_d

    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/google/android/gms/internal/measurement/a4;->d:I

    if-ge v1, v0, :cond_c

    sget-object v1, Lcom/google/android/gms/internal/measurement/a4;->h:Lcom/google/android/gms/internal/measurement/z3;

    const-string v2, "Must call PhenotypeFlag.init() first"

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 4
    iget-boolean v3, v2, Lcom/google/android/gms/internal/measurement/y3;->f:Z

    .line 5
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/y3;->g:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a()Landroid/content/Context;

    move-result-object v2

    .line 6
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/n3;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/n3;

    move-result-object v2

    const-string v3, "gms:phenotype:phenotype_flag:debug_bypass_phenotype"

    .line 7
    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/measurement/n3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 8
    sget-object v4, Lcom/google/android/gms/internal/measurement/b3;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "PhenotypeFlag"

    const/4 v4, 0x3

    .line 9
    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "PhenotypeFlag"

    const-string v4, "Bypass reading Phenotype values for flag: "

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a4;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 11
    :cond_1
    new-instance v5, Ljava/lang/String;

    .line 12
    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :goto_0
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v2, v3

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 13
    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/y3;->b:Landroid/net/Uri;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 14
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/y3;->b:Landroid/net/Uri;

    .line 15
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/p3;->a(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 16
    iget-boolean v2, v2, Lcom/google/android/gms/internal/measurement/y3;->h:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a()Landroid/content/Context;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/y3;->b:Landroid/net/Uri;

    .line 18
    invoke-static {v2, v4}, Lcom/google/android/gms/internal/measurement/g3;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gms/internal/measurement/g3;

    move-result-object v2

    goto :goto_1

    :cond_4
    move-object v2, v3

    goto :goto_1

    .line 19
    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a()Landroid/content/Context;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 20
    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/y3;->a:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/measurement/b4;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/google/android/gms/internal/measurement/b4;

    move-result-object v2

    :goto_1
    if-eqz v2, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/measurement/a4;->d()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/measurement/k3;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 22
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/a4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_6

    goto :goto_4

    .line 23
    :cond_6
    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 24
    iget-boolean v4, v2, Lcom/google/android/gms/internal/measurement/y3;->e:Z

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/y3;->i:Lcom/google/android/gms/internal/measurement/f4;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->a()Landroid/content/Context;

    move-result-object v2

    .line 25
    invoke-static {v2}, Lcom/google/android/gms/internal/measurement/n3;->b(Landroid/content/Context;)Lcom/google/android/gms/internal/measurement/n3;

    move-result-object v2

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    .line 26
    iget-boolean v5, v4, Lcom/google/android/gms/internal/measurement/y3;->e:Z

    iget-object v4, v4, Lcom/google/android/gms/internal/measurement/y3;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Ljava/lang/String;

    .line 27
    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/measurement/n3;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 28
    invoke-virtual {p0, v2}, Lcom/google/android/gms/internal/measurement/a4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_3

    :cond_7
    move-object v2, v3

    :goto_3
    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->c:Ljava/lang/Object;

    .line 29
    :cond_8
    :goto_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/z3;->b()Lcom/google/android/gms/internal/measurement/i4;

    move-result-object v1

    .line 30
    invoke-interface {v1}, Lcom/google/android/gms/internal/measurement/i4;->zza()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/g4;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/g4;->a()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 32
    invoke-virtual {v1}, Lcom/google/android/gms/internal/measurement/g4;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/measurement/o3;

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->a:Lcom/google/android/gms/internal/measurement/y3;

    iget-object v4, v2, Lcom/google/android/gms/internal/measurement/y3;->b:Landroid/net/Uri;

    iget-object v5, v2, Lcom/google/android/gms/internal/measurement/y3;->a:Ljava/lang/String;

    iget-object v2, v2, Lcom/google/android/gms/internal/measurement/y3;->d:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/gms/internal/measurement/a4;->b:Ljava/lang/String;

    .line 33
    invoke-virtual {v1, v4, v3, v2, v5}, Lcom/google/android/gms/internal/measurement/o3;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_9

    iget-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->c:Ljava/lang/Object;

    goto :goto_5

    .line 34
    :cond_9
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/measurement/a4;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 35
    :cond_a
    :goto_5
    iput-object v2, p0, Lcom/google/android/gms/internal/measurement/a4;->e:Ljava/lang/Object;

    iput v0, p0, Lcom/google/android/gms/internal/measurement/a4;->d:I

    goto :goto_6

    .line 36
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 37
    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_c
    :goto_6
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_d
    :goto_7
    iget-object v0, p0, Lcom/google/android/gms/internal/measurement/a4;->e:Ljava/lang/Object;

    return-object v0
.end method
