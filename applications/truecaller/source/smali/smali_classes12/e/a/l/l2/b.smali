.class public abstract Le/a/l/l2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/l2/c;


# instance fields
.field public final a:Le/a/u3/i;

.field public final b:Le/a/q2/a;

.field public final c:Lcom/truecaller/clevertap/CleverTapManager;


# direct methods
.method public constructor <init>(Le/a/u3/i;Le/a/q2/a;Lcom/truecaller/clevertap/CleverTapManager;)V
    .locals 1

    const-string v0, "analyticsLevelFeature"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cleverTapManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/l2/b;->a:Le/a/u3/i;

    iput-object p2, p0, Le/a/l/l2/b;->b:Le/a/q2/a;

    iput-object p3, p0, Le/a/l/l2/b;->c:Lcom/truecaller/clevertap/CleverTapManager;

    return-void
.end method


# virtual methods
.method public o()Lcom/truecaller/premium/analytics/LogLevel;
    .locals 6

    .line 1
    sget-object v0, Lcom/truecaller/premium/analytics/LogLevel;->Companion:Lcom/truecaller/premium/analytics/LogLevel$a;

    iget-object v1, p0, Le/a/l/l2/b;->a:Le/a/u3/i;

    invoke-interface {v1}, Le/a/u3/i;->g()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "logLevel"

    invoke-static {v1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/truecaller/premium/analytics/LogLevel;->values()[Lcom/truecaller/premium/analytics/LogLevel;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v1, v5}, Ls1/f0/r;->n(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    sget-object v3, Lcom/truecaller/premium/analytics/LogLevel;->CORE:Lcom/truecaller/premium/analytics/LogLevel;

    :goto_2
    return-object v3
.end method

.method public p(Le/a/l/l2/a;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/l2/b;->b:Le/a/q2/a;

    invoke-static {p1, v0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    .line 2
    invoke-virtual {p1}, Le/a/l/l2/a;->b()Ls1/k;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object v0, p1, Ls1/k;->b:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Le/a/l/l2/b;->c:Lcom/truecaller/clevertap/CleverTapManager;

    .line 5
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 6
    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Le/a/l/l2/b;->c:Lcom/truecaller/clevertap/CleverTapManager;

    .line 8
    iget-object p1, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 9
    check-cast p1, Ljava/lang/String;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
