.class public final Le/a/e/a/g4$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/g4;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/g4;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Le/a/e/a/g4;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/g4$b;->a:Le/a/e/a/g4;

    iput-object p2, p0, Le/a/e/a/g4$b;->b:Ljava/lang/String;

    iput-object p3, p0, Le/a/e/a/g4$b;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Le/a/e/a/g4$b;->a:Le/a/e/a/g4;

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p1, Le/a/e/a/g4;->a:Z

    .line 3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "requireContext()"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const v2, 0x7f1207b4

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f1207b3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 5
    iget-object v5, p0, Le/a/e/a/g4$b;->b:Ljava/lang/String;

    aput-object v5, v0, v4

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v3, p0, Le/a/e/a/g4$b;->c:Landroid/net/Uri;

    .line 7
    invoke-static {p1, v1, v2, v0, v3}, Le/a/b0/q/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;Landroid/net/Uri;)Z

    .line 8
    iget-object p1, p0, Le/a/e/a/g4$b;->a:Le/a/e/a/g4;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismiss()V

    return-void
.end method
