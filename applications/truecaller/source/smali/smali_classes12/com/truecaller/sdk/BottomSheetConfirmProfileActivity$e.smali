.class public final Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$e;
.super Ln3/g0/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->S1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$e;->a:Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;

    invoke-direct {p0}, Ln3/g0/p;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ln3/g0/m;)V
    .locals 1

    const-string v0, "transition"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity$e;->a:Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;

    .line 2
    iget-object p1, p1, Lcom/truecaller/sdk/BottomSheetConfirmProfileActivity;->d:Le/a/v4/g;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Le/a/v4/g;->l()V

    return-void

    :cond_0
    const-string p1, "mPresenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
