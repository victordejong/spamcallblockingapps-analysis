.class public final Lcom/truecaller/voip/ui/VoipActivity$f;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/voip/ui/VoipActivity;->d3(Le/a/d/c/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/c/f;


# direct methods
.method public constructor <init>(Le/a/d/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/voip/ui/VoipActivity$f;->a:Le/a/d/c/f;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;->onDismissSucceeded()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/voip/ui/VoipActivity$f;->a:Le/a/d/c/f;

    invoke-interface {v0}, Le/a/d/c/f;->a()V

    return-void
.end method
