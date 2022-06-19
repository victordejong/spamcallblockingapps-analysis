.class public final Lg/g/a/a/i/p/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private entityType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "entityType"
    .end annotation
.end field

.field private lineTypeId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lineTypeId"
    .end annotation
.end field

.field private lineTypeName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "lineTypeName"
    .end annotation
.end field

.field private location:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "location"
    .end annotation
.end field

.field private reputationCategoryId:I
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputationCategoryId"
    .end annotation
.end field

.field private reputationCategoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputationCategoryName"
    .end annotation
.end field

.field private reputationCategoryReportedName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/v/c;
        value = "reputationCategoryReportedName"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lg/g/a/a/i/p/e;->entityType:Ljava/lang/String;

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lg/g/a/a/i/p/e;->reputationCategoryId:I

    .line 4
    iput-object v0, p0, Lg/g/a/a/i/p/e;->reputationCategoryName:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lg/g/a/a/i/p/e;->reputationCategoryReportedName:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lg/g/a/a/i/p/e;->lineTypeId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lg/g/a/a/i/p/e;->lineTypeName:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lg/g/a/a/i/p/e;->location:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getEntityType()Lg/g/a/a/i/p/b;
    .locals 2

    .line 2
    iget-object v0, p0, Lg/g/a/a/i/p/e;->entityType:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/a/a/i/p/b;->valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/b;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getEntityType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->entityType:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineType()Lg/g/a/a/i/p/d;
    .locals 2

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->lineTypeId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(this as java.lang.String).toUpperCase()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/a/a/i/p/d;->valueOf(Ljava/lang/String;)Lg/g/a/a/i/p/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getLineTypeId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->lineTypeId:Ljava/lang/String;

    return-object v0
.end method

.method public final getLineTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->lineTypeName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLocation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->location:Ljava/lang/String;

    return-object v0
.end method

.method public final getReputationCategoryId()I
    .locals 1

    .line 1
    iget v0, p0, Lg/g/a/a/i/p/e;->reputationCategoryId:I

    return v0
.end method

.method public final getReputationCategoryName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->reputationCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getReputationCategoryReportedName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lg/g/a/a/i/p/e;->reputationCategoryReportedName:Ljava/lang/String;

    return-object v0
.end method

.method public final setEntityType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/e;->entityType:Ljava/lang/String;

    return-void
.end method

.method public final setLineTypeId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/e;->lineTypeId:Ljava/lang/String;

    return-void
.end method

.method public final setLineTypeName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/e;->lineTypeName:Ljava/lang/String;

    return-void
.end method

.method public final setLocation(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/e;->location:Ljava/lang/String;

    return-void
.end method

.method public final setReputationCategoryId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lg/g/a/a/i/p/e;->reputationCategoryId:I

    return-void
.end method

.method public final setReputationCategoryName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/e;->reputationCategoryName:Ljava/lang/String;

    return-void
.end method

.method public final setReputationCategoryReportedName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lg/g/a/a/i/p/e;->reputationCategoryReportedName:Ljava/lang/String;

    return-void
.end method
