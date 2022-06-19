.class public final Le/a/h/m;
.super Le/a/h/e0;
.source "SourceFile"

# interfaces
.implements Le/a/e/z0$b;


# instance fields
.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Le/a/h/e0;-><init>()V

    const/16 v0, 0x2605

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const v1, 0x7f080672

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 3
    new-instance v2, Ls1/k;

    invoke-direct {v2, v0, v1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 4
    invoke-static {v2}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/a/h/m;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public H()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/m;->c:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    const v0, 0x7f0802a5

    :goto_0
    return v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/m;->b:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1}, Ls1/f0/w;->l0(Ljava/lang/CharSequence;)Ljava/lang/Character;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Le/a/h/m;->c:Ljava/lang/Integer;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Ls1/f0/w;->i0(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :cond_1
    iput-object v1, p0, Le/a/h/e0;->a:Ljava/lang/String;

    goto :goto_1

    .line 6
    :cond_2
    iput-object v1, p0, Le/a/h/m;->c:Ljava/lang/Integer;

    .line 7
    iput-object p1, p0, Le/a/h/e0;->a:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public v()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
