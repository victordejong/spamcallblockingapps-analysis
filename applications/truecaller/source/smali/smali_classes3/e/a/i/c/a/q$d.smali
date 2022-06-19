.class public final Le/a/i/c/a/q$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/c/a/q;->setVideoAd(Le/a/i/c/a/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/i/c/a/q;

.field public final synthetic b:Le/a/i/c/a/n;


# direct methods
.method public constructor <init>(Le/a/i/c/a/q;IILandroid/widget/MediaController;Le/a/i/c/a/n;)V
    .locals 0

    iput-object p1, p0, Le/a/i/c/a/q$d;->a:Le/a/i/c/a/q;

    iput-object p5, p0, Le/a/i/c/a/q$d;->b:Le/a/i/c/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/i/c/a/q$d;->a:Le/a/i/c/a/q;

    iget-object v0, p0, Le/a/i/c/a/q$d;->b:Le/a/i/c/a/n;

    .line 2
    sget v1, Le/a/i/c/a/q;->r:I

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 4
    move-object v1, v0

    check-cast v1, Le/a/i/c/a/b0;

    invoke-virtual {v1}, Le/a/i/c/a/b0;->f()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "truecaller://null"

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Le/a/i/c/a/n;->g()Ljava/lang/String;

    move-result-object v4

    .line 7
    invoke-virtual {v0}, Le/a/i/c/a/n;->i()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1, v3, v2, v4, v0}, Le/a/i/c/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-boolean v0, p1, Le/a/i/c/a/q;->i:Z

    if-nez v0, :cond_1

    .line 10
    invoke-virtual {v1}, Le/a/i/c/a/b0;->e()V

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p1, Le/a/i/c/a/q;->i:Z

    :cond_1
    return-void
.end method
