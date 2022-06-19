.class final Lg/g/b/a/i/b$h$a;
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
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lg/g/b/a/i/b$h;


# direct methods
.method constructor <init>(Lg/g/b/a/i/b$h;)V
    .locals 0

    iput-object p1, p0, Lg/g/b/a/i/b$h$a;->f:Lg/g/b/a/i/b$h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/String;)Lg/g/b/c/s;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/b/a/i/b$h$a;->f:Lg/g/b/a/i/b$h;

    iget-object v0, v0, Lg/g/b/a/i/b$h;->f:Lg/g/b/a/i/b;

    invoke-static {v0}, Lg/g/b/a/i/b;->j(Lg/g/b/a/i/b;)Lg/g/b/a/g/a/i/j;

    move-result-object v0

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lg/g/b/a/g/a/i/j;->a([Ljava/lang/String;)Lg/g/b/c/s;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lg/g/b/a/i/b$h$a;->a([Ljava/lang/String;)Lg/g/b/c/s;

    move-result-object p1

    return-object p1
.end method
