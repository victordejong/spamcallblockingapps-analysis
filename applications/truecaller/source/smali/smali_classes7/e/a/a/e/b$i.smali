.class public final Le/a/a/e/b$i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/e/b;->cp(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/animation/Animator;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/a/e/b;


# direct methods
.method public constructor <init>(Le/a/a/e/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/a/e/b$i;->b:Le/a/a/e/b;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/animation/Animator;

    .line 2
    iget-object p1, p0, Le/a/a/e/b$i;->b:Le/a/a/e/b;

    .line 3
    iget-object p1, p1, Le/a/a/e/b;->a:Le/m/a/g/e/d;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Ln3/b/a/p;->dismiss()V

    .line 5
    iget-object p1, p0, Le/a/a/e/b$i;->b:Le/a/a/e/b;

    invoke-virtual {p1}, Le/a/a/e/b;->PA()Le/a/a/e/u;

    move-result-object p1

    invoke-interface {p1}, Le/a/a/e/u;->I8()V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "loadingDialog"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
