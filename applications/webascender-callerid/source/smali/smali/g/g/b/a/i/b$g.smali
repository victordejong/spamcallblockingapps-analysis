.class final Lg/g/b/a/i/b$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b;->q(Lg/g/b/a/i/a$a;Lg/g/b/a/k/k;J)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/y<",
        "Ljava/util/List<",
        "+[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lg/g/b/a/k/k;


# direct methods
.method constructor <init>(Lg/g/b/a/k/k;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$g;->a:Lg/g/b/a/k/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/x;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/x<",
            "Ljava/util/List<",
            "[",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    :goto_0
    iget-object v0, p0, Lg/g/b/a/i/b$g;->a:Lg/g/b/a/k/k;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lg/g/b/a/k/k;->c(I)Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v0, p0, Lg/g/b/a/i/b$g;->a:Lg/g/b/a/k/k;

    invoke-virtual {v0}, Lg/g/b/a/k/k;->a()V

    .line 4
    invoke-interface {p1}, Li/c/b0/b/k;->onComplete()V

    return-void

    .line 5
    :cond_0
    invoke-interface {p1, v0}, Li/c/b0/b/k;->onNext(Ljava/lang/Object;)V

    goto :goto_0
.end method
