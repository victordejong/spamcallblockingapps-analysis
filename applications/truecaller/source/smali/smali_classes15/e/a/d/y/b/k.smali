.class public final Le/a/d/y/b/k;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;


# direct methods
.method public constructor <init>(Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;)V
    .locals 0

    iput-object p1, p0, Le/a/d/y/b/k;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/d/y/b/k;->b:Lcom/truecaller/voip/notification/inapp/VoipInAppNotificationView;

    sget v1, Lcom/truecaller/voip/R$id;->text_name:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "findViewById(R.id.text_name)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method
