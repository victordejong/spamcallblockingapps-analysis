.class public final Le/a/e/b/k/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Le/a/e/b/k/p;


# direct methods
.method public constructor <init>(Le/a/e/b/k/p;)V
    .locals 0

    iput-object p1, p0, Le/a/e/b/k/c;->a:Le/a/e/b/k/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/b/k/c;->a:Le/a/e/b/k/p;

    invoke-virtual {p1}, Le/a/e/b/k/p;->OA()Le/a/e/b/k/t;

    move-result-object p1

    iget-object v0, p0, Le/a/e/b/k/c;->a:Le/a/e/b/k/p;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Le/a/e/b/k/t;->K3(ZLandroid/content/Context;)V

    return-void
.end method
