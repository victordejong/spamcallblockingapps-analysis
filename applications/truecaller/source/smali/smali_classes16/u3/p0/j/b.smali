.class public final enum Lu3/p0/j/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lu3/p0/j/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lu3/p0/j/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lu3/p0/j/b;

.field public static final enum c:Lu3/p0/j/b;

.field public static final enum d:Lu3/p0/j/b;

.field public static final enum e:Lu3/p0/j/b;

.field public static final enum f:Lu3/p0/j/b;

.field public static final enum g:Lu3/p0/j/b;

.field public static final synthetic h:[Lu3/p0/j/b;

.field public static final i:Lu3/p0/j/b$a;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xe

    new-array v0, v0, [Lu3/p0/j/b;

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/p0/j/b;->b:Lu3/p0/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "PROTOCOL_ERROR"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/p0/j/b;->c:Lu3/p0/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "INTERNAL_ERROR"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/p0/j/b;->d:Lu3/p0/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "FLOW_CONTROL_ERROR"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/p0/j/b;->e:Lu3/p0/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "SETTINGS_TIMEOUT"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "STREAM_CLOSED"

    const/4 v3, 0x5

    .line 6
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "FRAME_SIZE_ERROR"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "REFUSED_STREAM"

    const/4 v3, 0x7

    .line 8
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/p0/j/b;->f:Lu3/p0/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "CANCEL"

    const/16 v3, 0x8

    .line 9
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lu3/p0/j/b;->g:Lu3/p0/j/b;

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "COMPRESSION_ERROR"

    const/16 v3, 0x9

    .line 10
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "CONNECT_ERROR"

    const/16 v3, 0xa

    .line 11
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "ENHANCE_YOUR_CALM"

    const/16 v3, 0xb

    .line 12
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    .line 13
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    new-instance v1, Lu3/p0/j/b;

    const-string v2, "HTTP_1_1_REQUIRED"

    const/16 v3, 0xd

    .line 14
    invoke-direct {v1, v2, v3, v3}, Lu3/p0/j/b;-><init>(Ljava/lang/String;II)V

    aput-object v1, v0, v3

    sput-object v0, Lu3/p0/j/b;->h:[Lu3/p0/j/b;

    new-instance v0, Lu3/p0/j/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu3/p0/j/b$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lu3/p0/j/b;->i:Lu3/p0/j/b$a;

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

    iput p3, p0, Lu3/p0/j/b;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lu3/p0/j/b;
    .locals 1

    const-class v0, Lu3/p0/j/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lu3/p0/j/b;

    return-object p0
.end method

.method public static values()[Lu3/p0/j/b;
    .locals 1

    sget-object v0, Lu3/p0/j/b;->h:[Lu3/p0/j/b;

    invoke-virtual {v0}, [Lu3/p0/j/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lu3/p0/j/b;

    return-object v0
.end method
