.class public Le/h/a/c/q0/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/q0/q;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/q0/q;


# direct methods
.method public constructor <init>(Le/h/a/c/q0/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/q0/q$a;->a:Le/h/a/c/q0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/h/a/c/q0/q$a;->a:Le/h/a/c/q0/q;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/h/a/c/q0/a;->PA(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/h/a/c/q0/q$a;->a:Le/h/a/c/q0/q;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
