.class public final Ls1/a/a/a/v0/d/a/g0/l$b$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/g0/l$b;->a(Ls1/a/a/a/v0/d/a/g0/w;)Ls1/a/a/a/v0/d/a/g0/l$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/a/a/a/v0/d/a/g0/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/g0/w;

.field public final synthetic c:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/g0/w;Ls1/z/b/l;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/l$b$a;->b:Ls1/a/a/a/v0/d/a/g0/w;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/g0/l$b$a;->c:Ls1/z/b/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/l$b$a;->b:Ls1/a/a/a/v0/d/a/g0/w;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/g0/w;->a:Ljava/util/Map;

    .line 4
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/d/a/g0/e;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/l$b$a;->c:Ls1/z/b/l;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ls1/a/a/a/v0/d/a/g0/e;

    :goto_0
    return-object v0
.end method
