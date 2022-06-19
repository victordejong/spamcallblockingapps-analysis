.class public final Lcom/truecaller/tcpermissions/PermissionRequestOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/tcpermissions/PermissionRequestOptions$a;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/tcpermissions/PermissionRequestOptions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/truecaller/tcpermissions/PermissionRequestOptions$a;

    invoke-direct {v0}, Lcom/truecaller/tcpermissions/PermissionRequestOptions$a;-><init>()V

    sput-object v0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, v0, v0, v1, v2}, Lcom/truecaller/tcpermissions/PermissionRequestOptions;-><init>(ZZLjava/lang/Integer;I)V

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    iput-boolean p2, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    iput-object p3, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(ZZLjava/lang/Integer;I)V
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    move p2, v1

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    const/4 p3, 0x0

    .line 2
    :cond_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    iput-boolean p2, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    iput-object p3, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/truecaller/tcpermissions/PermissionRequestOptions;

    iget-boolean v0, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    iget-boolean v1, p1, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    iget-boolean v1, p1, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

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

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "PermissionRequestOptions(showPermissionSettings="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", showAccessContacts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", permissionsDeniedExplanation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->L2(Ljava/lang/StringBuilder;Ljava/lang/Integer;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->a:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p2, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->b:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Lcom/truecaller/tcpermissions/PermissionRequestOptions;->c:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
