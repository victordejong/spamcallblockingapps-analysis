.class public final Lcom/truecaller/service/MissedCallsNotificationService$g;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/service/MissedCallsNotificationService;->j(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.service.MissedCallsNotificationService"
    f = "MissedCallsNotificationService.kt"
    l = {
        0x179,
        0x183,
        0x190,
        0x197
    }
    m = "showNotificationForMissedCall"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/truecaller/service/MissedCallsNotificationService;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public l:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$g;->f:Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$g;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    iget-object p1, p0, Lcom/truecaller/service/MissedCallsNotificationService$g;->f:Lcom/truecaller/service/MissedCallsNotificationService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcom/truecaller/service/MissedCallsNotificationService;->j(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
