.class public Lcom/truecaller/referral/BulkSmsView$PromoLayout;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/referral/BulkSmsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PromoLayout"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/referral/BulkSmsView$PromoLayout;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[Ljava/lang/String;

.field public final d:[I

.field public final e:[I

.field public final f:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/referral/BulkSmsView$PromoLayout$a;

    invoke-direct {v0}, Lcom/truecaller/referral/BulkSmsView$PromoLayout$a;-><init>()V

    sput-object v0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[I[Ljava/lang/String;[I[I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->a:I

    .line 3
    iput-object p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->b:[I

    .line 4
    iput-object p3, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->c:[Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->d:[I

    .line 6
    iput-object p5, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->e:[I

    .line 7
    iput-object p6, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->f:[I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->a:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->b:[I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->c:[Ljava/lang/String;

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->d:[I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->e:[I

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->f:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->a:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->b:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->c:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->d:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 5
    iget-object p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->e:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 6
    iget-object p2, p0, Lcom/truecaller/referral/BulkSmsView$PromoLayout;->f:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
