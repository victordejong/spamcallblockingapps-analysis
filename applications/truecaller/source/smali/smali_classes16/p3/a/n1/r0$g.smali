.class public final enum Lp3/a/n1/r0$g;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lp3/a/n1/r0$g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lp3/a/n1/r0$g;

.field public static final enum d:Lp3/a/n1/r0$g;

.field public static final enum e:Lp3/a/n1/r0$g;

.field public static final enum f:Lp3/a/n1/r0$g;

.field public static final enum g:Lp3/a/n1/r0$g;

.field public static final enum h:Lp3/a/n1/r0$g;

.field public static final enum i:Lp3/a/n1/r0$g;

.field public static final enum j:Lp3/a/n1/r0$g;

.field public static final enum k:Lp3/a/n1/r0$g;

.field public static final enum l:Lp3/a/n1/r0$g;

.field public static final enum m:Lp3/a/n1/r0$g;

.field public static final enum n:Lp3/a/n1/r0$g;

.field public static final enum o:Lp3/a/n1/r0$g;

.field public static final enum p:Lp3/a/n1/r0$g;

.field public static final q:[Lp3/a/n1/r0$g;

.field public static final synthetic r:[Lp3/a/n1/r0$g;


# instance fields
.field public final a:I

.field public final b:Lp3/a/g1;


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lp3/a/n1/r0$g;

    sget-object v1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v2, "NO_ERROR"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3, v1}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v0, Lp3/a/n1/r0$g;->c:Lp3/a/n1/r0$g;

    .line 2
    new-instance v2, Lp3/a/n1/r0$g;

    sget-object v4, Lp3/a/g1;->o:Lp3/a/g1;

    const-string v5, "PROTOCOL_ERROR"

    const/4 v6, 0x1

    invoke-direct {v2, v5, v6, v6, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v2, Lp3/a/n1/r0$g;->d:Lp3/a/n1/r0$g;

    .line 3
    new-instance v5, Lp3/a/n1/r0$g;

    const-string v7, "INTERNAL_ERROR"

    const/4 v8, 0x2

    invoke-direct {v5, v7, v8, v8, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v5, Lp3/a/n1/r0$g;->e:Lp3/a/n1/r0$g;

    .line 4
    new-instance v7, Lp3/a/n1/r0$g;

    const-string v9, "FLOW_CONTROL_ERROR"

    const/4 v10, 0x3

    invoke-direct {v7, v9, v10, v10, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v7, Lp3/a/n1/r0$g;->f:Lp3/a/n1/r0$g;

    .line 5
    new-instance v9, Lp3/a/n1/r0$g;

    const-string v11, "SETTINGS_TIMEOUT"

    const/4 v12, 0x4

    invoke-direct {v9, v11, v12, v12, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v9, Lp3/a/n1/r0$g;->g:Lp3/a/n1/r0$g;

    .line 6
    new-instance v11, Lp3/a/n1/r0$g;

    const-string v13, "STREAM_CLOSED"

    const/4 v14, 0x5

    invoke-direct {v11, v13, v14, v14, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v11, Lp3/a/n1/r0$g;->h:Lp3/a/n1/r0$g;

    .line 7
    new-instance v13, Lp3/a/n1/r0$g;

    const-string v15, "FRAME_SIZE_ERROR"

    const/4 v14, 0x6

    invoke-direct {v13, v15, v14, v14, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v13, Lp3/a/n1/r0$g;->i:Lp3/a/n1/r0$g;

    .line 8
    new-instance v15, Lp3/a/n1/r0$g;

    const-string v14, "REFUSED_STREAM"

    const/4 v12, 0x7

    invoke-direct {v15, v14, v12, v12, v1}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v15, Lp3/a/n1/r0$g;->j:Lp3/a/n1/r0$g;

    .line 9
    new-instance v1, Lp3/a/n1/r0$g;

    sget-object v14, Lp3/a/g1;->g:Lp3/a/g1;

    const-string v12, "CANCEL"

    const/16 v10, 0x8

    invoke-direct {v1, v12, v10, v10, v14}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v1, Lp3/a/n1/r0$g;->k:Lp3/a/n1/r0$g;

    .line 10
    new-instance v12, Lp3/a/n1/r0$g;

    const-string v14, "COMPRESSION_ERROR"

    const/16 v10, 0x9

    invoke-direct {v12, v14, v10, v10, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v12, Lp3/a/n1/r0$g;->l:Lp3/a/n1/r0$g;

    .line 11
    new-instance v14, Lp3/a/n1/r0$g;

    const-string v10, "CONNECT_ERROR"

    const/16 v8, 0xa

    invoke-direct {v14, v10, v8, v8, v4}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v14, Lp3/a/n1/r0$g;->m:Lp3/a/n1/r0$g;

    .line 12
    new-instance v4, Lp3/a/n1/r0$g;

    sget-object v10, Lp3/a/g1;->m:Lp3/a/g1;

    const-string v8, "Bandwidth exhausted"

    invoke-virtual {v10, v8}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v8

    const-string v10, "ENHANCE_YOUR_CALM"

    const/16 v6, 0xb

    invoke-direct {v4, v10, v6, v6, v8}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v4, Lp3/a/n1/r0$g;->n:Lp3/a/n1/r0$g;

    .line 13
    new-instance v8, Lp3/a/n1/r0$g;

    sget-object v10, Lp3/a/g1;->k:Lp3/a/g1;

    const-string v6, "Permission denied as protocol is not secure enough to call"

    invoke-virtual {v10, v6}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v6

    const-string v10, "INADEQUATE_SECURITY"

    const/16 v3, 0xc

    invoke-direct {v8, v10, v3, v3, v6}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v8, Lp3/a/n1/r0$g;->o:Lp3/a/n1/r0$g;

    .line 14
    new-instance v6, Lp3/a/n1/r0$g;

    sget-object v10, Lp3/a/g1;->h:Lp3/a/g1;

    const-string v3, "HTTP_1_1_REQUIRED"

    move-object/from16 v16, v8

    const/16 v8, 0xd

    invoke-direct {v6, v3, v8, v8, v10}, Lp3/a/n1/r0$g;-><init>(Ljava/lang/String;IILp3/a/g1;)V

    sput-object v6, Lp3/a/n1/r0$g;->p:Lp3/a/n1/r0$g;

    const/16 v3, 0xe

    new-array v3, v3, [Lp3/a/n1/r0$g;

    const/4 v10, 0x0

    aput-object v0, v3, v10

    const/4 v0, 0x1

    aput-object v2, v3, v0

    const/4 v0, 0x2

    aput-object v5, v3, v0

    const/4 v0, 0x3

    aput-object v7, v3, v0

    const/4 v0, 0x4

    aput-object v9, v3, v0

    const/4 v0, 0x5

    aput-object v11, v3, v0

    const/4 v0, 0x6

    aput-object v13, v3, v0

    const/4 v0, 0x7

    aput-object v15, v3, v0

    const/16 v0, 0x8

    aput-object v1, v3, v0

    const/16 v0, 0x9

    aput-object v12, v3, v0

    const/16 v0, 0xa

    aput-object v14, v3, v0

    const/16 v0, 0xb

    aput-object v4, v3, v0

    const/16 v0, 0xc

    aput-object v16, v3, v0

    aput-object v6, v3, v8

    .line 15
    sput-object v3, Lp3/a/n1/r0$g;->r:[Lp3/a/n1/r0$g;

    .line 16
    invoke-static {}, Lp3/a/n1/r0$g;->values()[Lp3/a/n1/r0$g;

    move-result-object v0

    .line 17
    aget-object v1, v0, v8

    .line 18
    iget v1, v1, Lp3/a/n1/r0$g;->a:I

    int-to-long v1, v1

    long-to-int v1, v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 19
    new-array v1, v1, [Lp3/a/n1/r0$g;

    .line 20
    array-length v2, v0

    move v3, v10

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 21
    iget v5, v4, Lp3/a/n1/r0$g;->a:I

    int-to-long v5, v5

    long-to-int v5, v5

    .line 22
    aput-object v4, v1, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 23
    :cond_0
    sput-object v1, Lp3/a/n1/r0$g;->q:[Lp3/a/n1/r0$g;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILp3/a/g1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lp3/a/g1;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lp3/a/n1/r0$g;->a:I

    const-string p1, "HTTP/2 error code: "

    .line 3
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object p2, p4, Lp3/a/g1;->b:Ljava/lang/String;

    if-eqz p2, :cond_0

    const-string p2, " ("

    .line 5
    invoke-static {p1, p2}, Le/d/c/a/a;->K(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 6
    iget-object p2, p4, Lp3/a/g1;->b:Ljava/lang/String;

    const-string p3, ")"

    .line 7
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    :cond_0
    invoke-virtual {p4, p1}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object p1

    iput-object p1, p0, Lp3/a/n1/r0$g;->b:Lp3/a/g1;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lp3/a/n1/r0$g;
    .locals 1

    .line 1
    const-class v0, Lp3/a/n1/r0$g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lp3/a/n1/r0$g;

    return-object p0
.end method

.method public static values()[Lp3/a/n1/r0$g;
    .locals 1

    .line 1
    sget-object v0, Lp3/a/n1/r0$g;->r:[Lp3/a/n1/r0$g;

    invoke-virtual {v0}, [Lp3/a/n1/r0$g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lp3/a/n1/r0$g;

    return-object v0
.end method
