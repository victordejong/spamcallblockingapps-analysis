.class public Lcom/google/firebase/inappmessaging/j0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcom/google/firebase/abt/b;

.field b:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/firebase/abt/b;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/inappmessaging/j0/b;->b:Ljava/util/concurrent/Executor;

    .line 3
    iput-object p1, p0, Lcom/google/firebase/inappmessaging/j0/b;->a:Lcom/google/firebase/abt/b;

    return-void
.end method

.method static synthetic a(Lcom/google/firebase/inappmessaging/j0/b;Lcom/google/firebase/inappmessaging/m;)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating active experiment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/protobuf/y;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/firebase/inappmessaging/j0/l2;->a(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/google/firebase/inappmessaging/j0/b;->a:Lcom/google/firebase/abt/b;

    new-instance v9, Lcom/google/firebase/abt/a;

    .line 3
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/m;->Y()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/m;->d0()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/m;->b0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    .line 6
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/m;->Z()J

    move-result-wide v5

    invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V

    .line 7
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/m;->c0()J

    move-result-wide v5

    .line 8
    invoke-virtual {p1}, Lcom/google/firebase/inappmessaging/m;->a0()J

    move-result-wide v7

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/google/firebase/abt/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;JJ)V

    .line 9
    invoke-virtual {p0, v9}, Lcom/google/firebase/abt/b;->m(Lcom/google/firebase/abt/a;)V
    :try_end_0
    .catch Lcom/google/firebase/abt/AbtException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to set experiment as active with ABT, missing analytics?\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/google/firebase/inappmessaging/j0/l2;->b(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method b(Lcom/google/firebase/inappmessaging/m;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/inappmessaging/j0/b;->b:Ljava/util/concurrent/Executor;

    invoke-static {p0, p1}, Lcom/google/firebase/inappmessaging/j0/a;->a(Lcom/google/firebase/inappmessaging/j0/b;Lcom/google/firebase/inappmessaging/m;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
