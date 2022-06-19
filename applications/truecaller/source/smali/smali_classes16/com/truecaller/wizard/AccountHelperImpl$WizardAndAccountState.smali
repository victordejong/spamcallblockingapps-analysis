.class public final Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/wizard/AccountHelperImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WizardAndAccountState"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u000b\u0008\u0003\u0018\u00002\u00020\u0001BK\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\t\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u000c\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004R\u0018\u0010\u0006\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u0008\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0004R\u0016\u0010\t\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0007R\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u0004R\u0018\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\u0004R\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\r\u0010\u0004\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;",
        "",
        "",
        "accountSuspended",
        "Z",
        "",
        "wizardStartContext",
        "Ljava/lang/String;",
        "accountValid",
        "shownPages",
        "accountCreated",
        "wizardCurrentPage",
        "restoredCredentialsCheckPending",
        "wizardCompleted",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V",
        "wizard-tc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final accountCreated:Z

.field private final accountSuspended:Z

.field private final accountValid:Z

.field private final restoredCredentialsCheckPending:Z

.field private final shownPages:Ljava/lang/String;

.field private final wizardCompleted:Z

.field private final wizardCurrentPage:Ljava/lang/String;

.field private final wizardStartContext:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 1

    const-string v0, "shownPages"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->wizardStartContext:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->wizardCurrentPage:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->shownPages:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->wizardCompleted:Z

    iput-boolean p5, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->accountValid:Z

    iput-boolean p6, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->accountSuspended:Z

    iput-boolean p7, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->restoredCredentialsCheckPending:Z

    iput-boolean p8, p0, Lcom/truecaller/wizard/AccountHelperImpl$WizardAndAccountState;->accountCreated:Z

    return-void
.end method
