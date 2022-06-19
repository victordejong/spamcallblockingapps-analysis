.class public final Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;
.super Lcom/truecaller/surveys/data/entities/SurveyFlow;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/surveys/data/entities/SurveyFlow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ReportProfile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c7\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0016\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u00c6\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;",
        "Lcom/truecaller/surveys/data/entities/SurveyFlow;",
        "Lq3/b/b;",
        "serializer",
        "()Lq3/b/b;",
        "<init>",
        "()V",
        "surveys_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    invoke-direct {v0}, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;-><init>()V

    sput-object v0, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/truecaller/surveys/data/entities/SurveyFlow;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public final serializer()Lq3/b/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lq3/b/b<",
            "Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;",
            ">;"
        }
    .end annotation

    new-instance v0, Lq3/b/k/n;

    sget-object v1, Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;->INSTANCE:Lcom/truecaller/surveys/data/entities/SurveyFlow$ReportProfile;

    const-string v2, "com.truecaller.surveys.data.entities.SurveyFlow.ReportProfile"

    invoke-direct {v0, v2, v1}, Lq3/b/k/n;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method
