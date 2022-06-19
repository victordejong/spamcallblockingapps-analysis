.class public final Le/a/l/a/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/a/t;


# instance fields
.field public final a:Lcom/truecaller/clevertap/CleverTapManager;


# direct methods
.method public constructor <init>(Lcom/truecaller/clevertap/CleverTapManager;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "cleverTapManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/u;->a:Lcom/truecaller/clevertap/CleverTapManager;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/premium/util/NotificationAccessSource;)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/a/u;->a:Lcom/truecaller/clevertap/CleverTapManager;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance v1, Ls1/k;

    const-string v2, "Source"

    invoke-direct {v1, v2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p1

    const-string v1, "NotificationAccessRequested"

    invoke-interface {v0, v1, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public b(Lcom/truecaller/premium/util/NotificationAccessSource;Z)V
    .locals 4

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/a/u;->a:Lcom/truecaller/clevertap/CleverTapManager;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/k;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v2, Ls1/k;

    const-string v3, "Source"

    invoke-direct {v2, v3, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    const/4 p1, 0x1

    if-eqz p2, :cond_0

    const-string p2, "Granted"

    goto :goto_0

    :cond_0
    const-string p2, "Denied"

    .line 4
    :goto_0
    new-instance v2, Ls1/k;

    const-string v3, "Result"

    invoke-direct {v2, v3, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v2, v1, p1

    .line 5
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object p1

    const-string p2, "NotificationAccessResult"

    .line 6
    invoke-interface {v0, p2, p1}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
