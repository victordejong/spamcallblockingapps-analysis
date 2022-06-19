.class public final synthetic Le/a/e/c2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/e/c2/y;

.field public final synthetic b:Lcom/truecaller/data/entity/CallRecording;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c2/y;Lcom/truecaller/data/entity/CallRecording;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c2/g;->a:Le/a/e/c2/y;

    iput-object p2, p0, Le/a/e/c2/g;->b:Lcom/truecaller/data/entity/CallRecording;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Le/a/e/c2/g;->a:Le/a/e/c2/y;

    iget-object v0, p0, Le/a/e/c2/g;->b:Lcom/truecaller/data/entity/CallRecording;

    .line 1
    iget-object p1, p1, Le/a/e/c2/y;->B:Lcom/truecaller/callrecording/CallRecordingManager;

    sget-object v1, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->DETAILS_VIEW_CALL_HISTORY:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {p1, v0, v1}, Lcom/truecaller/callrecording/CallRecordingManager;->C(Lcom/truecaller/data/entity/CallRecording;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    return-void
.end method
