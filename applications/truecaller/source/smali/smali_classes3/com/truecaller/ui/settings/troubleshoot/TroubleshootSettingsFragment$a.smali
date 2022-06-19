.class public final Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/ViewOutlineProvider;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;->b:I

    iput-object p2, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;->b:I

    const-string v1, "resources"

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v0, v1}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result v0

    .line 2
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->g:[Ls1/a/l;

    .line 3
    new-instance v1, Le/a/e/b/p/d;

    invoke-direct {v1, v0}, Le/a/e/b/p/d;-><init>(F)V

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v0, v1}, Le/a/p5/s0/g;->y(Landroid/content/res/Resources;F)F

    move-result v0

    .line 6
    sget-object v1, Lcom/truecaller/ui/settings/troubleshoot/TroubleshootSettingsFragment;->g:[Ls1/a/l;

    .line 7
    new-instance v1, Le/a/e/b/p/d;

    invoke-direct {v1, v0}, Le/a/e/b/p/d;-><init>(F)V

    return-object v1
.end method
