.class public final Le/a/v/a/y/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Lcom/truecaller/ads/ui/AdsSwitchView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/y/g;


# direct methods
.method public constructor <init>(Le/a/v/a/y/g;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/y/f;->b:Le/a/v/a/y/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/v/a/y/f;->b:Le/a/v/a/y/g;

    sget v1, Lcom/truecaller/details_view/R$id;->adSwitchView:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.adSwitchView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/ads/ui/AdsSwitchView;

    return-object v0
.end method
