.class final Lg/g/b/d/g/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/d/g/e;->c()Li/c/b0/b/e;
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
.field final synthetic f:Lg/g/b/d/g/e;


# direct methods
.method constructor <init>(Lg/g/b/d/g/e;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/d/g/e$c;->f:Lg/g/b/d/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Li/c/b0/b/e;
    .locals 2
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
    iget-object v0, p0, Lg/g/b/d/g/e$c;->f:Lg/g/b/d/g/e;

    invoke-static {v0}, Lg/g/b/d/g/e;->a(Lg/g/b/d/g/e;)Lg/g/b/d/d/a;

    move-result-object v0

    const-string v1, "stale"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/g/b/d/d/a;->c(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lg/g/b/d/g/e$c;->a(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
