.class public final Ls1/a/a/a/v0/k/b/o$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/o;-><init>(Ls1/a/a/a/v0/f/b;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/e/m;Ls1/a/a/a/v0/e/z/a;Ls1/a/a/a/v0/k/b/g0/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/a;",
        "Ls1/a/a/a/v0/b/r0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/o;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/o;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/o$a;->b:Ls1/a/a/a/v0/k/b/o;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/a;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Ls1/a/a/a/v0/k/b/o$a;->b:Ls1/a/a/a/v0/k/b/o;

    .line 4
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/o;->l:Ls1/a/a/a/v0/k/b/g0/f;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v0, "SourceElement.NO_SOURCE"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1
.end method
