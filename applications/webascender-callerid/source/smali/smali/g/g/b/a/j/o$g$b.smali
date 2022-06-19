.class final Lg/g/b/a/j/o$g$b;
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
        "Ljava/lang/Throwable;",
        "Lkotlin/l<",
        "+",
        "Ljava/lang/Boolean;",
        "+",
        "Lg/g/a/a/i/o/y;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/a/a/i/o/y;


# direct methods
.method constructor <init>(Lg/g/a/a/i/o/y;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/j/o$g$b;->f:Lg/g/a/a/i/o/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Lkotlin/l;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lkotlin/l<",
            "Ljava/lang/Boolean;",
            "Lg/g/a/a/i/o/y;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lg/g/b/a/j/q;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Failed to send user feedback"

    invoke-static {v0, p1, v2, v1}, Lcom/hiya/client/support/logging/d;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lkotlin/l;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v1, p0, Lg/g/b/a/j/o$g$b;->f:Lg/g/a/a/i/o/y;

    invoke-direct {p1, v0, v1}, Lkotlin/l;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lg/g/b/a/j/o$g$b;->a(Ljava/lang/Throwable;)Lkotlin/l;

    move-result-object p1

    return-object p1
.end method
