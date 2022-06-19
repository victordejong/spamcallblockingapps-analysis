.class public final Le/a/x4/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/x4/e;


# instance fields
.field public final a:Le/a/q2/a;


# direct methods
.method public constructor <init>(Le/a/q2/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x4/f;->a:Le/a/q2/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/searchwarnings/data/analytics/SearchWarningSource;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Le/a/l5/a/p3;->a()Le/a/l5/a/p3$b;

    move-result-object v0

    const-string v1, "ShowSearchWarning"

    .line 2
    invoke-virtual {v0, v1}, Le/a/l5/a/p3$b;->b(Ljava/lang/CharSequence;)Le/a/l5/a/p3$b;

    const/4 v1, 0x3

    new-array v1, v1, [Ls1/k;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v2, Ls1/k;

    const-string v3, "Source"

    invoke-direct {v2, v3, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x1

    .line 5
    new-instance v2, Ls1/k;

    const-string v3, "SearchWarningId"

    invoke-direct {v2, v3, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, p1

    const/4 p1, 0x2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "Unknown"

    .line 6
    :goto_0
    new-instance p2, Ls1/k;

    const-string v2, "RuleName"

    invoke-direct {p2, v2, p3}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object p2, v1, p1

    .line 7
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Le/a/l5/a/p3$b;->d(Ljava/util/Map;)Le/a/l5/a/p3$b;

    .line 9
    invoke-virtual {v0}, Le/a/l5/a/p3$b;->a()Le/a/l5/a/p3;

    move-result-object p1

    const-string p2, "GenericAnalyticsEvent.ne\u2026   )\n            .build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Le/a/x4/f;->a:Le/a/q2/a;

    invoke-static {p1, p2}, Le/m/d/y/n;->C0(Lorg/apache/avro/generic/GenericRecord;Le/a/q2/a;)V

    return-void
.end method
