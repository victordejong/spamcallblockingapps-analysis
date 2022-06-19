.class public final Lcom/hiya/stingray/ui/stats/CallsStatsGraph$b;
.super Lg/e/a/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/ui/stats/CallsStatsGraph;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/stingray/ui/stats/CallsStatsGraph;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/ui/stats/CallsStatsGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$b;->a:Lcom/hiya/stingray/ui/stats/CallsStatsGraph;

    invoke-direct {p0}, Lg/e/a/a/f/e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(FLg/e/a/a/d/a;)Ljava/lang/String;
    .locals 6

    float-to-int p1, p1

    rsub-int/lit8 p1, p1, 0x1d

    .line 1
    iget-object p2, p0, Lcom/hiya/stingray/ui/stats/CallsStatsGraph$b;->a:Lcom/hiya/stingray/ui/stats/CallsStatsGraph;

    invoke-static {p2}, Lcom/hiya/stingray/ui/stats/CallsStatsGraph;->a(Lcom/hiya/stingray/ui/stats/CallsStatsGraph;)Ljava/text/SimpleDateFormat;

    move-result-object p2

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "dateFormatter.format(Dat\u2026.toMillis(day.toLong())))"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
