.class public final Le/a/c/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/b0/m/d/a;

.field public final b:Le/a/c/b/j;

.field public final c:Le/a/c/b/e;


# direct methods
.method public constructor <init>(Le/a/b0/m/d/a;Le/a/c/b/j;Le/a/c/b/e;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "senderInfoManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insightsStatusProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "environmentHelper"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/f/b;->a:Le/a/b0/m/d/a;

    iput-object p2, p0, Le/a/c/f/b;->b:Le/a/c/b/j;

    iput-object p3, p0, Le/a/c/f/b;->c:Le/a/c/b/e;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getDueDate()Lw3/b/a/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/c/p/a;->y0(Lw3/b/a/p;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final b(Lcom/truecaller/insights/models/InsightsDomain$Bill;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/insights/models/InsightsDomain$Bill;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "overdue"

    const v2, -0x410bd760

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v1, "due"

    :goto_1
    return-object v1
.end method
