.class public final enum Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestorVoteCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

.field public static final enum DOWNVOTED:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

.field public static final enum REQUESTORVOTE_NOT_SET:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

.field public static final enum UPVOTED:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    const-string v1, "UPVOTED"

    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->UPVOTED:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    const-string v3, "DOWNVOTED"

    const/4 v4, 0x1

    const/16 v5, 0xb

    invoke-direct {v1, v3, v4, v5}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->DOWNVOTED:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    const-string v5, "REQUESTORVOTE_NOT_SET"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v2}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->REQUESTORVOTE_NOT_SET:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->$VALUES:[Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_1

    const/16 v0, 0xb

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->DOWNVOTED:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->UPVOTED:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->REQUESTORVOTE_NOT_SET:Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->forNumber(I)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->$VALUES:[Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/comments/model/GetComments$Response$Comment$RequestorVoteCase;->value:I

    return v0
.end method
