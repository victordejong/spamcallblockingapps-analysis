.class public final Le/a/b0/f/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/f/a;


# instance fields
.field public final a:Le/a/q2/a;

.field public final b:Le/a/p5/g;


# direct methods
.method public constructor <init>(Le/a/q2/a;Le/a/p5/g;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "analytics"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/b0/f/b;->a:Le/a/q2/a;

    iput-object p2, p0, Le/a/b0/f/b;->b:Le/a/p5/g;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Exception;)V
    .locals 3

    const-string v0, "e"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/b0/f/b;->a:Le/a/q2/a;

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const-string p1, "Default"

    goto :goto_0

    :cond_0
    const-string p1, "TelecomManager"

    goto :goto_0

    :cond_1
    const-string p1, "Msim"

    .line 2
    :goto_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "Method"

    .line 3
    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    instance-of p1, p2, Ljava/lang/reflect/InvocationTargetException;

    if-eqz p1, :cond_2

    .line 5
    check-cast p2, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p2}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/lang/SecurityException;

    if-eqz p1, :cond_4

    goto :goto_1

    .line 6
    :cond_2
    instance-of p1, p2, Ljava/lang/SecurityException;

    if-eqz p1, :cond_3

    :goto_1
    const-string p1, "Security"

    goto :goto_2

    .line 7
    :cond_3
    instance-of p1, p2, Ljava/lang/NoSuchMethodException;

    if-eqz p1, :cond_4

    const-string p1, "Reflection"

    goto :goto_2

    :cond_4
    const-string p1, "Unknown"

    :goto_2
    const-string p2, "Reason"

    .line 8
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p1, p0, Le/a/b0/f/b;->b:Le/a/p5/g;

    invoke-interface {p1}, Le/a/p5/g;->l()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const-string p1, ""

    :goto_3
    const-string p2, "SecurityPatchVersion"

    .line 10
    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p1, Le/a/q2/g$b$a;

    const/4 p2, 0x0

    const-string v2, "DeclineCallErrors"

    invoke-direct {p1, v2, p2, v1, p2}, Le/a/q2/g$b$a;-><init>(Ljava/lang/String;Ljava/lang/Double;Ljava/util/Map;Le/a/q2/g$a;)V

    const-string p2, "AnalyticsEvent.Builder(C\u2026\n                .build()"

    .line 12
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-interface {v0, p1}, Le/a/q2/a;->e(Le/a/q2/g;)V

    return-void
.end method
