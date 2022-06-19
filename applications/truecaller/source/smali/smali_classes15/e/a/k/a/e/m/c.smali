.class public final Le/a/k/a/e/m/c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;


# direct methods
.method public constructor <init>(Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/e/m/c;->b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/k/a/e/m/c;->b:Lcom/truecaller/videocallerid/ui/manageincomingvideo/managepreferences/ManagePreferencesView;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/videocallerid/R$dimen;->vid_dp16:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
