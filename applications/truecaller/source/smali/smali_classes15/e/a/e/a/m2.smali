.class public final Le/a/e/a/m2;
.super Ln3/b/a/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f130319

    .line 1
    invoke-direct {p0, p1, v0}, Ln3/b/a/g;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Ln3/b/a/g;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0117

    .line 2
    invoke-virtual {p0, p1}, Ln3/b/a/p;->setContentView(I)V

    return-void
.end method
