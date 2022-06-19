.class public Lg/g/a/a/i/p/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private attributionDTO:Lg/g/a/a/i/l/b;
    .annotation runtime Lcom/google/gson/v/c;
        value = "attribution"
    .end annotation
.end field

.field private displayBackgroundDTO:Lg/g/a/a/i/p/a;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayBackground"
    .end annotation
.end field

.field private displayDescription:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayDescription"
    .end annotation
.end field

.field private displayDetail:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayDetail"
    .end annotation
.end field

.field private displayImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayImage"
    .end annotation
.end field

.field private displayName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "displayName"
    .end annotation
.end field

.field private profileDetails:Lg/g/a/a/i/p/e;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileDetails"
    .end annotation
.end field

.field private profileIcon:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileIcon"
    .end annotation
.end field

.field private profileTag:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "profileTag"
    .end annotation
.end field

.field private reputationLevel:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputationLevel"
    .end annotation
.end field

.field private verified:Z
    .annotation runtime Lcom/google/gson/v/c;
        value = "verified"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/p/c;->displayName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Lg/g/a/a/i/p/c;->displayDetail:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Lg/g/a/a/i/p/c;->displayDescription:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lg/g/a/a/i/p/c;->reputationLevel:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lg/g/a/a/i/p/c;->displayImageUrl:Ljava/lang/String;

    .line 7
    new-instance v1, Lg/g/a/a/i/p/e;

    invoke-direct {v1}, Lg/g/a/a/i/p/e;-><init>()V

    iput-object v1, p0, Lg/g/a/a/i/p/c;->profileDetails:Lg/g/a/a/i/p/e;

    .line 8
    iput-object v0, p0, Lg/g/a/a/i/p/c;->profileIcon:Ljava/lang/String;

    .line 9
    new-instance v1, Lg/g/a/a/i/l/b;

    invoke-direct {v1}, Lg/g/a/a/i/l/b;-><init>()V

    iput-object v1, p0, Lg/g/a/a/i/p/c;->attributionDTO:Lg/g/a/a/i/l/b;

    .line 10
    iput-object v0, p0, Lg/g/a/a/i/p/c;->profileTag:Ljava/lang/String;

    .line 11
    new-instance v0, Lg/g/a/a/i/p/a;

    invoke-direct {v0}, Lg/g/a/a/i/p/a;-><init>()V

    iput-object v0, p0, Lg/g/a/a/i/p/c;->displayBackgroundDTO:Lg/g/a/a/i/p/a;

    return-void
.end method


# virtual methods
.method public final getAttributionDTO()Lg/g/a/a/i/l/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->attributionDTO:Lg/g/a/a/i/l/b;

    return-object v0
.end method

.method public final getDisplayBackgroundDTO()Lg/g/a/a/i/p/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->displayBackgroundDTO:Lg/g/a/a/i/p/a;

    return-object v0
.end method

.method public final getDisplayDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->displayDescription:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayDetail()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->displayDetail:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayImageUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->displayImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDisplayName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileDetails()Lg/g/a/a/i/p/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->profileDetails:Lg/g/a/a/i/p/e;

    return-object v0
.end method

.method public final getProfileIcon()Lg/g/a/a/i/p/f;
    .locals 3

    .line 2
    iget-object v0, p0, Lg/g/a/a/i/p/c;->profileIcon:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/a/a/i/p/f;->valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/f;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getProfileIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->profileIcon:Ljava/lang/String;

    return-object v0
.end method

.method public final getProfileTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->profileTag:Ljava/lang/String;

    return-object v0
.end method

.method public final getReputationLevel()Lg/g/a/a/i/p/g;
    .locals 3

    .line 2
    iget-object v0, p0, Lg/g/a/a/i/p/c;->reputationLevel:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "Locale.getDefault()"

    invoke-static {v1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/a/a/i/p/g;->valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/g;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getReputationLevel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/c;->reputationLevel:Ljava/lang/String;

    return-object v0
.end method

.method public final getVerified()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lg/g/a/a/i/p/c;->verified:Z

    return v0
.end method

.method public final setAttributionDTO(Lg/g/a/a/i/l/b;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->attributionDTO:Lg/g/a/a/i/l/b;

    return-void
.end method

.method public final setDisplayBackgroundDTO(Lg/g/a/a/i/p/a;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->displayBackgroundDTO:Lg/g/a/a/i/p/a;

    return-void
.end method

.method public final setDisplayDescription(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->displayDescription:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayDetail(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->displayDetail:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayImageUrl(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->displayImageUrl:Ljava/lang/String;

    return-void
.end method

.method public final setDisplayName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->displayName:Ljava/lang/String;

    return-void
.end method

.method public final setProfileDetails(Lg/g/a/a/i/p/e;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->profileDetails:Lg/g/a/a/i/p/e;

    return-void
.end method

.method public final setProfileIcon(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->profileIcon:Ljava/lang/String;

    return-void
.end method

.method public final setProfileTag(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->profileTag:Ljava/lang/String;

    return-void
.end method

.method public final setReputationLevel(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/c;->reputationLevel:Ljava/lang/String;

    return-void
.end method

.method public final setVerified(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lg/g/a/a/i/p/c;->verified:Z

    return-void
.end method
