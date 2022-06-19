.class public Lcom/clevertap/android/sdk/inapp/CTInAppNotification;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;,
        Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/clevertap/android/sdk/inapp/CTInAppNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ljava/lang/String;

.field public C:C

.field public D:Z

.field public E:J

.field public J:Ljava/lang/String;

.field public K:Ljava/lang/String;

.field public L:I

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Z

.field public P:I

.field public Q:I

.field public a:Lcom/clevertap/android/sdk/inapp/CTInAppNotification$b;

.field public b:Ljava/lang/String;

.field public c:Lorg/json/JSONObject;

.field public d:Ljava/lang/String;

.field public e:I

.field public f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;",
            ">;"
        }
    .end annotation
.end field

.field public g:Ljava/lang/String;

.field public h:Lorg/json/JSONObject;

.field public i:Ljava/lang/String;

.field public j:Z

.field public k:Ljava/lang/String;

.field public l:Z

.field public m:I

.field public n:I

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Le/h/a/c/q0/z;

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:Z

.field public w:Lorg/json/JSONObject;

.field public x:Ljava/lang/String;

.field public y:I

.field public z:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$a;

    invoke-direct {v0}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$a;-><init>()V

    sput-object v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Lcom/clevertap/android/sdk/inapp/CTInAppNotification$a;)V
    .locals 4

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    .line 7
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->q:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    .line 9
    const-class p2, Le/h/a/c/q0/z;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/h/a/c/q0/z;

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->p:Ljava/lang/String;

    .line 11
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
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->l:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_1

    move p2, v0

    goto :goto_1

    :cond_1
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->D:Z

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_2

    move p2, v0

    goto :goto_2

    :cond_2
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->j:Z

    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->y:I

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->M:I

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->L:I

    .line 17
    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p2}, Ljava/lang/Character;->charValue()C

    move-result p2

    iput-char p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->C:C

    .line 18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->m:I

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->P:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    const/4 v2, 0x0

    if-nez p2, :cond_3

    move-object p2, v2

    goto :goto_3

    :cond_3
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_3
    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-nez p2, :cond_4

    move-object p2, v2

    goto :goto_4

    :cond_4
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_4
    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->h:Lorg/json/JSONObject;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-nez p2, :cond_5

    goto :goto_5

    :cond_5
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    :goto_5
    iput-object v2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c:Lorg/json/JSONObject;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :try_start_1
    sget-object p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    :catchall_0
    :try_start_2
    sget-object p2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 34
    :catchall_1
    :try_start_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_6

    move p2, v0

    goto :goto_6

    :cond_6
    move p2, v1

    :goto_6
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_7

    move p2, v0

    goto :goto_7

    :cond_7
    move p2, v1

    :goto_7
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->i:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_8

    move p2, v0

    goto :goto_8

    :cond_8
    move p2, v1

    :goto_8
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->v:Z

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_9

    move p2, v0

    goto :goto_9

    :cond_9
    move p2, v1

    :goto_9
    iput-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->t:Z

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p2

    if-eqz p2, :cond_a

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    iput-boolean v0, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->s:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->x:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->b:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->E:J
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 3
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 6
    instance-of v4, v3, Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 7
    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v4, v3, Ljava/lang/Character;

    if-eqz v4, :cond_2

    .line 9
    check-cast v3, Ljava/lang/Character;

    invoke-virtual {v3}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_0

    .line 10
    :cond_2
    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 11
    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 12
    :cond_3
    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_4

    .line 13
    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_0

    .line 14
    :cond_4
    instance-of v4, v3, Ljava/lang/Double;

    if-eqz v4, :cond_5

    .line 15
    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 16
    :cond_5
    instance-of v4, v3, Ljava/lang/Long;

    if-eqz v4, :cond_6

    .line 17
    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 18
    :cond_6
    instance-of v4, v3, Ljava/lang/Boolean;

    if-eqz v4, :cond_7

    .line 19
    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 20
    :cond_7
    instance-of v4, v3, Lorg/json/JSONObject;

    if-eqz v4, :cond_0

    .line 21
    check-cast v3, Lorg/json/JSONObject;

    invoke-static {v3}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->b(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public final a(Lorg/json/JSONObject;)V
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "buttons"

    const-string v3, "mediaLandscape"

    const-string v4, "media"

    const-string v5, "close"

    const-string v6, "message"

    const-string v7, "title"

    const-string v8, "wzrk_ttl"

    const-string v9, "hasLandscape"

    const-string v10, "hasPortrait"

    const-string v11, "bg"

    const-string v12, "tablet"

    const-string v13, "tdc"

    const-string v14, "tlc"

    const-string v15, "efc"

    move-object/from16 v16, v2

    const-string v2, "wzrk_id"

    move-object/from16 v17, v3

    const-string v3, "ti"

    .line 1
    :try_start_0
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v19, ""

    if-eqz v18, :cond_0

    .line 2
    :try_start_1
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object/from16 v3, v19

    :goto_0
    iput-object v3, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->q:Ljava/lang/String;

    .line 3
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object/from16 v2, v19

    :goto_1
    iput-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    const-string v2, "type"

    .line 5
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x1

    const/16 v18, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    goto :goto_2

    :cond_2
    move/from16 v2, v18

    :goto_2
    iput-boolean v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->l:Z

    .line 7
    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v15, -0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_3

    :cond_3
    move v2, v15

    :goto_3
    iput v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->M:I

    .line 8
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v15

    :cond_4
    iput v15, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->L:I

    .line 9
    iget-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    invoke-static {v2}, Le/h/a/c/q0/z;->a(Ljava/lang/String;)Le/h/a/c/q0/z;

    move-result-object v2

    iput-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    .line 10
    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_4

    :cond_5
    move/from16 v2, v18

    :goto_4
    iput-boolean v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    .line 11
    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    const-string v2, "#FFFFFF"

    .line 12
    :goto_5
    iput-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 14
    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move/from16 v2, v18

    goto :goto_7

    :cond_8
    :goto_6
    move v2, v3

    :goto_7
    iput-boolean v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->t:Z

    .line 15
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 16
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_8

    :cond_9
    move/from16 v2, v18

    :goto_8
    iput-boolean v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->s:Z

    .line 17
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 18
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_9

    .line 19
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0xa4cb800

    add-long/2addr v8, v10

    :goto_9
    iput-wide v8, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->E:J

    .line 20
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_b

    .line 21
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :cond_b
    move-object v2, v8

    :goto_a
    const-string v7, "#000000"

    const-string v9, "color"

    const-string v10, "text"

    if-eqz v2, :cond_e

    .line 22
    :try_start_2
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_b

    :cond_c
    move-object/from16 v11, v19

    :goto_b
    iput-object v11, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    .line 23
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c

    :cond_d
    move-object v2, v7

    .line 24
    :goto_c
    iput-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    .line 25
    :cond_e
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 26
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_d

    :cond_f
    move-object v2, v8

    :goto_d
    if-eqz v2, :cond_12

    .line 27
    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v2, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    :cond_10
    move-object/from16 v6, v19

    iput-object v6, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    .line 28
    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_11

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 29
    :cond_11
    iput-object v7, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;

    .line 30
    :cond_12
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 31
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13

    move v2, v3

    goto :goto_e

    :cond_13
    move/from16 v2, v18

    :goto_e
    iput-boolean v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    .line 32
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_f

    :cond_14
    move-object v2, v8

    :goto_f
    if-eqz v2, :cond_15

    .line 33
    new-instance v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-direct {v4}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;-><init>()V

    .line 34
    invoke-virtual {v4, v2, v3}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->a(Lorg/json/JSONObject;I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 35
    iget-object v4, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_15
    move-object/from16 v2, v17

    .line 36
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 37
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    goto :goto_10

    :cond_16
    move-object v2, v8

    :goto_10
    if-eqz v2, :cond_17

    .line 38
    new-instance v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    invoke-direct {v4}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;-><init>()V

    const/4 v5, 0x2

    .line 39
    invoke-virtual {v4, v2, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->a(Lorg/json/JSONObject;I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    move-result-object v2

    if-eqz v2, :cond_17

    .line 40
    iget-object v4, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    move-object/from16 v2, v16

    .line 41
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 42
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    goto :goto_11

    :cond_18
    move-object v0, v8

    :goto_11
    if-eqz v0, :cond_1a

    move/from16 v2, v18

    .line 43
    :goto_12
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_1a

    .line 44
    new-instance v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    invoke-direct {v4}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;-><init>()V

    .line 45
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->a(Lorg/json/JSONObject;)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;

    .line 46
    iget-object v5, v4, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationButton;->e:Ljava/lang/String;

    if-nez v5, :cond_19

    .line 47
    iget-object v5, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    iget v4, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e:I

    add-int/2addr v4, v3

    iput v4, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e:I

    :cond_19
    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 49
    :cond_1a
    iget-object v0, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_15

    .line 50
    :pswitch_1
    iget-object v0, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    .line 51
    iget-object v0, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    .line 52
    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->c()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b()Z

    move-result v3

    if-nez v3, :cond_1c

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->e()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 53
    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d()Z

    move-result v2

    if-nez v2, :cond_1b

    :cond_1c
    const-string v2, "Wrong media type for template"

    .line 54
    iput-object v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    goto :goto_13

    :cond_1d
    const-string v0, "No media type for template"

    .line 55
    iput-object v0, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    goto :goto_15

    .line 56
    :pswitch_2
    iget-object v0, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1e
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    .line 57
    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->c()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b()Z

    move-result v3

    if-nez v3, :cond_1f

    invoke-virtual {v2}, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->e()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 58
    :cond_1f
    iput-object v8, v2, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->d:Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    const-string v2, "Invalid JSON"

    .line 59
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    :cond_20
    :goto_15
    return-void

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public c(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)[B
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification$c;->b(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    iget-object p1, p1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->b:Ljava/lang/String;

    .line 2
    sget v0, Le/h/a/c/z0/c;->a:I

    .line 3
    const-class v0, Le/h/a/c/z0/c;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 4
    :try_start_0
    sget-object v2, Le/h/a/c/z0/c;->c:Landroid/util/LruCache;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/graphics/Bitmap;

    :goto_0
    monitor-exit v0

    goto :goto_1

    .line 5
    :cond_1
    monitor-exit v0

    :goto_1
    return-object v1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(I)Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;

    .line 2
    iget v2, v1, Lcom/clevertap/android/sdk/inapp/CTInAppNotificationMedia;->a:I

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public final f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final g(Lorg/json/JSONObject;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "mdc"

    const-string v3, "kv"

    const-string v4, "url"

    const-string v5, "wzrk_ttl"

    const-string v6, "isJsEnabled"

    const-string v7, "tdc"

    const-string v8, "tlc"

    const-string v9, "efc"

    const-string v10, "wzrk_id"

    const-string v11, "ti"

    const-string v12, "html"

    const-string v13, "sc"

    const-string v14, "dk"

    const-string v15, "w"

    move-object/from16 v16, v2

    const-string v2, "pos"

    move-object/from16 v17, v3

    const-string v3, "yp"

    move-object/from16 v18, v4

    const-string v4, "xp"

    move-object/from16 v19, v5

    const-string v5, "ydp"

    move-object/from16 v20, v6

    const-string v6, "xdp"

    move-object/from16 v21, v7

    const-string v7, "d"

    move-object/from16 v22, v8

    .line 1
    invoke-static/range {p1 .. p1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->b(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v8

    move-object/from16 v23, v9

    .line 2
    const-class v9, Ljava/lang/String;

    move-object/from16 v24, v10

    const-class v10, Ljava/lang/Boolean;

    const-class v1, Ljava/lang/Integer;

    move-object/from16 v25, v11

    :try_start_0
    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v11

    .line 3
    invoke-virtual {v8, v7}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    if-eqz v11, :cond_7

    if-nez v8, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, v11, v6, v1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_1

    .line 5
    invoke-virtual {v0, v11, v4, v1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0, v11, v5, v1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v26

    if-nez v26, :cond_2

    .line 7
    invoke-virtual {v0, v11, v3, v1}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v0, v11, v14, v10}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-virtual {v0, v11, v13, v10}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    .line 10
    :cond_4
    invoke-virtual {v0, v8, v12, v9}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {v0, v11, v2, v9}, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 12
    invoke-virtual {v11, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v8, 0x62

    if-eq v1, v8, :cond_6

    const/16 v8, 0x63

    if-eq v1, v8, :cond_6

    const/16 v8, 0x6c

    if-eq v1, v8, :cond_6

    const/16 v8, 0x72

    if-eq v1, v8, :cond_6

    const/16 v8, 0x74

    if-eq v1, v8, :cond_6

    goto :goto_0

    :cond_6
    const/4 v8, 0x1

    goto :goto_1

    :catchall_0
    :cond_7
    :goto_0
    const/4 v8, 0x0

    :goto_1
    const-string v1, "Invalid JSON"

    if-nez v8, :cond_8

    .line 13
    iput-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    return-void

    :cond_8
    move-object/from16 v8, p1

    move-object/from16 v9, v25

    .line 14
    :try_start_1
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v11, ""

    if-eqz v10, :cond_9

    .line 15
    :try_start_2
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    :cond_9
    move-object v9, v11

    :goto_2
    iput-object v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->q:Ljava/lang/String;

    move-object/from16 v9, v24

    .line 16
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 17
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_a
    move-object v9, v11

    :goto_3
    iput-object v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    move-object/from16 v9, v23

    .line 18
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_c

    move v9, v10

    goto :goto_4

    :cond_b
    const/4 v10, 0x1

    :cond_c
    const/4 v9, 0x0

    :goto_4
    iput-boolean v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->l:Z

    move-object/from16 v9, v22

    .line 19
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v22

    const/16 v23, -0x1

    if-eqz v22, :cond_d

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_5

    :cond_d
    move/from16 v9, v23

    :goto_5
    iput v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->M:I

    move-object/from16 v9, v21

    .line 20
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_e

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v9

    goto :goto_6

    :cond_e
    move/from16 v9, v23

    :goto_6
    iput v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->L:I

    move-object/from16 v9, v20

    .line 21
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_f

    .line 22
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_7

    :cond_f
    const/4 v10, 0x0

    :goto_7
    iput-boolean v10, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->v:Z

    move-object/from16 v9, v19

    .line 23
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_10

    .line 24
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    goto :goto_8

    .line 25
    :cond_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const-wide/32 v19, 0xa4cb800

    add-long v9, v9, v19

    const-wide/16 v19, 0x3e8

    div-long v9, v9, v19

    :goto_8
    iput-wide v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->E:J

    .line 26
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_11

    .line 27
    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    goto :goto_9

    :cond_11
    move-object v7, v10

    :goto_9
    if-eqz v7, :cond_21

    .line 28
    invoke-virtual {v7, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->p:Ljava/lang/String;

    move-object/from16 v9, v18

    .line 29
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    :cond_12
    iput-object v11, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->i:Ljava/lang/String;

    move-object/from16 v9, v17

    .line 30
    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    :cond_13
    iput-object v10, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->h:Lorg/json/JSONObject;

    if-nez v10, :cond_14

    .line 31
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    iput-object v7, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->h:Lorg/json/JSONObject;

    .line 32
    :cond_14
    invoke-virtual {v8, v15}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 33
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->j:Z

    .line 34
    invoke-virtual {v7, v13}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->D:Z

    .line 35
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/lang/String;->charAt(I)C

    move-result v2

    iput-char v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->C:C

    .line 36
    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_a

    :cond_15
    move v2, v8

    .line 37
    :goto_a
    iput v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->P:I

    .line 38
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 39
    invoke-virtual {v7, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_b

    :cond_16
    move v2, v8

    :goto_b
    iput v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    .line 40
    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_17

    invoke-virtual {v7, v5}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_c

    :cond_17
    move v2, v8

    .line 41
    :goto_c
    iput v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->m:I

    .line 42
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 43
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v11

    goto :goto_d

    :cond_18
    move v11, v8

    :goto_d
    iput v11, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    move-object/from16 v2, v16

    .line 44
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 45
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v23

    :cond_19
    move/from16 v2, v23

    iput v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->y:I

    .line 46
    :cond_1a
    iget-object v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->p:Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 47
    iget-char v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->C:C

    const/16 v3, 0x64

    const/16 v4, 0x1e

    const/16 v5, 0x74

    if-ne v2, v5, :cond_1b

    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    if-ne v5, v3, :cond_1b

    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    if-gt v5, v4, :cond_1b

    .line 48
    sget-object v2, Le/h/a/c/q0/z;->e:Le/h/a/c/q0/z;

    iput-object v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    goto :goto_f

    :cond_1b
    const/16 v5, 0x62

    if-ne v2, v5, :cond_1c

    .line 49
    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    if-ne v5, v3, :cond_1c

    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    if-gt v5, v4, :cond_1c

    .line 50
    sget-object v2, Le/h/a/c/q0/z;->f:Le/h/a/c/q0/z;

    iput-object v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    goto :goto_f

    :cond_1c
    const/16 v4, 0x5a

    const/16 v5, 0x63

    if-ne v2, v5, :cond_1e

    .line 51
    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    if-ne v5, v4, :cond_1d

    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    const/16 v6, 0x55

    if-ne v5, v6, :cond_1d

    .line 52
    sget-object v2, Le/h/a/c/q0/z;->d:Le/h/a/c/q0/z;

    iput-object v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    goto :goto_f

    :cond_1d
    const/16 v5, 0x63

    :cond_1e
    if-ne v2, v5, :cond_20

    .line 53
    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    if-ne v5, v3, :cond_1f

    iget v5, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    if-ne v5, v3, :cond_1f

    .line 54
    sget-object v2, Le/h/a/c/q0/z;->c:Le/h/a/c/q0/z;

    iput-object v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    goto :goto_f

    :cond_1f
    const/16 v3, 0x63

    goto :goto_e

    :cond_20
    move v3, v5

    :goto_e
    if-ne v2, v3, :cond_21

    .line 55
    iget v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    if-ne v2, v4, :cond_21

    iget v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_21

    .line 56
    sget-object v2, Le/h/a/c/q0/z;->g:Le/h/a/c/q0/z;

    iput-object v2, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_f

    .line 57
    :catch_0
    iput-object v1, v0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    :cond_21
    :goto_f
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->q:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->r:Le/h/a/c/q0/z;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->p:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->l:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 6
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->D:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 7
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->j:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 8
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->y:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->M:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->L:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-char p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->C:C

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 12
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->m:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 13
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->n:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->P:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 15
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->Q:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 16
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 19
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->w:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    :goto_0
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->k:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 21
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->h:Lorg/json/JSONObject;

    if-nez p2, :cond_1

    .line 22
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 24
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->h:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 25
    :goto_1
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c:Lorg/json/JSONObject;

    if-nez p2, :cond_2

    .line 26
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_2

    .line 27
    :cond_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 28
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->c:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    :goto_2
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->N:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->J:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 31
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->K:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->A:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->B:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 35
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->f:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 36
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->z:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 37
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->o:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 38
    iget p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->e:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->u:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 40
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->i:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 41
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->v:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 42
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->t:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    iget-boolean p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->s:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 44
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    iget-object p2, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-wide v0, p0, Lcom/clevertap/android/sdk/inapp/CTInAppNotification;->E:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
