.class public final Ls1/a/a/a/v0/d/a/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/q0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/q0;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/c;->b:Ls1/a/a/a/v0/b/q0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object p1, Ls1/a/a/a/v0/d/a/d;->f:Ls1/a/a/a/v0/d/a/d;

    .line 4
    sget-object p1, Ls1/a/a/a/v0/d/a/d;->c:Ljava/util/Map;

    .line 5
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/c;->b:Ls1/a/a/a/v0/b/q0;

    invoke-static {v0}, Ls1/a/a/a/v0/d/b/p;->d(Ls1/a/a/a/v0/b/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.collections.Map<K, *>"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
