.class final Lu/b$d;
.super Lu/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lu/b$a<",
        "TV;>;"
    }
.end annotation


# static fields
.field static final j:Ljava/lang/Object;


# instance fields
.field final h:Lu/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/b$c<",
            "TV;>;"
        }
    .end annotation
.end field

.field final i:Lu/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/b<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lu/b$d;->j:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Lu/b$c;Lu/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/b$c<",
            "TV;>;",
            "Lu/b<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lu/b$a;-><init>()V

    .line 2
    iput-object p1, p0, Lu/b$d;->h:Lu/b$c;

    .line 3
    iput-object p2, p0, Lu/b$d;->i:Lu/b;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lu/b$d;->i:Lu/b;

    invoke-virtual {v0}, Lu/b;->cancel()V

    return-void
.end method

.method protected b(Lu/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/b$d;->i:Lu/b;

    new-instance v1, Lu/b$d$b;

    invoke-direct {v1, p0, p1}, Lu/b$d$b;-><init>(Lu/b$d;Lu/c;)V

    invoke-virtual {v0, v1}, Lu/b;->enqueue(Lu/c;)V

    return-void
.end method

.method public clone()Lu/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu/b<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b$d;

    iget-object v1, p0, Lu/b$d;->h:Lu/b$c;

    iget-object v2, p0, Lu/b$d;->i:Lu/b;

    invoke-virtual {v2}, Lu/b;->clone()Lu/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/b$d;-><init>(Lu/b$c;Lu/b;)V

    return-object v0
.end method

.method protected d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lu/b$d;->i:Lu/b;

    invoke-virtual {v0}, Lu/b;->execute()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {v0}, Lu/b;->propagateIfFatal(Ljava/lang/Throwable;)V

    .line 3
    invoke-virtual {p0, v0}, Lu/b$d;->f(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_1
    move-exception v0

    .line 4
    invoke-virtual {p0, v0}, Lu/b$d;->f(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :catch_2
    move-exception v0

    .line 5
    invoke-virtual {p0, v0}, Lu/b$d;->f(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method f(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;)TV;^TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lu/b$d;->j:Ljava/lang/Object;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 2
    iget-object v2, p0, Lu/b$d;->h:Lu/b$c;

    new-instance v3, Lu/b$d$a;

    invoke-direct {v3, p0, v0}, Lu/b$d$a;-><init>(Lu/b$d;Ljava/util/concurrent/atomic/AtomicReference;)V

    invoke-interface {v2, p1, v3}, Lu/b$c;->a(Ljava/lang/Throwable;Lu/c;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eq v1, v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ErrorHandling{call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/b$d;->i:Lu/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/b$d;->h:Lu/b$c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
