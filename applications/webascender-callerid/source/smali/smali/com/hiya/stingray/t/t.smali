.class final Lcom/hiya/stingray/t/t;
.super Lcom/hiya/stingray/t/f;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/hiya/stingray/t/t;",
            ">;"
        }
    .end annotation
.end field

.field private static final m:Lcom/hiya/stingray/t/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/hiya/stingray/t/n$b;

    invoke-direct {v0}, Lcom/hiya/stingray/t/n$b;-><init>()V

    sput-object v0, Lcom/hiya/stingray/t/t;->m:Lcom/hiya/stingray/t/n$b;

    .line 2
    new-instance v0, Lcom/hiya/stingray/t/t$a;

    invoke-direct {v0}, Lcom/hiya/stingray/t/t$a;-><init>()V

    sput-object v0, Lcom/hiya/stingray/t/t;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/v0;",
            ">;",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/n;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/hiya/stingray/t/y0;",
            "Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/hiya/stingray/t/f;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Lcom/hiya/stingray/t/y0;ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic j()Lcom/hiya/stingray/t/n$b;
    .locals 1

    .line 1
    sget-object v0, Lcom/hiya/stingray/t/t;->m:Lcom/hiya/stingray/t/n$b;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->d()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    :goto_0
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->f()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 6
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    sget-object v0, Lcom/hiya/stingray/t/t;->m:Lcom/hiya/stingray/t/n$b;

    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->c()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3, p1}, Lcom/hiya/stingray/t/n$b;->b(Ljava/util/List;Landroid/os/Parcel;)V

    .line 10
    :goto_1
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 11
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    .line 12
    :cond_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    :goto_2
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->h()Lcom/hiya/stingray/t/y0;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 15
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->i()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->e()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_3

    .line 17
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    invoke-virtual {p0}, Lcom/hiya/stingray/t/f;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_3
    return-void
.end method
