.class public final enum Le/k/a/a/k$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/a/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Le/k/a/a/k$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Le/k/a/a/k$a;

.field public static final enum b:Le/k/a/a/k$a;

.field public static final enum c:Le/k/a/a/k$a;

.field public static final enum d:Le/k/a/a/k$a;

.field public static final enum e:Le/k/a/a/k$a;

.field public static final enum f:Le/k/a/a/k$a;

.field public static final enum g:Le/k/a/a/k$a;

.field public static final enum h:Le/k/a/a/k$a;

.field public static final synthetic i:[Le/k/a/a/k$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Le/k/a/a/k$a;

    const-string v1, "ACCEPT_SINGLE_VALUE_AS_ARRAY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Le/k/a/a/k$a;->a:Le/k/a/a/k$a;

    .line 2
    new-instance v1, Le/k/a/a/k$a;

    const-string v3, "ACCEPT_CASE_INSENSITIVE_PROPERTIES"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Le/k/a/a/k$a;->b:Le/k/a/a/k$a;

    .line 3
    new-instance v3, Le/k/a/a/k$a;

    const-string v5, "ACCEPT_CASE_INSENSITIVE_VALUES"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Le/k/a/a/k$a;->c:Le/k/a/a/k$a;

    .line 4
    new-instance v5, Le/k/a/a/k$a;

    const-string v7, "WRITE_DATE_TIMESTAMPS_AS_NANOSECONDS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v5, Le/k/a/a/k$a;->d:Le/k/a/a/k$a;

    .line 5
    new-instance v7, Le/k/a/a/k$a;

    const-string v9, "WRITE_DATES_WITH_ZONE_ID"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v7, Le/k/a/a/k$a;->e:Le/k/a/a/k$a;

    .line 6
    new-instance v9, Le/k/a/a/k$a;

    const-string v11, "WRITE_SINGLE_ELEM_ARRAYS_UNWRAPPED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v9, Le/k/a/a/k$a;->f:Le/k/a/a/k$a;

    .line 7
    new-instance v11, Le/k/a/a/k$a;

    const-string v13, "WRITE_SORTED_MAP_ENTRIES"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v11, Le/k/a/a/k$a;->g:Le/k/a/a/k$a;

    .line 8
    new-instance v13, Le/k/a/a/k$a;

    const-string v15, "ADJUST_DATES_TO_CONTEXT_TIME_ZONE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Le/k/a/a/k$a;-><init>(Ljava/lang/String;I)V

    sput-object v13, Le/k/a/a/k$a;->h:Le/k/a/a/k$a;

    const/16 v15, 0x8

    new-array v15, v15, [Le/k/a/a/k$a;

    aput-object v0, v15, v2

    aput-object v1, v15, v4

    aput-object v3, v15, v6

    aput-object v5, v15, v8

    aput-object v7, v15, v10

    aput-object v9, v15, v12

    const/4 v0, 0x6

    aput-object v11, v15, v0

    aput-object v13, v15, v14

    .line 9
    sput-object v15, Le/k/a/a/k$a;->i:[Le/k/a/a/k$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Le/k/a/a/k$a;
    .locals 1

    .line 1
    const-class v0, Le/k/a/a/k$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Le/k/a/a/k$a;

    return-object p0
.end method

.method public static values()[Le/k/a/a/k$a;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/k$a;->i:[Le/k/a/a/k$a;

    invoke-virtual {v0}, [Le/k/a/a/k$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Le/k/a/a/k$a;

    return-object v0
.end method
