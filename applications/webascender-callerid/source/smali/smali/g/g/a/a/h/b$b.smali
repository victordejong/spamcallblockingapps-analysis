.class final Lg/g/a/a/h/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/g/a/a/h/b;->k()Li/c/b0/b/v;
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
.field final synthetic f:Lg/g/a/a/h/b;


# direct methods
.method constructor <init>(Lg/g/a/a/h/b;)V
    .locals 0

    iput-object p1, p0, Lg/g/a/a/h/b$b;->f:Lg/g/a/a/h/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lg/g/a/a/i/o/j;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/j;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/o/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lg/g/a/a/h/b$b;->f:Lg/g/a/a/h/b;

    invoke-static {v0}, Lg/g/a/a/h/b;->f(Lg/g/a/a/h/b;)Lg/g/a/a/g/h/a;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/a;->a(Lg/g/a/a/i/o/j;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lg/g/a/a/i/o/j;

    invoke-virtual {p0, p1}, Lg/g/a/a/h/b$b;->a(Lg/g/a/a/i/o/j;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
