.class public Lcom/tenor/android/core/response/impl/AnonIdResponse;
.super Lcom/tenor/android/core/response/AbstractResponse;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x192cb37d1b4dc224L


# instance fields
.field private id:Ljava/lang/String;
    .annotation runtime Le/m/e/d0/b;
        alternate = {
            "anon_id"
        }
        value = "anonid"
    .end annotation
.end field

.field private localId:I
    .annotation runtime Le/m/e/d0/b;
        value = "localid"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tenor/android/core/response/AbstractResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/response/impl/AnonIdResponse;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/tenor/android/core/constant/StringConstant;->getOrEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocalId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/response/impl/AnonIdResponse;->localId:I

    return v0
.end method
