.class public final Lcom/google/firebase/messaging/u;
.super Lcom/google/android/gms/common/internal/safeparcel/a;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/firebase/messaging/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field f:Landroid/os/Bundle;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/messaging/v;

    invoke-direct {v0}, Lcom/google/firebase/messaging/v;-><init>()V

    sput-object v0, Lcom/google/firebase/messaging/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/a;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/messaging/u;->f:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/google/firebase/messaging/v;->c(Lcom/google/firebase/messaging/u;Landroid/os/Parcel;I)V

    return-void
.end method

.method public y1()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->g:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/firebase/messaging/u;->f:Landroid/os/Bundle;

    .line 1
    invoke-static {v0}, Lcom/google/firebase/messaging/b$a;->a(Landroid/os/Bundle;)Lf/e/a;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/messaging/u;->g:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/google/firebase/messaging/u;->g:Ljava/util/Map;

    return-object v0
.end method
