.class public final Le/a/k/a/e/k/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k/a/e/k/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/k/a/e/k/a;

.field public final synthetic b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Le/a/k/a/e/k/a;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/k/a$c;->a:Le/a/k/a/e/k/a;

    iput-object p3, p0, Le/a/k/a/e/k/a$c;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    .line 1
    iget-object p1, p0, Le/a/k/a/e/k/a$c;->a:Le/a/k/a/e/k/a;

    .line 2
    iget-object p1, p1, Le/a/k/a/e/k/a;->e:Le/a/k/a/e/k/c;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object v1, p0, Le/a/k/a/e/k/a$c;->b:Ljava/util/ArrayList;

    move-object v2, p1

    check-cast v2, Le/a/k/a/e/k/f;

    const-string p1, "numbers"

    .line 4
    invoke-static {v1, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v5, Le/a/k/a/e/k/e;

    invoke-direct {v5, v2, v1, v0}, Le/a/k/a/e/k/e;-><init>(Le/a/k/a/e/k/f;Ljava/util/List;Ls1/w/d;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 6
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v0
.end method
