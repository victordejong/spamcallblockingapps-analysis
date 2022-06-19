.class public final Le/a/l/c/a/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/c/a/b;-><init>(Landroid/view/View;Le/a/o2/m;Landroidx/fragment/app/FragmentManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/c/a/b;

.field public final synthetic b:Landroidx/fragment/app/FragmentManager;


# direct methods
.method public constructor <init>(Le/a/l/c/a/b;Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    iput-object p1, p0, Le/a/l/c/a/b$b;->a:Le/a/l/c/a/b;

    iput-object p2, p0, Le/a/l/c/a/b$b;->b:Landroidx/fragment/app/FragmentManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    new-instance p1, Le/a/l/c/a/a;

    iget-object v0, p0, Le/a/l/c/a/b$b;->a:Le/a/l/c/a/b;

    .line 2
    iget-object v0, v0, Le/a/l/c/a/b;->o:Ls1/z/b/l;

    .line 3
    invoke-direct {p1, v0}, Le/a/l/c/a/a;-><init>(Ls1/z/b/l;)V

    iget-object v0, p0, Le/a/l/c/a/b$b;->b:Landroidx/fragment/app/FragmentManager;

    const-string v1, "fragmentManager"

    .line 4
    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "SCHEDULED_DURATION_BOTTOM_SHEET"

    .line 5
    invoke-virtual {p1, v0, v1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method
