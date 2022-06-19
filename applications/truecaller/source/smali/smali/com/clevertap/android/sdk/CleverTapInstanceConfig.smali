.class public Lcom/clevertap/android/sdk/CleverTapInstanceConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/clevertap/android/sdk/CleverTapInstanceConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public e:Z

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:Z

.field public k:Z

.field public l:Ljava/lang/String;

.field public m:Z

.field public n:Le/h/a/c/g0;

.field public o:Ljava/lang/String;

.field public p:Z

.field public q:[Ljava/lang/String;

.field public r:Z

.field public s:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig$a;

    invoke-direct {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig$a;-><init>()V

    sput-object v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-static {}, Ln3/g0/y;->W()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 25
    sget-object v0, Le/h/a/c/u;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    .line 29
    iput-boolean p5, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    const/4 p2, 0x0

    .line 30
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    .line 32
    iput p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    .line 33
    new-instance p3, Le/h/a/c/g0;

    invoke-direct {p3, p2}, Le/h/a/c/g0;-><init>(I)V

    iput-object p3, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    .line 34
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    .line 35
    invoke-static {p1}, Le/h/a/c/h0;->b(Landroid/content/Context;)Le/h/a/c/h0;

    move-result-object p1

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-boolean p2, Le/h/a/c/h0;->e:Z

    .line 38
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    .line 39
    sget-boolean p2, Le/h/a/c/h0;->f:Z

    .line 40
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    .line 41
    sget-boolean p2, Le/h/a/c/h0;->j:Z

    .line 42
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    .line 43
    sget-boolean p2, Le/h/a/c/h0;->k:Z

    .line 44
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    .line 45
    sget-object p2, Le/h/a/c/h0;->m:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    .line 47
    sget-object p2, Le/h/a/c/h0;->n:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    .line 49
    sget-boolean p2, Le/h/a/c/h0;->l:Z

    .line 50
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    .line 51
    sget-boolean p2, Le/h/a/c/h0;->o:Z

    .line 52
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    .line 53
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-eqz p2, :cond_0

    .line 54
    iget-object p1, p1, Le/h/a/c/h0;->a:[Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    const-string p1, "Setting Profile Keys from Manifest: "

    .line 56
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    .line 57
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    const-string p3, "ON_USER_LOGIN"

    invoke-virtual {p0, p3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/clevertap/android/sdk/CleverTapInstanceConfig$a;)V
    .locals 3

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    invoke-static {}, Ln3/g0/y;->W()Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 114
    sget-object p2, Le/h/a/c/u;->d:[Ljava/lang/String;

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_3

    move p2, v0

    goto :goto_3

    :cond_3
    move p2, v1

    :goto_3
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_4

    move p2, v0

    goto :goto_4

    :cond_4
    move p2, v1

    :goto_4
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    .line 124
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_5

    move p2, v0

    goto :goto_5

    :cond_5
    move p2, v1

    :goto_5
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_6

    :cond_6
    move p2, v1

    :goto_6
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_7

    :cond_7
    move p2, v1

    :goto_7
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_8

    move p2, v0

    goto :goto_8

    :cond_8
    move p2, v1

    :goto_8
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    .line 130
    new-instance p2, Le/h/a/c/g0;

    iget v2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    invoke-direct {p2, v2}, Le/h/a/c/g0;-><init>(I)V

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_9

    goto :goto_9

    :cond_9
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    .line 132
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 133
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 134
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ln3/g0/y;->W()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 3
    sget-object v0, Le/h/a/c/u;->d:[Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    .line 4
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 5
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    .line 6
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    .line 7
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    .line 8
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    .line 9
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    .line 10
    iget v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    iput v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    .line 11
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    .line 12
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    .line 13
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    .line 14
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    .line 15
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    .line 16
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    .line 17
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    .line 18
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    .line 19
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    .line 20
    iget-boolean v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    iput-boolean v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    .line 21
    iget-object v0, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 22
    iget-object p1, p1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    iput-object p1, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v2, "identityTypes"

    const-string v0, "allowedPushTypes"

    const-string v3, "beta"

    const-string v4, "fcmSenderId"

    const-string v5, "getEnableCustomCleverTapId"

    const-string v6, "backgroundSync"

    const-string v7, "sslPinning"

    const-string v8, "createdPostAppLaunch"

    const-string v9, "packageName"

    const-string v10, "debugLevel"

    const-string v11, "personalization"

    const-string v12, "disableAppLaunchedEvent"

    const-string v13, "useGoogleAdId"

    const-string v14, "isDefaultInstance"

    const-string v15, "analyticsOnly"

    move-object/from16 v16, v2

    const-string v2, "accountRegion"

    move-object/from16 v17, v0

    const-string v0, "accountToken"

    move-object/from16 v18, v3

    const-string v3, "accountId"

    .line 59
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v19, v4

    .line 60
    invoke-static {}, Ln3/g0/y;->W()Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    .line 61
    sget-object v4, Le/h/a/c/u;->d:[Ljava/lang/String;

    iput-object v4, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    .line 62
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    move-object/from16 v20, v5

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 64
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 66
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    .line 67
    :cond_1
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    .line 69
    :cond_2
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    .line 71
    :cond_3
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {v4, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    .line 73
    :cond_4
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 74
    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    .line 75
    :cond_5
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 76
    invoke-virtual {v4, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    .line 77
    :cond_6
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 78
    invoke-virtual {v4, v11}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    .line 79
    :cond_7
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    invoke-virtual {v4, v10}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    .line 81
    :cond_8
    new-instance v0, Le/h/a/c/g0;

    iget v2, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    invoke-direct {v0, v2}, Le/h/a/c/g0;-><init>(I)V

    iput-object v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    .line 82
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 83
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    .line 84
    :cond_9
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 85
    invoke-virtual {v4, v8}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    .line 86
    :cond_a
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 87
    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    .line 88
    :cond_b
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 89
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    :cond_c
    move-object/from16 v0, v20

    .line 90
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 91
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    :cond_d
    move-object/from16 v0, v19

    .line 92
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 93
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    :cond_e
    move-object/from16 v0, v18

    .line 94
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 95
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    :cond_f
    move-object/from16 v0, v17

    .line 96
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    .line 97
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 98
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v6, v3

    .line 99
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v6, v0, :cond_10

    .line 100
    :try_start_1
    invoke-virtual {v2, v6}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 101
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 102
    :cond_10
    iput-object v5, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    :cond_11
    move-object/from16 v2, v16

    .line 103
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 104
    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 106
    :goto_2
    :try_start_3
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_12

    .line 107
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 108
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 109
    :cond_12
    check-cast v2, [Ljava/lang/String;

    iput-object v2, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_13
    return-void

    :catchall_0
    move-exception v0

    .line 110
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 111
    throw v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ":"

    if-nez v1, :cond_0

    invoke-static {v2, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v1, "]"

    invoke-static {v0, p1, v1}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Le/h/a/c/g0;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/g0;

    iget v1, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    invoke-direct {v0, v1}, Le/h/a/c/g0;-><init>(I)V

    iput-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->n:Le/h/a/c/g0;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->e:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 5
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->s:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 9
    iget p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->i:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->h:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 11
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->r:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 12
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->f:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 13
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->k:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 14
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->l:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 15
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->o:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 16
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->g:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 17
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->d:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 18
    iget-object p2, p0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->q:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return-void
.end method
