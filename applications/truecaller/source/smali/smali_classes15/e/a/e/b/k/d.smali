.class public final Le/a/e/b/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/e/b/k/p;


# direct methods
.method public constructor <init>(Le/a/e/b/k/p;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/d;->a:Le/a/e/b/k/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/e/b/k/d;->a:Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    iget-object v0, p0, Le/a/e/b/k/d;->a:Le/a/e/b/k/p;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "requireContext()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, p2, v0}, Le/a/e/b/k/t;->k8(ZLandroid/content/Context;)Z

    return-void
.end method
