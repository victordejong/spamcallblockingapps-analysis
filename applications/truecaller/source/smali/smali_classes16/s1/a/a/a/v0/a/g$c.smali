.class public Ls1/a/a/a/v0/a/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/g;-><init>(Ls1/a/a/a/v0/l/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ls1/a/a/a/v0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/a/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/a/g$c;->a:Ls1/a/a/a/v0/a/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/a/g$c;->a:Ls1/a/a/a/v0/a/g;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    sget-object v1, Ls1/a/a/a/v0/a/k;->k:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v0, v1}, Ls1/a/a/a/v0/b/h1/a0;->Q(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/b/g0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/g0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    sget-object v2, Ls1/a/a/a/v0/c/a/d;->b:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v0, p1, v2}, Ls1/a/a/a/v0/j/y/k;->f(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ls1/a/a/a/v0/b/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    instance-of v1, v0, Ls1/a/a/a/v0/b/e;

    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Ls1/a/a/a/v0/b/e;

    return-object v0

    .line 7
    :cond_0
    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Must be a class descriptor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", but was "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "Built-in class "

    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, p1}, Ls1/a/a/a/v0/f/b;->c(Ls1/a/a/a/v0/f/e;)Ls1/a/a/a/v0/f/b;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not found"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    const/16 p1, 0xa

    .line 9
    invoke-static {p1}, Ls1/a/a/a/v0/a/g;->a(I)V

    const/4 p1, 0x0

    throw p1
.end method
