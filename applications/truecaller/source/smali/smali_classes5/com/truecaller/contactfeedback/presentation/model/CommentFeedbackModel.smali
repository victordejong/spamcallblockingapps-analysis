.class public final Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0006\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0014\u0008\u0087\u0008\u0018\u00002\u00020\u0001B_\u0012\u0006\u0010\u0015\u001a\u00020\u0002\u0012\u0006\u0010\u0016\u001a\u00020\u0002\u0012\u0006\u0010\u0017\u001a\u00020\u0002\u0012\u0006\u0010\u0018\u001a\u00020\u0002\u0012\u0006\u0010\u0019\u001a\u00020\u0002\u0012\u0006\u0010\u001a\u001a\u00020\t\u0012\u0006\u0010\u001b\u001a\u00020\u0002\u0012\u0006\u0010\u001c\u001a\u00020\u0002\u0012\u0006\u0010\u001d\u001a\u00020\u000e\u0012\u0006\u0010\u001e\u001a\u00020\u000e\u0012\u0006\u0010\u001f\u001a\u00020\u0012\u00a2\u0006\u0004\u0008>\u0010?J\u0010\u0010\u0003\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\u0010\u0010\u0008\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0010\u0010\n\u001a\u00020\tH\u00c6\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0010\u0010\u000c\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\u0010\u0010\r\u001a\u00020\u0002H\u00c6\u0003\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0010\u0010\u000f\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u0010\u0010\u0011\u001a\u00020\u000eH\u00c6\u0003\u00a2\u0006\u0004\u0008\u0011\u0010\u0010J\u0010\u0010\u0013\u001a\u00020\u0012H\u00c6\u0003\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J~\u0010 \u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0016\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001a\u001a\u00020\t2\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u001d\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001e\u001a\u00020\u000e2\u0008\u0008\u0002\u0010\u001f\u001a\u00020\u0012H\u00c6\u0001\u00a2\u0006\u0004\u0008 \u0010!J\u0010\u0010\"\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\"\u0010\u0004J\u0010\u0010#\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008#\u0010\u0010J\u001a\u0010&\u001a\u00020\t2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u00d6\u0003\u00a2\u0006\u0004\u0008&\u0010\'J\u0010\u0010(\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008(\u0010\u0010J \u0010-\u001a\u00020,2\u0006\u0010*\u001a\u00020)2\u0006\u0010+\u001a\u00020\u000eH\u00d6\u0001\u00a2\u0006\u0004\u0008-\u0010.R\u0019\u0010\u001d\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010/\u001a\u0004\u00080\u0010\u0010R\u0019\u0010\u001f\u001a\u00020\u00128\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001f\u00101\u001a\u0004\u00082\u0010\u0014R\u0019\u0010\u0017\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u00103\u001a\u0004\u00084\u0010\u0004R\u0019\u0010\u0019\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u00103\u001a\u0004\u00085\u0010\u0004R\u0019\u0010\u0018\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0018\u00103\u001a\u0004\u00086\u0010\u0004R\u0019\u0010\u0016\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u00103\u001a\u0004\u00087\u0010\u0004R\u0019\u0010\u001c\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001c\u00103\u001a\u0004\u00088\u0010\u0004R\u0019\u0010\u001a\u001a\u00020\t8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001a\u00109\u001a\u0004\u0008:\u0010\u000bR\u0019\u0010\u001e\u001a\u00020\u000e8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010/\u001a\u0004\u0008;\u0010\u0010R\u0019\u0010\u001b\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u00103\u001a\u0004\u0008<\u0010\u0004R\u0019\u0010\u0015\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u00103\u001a\u0004\u0008=\u0010\u0004\u00a8\u0006@"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
        "Landroid/os/Parcelable;",
        "",
        "component1",
        "()Ljava/lang/String;",
        "component2",
        "component3",
        "component4",
        "component5",
        "",
        "component6",
        "()Z",
        "component7",
        "component8",
        "",
        "component9",
        "()I",
        "component10",
        "Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;",
        "component11",
        "()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;",
        "id",
        "phoneNumber",
        "name",
        "text",
        "avatarUrl",
        "anonymous",
        "postedAt",
        "lang",
        "upVotes",
        "downVotes",
        "voteStatus",
        "copy",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
        "toString",
        "hashCode",
        "",
        "other",
        "equals",
        "(Ljava/lang/Object;)Z",
        "describeContents",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "I",
        "getUpVotes",
        "Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;",
        "getVoteStatus",
        "Ljava/lang/String;",
        "getName",
        "getAvatarUrl",
        "getText",
        "getPhoneNumber",
        "getLang",
        "Z",
        "getAnonymous",
        "getDownVotes",
        "getPostedAt",
        "getId",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)V",
        "contact-feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final anonymous:Z

.field private final avatarUrl:Ljava/lang/String;

.field private final downVotes:I

.field private final id:Ljava/lang/String;

.field private final lang:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final phoneNumber:Ljava/lang/String;

.field private final postedAt:Ljava/lang/String;

.field private final text:Ljava/lang/String;

.field private final upVotes:I

.field private final voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel$a;

    invoke-direct {v0}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel$a;-><init>()V

    sput-object v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarUrl"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postedAt"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteStatus"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    iput-object p7, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    iput-object p8, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    iput p9, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    iput p10, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    iput-object p11, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    return-void
.end method

.method public static synthetic copy$default(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;ILjava/lang/Object;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-object v6, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    goto :goto_4

    :cond_4
    move-object/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move-object p1, v2

    move-object p2, v3

    move-object p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    return v0
.end method

.method public final component11()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Z
    .locals 1

    iget-boolean v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;
    .locals 13

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phoneNumber"

    move-object v3, p2

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "avatarUrl"

    move-object/from16 v6, p5

    invoke-static {v6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "postedAt"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lang"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voteStatus"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    move-object v1, v0

    move/from16 v7, p6

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-direct/range {v1 .. v12}, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;IILcom/truecaller/contactfeedback/presentation/model/VoteStatus;)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    iget-boolean v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    iget-object v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    iget v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    iget v1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    iget-object p1, p1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAnonymous()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    return v0
.end method

.method public final getAvatarUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final getDownVotes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhoneNumber()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method public final getPostedAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    return-object v0
.end method

.method public final getUpVotes()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    return v0
.end method

.method public final getVoteStatus()Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v1

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v1

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    move v2, v1

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_5

    :cond_6
    move v2, v1

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_6

    :cond_7
    move v2, v1

    :goto_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_8
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "CommentFeedbackModel(id="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", phoneNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", avatarUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", anonymous="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", postedAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", lang="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", upVotes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", downVotes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", voteStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->id:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->text:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->avatarUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->anonymous:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->postedAt:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->lang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->upVotes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->downVotes:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;->voteStatus:Lcom/truecaller/contactfeedback/presentation/model/VoteStatus;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
