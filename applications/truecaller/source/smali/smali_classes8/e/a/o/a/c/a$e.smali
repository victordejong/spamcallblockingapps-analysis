.class public final Le/a/o/a/c/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/o/a/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/o/a/c/a;


# direct methods
.method public constructor <init>(Le/a/o/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/o/a/c/a$e;->a:Le/a/o/a/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object p1, p0, Le/a/o/a/c/a$e;->a:Le/a/o/a/c/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    .line 2
    new-instance v0, Ln3/r/a/a;

    invoke-direct {v0, p1}, Ln3/r/a/a;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 3
    sget p1, Lcom/truecaller/contextcall/R$id;->container:I

    sget-object v1, Le/a/o/a/c/n/b;->i:Le/a/o/a/c/n/b$b;

    iget-object v2, p0, Le/a/o/a/c/a$e;->a:Le/a/o/a/c/a;

    invoke-virtual {v2}, Le/a/o/a/c/a;->Q3()Lcom/truecaller/contextcall/utils/ContextCallAnalyticsContext;

    move-result-object v2

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "manageCallReasonAnalyticsContext"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v1, Le/a/o/a/c/n/b;

    invoke-direct {v1}, Le/a/o/a/c/n/b;-><init>()V

    .line 6
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 7
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v4, "manage_call_reason_source"

    invoke-virtual {v3, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1, v3}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v0, p1, v1, v2}, Ln3/r/a/f0;->m(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Ln3/r/a/f0;

    .line 10
    const-class p1, Le/a/o/a/c/n/b;

    invoke-static {p1}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ln3/r/a/f0;->e(Ljava/lang/String;)Ln3/r/a/f0;

    .line 11
    invoke-virtual {v0}, Ln3/r/a/f0;->g()I

    return-void
.end method
