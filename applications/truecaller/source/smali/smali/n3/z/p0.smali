.class public final Ln3/z/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/z/v$c;
.implements Ls1/z/c/g;


# instance fields
.field public final synthetic a:Ls1/z/b/a;


# direct methods
.method public constructor <init>(Ls1/z/b/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/z/p0;->a:Ls1/z/b/a;

    return-void
.end method


# virtual methods
.method public a()Ls1/c;
    .locals 1

    iget-object v0, p0, Ln3/z/p0;->a:Ls1/z/b/a;

    return-object v0
.end method

.method public final synthetic b()V
    .locals 2

    iget-object v0, p0, Ln3/z/p0;->a:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "invoke(...)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Ln3/z/v$c;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ls1/z/c/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln3/z/p0;->a:Ls1/z/b/a;

    check-cast p1, Ls1/z/c/g;

    invoke-interface {p1}, Ls1/z/c/g;->a()Ls1/c;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Ln3/z/p0;->a:Ls1/z/b/a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
