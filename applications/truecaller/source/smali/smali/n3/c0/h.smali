.class public Ln3/c0/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ln3/e0/a/c$c;

.field public final b:Landroid/content/Context;

.field public final c:Ljava/lang/String;

.field public final d:Ln3/c0/q$d;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ln3/c0/q$b;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Z

.field public final h:Ln3/c0/q$c;

.field public final i:Ljava/util/concurrent/Executor;

.field public final j:Ljava/util/concurrent/Executor;

.field public final k:Z

.field public final l:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ln3/e0/a/c$c;Ln3/c0/q$d;Ljava/util/List;ZLn3/c0/q$c;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZZLjava/util/Set;Ljava/lang/String;Ljava/io/File;Ljava/util/concurrent/Callable;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ln3/e0/a/c$c;",
            "Ln3/c0/q$d;",
            "Ljava/util/List<",
            "Ln3/c0/q$b;",
            ">;Z",
            "Ln3/c0/q$c;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "ZZZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p3

    .line 2
    iput-object v1, v0, Ln3/c0/h;->a:Ln3/e0/a/c$c;

    move-object v1, p1

    .line 3
    iput-object v1, v0, Ln3/c0/h;->b:Landroid/content/Context;

    move-object v1, p2

    .line 4
    iput-object v1, v0, Ln3/c0/h;->c:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Ln3/c0/h;->d:Ln3/c0/q$d;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Ln3/c0/h;->e:Ljava/util/List;

    move v1, p6

    .line 7
    iput-boolean v1, v0, Ln3/c0/h;->g:Z

    move-object v1, p7

    .line 8
    iput-object v1, v0, Ln3/c0/h;->h:Ln3/c0/q$c;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Ln3/c0/h;->i:Ljava/util/concurrent/Executor;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Ln3/c0/h;->j:Ljava/util/concurrent/Executor;

    move v1, p11

    .line 11
    iput-boolean v1, v0, Ln3/c0/h;->k:Z

    move v1, p12

    .line 12
    iput-boolean v1, v0, Ln3/c0/h;->l:Z

    .line 13
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Ln3/c0/h;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public a(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-le p1, p2, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 1
    iget-boolean p1, p0, Ln3/c0/h;->l:Z

    if-eqz p1, :cond_1

    return v1

    .line 2
    :cond_1
    iget-boolean p1, p0, Ln3/c0/h;->k:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method
