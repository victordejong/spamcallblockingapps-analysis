.class public abstract Lcom/truecaller/messaging/inboxcleanup/CleanupResult;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/inboxcleanup/CleanupResult$Success;,
        Lcom/truecaller/messaging/inboxcleanup/CleanupResult$GeneralError;,
        Lcom/truecaller/messaging/inboxcleanup/CleanupResult$NoPermissionsError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
