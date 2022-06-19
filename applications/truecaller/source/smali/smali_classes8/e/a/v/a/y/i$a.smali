.class public final Le/a/v/a/y/i$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/y/i;-><init>(Le/a/v/a/y/j;Le/a/u3/g;Le/a/b0/e/r/a;Le/a/i/f0/j/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i/c/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/y/i;


# direct methods
.method public constructor <init>(Le/a/v/a/y/i;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/y/i$a;->b:Le/a/v/a/y/i;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/v/a/y/i$a;->b:Le/a/v/a/y/i;

    .line 2
    iget-object v1, v0, Le/a/v/a/y/i;->j:Le/a/i/f0/j/a;

    invoke-interface {v1}, Le/a/i/f0/j/a;->reset()V

    .line 3
    iget-object v1, v0, Le/a/v/a/y/i;->j:Le/a/i/f0/j/a;

    invoke-interface {v1}, Le/a/i/f0/j/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "native"

    const-string v3, "native_image_300x250"

    const-string v4, "banner"

    const-string v5, "html_320x50"

    const-string v6, "html_320x100"

    const-string v7, "html_300x250"

    const-string v8, "html_320x140"

    const-string v9, "html_300x100"

    .line 4
    filled-new-array/range {v2 .. v9}, [Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 6
    sget-object v3, Le/a/i/c/d/l;->n:Le/a/i/c/d/l$b;

    .line 7
    new-instance v3, Le/a/i/c/d/l$a;

    invoke-direct {v3}, Le/a/i/c/d/l$a;-><init>()V

    .line 8
    iget-object v4, v0, Le/a/v/a/y/i;->g:Le/a/v/a/y/j;

    invoke-interface {v4}, Le/a/v/a/y/j;->d()Le/a/i/f0/j/c;

    move-result-object v4

    const-string v5, "callDetailsLargeUnifiedAdUnitId"

    invoke-interface {v4, v5}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    .line 9
    invoke-interface {v2, v6}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    const-string v6, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    array-length v6, v2

    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 10
    invoke-virtual {v3, v4, v1, v2}, Le/a/i/c/d/l$a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Le/a/i/c/d/l$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 11
    iget-object v0, v0, Le/a/v/a/y/i;->h:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->y()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TEST_DETAILSVIEW"

    goto :goto_0

    :cond_0
    const-string v0, "DETAILSVIEW"

    :goto_0
    aput-object v0, v1, v5

    .line 12
    invoke-virtual {v3, v1}, Le/a/i/c/d/l$a;->b([Ljava/lang/String;)Le/a/i/c/d/l$a;

    const-string v0, "network"

    .line 13
    invoke-virtual {v3, v0}, Le/a/i/c/d/l$a;->d(Ljava/lang/String;)Le/a/i/c/d/l$a;

    .line 14
    invoke-virtual {v3}, Le/a/i/c/d/l$a;->a()Le/a/i/c/d/l;

    move-result-object v0

    return-object v0
.end method
