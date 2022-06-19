.class public Le/m/a/g/j/p;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# static fields
.field public static final f:I


# instance fields
.field public final a:Lcom/google/android/material/datepicker/Month;

.field public final b:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;"
        }
    .end annotation
.end field

.field public c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/m/a/g/j/b;

.field public final e:Lcom/google/android/material/datepicker/CalendarConstraints;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Le/m/a/g/j/w;->e()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    sput v0, Le/m/a/g/j/p;->f:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/material/datepicker/Month;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/datepicker/Month;",
            "Lcom/google/android/material/datepicker/DateSelector<",
            "*>;",
            "Lcom/google/android/material/datepicker/CalendarConstraints;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    .line 3
    iput-object p2, p0, Le/m/a/g/j/p;->b:Lcom/google/android/material/datepicker/DateSelector;

    .line 4
    iput-object p3, p0, Le/m/a/g/j/p;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 5
    invoke-interface {p2}, Lcom/google/android/material/datepicker/DateSelector;->D0()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Le/m/a/g/j/p;->c:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    add-int/lit8 p1, p1, -0x1

    .line 1
    invoke-virtual {p0}, Le/m/a/g/j/p;->b()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->e()I

    move-result v0

    return v0
.end method

.method public c(I)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->e()I

    move-result v0

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Le/m/a/g/j/p;->d()I

    move-result v0

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->e()I

    move-result v1

    sub-int/2addr p1, v1

    add-int/lit8 p1, p1, 0x1

    .line 4
    iget-object v0, v0, Lcom/google/android/material/datepicker/Month;->a:Ljava/util/Calendar;

    invoke-static {v0}, Le/m/a/g/j/w;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->set(II)V

    .line 6
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0}, Lcom/google/android/material/datepicker/Month;->e()I

    move-result v0

    iget-object v1, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    iget v1, v1, Lcom/google/android/material/datepicker/Month;->e:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e(Landroid/widget/TextView;J)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Le/m/a/g/j/p;->e:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 2
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->c:Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;

    .line 3
    invoke-interface {v0, p2, p3}, Lcom/google/android/material/datepicker/CalendarConstraints$DateValidator;->W(J)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 5
    iget-object v2, p0, Le/m/a/g/j/p;->b:Lcom/google/android/material/datepicker/DateSelector;

    invoke-interface {v2}, Lcom/google/android/material/datepicker/DateSelector;->D0()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 6
    invoke-static {p2, p3}, Le/m/a/g/j/w;->a(J)J

    move-result-wide v5

    invoke-static {v3, v4}, Le/m/a/g/j/w;->a(J)J

    move-result-wide v3

    cmp-long v3, v5, v3

    if-nez v3, :cond_1

    move v1, v0

    :cond_2
    if-eqz v1, :cond_3

    .line 7
    iget-object p2, p0, Le/m/a/g/j/p;->d:Le/m/a/g/j/b;

    iget-object p2, p2, Le/m/a/g/j/b;->b:Le/m/a/g/j/a;

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {}, Le/m/a/g/j/w;->d()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    cmp-long p2, v0, p2

    if-nez p2, :cond_4

    .line 9
    iget-object p2, p0, Le/m/a/g/j/p;->d:Le/m/a/g/j/b;

    iget-object p2, p2, Le/m/a/g/j/b;->c:Le/m/a/g/j/a;

    goto :goto_0

    .line 10
    :cond_4
    iget-object p2, p0, Le/m/a/g/j/p;->d:Le/m/a/g/j/b;

    iget-object p2, p2, Le/m/a/g/j/b;->a:Le/m/a/g/j/a;

    goto :goto_0

    .line 11
    :cond_5
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 12
    iget-object p2, p0, Le/m/a/g/j/p;->d:Le/m/a/g/j/b;

    iget-object p2, p2, Le/m/a/g/j/b;->g:Le/m/a/g/j/a;

    .line 13
    :goto_0
    invoke-virtual {p2, p1}, Le/m/a/g/j/a;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method public final f(Lcom/google/android/material/datepicker/MaterialCalendarGridView;J)V
    .locals 2

    .line 1
    invoke-static {p2, p3}, Lcom/google/android/material/datepicker/Month;->d(J)Lcom/google/android/material/datepicker/Month;

    move-result-object v0

    iget-object v1, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v1}, Lcom/google/android/material/datepicker/Month;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    .line 3
    iget-object v0, v0, Lcom/google/android/material/datepicker/Month;->a:Ljava/util/Calendar;

    invoke-static {v0}, Le/m/a/g/j/w;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 v1, 0x5

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/datepicker/MaterialCalendarGridView;->a()Le/m/a/g/j/p;

    move-result-object v1

    invoke-virtual {v1, v0}, Le/m/a/g/j/p;->a(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    invoke-virtual {p1, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Le/m/a/g/j/p;->e(Landroid/widget/TextView;J)V

    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->e:I

    invoke-virtual {p0}, Le/m/a/g/j/p;->b()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Le/m/a/g/j/p;->c(I)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    div-int/2addr p1, v0

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 2
    iget-object v2, p0, Le/m/a/g/j/p;->d:Le/m/a/g/j/b;

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Le/m/a/g/j/b;

    invoke-direct {v2, v1}, Le/m/a/g/j/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Le/m/a/g/j/p;->d:Le/m/a/g/j/b;

    .line 4
    :cond_0
    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    if-nez p2, :cond_1

    .line 5
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 6
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_day:I

    invoke-virtual {p2, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    move-object v1, p2

    check-cast v1, Landroid/widget/TextView;

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/m/a/g/j/p;->b()I

    move-result p2

    sub-int p2, p1, p2

    if-ltz p2, :cond_6

    .line 8
    iget-object p3, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    iget v3, p3, Lcom/google/android/material/datepicker/Month;->e:I

    if-lt p2, v3, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v3, 0x1

    add-int/2addr p2, v3

    .line 9
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget-object p3, p3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v4, v3, [Ljava/lang/Object;

    .line 11
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const-string v5, "%d"

    invoke-static {p3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object p3, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    .line 13
    iget-object p3, p3, Lcom/google/android/material/datepicker/Month;->a:Ljava/util/Calendar;

    invoke-static {p3}, Le/m/a/g/j/w;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p3

    const/4 v4, 0x5

    .line 14
    invoke-virtual {p3, v4, p2}, Ljava/util/Calendar;->set(II)V

    .line 15
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    .line 16
    iget-object v5, p0, Le/m/a/g/j/p;->a:Lcom/google/android/material/datepicker/Month;

    iget v5, v5, Lcom/google/android/material/datepicker/Month;->c:I

    .line 17
    invoke-static {}, Le/m/a/g/j/w;->d()Ljava/util/Calendar;

    move-result-object v6

    .line 18
    invoke-virtual {v6, v4, v3}, Ljava/util/Calendar;->set(II)V

    .line 19
    invoke-static {v6}, Le/m/a/g/j/w;->b(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v6

    const/4 v7, 0x2

    .line 20
    invoke-virtual {v6, v7}, Ljava/util/Calendar;->get(I)I

    .line 21
    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v8, 0x7

    .line 22
    invoke-virtual {v6, v8}, Ljava/util/Calendar;->getMaximum(I)I

    .line 23
    invoke-virtual {v6, v4}, Ljava/util/Calendar;->getActualMaximum(I)I

    .line 24
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    const-string v4, "UTC"

    const/16 v6, 0x18

    if-ne v5, v7, :cond_4

    .line 25
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-lt v0, v6, :cond_3

    .line 26
    sget-object v0, Le/m/a/g/j/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "MMMEd"

    .line 27
    invoke-static {v0, v5}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 28
    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 29
    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 30
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 31
    :cond_3
    sget-object v0, Le/m/a/g/j/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 32
    invoke-static {v2, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 33
    invoke-static {}, Le/m/a/g/j/w;->c()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 34
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 35
    :goto_0
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 36
    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    if-lt v0, v6, :cond_5

    .line 37
    sget-object v0, Le/m/a/g/j/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v0, "yMMMEd"

    .line 38
    invoke-static {v0, v5}, Landroid/icu/text/DateFormat;->getInstanceForSkeleton(Ljava/lang/String;Ljava/util/Locale;)Landroid/icu/text/DateFormat;

    move-result-object v0

    .line 39
    invoke-static {v4}, Landroid/icu/util/TimeZone;->getTimeZone(Ljava/lang/String;)Landroid/icu/util/TimeZone;

    move-result-object v4

    .line 40
    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->setTimeZone(Landroid/icu/util/TimeZone;)V

    .line 41
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Landroid/icu/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 42
    :cond_5
    sget-object v0, Le/m/a/g/j/w;->a:Ljava/util/concurrent/atomic/AtomicReference;

    .line 43
    invoke-static {v2, v5}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    .line 44
    invoke-static {}, Le/m/a/g/j/w;->c()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 45
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p2, p3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    .line 46
    :goto_1
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 47
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_4

    :cond_6
    :goto_3
    const/16 p2, 0x8

    .line 49
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 50
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 51
    :goto_4
    invoke-virtual {p0, p1}, Le/m/a/g/j/p;->c(I)Ljava/lang/Long;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_5

    .line 52
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, v1, p1, p2}, Le/m/a/g/j/p;->e(Landroid/widget/TextView;J)V

    :goto_5
    return-object v1
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
