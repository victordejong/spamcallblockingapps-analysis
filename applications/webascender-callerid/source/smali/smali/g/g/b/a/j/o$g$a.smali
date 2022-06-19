.class final Lg/g/b/a/j/o$g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/b/a/j/o$g;->a(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/a/a/i/o/y;


# direct methods
.method constructor <init>(Lg/g/a/a/i/o/y;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/o$g$a;->f:Lg/g/a/a/i/o/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/Response;)Lkotlin/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;)",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "Lg/g/a/a/i/o/y;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/l;

    const-string v1, "resp"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lretrofit2/Response;->isSuccessful()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v1, p0, Lg/g/b/a/j/o$g$a;->f:Lg/g/a/a/i/o/y;

    invoke-direct {v0, p1, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$g$a;->a(Lretrofit2/Response;)Lkotlin/l;

    move-result-object p1

    return-object p1
.end method
