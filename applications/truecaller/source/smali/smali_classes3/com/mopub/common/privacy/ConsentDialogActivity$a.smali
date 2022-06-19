.class public Lcom/mopub/common/privacy/ConsentDialogActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/n/a/l/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/ConsentDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/ConsentDialogActivity;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/ConsentDialogActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCloseClick()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onConsentClick(Lcom/mopub/common/privacy/ConsentStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    .line 2
    sget v1, Lcom/mopub/common/privacy/ConsentDialogActivity;->e:I

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iput-object p1, v0, Lcom/mopub/common/privacy/ConsentDialogActivity;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 6
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogActivity$a;->a:Lcom/mopub/common/privacy/ConsentDialogActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/ConsentDialogActivity;->a(Z)V

    return-void
.end method
