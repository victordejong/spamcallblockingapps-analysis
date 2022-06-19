.class public abstract Ln3/y/b/a/f0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/f0$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/f0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public H5(Ln3/y/b/a/l0;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ln3/y/b/a/l0;->o()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Ln3/y/b/a/l0$c;

    invoke-direct {p2}, Ln3/y/b/a/l0$c;-><init>()V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p1, v0, p2}, Ln3/y/b/a/l0;->m(ILn3/y/b/a/l0$c;)Ln3/y/b/a/l0$c;

    move-result-object p1

    iget-object p1, p1, Ln3/y/b/a/l0$c;->b:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public J5(Ln3/y/b/a/e0;)V
    .locals 0

    return-void
.end method

.method public w1(Z)V
    .locals 0

    return-void
.end method
