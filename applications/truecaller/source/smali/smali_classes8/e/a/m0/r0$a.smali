.class public Le/a/m0/r0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/m0/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/content/ContentValues;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:[I


# direct methods
.method public constructor <init>(Le/a/m0/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 2
    fill-array-data p1, :array_0

    iput-object p1, p0, Le/a/m0/r0$a;->a:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x10
        0x20
        0x1
        0x40
        0x80
    .end array-data
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8

    .line 1
    check-cast p1, Landroid/content/ContentValues;

    check-cast p2, Landroid/content/ContentValues;

    const-string v0, "contact_source"

    .line 2
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    .line 3
    invoke-static {v1, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v1

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    invoke-static {v0, v2}, Le/a/m0/r0;->e(Ljava/lang/Integer;I)I

    move-result v0

    .line 6
    iget-object v3, p0, Le/a/m0/r0$a;->a:[I

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_3

    aget v6, v3, v5

    and-int v7, v1, v6

    if-eqz v7, :cond_1

    and-int/2addr v0, v6

    if-eqz v0, :cond_0

    const-string v0, "contact_search_time"

    .line 7
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    const-wide/16 v1, 0x0

    .line 8
    invoke-static {p1, v1, v2}, Le/a/m0/r0;->f(Ljava/lang/Long;J)J

    move-result-wide v3

    .line 9
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    .line 10
    invoke-static {p1, v1, v2}, Le/a/m0/r0;->f(Ljava/lang/Long;J)J

    move-result-wide p1

    .line 11
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Long;->compare(JJ)I

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    goto :goto_1

    :cond_1
    and-int/2addr v6, v0

    if-eqz v6, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method
