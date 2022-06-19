.class public Le/i/b/l2/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/l2/c/g;


# instance fields
.field public final a:Le/i/b/s2/n;


# direct methods
.method public constructor <init>(Le/i/b/s2/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/l2/c/e;->a:Le/i/b/s2/n;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/l2/c/e;->a:Le/i/b/s2/n;

    const-string v1, "IABConsent_SubjectToGDPR"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/l2/c/e;->a:Le/i/b/s2/n;

    const-string v1, "IABConsent_ConsentString"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Le/i/b/s2/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
