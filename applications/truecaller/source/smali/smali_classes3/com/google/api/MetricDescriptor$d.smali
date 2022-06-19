.class public final enum Lcom/google/api/MetricDescriptor$d;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/MetricDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/api/MetricDescriptor$d;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field public static final enum b:Lcom/google/api/MetricDescriptor$d;

.field public static final enum c:Lcom/google/api/MetricDescriptor$d;

.field public static final enum d:Lcom/google/api/MetricDescriptor$d;

.field public static final enum e:Lcom/google/api/MetricDescriptor$d;

.field public static final enum f:Lcom/google/api/MetricDescriptor$d;

.field public static final enum g:Lcom/google/api/MetricDescriptor$d;

.field public static final enum h:Lcom/google/api/MetricDescriptor$d;

.field public static final enum i:Lcom/google/api/MetricDescriptor$d;

.field public static final synthetic j:[Lcom/google/api/MetricDescriptor$d;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/google/api/MetricDescriptor$d;

    const-string v1, "VALUE_TYPE_UNSPECIFIED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/google/api/MetricDescriptor$d;->b:Lcom/google/api/MetricDescriptor$d;

    .line 2
    new-instance v1, Lcom/google/api/MetricDescriptor$d;

    const-string v3, "BOOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/google/api/MetricDescriptor$d;->c:Lcom/google/api/MetricDescriptor$d;

    .line 3
    new-instance v3, Lcom/google/api/MetricDescriptor$d;

    const-string v5, "INT64"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/google/api/MetricDescriptor$d;->d:Lcom/google/api/MetricDescriptor$d;

    .line 4
    new-instance v5, Lcom/google/api/MetricDescriptor$d;

    const-string v7, "DOUBLE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/google/api/MetricDescriptor$d;->e:Lcom/google/api/MetricDescriptor$d;

    .line 5
    new-instance v7, Lcom/google/api/MetricDescriptor$d;

    const-string v9, "STRING"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/google/api/MetricDescriptor$d;->f:Lcom/google/api/MetricDescriptor$d;

    .line 6
    new-instance v9, Lcom/google/api/MetricDescriptor$d;

    const-string v11, "DISTRIBUTION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/google/api/MetricDescriptor$d;->g:Lcom/google/api/MetricDescriptor$d;

    .line 7
    new-instance v11, Lcom/google/api/MetricDescriptor$d;

    const-string v13, "MONEY"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/google/api/MetricDescriptor$d;->h:Lcom/google/api/MetricDescriptor$d;

    .line 8
    new-instance v13, Lcom/google/api/MetricDescriptor$d;

    const-string v15, "UNRECOGNIZED"

    const/4 v14, 0x7

    const/4 v12, -0x1

    invoke-direct {v13, v15, v14, v12}, Lcom/google/api/MetricDescriptor$d;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/google/api/MetricDescriptor$d;->i:Lcom/google/api/MetricDescriptor$d;

    const/16 v12, 0x8

    new-array v12, v12, [Lcom/google/api/MetricDescriptor$d;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 9
    sput-object v12, Lcom/google/api/MetricDescriptor$d;->j:[Lcom/google/api/MetricDescriptor$d;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/google/api/MetricDescriptor$d;->a:I

    return-void
.end method

.method public static a(I)Lcom/google/api/MetricDescriptor$d;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->h:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->g:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->f:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->e:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->d:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->c:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/google/api/MetricDescriptor$d;->b:Lcom/google/api/MetricDescriptor$d;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/api/MetricDescriptor$d;
    .locals 1

    .line 1
    const-class v0, Lcom/google/api/MetricDescriptor$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/api/MetricDescriptor$d;

    return-object p0
.end method

.method public static values()[Lcom/google/api/MetricDescriptor$d;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/MetricDescriptor$d;->j:[Lcom/google/api/MetricDescriptor$d;

    invoke-virtual {v0}, [Lcom/google/api/MetricDescriptor$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/api/MetricDescriptor$d;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/google/api/MetricDescriptor$d;->i:Lcom/google/api/MetricDescriptor$d;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/google/api/MetricDescriptor$d;->a:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
