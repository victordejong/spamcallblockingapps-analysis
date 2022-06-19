.class public final Le/a/e0/a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e0/a;->e(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/e0/a;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Le/a/e0/a;I)V
    .locals 0

    iput-object p1, p0, Le/a/e0/a$c;->b:Le/a/e0/a;

    iput p2, p0, Le/a/e0/a$c;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/e0/a$c;->b:Le/a/e0/a;

    .line 2
    iget-object v1, v0, Le/a/e0/a;->b:Le/a/e0/e;

    .line 3
    iget-object v0, v0, Le/a/e0/a;->a:Ln3/b/a/h;

    const-string v2, "activity"

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 4
    iget v4, p0, Le/a/e0/a$c;->c:I

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v5, v1, Le/a/e0/e;->c:Le/a/e0/c;

    iget-object v1, v1, Le/a/e0/e;->b:Ljava/lang/String;

    const-string v6, "analyticsContext"

    if-eqz v1, :cond_3

    check-cast v5, Le/a/g/j/m0;

    .line 7
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "DetailsViewV2"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "detailView-blockUser"

    goto :goto_0

    .line 9
    :cond_0
    sget-object v2, Lcom/truecaller/acs/analytics/AnalyticsContext;->PACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v2}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "afterCallScreen-blockUser"

    goto :goto_0

    .line 10
    :cond_1
    sget-object v2, Lcom/truecaller/acs/analytics/AnalyticsContext;->FACS:Lcom/truecaller/acs/analytics/AnalyticsContext;

    invoke-virtual {v2}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "fullAfterCallScreen-blockUser"

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "Unexpected Analytics context "

    .line 11
    invoke-static {v5, v1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v2}, Lcom/truecaller/log/AssertionUtil$OnlyInDebug;->fail([Ljava/lang/String;)V

    const-string v1, ""

    .line 12
    :goto_0
    invoke-static {v0, v1}, Lcom/truecaller/messaging/defaultsms/DefaultSmsActivity;->pa(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 13
    invoke-virtual {v0, v1, v4}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 14
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0

    .line 15
    :cond_3
    invoke-static {v6}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3

    .line 16
    :cond_4
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v3
.end method
