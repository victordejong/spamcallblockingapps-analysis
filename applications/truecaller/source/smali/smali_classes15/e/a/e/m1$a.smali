.class public Le/a/e/m1$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/m1;->d(Landroidx/recyclerview/widget/RecyclerView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroidx/recyclerview/widget/RecyclerView;

.field public final synthetic b:Le/a/e/m1;


# direct methods
.method public constructor <init>(Le/a/e/m1;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/e/m1$a;->b:Le/a/e/m1;

    iput-object p2, p0, Le/a/e/m1$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/m1$a;->b:Le/a/e/m1;

    iget-object v0, p0, Le/a/e/m1$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p1, v0}, Le/a/e/m1;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/e/m1$a;->b:Le/a/e/m1;

    iget-object v0, p0, Le/a/e/m1$a;->a:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-virtual {p1, v0}, Le/a/e/m1;->g(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
