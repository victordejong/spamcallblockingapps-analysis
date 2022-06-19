.class public Ls1/a/a/a/v0/b/h1/p$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/p$a;-><init>(Ls1/a/a/a/v0/b/h1/p;Ls1/a/a/a/v0/l/m;)V
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
        "Ljava/util/Collection<",
        "+",
        "Ls1/a/a/a/v0/b/q0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/p$a;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/p$a;Ls1/a/a/a/v0/b/h1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/p$a$a;->a:Ls1/a/a/a/v0/b/h1/p$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/p$a$a;->a:Ls1/a/a/a/v0/b/h1/p$a;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Ls1/a/a/a/v0/b/h1/p$a;->i()Ls1/a/a/a/v0/j/y/i;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/c/a/d;->g:Ls1/a/a/a/v0/c/a/d;

    invoke-interface {v1, p1, v2}, Ls1/a/a/a/v0/j/y/i;->b(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/c/a/b;)Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ls1/a/a/a/v0/b/h1/p$a;->j(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p1

    return-object p1

    :cond_0
    const/16 p1, 0x8

    .line 5
    invoke-static {p1}, Ls1/a/a/a/v0/b/h1/p$a;->h(I)V

    const/4 p1, 0x0

    throw p1
.end method
