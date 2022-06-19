.class public abstract Lu/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu/b$a;,
        Lu/b$d;,
        Lu/b$f;,
        Lu/b$h;,
        Lu/b$b;,
        Lu/b$c;,
        Lu/b$e;,
        Lu/b$g;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/Object;)Lu/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lu/b<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b$b;

    invoke-direct {v0, p0}, Lu/b$b;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static emptyList()Lu/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lu/b<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lu/b;->create(Ljava/lang/Object;)Lu/b;

    move-result-object v0

    return-object v0
.end method

.method public static propagateIfFatal(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/VirtualMachineError;

    if-nez v0, :cond_2

    .line 2
    instance-of v0, p0, Ljava/lang/ThreadDeath;

    if-nez v0, :cond_1

    .line 3
    instance-of v0, p0, Ljava/lang/LinkageError;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    check-cast p0, Ljava/lang/LinkageError;

    throw p0

    .line 5
    :cond_1
    check-cast p0, Ljava/lang/ThreadDeath;

    throw p0

    .line 6
    :cond_2
    check-cast p0, Ljava/lang/VirtualMachineError;

    throw p0
.end method


# virtual methods
.method public abstract cancel()V
.end method

.method public bridge abstract synthetic clone()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation
.end method

.method public abstract clone()Lu/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu/b<",
            "TV;>;"
        }
    .end annotation
.end method

.method public abstract enqueue(Lu/c;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "TV;>;)V"
        }
    .end annotation
.end method

.method public abstract execute()Ljava/lang/Object;
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
.end method

.method public final flatMap(Lu/b$e;)Lu/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/b$e<",
            "TV;TR;>;)",
            "Lu/b<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b$f;

    invoke-direct {v0, p1, p0}, Lu/b$f;-><init>(Lu/b$e;Lu/b;)V

    return-object v0
.end method

.method public final handleError(Lu/b$c;)Lu/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/b$c<",
            "TV;>;)",
            "Lu/b<",
            "TV;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b$d;

    invoke-direct {v0, p1, p0}, Lu/b$d;-><init>(Lu/b$c;Lu/b;)V

    return-object v0
.end method

.method public abstract isCanceled()Z
.end method

.method public final map(Lu/b$g;)Lu/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lu/b$g<",
            "TV;TR;>;)",
            "Lu/b<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b$h;

    invoke-direct {v0, p1, p0}, Lu/b$h;-><init>(Lu/b$g;Lu/b;)V

    return-object v0
.end method
