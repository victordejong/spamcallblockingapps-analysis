.class public final Le/a/e/k1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/e/m1$b;


# instance fields
.field public a:Le/a/o2/m;


# direct methods
.method public constructor <init>(Le/a/o2/m;)V
    .locals 1

    const-string v0, "receiver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/k1;->a:Le/a/o2/m;

    return-void
.end method


# virtual methods
.method public a(IZLandroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const-string p2, "ItemEvent.SWIPE_COMPLETED_FROM_START"

    goto :goto_0

    :cond_0
    const-string p2, "ItemEvent.SWIPE_COMPLETED_FROM_END"

    .line 1
    :goto_0
    invoke-virtual {p0, p2, p1, p3}, Le/a/e/k1;->d(Ljava/lang/String;ILandroid/view/View;)Z

    return-void
.end method

.method public b(ILandroid/view/View;)Z
    .locals 1

    const-string v0, "view"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ItemEvent.SWIPE_START"

    .line 1
    invoke-virtual {p0, v0, p1, p2}, Le/a/e/k1;->d(Ljava/lang/String;ILandroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public final d(Ljava/lang/String;ILandroid/view/View;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Le/a/e/k1;->a:Le/a/o2/m;

    new-instance v8, Le/a/o2/h;

    invoke-virtual {p3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    const-wide/16 v4, -0x1

    move-object v1, v8

    move-object v2, p1

    move v3, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Le/a/o2/h;-><init>(Ljava/lang/String;IJLandroid/view/View;Ljava/lang/Object;)V

    invoke-interface {v0, v8}, Le/a/o2/m;->t(Le/a/o2/h;)Z

    move-result p1

    return p1
.end method
