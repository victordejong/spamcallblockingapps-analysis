.class public final Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/protobuf/Internal$EnumVerifier;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key$b;

    invoke-direct {v0}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key$b;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInRange(I)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key;->forNumber(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$ClientData$Key;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
