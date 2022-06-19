.class public final Lcom/truecaller/messaging/defaultsms/DmaAdsWorker$a;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;->n(Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.messaging.defaultsms.DmaAdsWorker"
    f = "DmaAdsWorker.kt"
    l = {
        0x36
    }
    m = "doWork"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;


# direct methods
.method public constructor <init>(Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker$a;->f:Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker$a;->d:Ljava/lang/Object;

    iget p1, p0, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker$a;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker$a;->e:I

    iget-object p1, p0, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker$a;->f:Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;

    invoke-virtual {p1, p0}, Lcom/truecaller/messaging/defaultsms/DmaAdsWorker;->n(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
