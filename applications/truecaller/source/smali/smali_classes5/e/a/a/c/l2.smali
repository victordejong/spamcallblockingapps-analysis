.class public final synthetic Le/a/a/c/l2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/l2;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/a/a/c/l2;->a:Le/a/a/c/y3;

    check-cast p1, Landroid/view/ViewGroup;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Le/a/a/c/d;

    const v2, 0x7f0d0299

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Le/a/p5/s0/f;->k(Landroid/view/ViewGroup;IZ)Landroid/view/View;

    move-result-object p1

    iget-object v0, v0, Le/a/a/c/y3;->x:Le/a/a/c/k/a/f;

    invoke-direct {v1, p1, v0}, Le/a/a/c/d;-><init>(Landroid/view/View;Le/a/a/c/k/a/j;)V

    return-object v1
.end method
