.class public abstract Ls1/a/a/a/v0/d/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/a/a/a/v0/d/b/k$a$b;,
        Ls1/a/a/a/v0/d/b/k$a$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ls1/a/a/a/v0/d/b/l;
    .locals 2

    .line 1
    instance-of v0, p0, Ls1/a/a/a/v0/d/b/k$a$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    check-cast v0, Ls1/a/a/a/v0/d/b/k$a$b;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Ls1/a/a/a/v0/d/b/k$a$b;->a:Ls1/a/a/a/v0/d/b/l;

    :cond_1
    return-object v1
.end method
