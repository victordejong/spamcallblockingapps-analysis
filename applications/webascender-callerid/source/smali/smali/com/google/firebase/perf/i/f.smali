.class public abstract enum Lcom/google/firebase/perf/i/f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/firebase/perf/i/f;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/firebase/perf/i/f;

.field public static final enum BYTES:Lcom/google/firebase/perf/i/f;

.field public static final enum GIGABYTES:Lcom/google/firebase/perf/i/f;

.field public static final enum KILOBYTES:Lcom/google/firebase/perf/i/f;

.field public static final enum MEGABYTES:Lcom/google/firebase/perf/i/f;

.field public static final enum TERABYTES:Lcom/google/firebase/perf/i/f;


# instance fields
.field numBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/google/firebase/perf/i/f$a;

    const-string v1, "TERABYTES"

    const/4 v2, 0x0

    const-wide v3, 0x10000000000L

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/firebase/perf/i/f$a;-><init>(Ljava/lang/String;IJ)V

    sput-object v0, Lcom/google/firebase/perf/i/f;->TERABYTES:Lcom/google/firebase/perf/i/f;

    .line 2
    new-instance v1, Lcom/google/firebase/perf/i/f$b;

    const-string v3, "GIGABYTES"

    const/4 v4, 0x1

    const-wide/32 v5, 0x40000000

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/google/firebase/perf/i/f$b;-><init>(Ljava/lang/String;IJ)V

    sput-object v1, Lcom/google/firebase/perf/i/f;->GIGABYTES:Lcom/google/firebase/perf/i/f;

    .line 3
    new-instance v3, Lcom/google/firebase/perf/i/f$c;

    const-string v5, "MEGABYTES"

    const/4 v6, 0x2

    const-wide/32 v7, 0x100000

    invoke-direct {v3, v5, v6, v7, v8}, Lcom/google/firebase/perf/i/f$c;-><init>(Ljava/lang/String;IJ)V

    sput-object v3, Lcom/google/firebase/perf/i/f;->MEGABYTES:Lcom/google/firebase/perf/i/f;

    .line 4
    new-instance v5, Lcom/google/firebase/perf/i/f$d;

    const-string v7, "KILOBYTES"

    const/4 v8, 0x3

    const-wide/16 v9, 0x400

    invoke-direct {v5, v7, v8, v9, v10}, Lcom/google/firebase/perf/i/f$d;-><init>(Ljava/lang/String;IJ)V

    sput-object v5, Lcom/google/firebase/perf/i/f;->KILOBYTES:Lcom/google/firebase/perf/i/f;

    .line 5
    new-instance v7, Lcom/google/firebase/perf/i/f$e;

    const-string v9, "BYTES"

    const/4 v10, 0x4

    const-wide/16 v11, 0x1

    invoke-direct {v7, v9, v10, v11, v12}, Lcom/google/firebase/perf/i/f$e;-><init>(Ljava/lang/String;IJ)V

    sput-object v7, Lcom/google/firebase/perf/i/f;->BYTES:Lcom/google/firebase/perf/i/f;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/google/firebase/perf/i/f;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 6
    sput-object v9, Lcom/google/firebase/perf/i/f;->$VALUES:[Lcom/google/firebase/perf/i/f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3
    iput-wide p3, p0, Lcom/google/firebase/perf/i/f;->numBytes:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IJLcom/google/firebase/perf/i/f$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/firebase/perf/i/f;-><init>(Ljava/lang/String;IJ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/firebase/perf/i/f;
    .locals 1

    .line 1
    const-class v0, Lcom/google/firebase/perf/i/f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/firebase/perf/i/f;

    return-object p0
.end method

.method public static values()[Lcom/google/firebase/perf/i/f;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/perf/i/f;->$VALUES:[Lcom/google/firebase/perf/i/f;

    invoke-virtual {v0}, [Lcom/google/firebase/perf/i/f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/firebase/perf/i/f;

    return-object v0
.end method


# virtual methods
.method public abstract convert(JLcom/google/firebase/perf/i/f;)J
.end method

.method public toBytes(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/i/f;->numBytes:J

    mul-long p1, p1, v0

    return-wide p1
.end method

.method public toGigabytes(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/i/f;->numBytes:J

    mul-long p1, p1, v0

    sget-object v0, Lcom/google/firebase/perf/i/f;->GIGABYTES:Lcom/google/firebase/perf/i/f;

    iget-wide v0, v0, Lcom/google/firebase/perf/i/f;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public toKilobytes(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/i/f;->numBytes:J

    mul-long p1, p1, v0

    sget-object v0, Lcom/google/firebase/perf/i/f;->KILOBYTES:Lcom/google/firebase/perf/i/f;

    iget-wide v0, v0, Lcom/google/firebase/perf/i/f;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public toMegabytes(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/i/f;->numBytes:J

    mul-long p1, p1, v0

    sget-object v0, Lcom/google/firebase/perf/i/f;->MEGABYTES:Lcom/google/firebase/perf/i/f;

    iget-wide v0, v0, Lcom/google/firebase/perf/i/f;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method

.method public toTerabytes(J)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/google/firebase/perf/i/f;->numBytes:J

    mul-long p1, p1, v0

    sget-object v0, Lcom/google/firebase/perf/i/f;->TERABYTES:Lcom/google/firebase/perf/i/f;

    iget-wide v0, v0, Lcom/google/firebase/perf/i/f;->numBytes:J

    div-long/2addr p1, v0

    return-wide p1
.end method
