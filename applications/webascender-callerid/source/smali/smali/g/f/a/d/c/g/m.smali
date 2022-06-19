.class final Lg/f/a/d/c/g/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/f/a/d/c/g/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lg/f/a/d/c/g/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile f:Lg/f/a/d/c/g/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/f/a/d/c/g/l<",
            "TT;>;"
        }
    .end annotation
.end field

.field private volatile g:Z

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lg/f/a/d/c/g/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/f/a/d/c/g/l<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lg/f/a/d/c/g/j;->a(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lg/f/a/d/c/g/l;

    iput-object p1, p0, Lg/f/a/d/c/g/m;->f:Lg/f/a/d/c/g/l;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lg/f/a/d/c/g/m;->f:Lg/f/a/d/c/g/l;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lg/f/a/d/c/g/m;->h:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "<supplier that returned "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Suppliers.memoize("

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zza()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lg/f/a/d/c/g/m;->g:Z

    if-nez v0, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lg/f/a/d/c/g/m;->g:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lg/f/a/d/c/g/m;->f:Lg/f/a/d/c/g/l;

    invoke-interface {v0}, Lg/f/a/d/c/g/l;->zza()Ljava/lang/Object;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lg/f/a/d/c/g/m;->h:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lg/f/a/d/c/g/m;->g:Z

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lg/f/a/d/c/g/m;->f:Lg/f/a/d/c/g/l;

    .line 8
    monitor-exit p0

    return-object v0

    .line 9
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 10
    :cond_1
    :goto_0
    iget-object v0, p0, Lg/f/a/d/c/g/m;->h:Ljava/lang/Object;

    return-object v0
.end method
