.class public final Lcom/google/android/libraries/places/api/model/zzbc;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/libraries/places/internal/zzgn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/zzgn<",
            "Ljava/lang/Integer;",
            "Lcom/google/android/libraries/places/api/model/DayOfWeek;",
            ">;"
        }
    .end annotation
.end field

.field private static final zzb:Lcom/google/android/libraries/places/api/model/LocalTime;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/libraries/places/internal/zzgm;

    invoke-direct {v0}, Lcom/google/android/libraries/places/internal/zzgm;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    const/4 v1, 0x2

    .line 3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->MONDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    const/4 v1, 0x3

    .line 4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->TUESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    const/4 v1, 0x4

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->WEDNESDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    const/4 v1, 0x5

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->THURSDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    const/4 v1, 0x6

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->FRIDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    const/4 v1, 0x7

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SATURDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/libraries/places/internal/zzgm;->zza(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/libraries/places/internal/zzgm;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/google/android/libraries/places/internal/zzgm;->zza()Lcom/google/android/libraries/places/internal/zzgn;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/api/model/zzbc;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    const/16 v0, 0x17

    const/16 v1, 0x3b

    .line 10
    invoke-static {v0, v1}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v0

    sput-object v0, Lcom/google/android/libraries/places/api/model/zzbc;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

    return-void
.end method

.method public static zza(Lcom/google/android/libraries/places/api/model/Place;J)Ljava/lang/Boolean;
    .locals 16

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_11

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_6

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/api/model/Place;->getOpeningHours()Lcom/google/android/libraries/places/api/model/OpeningHours;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/libraries/places/api/model/OpeningHours;->getPeriods()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v4, v5, :cond_2

    .line 5
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    if-nez v4, :cond_2

    .line 6
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v4

    sget-object v7, Lcom/google/android/libraries/places/api/model/DayOfWeek;->SUNDAY:Lcom/google/android/libraries/places/api/model/DayOfWeek;

    if-ne v4, v7, :cond_2

    .line 7
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/LocalTime;->getHours()I

    move-result v4

    if-nez v4, :cond_2

    .line 8
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/libraries/places/api/model/Period;

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/libraries/places/api/model/LocalTime;->getMinutes()I

    move-result v4

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    if-eqz v4, :cond_3

    return-object v0

    .line 9
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/libraries/places/api/model/Period;

    .line 10
    invoke-virtual {v7}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v8

    if-eqz v8, :cond_5

    invoke-virtual {v7}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v7

    if-nez v7, :cond_4

    :cond_5
    return-object v3

    .line 11
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/libraries/places/api/model/Place;->getUtcOffsetMinutes()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 12
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    long-to-int v7, v7

    .line 13
    invoke-static {v7}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 14
    array-length v8, v7

    if-gtz v8, :cond_7

    goto :goto_1

    .line 15
    :cond_7
    aget-object v4, v7, v6

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    goto :goto_2

    :cond_8
    :goto_1
    new-array v7, v5, [Ljava/lang/Object;

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v6

    const-string v4, "Cannot find timezone that associates with utcOffsetMinutes %d from Place object."

    .line 17
    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-object v4, v3

    :goto_2
    if-nez v4, :cond_9

    return-object v3

    .line 18
    :cond_9
    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    move-wide/from16 v7, p1

    .line 19
    invoke-virtual {v4, v7, v8}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 20
    sget-object v7, Lcom/google/android/libraries/places/api/model/zzbc;->zza:Lcom/google/android/libraries/places/internal/zzgn;

    const/4 v8, 0x7

    .line 21
    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/google/android/libraries/places/internal/zzgn;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    const/16 v9, 0xb

    .line 22
    invoke-virtual {v4, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v10, 0xc

    .line 23
    invoke-virtual {v4, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 24
    invoke-static {v9, v4}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v4

    .line 25
    new-instance v9, Ljava/util/EnumMap;

    const-class v10, Lcom/google/android/libraries/places/api/model/DayOfWeek;

    invoke-direct {v9, v10}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 26
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_d

    .line 27
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/libraries/places/api/model/Period;

    move v11, v6

    :goto_3
    if-eqz v10, :cond_d

    .line 28
    invoke-virtual {v10}, Lcom/google/android/libraries/places/api/model/Period;->getOpen()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v12

    .line 29
    invoke-virtual {v10}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v13

    .line 30
    invoke-virtual {v12}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v14

    .line 31
    invoke-virtual {v12}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v15

    .line 32
    invoke-virtual {v12}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v12

    invoke-virtual {v13}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getDay()Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v3

    if-eq v12, v3, :cond_a

    move v3, v5

    goto :goto_4

    :cond_a
    move v3, v6

    :goto_4
    if-nez v3, :cond_c

    .line 33
    invoke-virtual {v13}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->getTime()Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v3

    .line 34
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 35
    invoke-static {v9, v14, v10}, Lcom/google/android/libraries/places/api/model/zzbc;->zza(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 36
    invoke-static {v15, v3}, Lcom/google/android/libraries/places/internal/zzgr;->zzb(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzgr;

    move-result-object v3

    .line 37
    invoke-interface {v10, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    invoke-virtual {v9, v14, v10}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    .line 39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v11, v3, :cond_b

    const/4 v10, 0x0

    goto :goto_5

    :cond_b
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/api/model/Period;

    move-object v10, v3

    goto :goto_5

    .line 40
    :cond_c
    sget-object v3, Lcom/google/android/libraries/places/api/model/zzbc;->zzb:Lcom/google/android/libraries/places/api/model/LocalTime;

    .line 41
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {v9, v14, v12}, Lcom/google/android/libraries/places/api/model/zzbc;->zza(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/List;

    .line 43
    invoke-static {v15, v3}, Lcom/google/android/libraries/places/internal/zzgr;->zza(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lcom/google/android/libraries/places/internal/zzgr;

    move-result-object v3

    .line 44
    invoke-interface {v12, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-virtual {v9, v14, v12}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/google/android/libraries/places/api/model/DayOfWeek;->values()[Lcom/google/android/libraries/places/api/model/DayOfWeek;

    move-result-object v3

    invoke-virtual {v14}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    add-int/2addr v12, v5

    rem-int/2addr v12, v8

    aget-object v3, v3, v12

    .line 47
    invoke-static {v6, v6}, Lcom/google/android/libraries/places/api/model/LocalTime;->newInstance(II)Lcom/google/android/libraries/places/api/model/LocalTime;

    move-result-object v12

    .line 48
    invoke-static {v3, v12}, Lcom/google/android/libraries/places/api/model/TimeOfWeek;->newInstance(Lcom/google/android/libraries/places/api/model/DayOfWeek;Lcom/google/android/libraries/places/api/model/LocalTime;)Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v3

    .line 49
    invoke-virtual {v10}, Lcom/google/android/libraries/places/api/model/Period;->getClose()Lcom/google/android/libraries/places/api/model/TimeOfWeek;

    move-result-object v10

    .line 50
    invoke-static {}, Lcom/google/android/libraries/places/api/model/Period;->builder()Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v12

    invoke-virtual {v12, v3}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setOpen(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/google/android/libraries/places/api/model/Period$Builder;->setClose(Lcom/google/android/libraries/places/api/model/TimeOfWeek;)Lcom/google/android/libraries/places/api/model/Period$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/libraries/places/api/model/Period$Builder;->build()Lcom/google/android/libraries/places/api/model/Period;

    move-result-object v10

    :goto_5
    const/4 v3, 0x0

    goto/16 :goto_3

    .line 51
    :cond_d
    invoke-virtual {v9, v7}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_e

    return-object v1

    .line 52
    :cond_e
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/libraries/places/internal/zzgr;

    .line 53
    invoke-virtual {v3, v4}, Lcom/google/android/libraries/places/internal/zzgr;->zzb(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_f

    return-object v0

    :cond_10
    return-object v1

    :cond_11
    :goto_6
    move-object v0, v3

    return-object v0
.end method

.method private static zza(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;TK;TV;)TV;"
        }
    .end annotation

    .line 54
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p2
.end method
