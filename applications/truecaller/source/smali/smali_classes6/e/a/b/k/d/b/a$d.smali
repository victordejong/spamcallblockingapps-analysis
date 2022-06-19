.class public final Le/a/b/k/d/b/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/k/d/b/a;->o(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/k/d/b/a;


# direct methods
.method public constructor <init>(Le/a/b/k/d/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/b/k/d/b/a$d;->a:Le/a/b/k/d/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/b/k/d/b/a$d;->a:Le/a/b/k/d/b/a;

    .line 2
    iget-object p1, p1, Le/a/b/k/d/b/a;->f:Le/a/b/k/c/c;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/b/k/c/a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Le/a/b/k/c/a;->v()V

    :cond_0
    return-void

    :cond_1
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
