.class public final Ls1/a/a/a/v0/k/b/e0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/e0;->a(I)Ls1/a/a/a/v0/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/e/q;",
        "Ls1/a/a/a/v0/e/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/e0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/e0$b;->b:Ls1/a/a/a/v0/k/b/e0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/e/q;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/e0$b;->b:Ls1/a/a/a/v0/k/b/e0;

    iget-object v0, v0, Ls1/a/a/a/v0/k/b/e0;->b:Ls1/a/a/a/v0/k/b/c0;

    .line 4
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/c0;->d:Ls1/a/a/a/v0/k/b/l;

    .line 5
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->f:Ls1/a/a/a/v0/e/z/e;

    .line 6
    invoke-static {p1, v0}, Le/q/f/a/d/a;->f2(Ls1/a/a/a/v0/e/q;Ls1/a/a/a/v0/e/z/e;)Ls1/a/a/a/v0/e/q;

    move-result-object p1

    return-object p1
.end method
