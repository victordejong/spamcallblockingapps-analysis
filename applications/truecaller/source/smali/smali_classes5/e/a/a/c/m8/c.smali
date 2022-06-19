.class public final Le/a/a/c/m8/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[I>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    .line 2
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v2, 0x7f060503

    .line 3
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    const v3, 0x7f060504

    .line 5
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    const v3, 0x7f060505

    .line 7
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 8
    iget-object v2, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    const v3, 0x7f060506

    .line 9
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x4

    .line 10
    iget-object v2, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    const v3, 0x7f060507

    .line 11
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x5

    .line 12
    iget-object v2, p0, Le/a/a/c/m8/c;->b:Landroid/content/Context;

    const v3, 0x7f060508

    .line 13
    invoke-static {v2, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method
