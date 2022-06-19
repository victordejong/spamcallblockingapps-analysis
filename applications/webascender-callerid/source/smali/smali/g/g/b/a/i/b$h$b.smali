.class final Lg/g/b/a/i/b$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/i/b$h;->a(Ljava/util/List;)Li/c/b0/b/i;
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
        "Lg/g/b/c/s;",
        ">;",
        "Li/c/b0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b$h;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b$h;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$h$b;->f:Lg/g/b/a/i/b$h;

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
            "Lg/g/b/c/s;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$h$b;->f:Lg/g/b/a/i/b$h;

    iget-object v0, v0, Lg/g/b/a/i/b$h;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->k(Lg/g/b/a/i/b;)Lcom/hiya/client/callerid/dao/a0;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/dao/a0;->d(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$h$b;->a(Ljava/util/List;)Li/c/b0/b/e;

    move-result-object p1

    return-object p1
.end method
