.class public final Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/widget/Toolbar$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$f;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/flashsdk/ui/incoming/FlashActivity$f;->a:Lcom/truecaller/flashsdk/ui/incoming/FlashActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/truecaller/flashsdk/ui/base/BaseFlashActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method
