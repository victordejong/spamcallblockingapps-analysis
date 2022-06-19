.class public final Le/a/k/a/e/l/a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/e/l/a;-><init>(Landroid/view/View;Le/a/k/a/e/l/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/a/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/k/a/e/l/a;


# direct methods
.method public constructor <init>(Le/a/k/a/e/l/a;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/l/a$c;->b:Le/a/k/a/e/l/a;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, p0, Le/a/k/a/e/l/a$c;->b:Le/a/k/a/e/l/a;

    .line 2
    iget-object v2, v2, Le/a/k/a/e/l/a;->c:Landroid/view/View;

    .line 3
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    return-object v0
.end method
