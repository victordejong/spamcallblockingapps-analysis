.class public final Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder<",
        "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;",
        "Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;",
        ">;",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->access$000()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/api/services/survey/PostSurveyResults$a;)V
    .locals 0

    .line 2
    invoke-static {}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->access$000()Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageLite$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;

    invoke-static {v0, p1}, Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;->access$200(Lcom/truecaller/api/services/survey/PostSurveyResults$Request$Answers;I)V

    return-object p0
.end method
