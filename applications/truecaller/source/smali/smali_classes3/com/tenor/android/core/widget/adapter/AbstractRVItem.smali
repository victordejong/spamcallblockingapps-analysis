.class public abstract Lcom/tenor/android/core/widget/adapter/AbstractRVItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tenor/android/core/widget/adapter/IRVItem;


# instance fields
.field private final mId:Ljava/lang/String;

.field private mRelativePosition:I

.field private final mType:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mRelativePosition:I

    .line 4
    iput p1, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mType:I

    .line 5
    iput-object p2, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getRelativePosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mRelativePosition:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mType:I

    return v0
.end method

.method public setRelativePosition(I)Lcom/tenor/android/core/widget/adapter/AbstractRVItem;
    .locals 0

    .line 1
    iput p1, p0, Lcom/tenor/android/core/widget/adapter/AbstractRVItem;->mRelativePosition:I

    return-object p0
.end method
