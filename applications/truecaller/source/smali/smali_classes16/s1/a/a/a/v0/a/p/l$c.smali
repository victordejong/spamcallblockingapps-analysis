.class public final Ls1/a/a/a/v0/a/p/l$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/p/l;->b(Ls1/a/a/a/v0/b/e;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ls1/a/a/a/v0/b/j;",
        "Ls1/a/a/a/v0/b/j;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/m/d1;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/d1;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/l$c;->b:Ls1/a/a/a/v0/m/d1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/j;)Z
    .locals 1

    const-string v0, "$this$isEffectivelyTheSameAs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "javaConstructor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/a/p/l$c;->b:Ls1/a/a/a/v0/m/d1;

    invoke-interface {p2, v0}, Ls1/a/a/a/v0/b/j;->c(Ls1/a/a/a/v0/m/d1;)Ls1/a/a/a/v0/b/j;

    move-result-object p2

    invoke-static {p1, p2}, Ls1/a/a/a/v0/j/l;->j(Ls1/a/a/a/v0/b/a;Ls1/a/a/a/v0/b/a;)Ls1/a/a/a/v0/j/l$c$a;

    move-result-object p1

    sget-object p2, Ls1/a/a/a/v0/j/l$c$a;->a:Ls1/a/a/a/v0/j/l$c$a;

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/j;

    check-cast p2, Ls1/a/a/a/v0/b/j;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/a/p/l$c;->a(Ls1/a/a/a/v0/b/j;Ls1/a/a/a/v0/b/j;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
