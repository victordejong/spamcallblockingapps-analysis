.class public final Le/a/g/j/q0$a;
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

    iput-object p1, p0, Le/a/g/j/q0$a;->a:Le/a/g/j/q0;

    iput-object p5, p0, Le/a/g/j/q0$a;->b:Landroidx/fragment/app/FragmentManager;

    iput-object p6, p0, Le/a/g/j/q0$a;->c:Ljava/lang/String;

    iput-object p7, p0, Le/a/g/j/q0$a;->d:Ls1/z/b/l;

    iput-object p8, p0, Le/a/g/j/q0$a;->e:Ljava/util/List;

    iput-object p9, p0, Le/a/g/j/q0$a;->f:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/a/g/j/q0$a;->a:Le/a/g/j/q0;

    .line 2
    iget-object p1, p1, Le/a/g/j/q0;->b:Le/a/k/h;

    .line 3
    iget-object v0, p0, Le/a/g/j/q0$a;->b:Landroidx/fragment/app/FragmentManager;

    iget-object v1, p0, Le/a/g/j/q0$a;->c:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Le/a/k/h;->v(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Le/a/g/j/q0$a;->d:Ls1/z/b/l;

    sget-object v0, Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;->REPORT:Lcom/truecaller/acs/util/VideoCallerIdAcsMoreOption;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
