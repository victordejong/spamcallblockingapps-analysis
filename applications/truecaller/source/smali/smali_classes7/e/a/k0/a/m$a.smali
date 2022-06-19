.class public final Le/a/k0/a/m$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/k0/a/m;->c(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.callrecording.util.CallRecordingNotificationManagerImpl"
    f = "CallRecordingNotificationManager.kt"
    l = {
        0x7a
    }
    m = "createCallRecordedNotification"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Le/a/k0/a/m;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Le/a/k0/a/m;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/k0/a/m$a;->f:Le/a/k0/a/m;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Le/a/k0/a/m$a;->d:Ljava/lang/Object;

    iget p1, p0, Le/a/k0/a/m$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Le/a/k0/a/m$a;->e:I

    iget-object v0, p0, Le/a/k0/a/m$a;->f:Le/a/k0/a/m;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v0 .. v6}, Le/a/k0/a/m;->c(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Landroid/content/Intent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
