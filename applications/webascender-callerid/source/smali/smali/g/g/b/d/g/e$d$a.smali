.class final Lg/g/b/d/g/e$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/g/e$d;->a(Lg/g/b/d/g/e$a;)Li/c/b0/b/e0;
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
        "Ljava/util/List<",
        "+",
        "Lg/g/b/d/e/a;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/d/g/e$d;

.field final synthetic g:Lg/g/b/d/g/e$a;


# direct methods
.method constructor <init>(Lg/g/b/d/g/e$d;Lg/g/b/d/g/e$a;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/g/e$d$a;->f:Lg/g/b/d/g/e$d;

    iput-object p2, p0, Lg/g/b/d/g/e$d$a;->g:Lg/g/b/d/g/e$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/d/e/a;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/d/g/e$d$a;->f:Lg/g/b/d/g/e$d;

    iget-object v0, v0, Lg/g/b/d/g/e$d;->f:Lg/g/b/d/g/e;

    const-string v1, "storedRequests"

    .line 2
    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lg/g/b/d/g/e$d$a;->g:Lg/g/b/d/g/e$a;

    invoke-virtual {v1}, Lg/g/b/d/g/e$a;->b()Ljava/util/List;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lg/g/b/d/g/e$d$a;->g:Lg/g/b/d/g/e$a;

    invoke-virtual {v2}, Lg/g/b/d/g/e$a;->a()Ljava/util/List;

    move-result-object v2

    .line 5
    invoke-static {v0, p1, v1, v2}, Lg/g/b/d/g/e;->b(Lg/g/b/d/g/e;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lg/g/b/d/g/e$d$a;->a(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
