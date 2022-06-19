.class public final Lcom/truecaller/data/entity/MessageType$Custom;
.super Lcom/truecaller/data/entity/MessageType;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/entity/MessageType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Custom"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/data/entity/MessageType$Custom$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/data/entity/MessageType$Custom;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/truecaller/data/entity/MessageType$Custom;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/truecaller/data/entity/MessageType$Custom;

    invoke-direct {v0}, Lcom/truecaller/data/entity/MessageType$Custom;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/MessageType$Custom;->b:Lcom/truecaller/data/entity/MessageType$Custom;

    new-instance v0, Lcom/truecaller/data/entity/MessageType$Custom$a;

    invoke-direct {v0}, Lcom/truecaller/data/entity/MessageType$Custom$a;-><init>()V

    sput-object v0, Lcom/truecaller/data/entity/MessageType$Custom;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "custom"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lcom/truecaller/data/entity/MessageType;-><init>(Ljava/lang/String;Ls1/z/c/f;)V

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

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
