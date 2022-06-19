.class public abstract Lcom/freshchat/consumer/sdk/a/l$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/freshchat/consumer/sdk/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation


# instance fields
.field private final oG:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/freshchat/consumer/sdk/a/l$b;->oG:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/freshchat/consumer/sdk/a/l$b;->oG:I

    return-void
.end method


# virtual methods
.method public b(Landroid/os/Parcel;)V
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/a/l$b;->oG:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method

.method public hx()I
    .locals 1

    iget v0, p0, Lcom/freshchat/consumer/sdk/a/l$b;->oG:I

    return v0
.end method
