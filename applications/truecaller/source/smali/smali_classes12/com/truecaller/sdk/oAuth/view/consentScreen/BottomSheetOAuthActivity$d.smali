.class public final Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$d;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    sget-object p1, Le/a/v4/s0/a;->c:Le/a/v4/s0/a;

    .line 2
    sget-object p1, Le/a/v4/s0/a;->b:Ljava/util/List;

    .line 3
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/k/c;

    .line 4
    iget-object p2, p0, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity$d;->a:Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;

    iget-object p2, p2, Lcom/truecaller/sdk/oAuth/view/consentScreen/BottomSheetOAuthActivity;->f:Le/a/v4/s0/m/a/d;

    if-eqz p2, :cond_0

    .line 5
    iget-object p1, p1, Le/a/b0/k/c;->b:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, p1}, Le/a/v4/s0/m/a/d;->c(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
