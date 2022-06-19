.class public final Le/a/c/a/p/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/a/e/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/a/e/a<",
        "Landroidx/activity/result/ActivityResult;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/i;->a:Le/a/c/a/p/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroidx/activity/result/ActivityResult;

    const-string v0, "result"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget p1, p1, Landroidx/activity/result/ActivityResult;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Le/a/c/a/p/e/i;->a:Le/a/c/a/p/e/f;

    .line 5
    sget-object v1, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 6
    invoke-virtual {v0}, Le/a/c/a/p/e/f;->SA()V

    .line 7
    :cond_1
    iget-object v0, p0, Le/a/c/a/p/e/i;->a:Le/a/c/a/p/e/f;

    .line 8
    sget-object v1, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 9
    invoke-virtual {v0}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object v0

    const-string v1, "default_sms"

    .line 10
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "eventCategory"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string p1, "granted"

    goto :goto_1

    :cond_2
    const-string p1, "denied"

    :goto_1
    const-string v2, "click"

    .line 11
    invoke-virtual {v0, v1, v2, p1}, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
