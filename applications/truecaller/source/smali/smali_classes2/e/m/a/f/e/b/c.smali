.class public final Le/m/a/f/e/b/c;
.super Lcom/google/android/gms/common/internal/zag;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/content/Intent;

.field public final synthetic b:Landroidx/fragment/app/Fragment;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    iput-object p1, p0, Le/m/a/f/e/b/c;->a:Landroid/content/Intent;

    iput-object p2, p0, Le/m/a/f/e/b/c;->b:Landroidx/fragment/app/Fragment;

    iput p3, p0, Le/m/a/f/e/b/c;->c:I

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/zag;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Le/m/a/f/e/b/c;->a:Landroid/content/Intent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/m/a/f/e/b/c;->b:Landroidx/fragment/app/Fragment;

    iget v2, p0, Le/m/a/f/e/b/c;->c:I

    .line 1
    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method
