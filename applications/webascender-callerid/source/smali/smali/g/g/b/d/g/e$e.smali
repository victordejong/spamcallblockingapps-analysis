.class final Lg/g/b/d/g/e$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/g/e;->e()Li/c/b0/b/e;
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
        "Li/c/b0/b/i0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/d/g/e;


# direct methods
.method constructor <init>(Lg/g/b/d/g/e;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/g/e$e;->f:Lg/g/b/d/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/b/d/g/e$a;)Li/c/b0/b/e0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/d/g/e$a;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/d/g/e$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/e$e;->f:Lg/g/b/d/g/e;

    invoke-static {v0}, Lg/g/b/d/g/e;->a(Lg/g/b/d/g/e;)Lg/g/b/d/d/a;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lg/g/b/d/g/e$a;->b()Ljava/util/List;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Lg/g/b/d/d/a;->c(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Li/c/b0/b/e;->N(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/b/d/g/e$a;

    invoke-virtual {p0, p1}, Lg/g/b/d/g/e$e;->a(Lg/g/b/d/g/e$a;)Li/c/b0/b/e0;

    move-result-object p1

    return-object p1
.end method
