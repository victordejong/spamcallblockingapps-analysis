.class public final Le/a/g/j/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/g/j/q0;->b(Landroidx/fragment/app/FragmentManager;Landroid/view/View;Ljava/util/List;Ljava/lang/String;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/g/j/q0;

.field public final synthetic b:Landroidx/fragment/app/FragmentManager;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ls1/z/b/l;

.field public final synthetic e:Ljava/util/List;

.field public final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Le/a/g/j/q0;Landroid/content/Context;ZLe/a/k/m/s;Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ls1/z/b/l;Ljava/util/List;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Le/a/g/j/q0$b;->a:Le/a/g/j/q0;

    iput-object p5, p0, Le/a/g/j/q0$b;->b:Landroidx/fragment/app/FragmentManager;

    iput-object p6, p0, Le/a/g/j/q0$b;->c:Ljava/lang/String;

    iput-object p7, p0, Le/a/g/j/q0$b;->d:Ls1/z/b/l;

    iput-object p8, p0, Le/a/g/j/q0$b;->e:Ljava/util/List;

    iput-object p9, p0, Le/a/g/j/q0$b;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Le/a/g/j/q0$b;->a:Le/a/g/j/q0;

    .line 2
    iget-object p1, p1, Le/a/g/j/q0;->b:Le/a/k/h;

    .line 3
    iget-object v0, p0, Le/a/g/j/q0$b;->b:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Le/a/g/j/q0$b;->c:Ljava/lang/String;

    iget-object v2, p0, Le/a/g/j/q0$b;->e:Ljava/util/List;

    new-instance v3, Le/a/g/j/q0$b$a;

    invoke-direct {v3, p0}, Le/a/g/j/q0$b$a;-><init>(Le/a/g/j/q0$b;)V

    invoke-interface {p1, v0, v1, v2, v3}, Le/a/k/h;->I(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;Ljava/util/List;Ls1/z/b/l;)V

    return-void
.end method
