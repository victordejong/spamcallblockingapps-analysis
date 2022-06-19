.class public final Le/a/q4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q4/j0;


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

    iput-object p1, p0, Le/a/q4/z;->a:Lcom/truecaller/clevertap/CleverTapManager;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "UiType"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    :cond_0
    iget-object p1, p0, Le/a/q4/z;->a:Lcom/truecaller/clevertap/CleverTapManager;

    const-string v1, "ReferralSent"

    invoke-interface {p1, v1, v0}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    .line 4
    iget-object p1, p0, Le/a/q4/z;->a:Lcom/truecaller/clevertap/CleverTapManager;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    new-instance v1, Ls1/k;

    const-string v2, "SentReferral"

    invoke-direct {v1, v2, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6
    invoke-static {v1}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/truecaller/clevertap/CleverTapManager;->updateProfile(Ljava/util/Map;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string v1, "Source"

    .line 2
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p2, :cond_1

    const-string p1, "Medium"

    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_1
    iget-object p1, p0, Le/a/q4/z;->a:Lcom/truecaller/clevertap/CleverTapManager;

    const-string p2, "ReferralReceived"

    invoke-interface {p1, p2, v0}, Lcom/truecaller/clevertap/CleverTapManager;->push(Ljava/lang/String;Ljava/util/Map;)V

    .line 5
    iget-object p1, p0, Le/a/q4/z;->a:Lcom/truecaller/clevertap/CleverTapManager;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 6
    new-instance v0, Ls1/k;

    const-string v1, "JoinedFromReferral"

    invoke-direct {v0, v1, p2}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    invoke-static {v0}, Le/q/f/a/d/a;->Z1(Ls1/k;)Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/truecaller/clevertap/CleverTapManager;->updateProfile(Ljava/util/Map;)V

    return-void
.end method
