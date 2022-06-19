.class public final Ls1/a/a/a/v0/d/b/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/r0;


# instance fields
.field public final b:Ls1/a/a/a/v0/d/a/d0/n/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/i;)V
    .locals 1

    const-string v0, "packageFragment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/m;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    return-void
.end method


# virtual methods
.method public b()Ls1/a/a/a/v0/b/s0;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/s0;->a:Ls1/a/a/a/v0/b/s0;

    const-string v1, "SourceFile.NO_SOURCE_FILE"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/m;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ls1/a/a/a/v0/d/b/m;->b:Ls1/a/a/a/v0/d/a/d0/n/i;

    invoke-virtual {v1}, Ls1/a/a/a/v0/d/a/d0/n/i;->w0()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
