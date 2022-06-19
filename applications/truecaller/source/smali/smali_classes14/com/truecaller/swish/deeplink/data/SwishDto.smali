.class public final Lcom/truecaller/swish/deeplink/data/SwishDto;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/swish/deeplink/data/SwishDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008\u0001\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0015\u001a\u00020\u0010\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J \u0010\t\u001a\u00020\u00082\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\u0002H\u00d6\u0001\u00a2\u0006\u0004\u0008\t\u0010\nR\u0019\u0010\u000c\u001a\u00020\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0012\u001a\u0004\u0008\u0016\u0010\u0014R\u001c\u0010\u0017\u001a\u00020\u00028\u0002@\u0002X\u0082D\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u0012\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/truecaller/swish/deeplink/data/SwishDto;",
        "Landroid/os/Parcelable;",
        "",
        "describeContents",
        "()I",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "Lcom/truecaller/swish/deeplink/data/SwishNumberDto;",
        "amount",
        "Lcom/truecaller/swish/deeplink/data/SwishNumberDto;",
        "getAmount",
        "()Lcom/truecaller/swish/deeplink/data/SwishNumberDto;",
        "Lcom/truecaller/swish/deeplink/data/SwishStringDto;",
        "message",
        "Lcom/truecaller/swish/deeplink/data/SwishStringDto;",
        "getMessage",
        "()Lcom/truecaller/swish/deeplink/data/SwishStringDto;",
        "payee",
        "getPayee",
        "version",
        "I",
        "getVersion$annotations",
        "()V",
        "<init>",
        "(Lcom/truecaller/swish/deeplink/data/SwishStringDto;Lcom/truecaller/swish/deeplink/data/SwishNumberDto;Lcom/truecaller/swish/deeplink/data/SwishStringDto;)V",
        "swish-integration_release"
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
            "Lcom/truecaller/swish/deeplink/data/SwishDto;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final amount:Lcom/truecaller/swish/deeplink/data/SwishNumberDto;

.field private final message:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

.field private final payee:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

.field private final version:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/swish/deeplink/data/SwishDto$a;

    invoke-direct {v0}, Lcom/truecaller/swish/deeplink/data/SwishDto$a;-><init>()V

    sput-object v0, Lcom/truecaller/swish/deeplink/data/SwishDto;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/swish/deeplink/data/SwishStringDto;Lcom/truecaller/swish/deeplink/data/SwishNumberDto;Lcom/truecaller/swish/deeplink/data/SwishStringDto;)V
    .locals 1

    const-string v0, "payee"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "amount"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->payee:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    iput-object p2, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->amount:Lcom/truecaller/swish/deeplink/data/SwishNumberDto;

    iput-object p3, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->message:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->version:I

    return-void
.end method

.method private static synthetic getVersion$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getAmount()Lcom/truecaller/swish/deeplink/data/SwishNumberDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->amount:Lcom/truecaller/swish/deeplink/data/SwishNumberDto;

    return-object v0
.end method

.method public final getMessage()Lcom/truecaller/swish/deeplink/data/SwishStringDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->message:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    return-object v0
.end method

.method public final getPayee()Lcom/truecaller/swish/deeplink/data/SwishStringDto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->payee:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->payee:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->amount:Lcom/truecaller/swish/deeplink/data/SwishNumberDto;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object p2, p0, Lcom/truecaller/swish/deeplink/data/SwishDto;->message:Lcom/truecaller/swish/deeplink/data/SwishStringDto;

    invoke-interface {p2, p1, v0}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
