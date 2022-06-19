.class public final Le/a/e/a/a;
.super Le/m/a/g/e/e;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u001f\u0012\u0016\u0008\u0002\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001d\u00a2\u0006\u0004\u0008#\u0010$J-\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0017\u0010\u0011\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u001d\u0010\u001c\u001a\u00020\u00178B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001bR\'\u0010\"\u001a\u0010\u0012\u0004\u0012\u00020\u0013\u0012\u0004\u0012\u00020\u000c\u0018\u00010\u001d8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!\u00a8\u0006%"
    }
    d2 = {
        "Le/a/e/a/a;",
        "Le/m/a/g/e/e;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Landroid/content/DialogInterface;",
        "dialog",
        "onDismiss",
        "(Landroid/content/DialogInterface;)V",
        "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;",
        "b",
        "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;",
        "selectedOption",
        "Le/a/m3/j;",
        "a",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "getBinding",
        "()Le/a/m3/j;",
        "binding",
        "Lkotlin/Function1;",
        "c",
        "Ls1/z/b/l;",
        "getCallback",
        "()Ls1/z/b/l;",
        "callback",
        "<init>",
        "(Ls1/z/b/l;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic d:[Ls1/a/l;


# instance fields
.field public final a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public b:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

.field public final c:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/e/a/a;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/BottomSheetDeleteOtpBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/e/a/a;->d:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    iput-object v0, p0, Le/a/e/a/a;->c:Ls1/z/b/l;

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/e/a/a$b;

    invoke-direct {v1}, Le/a/e/a/a$b;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/e/a/a;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    sget-object v0, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->DISMISS_PROMPT:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    iput-object v0, p0, Le/a/e/a/a;->b:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    return-void
.end method

.method public constructor <init>(Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Le/m/a/g/e/e;-><init>()V

    iput-object p1, p0, Le/a/e/a/a;->c:Ls1/z/b/l;

    .line 5
    new-instance p1, Le/a/p5/x0/a;

    new-instance v0, Le/a/e/a/a$b;

    invoke-direct {v0}, Le/a/e/a/a$b;-><init>()V

    invoke-direct {p1, v0}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object p1, p0, Le/a/e/a/a;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 6
    sget-object p1, Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;->DISMISS_PROMPT:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    iput-object p1, p0, Le/a/e/a/a;->b:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    .line 1
    invoke-static {p1, p3}, Le/a/l4/k;->u0(Landroid/view/LayoutInflater;Z)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d0086

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const-string v0, "dialog"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/e/a/a;->c:Ls1/z/b/l;

    if-eqz v0, :cond_0

    iget-object v1, p0, Le/a/e/a/a;->b:Lcom/truecaller/ui/dialogs/DeleteOtpBottomSheetOption;

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/s;

    .line 2
    :cond_0
    invoke-super {p0, p1}, Ln3/r/a/k;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/a;->a:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object p2, Le/a/e/a/a;->d:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/m3/j;

    .line 3
    iget-object p2, p1, Le/a/m3/j;->a:Landroid/widget/Button;

    new-instance v1, Le/a/e/a/a$a;

    invoke-direct {v1, v0, p0}, Le/a/e/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    iget-object p1, p1, Le/a/m3/j;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance p2, Le/a/e/a/a$a;

    const/4 v0, 0x1

    invoke-direct {p2, v0, p0}, Le/a/e/a/a$a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
