.class final Lg/g/b/d/g/e$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/g/e;->d(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Ljava/util/List;

.field final synthetic g:Ljava/util/List;

.field final synthetic h:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/g/e$g;->f:Ljava/util/List;

    iput-object p2, p0, Lg/g/b/d/g/e$g;->g:Ljava/util/List;

    iput-object p3, p0, Lg/g/b/d/g/e$g;->h:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/d/c/j;)Li/c/b0/b/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/d/c/j;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/e$g;->f:Ljava/util/List;

    iget-object v1, p0, Lg/g/b/d/g/e$g;->g:Ljava/util/List;

    iget-object v2, p0, Lg/g/b/d/g/e$g;->h:Ljava/util/List;

    invoke-interface {p1, v0, v1, v2}, Lg/g/b/d/c/j;->a(Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    .line 2
    sget-object v0, Lg/g/b/d/g/e$g$a;->f:Lg/g/b/d/g/e$g$a;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->onErrorResumeNext(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/d/c/j;

    invoke-virtual {p0, p1}, Lg/g/b/d/g/e$g;->a(Lg/g/b/d/c/j;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
