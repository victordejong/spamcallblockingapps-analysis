.class public final Ls1/a/a/a/v0/b/j1/a/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/e0/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/j1/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ls1/a/a/a/v0/b/j1/b/u;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/j1/b/u;)V
    .locals 1

    const-string v0, "javaElement"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/j1/a/j$a;->b:Ls1/a/a/a/v0/b/j1/b/u;

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

.method public c()Ls1/a/a/a/v0/d/a/f0/l;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/j1/a/j$a;->b:Ls1/a/a/a/v0/b/j1/b/u;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ls1/a/a/a/v0/b/j1/a/j$a;

    const-string v2, ": "

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->z0(Ljava/lang/Class;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/j1/a/j$a;->b:Ls1/a/a/a/v0/b/j1/b/u;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
