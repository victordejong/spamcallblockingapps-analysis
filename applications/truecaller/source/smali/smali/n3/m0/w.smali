.class public abstract Ln3/m0/w;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ln3/m0/s;
.end method

.method public final b(Ln3/m0/r;)Ln3/m0/w;
    .locals 7

    .line 1
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object p1, p0

    check-cast p1, Ln3/m0/c0/g;

    .line 2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v6, Ln3/m0/c0/g;

    iget-object v1, p1, Ln3/m0/c0/g;->a:Ln3/m0/c0/l;

    iget-object v2, p1, Ln3/m0/c0/g;->b:Ljava/lang/String;

    sget-object v3, Ln3/m0/h;->b:Ln3/m0/h;

    .line 4
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ln3/m0/c0/g;-><init>(Ln3/m0/c0/l;Ljava/lang/String;Ln3/m0/h;Ljava/util/List;Ljava/util/List;)V

    move-object p1, v6

    :goto_0
    return-object p1
.end method
