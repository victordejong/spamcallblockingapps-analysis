.class public Li/a/d/d/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final e:Ljava/util/concurrent/TimeUnit;


# instance fields
.field private final a:Ljava/util/logging/Logger;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Li/a/d/d/f;

.field private final d:Li/a/d/d/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Li/a/d/d/h;->e:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public constructor <init>(Ljava/util/logging/Logger;)V
    .locals 1

    .line 1
    invoke-static {}, Li/a/d/d/g;->c()Li/a/d/d/g;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Li/a/d/d/h;-><init>(Ljava/util/logging/Logger;Li/a/d/c/d;)V

    return-void
.end method

.method constructor <init>(Ljava/util/logging/Logger;Li/a/d/c/d;)V
    .locals 19

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v0, Li/a/d/d/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v1, p1

    .line 4
    iput-object v1, v0, Li/a/d/d/h;->a:Ljava/util/logging/Logger;

    .line 5
    new-instance v7, Li/a/d/d/f;

    sget-object v8, Li/a/d/d/h;->e:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0x1

    .line 6
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    long-to-double v1, v1

    const-wide/high16 v11, 0x4014000000000000L    # 5.0

    div-double v2, v11, v1

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    move-object v1, v7

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Li/a/d/d/f;-><init>(DDLi/a/d/c/d;)V

    iput-object v7, v0, Li/a/d/d/h;->c:Li/a/d/d/f;

    .line 7
    new-instance v1, Li/a/d/d/f;

    .line 8
    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    long-to-double v2, v2

    div-double v14, v11, v2

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object v13, v1

    move-object/from16 v18, p2

    invoke-direct/range {v13 .. v18}, Li/a/d/d/f;-><init>(DDLi/a/d/c/d;)V

    iput-object v1, v0, Li/a/d/d/h;->d:Li/a/d/d/f;

    return-void
.end method

.method private a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    iget-object v0, p0, Li/a/d/d/h;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 2
    :cond_0
    iget-object p3, p0, Li/a/d/d/h;->a:Ljava/util/logging/Logger;

    invoke-virtual {p3, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/util/logging/Level;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Li/a/d/d/h;->a:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1}, Li/a/d/d/h;->b(Ljava/util/logging/Level;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Li/a/d/d/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Li/a/d/d/h;->d:Li/a/d/d/f;

    invoke-virtual {v0, v1, v2}, Li/a/d/d/f;->a(D)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, p2, p3}, Li/a/d/d/h;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void

    .line 5
    :cond_2
    iget-object v0, p0, Li/a/d/d/h;->c:Li/a/d/d/f;

    invoke-virtual {v0, v1, v2}, Li/a/d/d/f;->a(D)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0, p1, p2, p3}, Li/a/d/d/h;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_3
    iget-object v0, p0, Li/a/d/d/h;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Li/a/d/d/h;->d:Li/a/d/d/f;

    invoke-virtual {v0, v1, v2}, Li/a/d/d/f;->a(D)Z

    .line 9
    iget-object v0, p0, Li/a/d/d/h;->a:Ljava/util/logging/Logger;

    const-string v1, "Too many log messages detected. Will only log once per minute from now on."

    invoke-virtual {v0, p1, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, p1, p2, p3}, Li/a/d/d/h;->a(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
