.class public final Ls1/a/a/a/v0/d/a/d0/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/d/a/d0/j;


# instance fields
.field public a:Ls1/a/a/a/v0/j/w/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;
    .locals 1

    const-string v0, "javaClass"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/l;->a:Ls1/a/a/a/v0/j/w/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/j/w/a;->a(Ls1/a/a/a/v0/d/a/f0/g;)Ls1/a/a/a/v0/b/e;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "resolver"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
