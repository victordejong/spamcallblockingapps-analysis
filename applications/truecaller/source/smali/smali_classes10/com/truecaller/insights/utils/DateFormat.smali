.class public final enum Lcom/truecaller/insights/utils/DateFormat;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/utils/DateFormat;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001a\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\r\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0015\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\u0015\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\r\u001a\u00020\u00058\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 \u00a8\u0006!"
    }
    d2 = {
        "Lcom/truecaller/insights/utils/DateFormat;",
        "",
        "Lw3/b/a/i0/b;",
        "formatter",
        "()Lw3/b/a/i0/b;",
        "",
        "dateString",
        "Ljava/util/Date;",
        "parseDate",
        "(Ljava/lang/String;)Ljava/util/Date;",
        "date",
        "formatDate",
        "(Ljava/util/Date;)Ljava/lang/String;",
        "pattern",
        "Ljava/lang/String;",
        "getPattern",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "yyyy_MM_dd_HH_mm_ss",
        "yyyy_MM_dd_HH_mm",
        "hh_mm_aa",
        "dd_MMM",
        "dd_MMM_yyyy",
        "yyyy_MM_dd",
        "d",
        "MMM",
        "YYYY_MM",
        "MMM_YY",
        "H_mm",
        "MMMM",
        "MMMM_yyyy",
        "dd_MMM_yy",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum H_mm:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum MMM:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum MMMM:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum MMMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum MMM_YY:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum YYYY_MM:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum d:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum dd_MMM:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum dd_MMM_yy:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum dd_MMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum yyyy_MM_dd_HH_mm:Lcom/truecaller/insights/utils/DateFormat;

.field public static final enum yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;


# instance fields
.field private final pattern:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/truecaller/insights/utils/DateFormat;

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "yyyy_MM_dd_HH_mm_ss"

    const/4 v3, 0x0

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm_ss:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "yyyy_MM_dd_HH_mm"

    const/4 v3, 0x1

    const-string v4, "yyyy-MM-dd HH:mm"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd_HH_mm:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "hh_mm_aa"

    const/4 v3, 0x2

    const-string v4, "hh:mm aa"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->hh_mm_aa:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "dd_MMM"

    const/4 v3, 0x3

    const-string v4, "dd MMM"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "dd_MMM_yyyy"

    const/4 v3, 0x4

    const-string v4, "dd MMM yyyy"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "yyyy_MM_dd"

    const/4 v3, 0x5

    const-string v4, "yyyy-MM-dd"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->yyyy_MM_dd:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "d"

    const/4 v3, 0x6

    .line 7
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->d:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "MMM"

    const/4 v3, 0x7

    .line 8
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->MMM:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "YYYY_MM"

    const/16 v3, 0x8

    const-string v4, "YYYY-MM"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->YYYY_MM:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "MMM_YY"

    const/16 v3, 0x9

    const-string v4, "MMM YY"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->MMM_YY:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "H_mm"

    const/16 v3, 0xa

    const-string v4, "H:mm"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->H_mm:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "MMMM"

    const/16 v3, 0xb

    .line 12
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->MMMM:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "MMMM_yyyy"

    const/16 v3, 0xc

    const-string v4, "MMMM yyyy"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->MMMM_yyyy:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/utils/DateFormat;

    const-string v2, "dd_MMM_yy"

    const/16 v3, 0xd

    const-string v4, "dd MMM yy"

    .line 14
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/insights/utils/DateFormat;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/insights/utils/DateFormat;->dd_MMM_yy:Lcom/truecaller/insights/utils/DateFormat;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/utils/DateFormat;->$VALUES:[Lcom/truecaller/insights/utils/DateFormat;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/insights/utils/DateFormat;->pattern:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/utils/DateFormat;
    .locals 1

    const-class v0, Lcom/truecaller/insights/utils/DateFormat;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/utils/DateFormat;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/utils/DateFormat;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/utils/DateFormat;->$VALUES:[Lcom/truecaller/insights/utils/DateFormat;

    invoke-virtual {v0}, [Lcom/truecaller/insights/utils/DateFormat;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/utils/DateFormat;

    return-object v0
.end method


# virtual methods
.method public final formatDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    const-string v0, "date"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/truecaller/insights/utils/DateFormat;->pattern:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SimpleDateFormat(pattern\u2026ale.ENGLISH).format(date)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final formatter()Lw3/b/a/i0/b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/utils/DateFormat;->pattern:Ljava/lang/String;

    invoke-static {v0}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object v0

    const-string v1, "DateTimeFormat.forPattern(pattern)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/insights/utils/DateFormat;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public final parseDate(Ljava/lang/String;)Ljava/util/Date;
    .locals 3

    const-string v0, "dateString"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/truecaller/insights/utils/DateFormat;->pattern:Ljava/lang/String;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    :goto_0
    return-object p1
.end method
