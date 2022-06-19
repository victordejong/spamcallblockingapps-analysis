.class public final synthetic Le/a/d0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/k0/n/b/j$a;


# instance fields
.field public final synthetic a:Le/a/d0/f0;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/j;->a:Le/a/d0/f0;

    iput-object p2, p0, Le/a/d0/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Le/a/d0/j;->a:Le/a/d0/f0;

    iget-object v1, p0, Le/a/d0/j;->b:Ljava/lang/String;

    .line 1
    iget-object v2, v0, Le/a/d0/f0;->D:Lcom/truecaller/callrecording/CallRecordingManager;

    sget-object v3, Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;->AUTO:Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;

    invoke-interface {v2, v1, v3}, Lcom/truecaller/callrecording/CallRecordingManager;->e(Ljava/lang/String;Lcom/truecaller/callrecording/analytics/RecordingAnalyticsSource;)V

    .line 2
    iget-object v1, v0, Le/a/d0/f0;->a:Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d0/y;

    invoke-interface {v1}, Le/a/d0/y;->g()Le/a/r2/x;

    move-result-object v1

    new-instance v2, Le/a/d0/g;

    invoke-direct {v2, v0}, Le/a/d0/g;-><init>(Le/a/d0/f0;)V

    invoke-virtual {v1, v2}, Le/a/r2/x;->f(Le/a/r2/d0;)Le/a/r2/a;

    return-void
.end method
