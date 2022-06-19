.class public final Le/a/g/a/b/a$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/a/b/a;


# direct methods
.method public constructor <init>(Le/a/g/a/b/a;)V
    .locals 0

    iput-object p1, p0, Le/a/g/a/b/a$i;->a:Le/a/g/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/g/a/b/a$i;->a:Le/a/g/a/b/a;

    .line 2
    sget-object v0, Le/a/g/a/b/a;->A:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/g/a/b/a;->QA()Le/a/g/h/a;

    move-result-object p1

    .line 4
    iget-object p1, p1, Le/a/g/h/a;->m:Landroidx/constraintlayout/widget/Guideline;

    const-string v0, "insets"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Guideline;->setGuidelineBegin(I)V

    return-object p2
.end method
