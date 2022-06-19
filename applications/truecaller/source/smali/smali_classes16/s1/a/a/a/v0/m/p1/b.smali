.class public final Ls1/a/a/a/v0/m/p1/b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/e0;",
        "Ls1/a/a/a/v0/m/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/e0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/m/p1/b;->b:Ls1/a/a/a/v0/m/e0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;
    .locals 1

    const-string v0, "$this$makeNullableIfNeeded"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/p1/b;->b:Ls1/a/a/a/v0/m/e0;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    invoke-static {p1, v0}, Ls1/a/a/a/v0/m/f1;->k(Ls1/a/a/a/v0/m/e0;Z)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v0, "TypeUtils.makeNullableIf\u2026s, type.isMarkedNullable)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ls1/a/a/a/v0/m/e0;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/p1/b;->a(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    return-object p1
.end method
