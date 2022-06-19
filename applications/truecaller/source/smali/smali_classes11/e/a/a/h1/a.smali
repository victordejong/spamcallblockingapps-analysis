.class public final Le/a/a/h1/a;
.super Landroid/app/KeyguardManager$KeyguardDismissCallback;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/a/h1/b;


# direct methods
.method public constructor <init>(Le/a/a/h1/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/a/h1/a;->a:Le/a/a/h1/b;

    invoke-direct {p0}, Landroid/app/KeyguardManager$KeyguardDismissCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissSucceeded()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/a;->a:Le/a/a/h1/b;

    iget-object v0, v0, Le/a/a/h1/b;->a:Lcom/truecaller/messaging/urgent/KeyguardOverlay;

    .line 2
    sget v1, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->g:I

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/urgent/KeyguardOverlay;->a(Z)V

    return-void
.end method
