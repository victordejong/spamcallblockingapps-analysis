.class public final Le/a/i/e/k/d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/i/c/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/i/e/k/c;


# direct methods
.method public constructor <init>(Le/a/i/e/k/c;)V
    .locals 0

    iput-object p1, p0, Le/a/i/e/k/d;->b:Le/a/i/e/k/c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Le/a/i/c/d/l;->n:Le/a/i/c/d/l$b;

    .line 2
    new-instance v0, Le/a/i/c/d/l$a;

    invoke-direct {v0}, Le/a/i/c/d/l$a;-><init>()V

    .line 3
    iget-object v1, p0, Le/a/i/e/k/d;->b:Le/a/i/e/k/c;

    .line 4
    iget-object v1, v1, Le/a/i/e/k/c;->e:Lo3/a;

    .line 5
    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/i/f0/j/c;

    const-string v2, "afterCallUnifiedAdUnitId"

    invoke-interface {v1, v2}, Le/a/i/f0/j/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "UUID.randomUUID().toString()"

    .line 6
    invoke-static {v2}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "native"

    const-string v4, "native_image_320x140"

    const-string v5, "native_image_300x250"

    const-string v6, "video_ad"

    .line 7
    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Le/a/i/c/d/l$a;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Le/a/i/c/d/l$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 9
    iget-object v3, p0, Le/a/i/e/k/d;->b:Le/a/i/e/k/c;

    .line 10
    iget-object v3, v3, Le/a/i/e/k/c;->i:Lo3/a;

    .line 11
    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/u3/g;

    invoke-virtual {v3}, Le/a/u3/g;->y()Le/a/u3/b;

    move-result-object v3

    invoke-interface {v3}, Le/a/u3/b;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "TEST_AFTERCALL"

    goto :goto_0

    :cond_0
    const-string v3, "AFTERCALL"

    :goto_0
    aput-object v3, v1, v2

    .line 12
    invoke-virtual {v0, v1}, Le/a/i/c/d/l$a;->b([Ljava/lang/String;)Le/a/i/c/d/l$a;

    .line 13
    new-instance v1, Le/a/i/f;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Le/a/i/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V

    .line 14
    iput-object v1, v0, Le/a/i/c/d/l$a;->g:Le/a/i/f;

    const-string v1, "offline"

    .line 15
    invoke-virtual {v0, v1}, Le/a/i/c/d/l$a;->d(Ljava/lang/String;)Le/a/i/c/d/l$a;

    .line 16
    invoke-virtual {v0}, Le/a/i/c/d/l$a;->a()Le/a/i/c/d/l;

    move-result-object v0

    return-object v0
.end method
