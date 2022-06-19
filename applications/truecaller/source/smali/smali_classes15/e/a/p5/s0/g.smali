.class public final Le/a/p5/s0/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(Landroid/content/Context;I)I
    .locals 1

    const-string v0, "$this$dpToPx"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    int-to-float p1, p1

    .line 1
    invoke-static {p0, p1}, Le/a/p5/s0/g;->z(Landroid/content/Context;F)I

    move-result p0

    return p0
.end method

.method public static synthetic A0(Le/a/d/c0/f0;Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Le/a/d/c0/f0;->d(Le/a/d/c0/e0;Lcom/truecaller/voip/util/VoipAnalyticsState;Lcom/truecaller/voip/util/VoipAnalyticsStateReason;)V

    return-void
.end method

.method public static A1(Le/a/k/c/e1;Landroid/content/Context;Lcom/truecaller/videocallerid/ui/preview/PreviewModes;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;ILjava/lang/Object;)V
    .locals 7

    and-int/lit8 p7, p6, 0x8

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object v5, v0

    goto :goto_0

    :cond_0
    move-object v5, p4

    :goto_0
    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    move-object v6, v0

    goto :goto_1

    :cond_1
    move-object v6, p5

    .line 1
    :goto_1
    check-cast p0, Le/a/k/c/h1;

    .line 2
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "context"

    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "previewModes"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity;->o:Lcom/truecaller/videocallerid/ui/preview/PreviewActivity$b;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {p1, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "screenModes"

    invoke-static {v3, p0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, p1

    move-object v4, p3

    .line 5
    invoke-virtual/range {v1 .. v6}, Lcom/truecaller/videocallerid/ui/preview/PreviewActivity$b;->a(Landroid/content/Context;Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/OnboardingData;Ljava/lang/String;Lcom/truecaller/videocallerid/data/OutgoingVideoDetails;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static final synthetic B(Lq3/a/x2/z0;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/z0<",
            "Ljava/util/List<",
            "Le/a/d/c0/p0;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/d/c0/p0;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Lq3/a/x2/z0;->a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p0, p1, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static synthetic B0(Le/a/d/x/r/n;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x1

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Le/a/d/x/r/n;->b(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final B1(Landroid/content/Context;Ls1/z/b/l;)Ln3/b/a/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)",
            "Ln3/b/a/g;"
        }
    .end annotation

    const-string v0, "$this$showRegionCDialog"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isRegionCListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Le/a/p5/s0/g;->m(Landroid/content/Context;Ls1/z/b/l;)Ln3/b/a/g$a;

    move-result-object p0

    invoke-virtual {p0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p0

    const-string p1, "buildRegionCDialog(isRegionCListener).show()"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final C(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;+TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    const-string v0, "$this$filterNullValues"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_2
    new-instance p0, Ljava/util/LinkedHashMap;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 6
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 8
    check-cast v1, Ljava/util/Map$Entry;

    .line 9
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 10
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p0
.end method

.method public static synthetic C0(Le/a/d/x/r/n;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p4, p4, 0x1

    if-eqz p4, :cond_0

    .line 1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p4, 0x1

    invoke-virtual {p1, p4, p5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    :cond_0
    invoke-interface {p0, p1, p2, p3}, Le/a/d/x/r/n;->f(JLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final C1(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 2

    const-string v0, "$this$showTextOrHide"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_2

    const/16 v0, 0x8

    :cond_2
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final D(Ljava/lang/String;)Landroid/text/Spanned;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Landroid/support/v4/media/session/MediaSessionCompat;->d0(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object p0

    const-string v0, "HtmlCompat.fromHtml(this\u2026at.FROM_HTML_MODE_LEGACY)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final D0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 1

    const-string v0, "$this$longForQuery"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "query"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/database/DatabaseUtils;->longForQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final D1(Le/a/r/z/o;Landroid/content/Context;ZLs1/z/b/a;Ls1/z/b/a;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/r/z/o;",
            "Landroid/content/Context;",
            "Z",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;",
            "Ls1/z/b/a<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$showVerificationMessageDialog"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/r/z/o$j;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/wizard/R$plurals;->VerificationError_limitExceededHours:I

    move-object v2, p0

    check-cast v2, Le/a/r/z/o$j;

    .line 2
    iget v2, v2, Le/a/r/z/o$j;->e:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.resources.getQua\u2026eededHours, hours, hours)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Le/a/r/z/o;->b:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "context.getString(res)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    :goto_0
    new-instance v1, Ln3/b/a/g$a;

    invoke-direct {v1, p1}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object p1, v1, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object v0, p1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 8
    iget p1, p0, Le/a/r/z/o;->d:I

    const/4 v2, 0x0

    .line 9
    invoke-virtual {v1, p1, v2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    if-eqz p2, :cond_1

    .line 10
    sget p1, Lcom/truecaller/wizard/R$string;->wizard_verification_action_contact_support:I

    new-instance v2, Le/a/r/z/p;

    invoke-direct {v2, p0, v0, p2, p3}, Le/a/r/z/p;-><init>(Le/a/r/z/o;Ljava/lang/String;ZLs1/z/b/a;)V

    invoke-virtual {v1, p1, v2}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 11
    :cond_1
    invoke-virtual {v1}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    move-result-object p0

    .line 12
    new-instance p1, Le/a/r/z/q;

    invoke-direct {p1, p4}, Le/a/r/z/q;-><init>(Ls1/z/b/a;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static synthetic E(Le/a/r5/i0;Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p1, p5, 0x1

    const/4 p1, 0x0

    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/r5/i0;->d(Lcom/truecaller/whoviewedme/ProfileViewSource;JLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final E0(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 1

    const-string v0, "$this$longValue"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final E1(Le/a/p5/c0;Z)Lcom/truecaller/yearincalling/model/StatsUiModel;
    .locals 14

    const-string v0, "resourceProvider"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/yearincalling/model/StatsUiModel;

    const/16 v1, 0x7e5

    .line 2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 3
    sget v1, Lcom/truecaller/stats/R$string;->year_in_tc_intro_title:I

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-interface {p0, v1, v4}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "resourceProvider.getStri\u2026g.year_in_tc_intro_title)"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Locale.getDefault()"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v1, Lcom/truecaller/stats/R$string;->year_in_tc_intro_description:I

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {p0, v1, v5}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "resourceProvider.getStri\u2026_in_tc_intro_description)"

    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v5

    .line 5
    sget v1, Lcom/truecaller/stats/R$color;->stats_intro_title_and_description_color:I

    invoke-interface {p0, v1}, Le/a/p5/c0;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    new-instance v1, Lcom/truecaller/yearincalling/model/Detail;

    const/4 v7, 0x0

    .line 7
    sget v8, Lcom/truecaller/stats/R$string;->year_in_tc_intro_details:I

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p0, v8, v3}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v8, "resourceProvider.getStri\u2026year_in_tc_intro_details)"

    invoke-static {v3, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3}, Le/a/p5/s0/g;->D(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    .line 8
    sget v8, Lcom/truecaller/stats/R$dimen;->intro_page_text_size:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 9
    sget v9, Lcom/truecaller/stats/R$color;->stats_intro_details_text_color:I

    invoke-interface {p0, v9}, Le/a/p5/c0;->a(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 10
    invoke-direct {v1, v7, v3, v8, p0}, Lcom/truecaller/yearincalling/model/Detail;-><init>(Ljava/lang/Integer;Landroid/text/Spanned;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 11
    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 12
    sget v1, Lcom/truecaller/stats/R$drawable;->intro_stats_background:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 13
    sget v1, Lcom/truecaller/stats/R$color;->stats_intro_background_color:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x620

    move-object v1, v0

    move-object v3, v4

    move-object v4, v6

    move-object v6, p0

    move v10, p1

    .line 14
    invoke-direct/range {v1 .. v13}, Lcom/truecaller/yearincalling/model/StatsUiModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Landroid/text/Spanned;Ljava/util/List;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;ZLjava/util/List;Ljava/lang/Integer;I)V

    return-object v0
.end method

.method public static final F(Landroid/content/Context;)Landroid/media/AudioManager;
    .locals 3

    const-string v0, "$this$audioManager"

    const-string v1, "audio"

    const-string v2, "null cannot be cast to non-null type android.media.AudioManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/media/AudioManager;

    return-object p0
.end method

.method public static final F0(Landroid/database/Cursor;Ljava/lang/String;)J
    .locals 1

    const-string v0, "$this$longValueOrThrow"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final F1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$stringValue"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final G(Le/a/d/d/c/a;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/d/c/a;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$getAvailabilityIdentifierSet"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/d/d/c/a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object p0, p0, Le/a/d/d/c/a;->b:Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p0, p0, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object p0

    const-string v0, "contact.numbers"

    invoke-static {p0, v0}, Le/d/c/a/a;->S(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lcom/truecaller/data/entity/Number;

    const-string v2, "it"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-static {v0}, Ls1/u/i;->d1(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static final G0(Lcom/truecaller/voip/VoipUser;)Le/a/d/c/a/o;
    .locals 2

    const-string v0, "$this$mapUserBadgeToTheme"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/voip/VoipUser;->g:Lcom/truecaller/voip/VoipUserBadge;

    .line 2
    iget-boolean v1, v0, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Le/a/d/c/a/k;

    .line 4
    iget-object p0, p0, Lcom/truecaller/voip/VoipUser;->f:Ljava/lang/Integer;

    .line 5
    invoke-direct {v0, p0}, Le/a/d/c/a/k;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean p0, p0, Lcom/truecaller/voip/VoipUser;->e:Z

    if-eqz p0, :cond_1

    .line 7
    sget-object v0, Le/a/d/c/a/b;->a:Le/a/d/c/a/b;

    goto :goto_0

    .line 8
    :cond_1
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    if-eqz p0, :cond_2

    .line 9
    sget-object v0, Le/a/d/c/a/c;->a:Le/a/d/c/a/c;

    goto :goto_0

    .line 10
    :cond_2
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    if-eqz p0, :cond_3

    .line 11
    sget-object v0, Le/a/d/c/a/e;->a:Le/a/d/c/a/e;

    goto :goto_0

    .line 12
    :cond_3
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-eqz p0, :cond_4

    .line 13
    sget-object v0, Le/a/d/c/a/j;->a:Le/a/d/c/a/j;

    goto :goto_0

    .line 14
    :cond_4
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->b:Z

    if-eqz p0, :cond_5

    .line 15
    sget-object v0, Le/a/d/c/a/i;->a:Le/a/d/c/a/i;

    goto :goto_0

    .line 16
    :cond_5
    sget-object v0, Le/a/d/c/a/d;->a:Le/a/d/c/a/d;

    :goto_0
    return-object v0
.end method

.method public static final G1(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "$this$stringValueOrThrow"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final H(Lcom/truecaller/voip/VoipUser;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "$this$getAvatarConfig"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    iget-object v2, v0, Lcom/truecaller/voip/VoipUser;->d:Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    move-object v4, v2

    .line 4
    :goto_0
    iget-object v5, v0, Lcom/truecaller/voip/VoipUser;->b:Ljava/lang/String;

    const/4 v6, 0x0

    .line 5
    iget-object v2, v0, Lcom/truecaller/voip/VoipUser;->c:Ljava/lang/String;

    .line 6
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v8, 0x0

    move v9, v8

    .line 7
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-virtual {v2, v9}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 8
    invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 10
    invoke-static {v9}, Landroid/text/TextUtils;->isGraphic(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_3
    move-object v7, v3

    .line 11
    :goto_2
    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Locale.getDefault()"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v2

    goto :goto_3

    :cond_4
    move-object v7, v3

    .line 13
    :goto_3
    iget-object v2, v0, Lcom/truecaller/voip/VoipUser;->g:Lcom/truecaller/voip/VoipUserBadge;

    .line 14
    iget-boolean v3, v2, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-nez v3, :cond_6

    .line 15
    iget-boolean v0, v0, Lcom/truecaller/voip/VoipUser;->e:Z

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v0, v8

    goto :goto_5

    :cond_6
    :goto_4
    const/4 v0, 0x1

    :goto_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 16
    iget-boolean v12, v2, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    .line 17
    iget-boolean v11, v2, Lcom/truecaller/voip/VoipUserBadge;->b:Z

    const/4 v13, 0x0

    .line 18
    iget-boolean v14, v2, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xf4e4

    move-object v2, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v0

    .line 19
    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v1
.end method

.method public static final H0(Le/a/d/b0/a;)Le/a/d/c/a/o;
    .locals 3

    const-string v0, "$this$mapUserBadgeToTheme"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 2
    iget-boolean v1, v0, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-eqz v1, :cond_0

    .line 3
    iget-boolean v2, v0, Lcom/truecaller/voip/VoipUserBadge;->f:Z

    if-eqz v2, :cond_0

    .line 4
    new-instance v0, Le/a/d/c/a/l;

    .line 5
    iget-object p0, p0, Le/a/d/b0/a;->h:Ljava/lang/Integer;

    .line 6
    invoke-direct {v0, p0}, Le/a/d/c/a/l;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 7
    new-instance v0, Le/a/d/c/a/k;

    .line 8
    iget-object p0, p0, Le/a/d/b0/a;->h:Ljava/lang/Integer;

    .line 9
    invoke-direct {v0, p0}, Le/a/d/c/a/k;-><init>(Ljava/lang/Integer;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-boolean p0, p0, Le/a/d/b0/a;->g:Z

    if-eqz p0, :cond_2

    .line 11
    sget-object v0, Le/a/d/c/a/b;->a:Le/a/d/c/a/b;

    goto :goto_0

    .line 12
    :cond_2
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    if-eqz p0, :cond_3

    .line 13
    sget-object v0, Le/a/d/c/a/c;->a:Le/a/d/c/a/c;

    goto :goto_0

    .line 14
    :cond_3
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    if-eqz p0, :cond_4

    .line 15
    sget-object v0, Le/a/d/c/a/e;->a:Le/a/d/c/a/e;

    goto :goto_0

    .line 16
    :cond_4
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    if-eqz p0, :cond_5

    .line 17
    sget-object v0, Le/a/d/c/a/j;->a:Le/a/d/c/a/j;

    goto :goto_0

    .line 18
    :cond_5
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->f:Z

    if-eqz p0, :cond_6

    .line 19
    sget-object v0, Le/a/d/c/a/m;->a:Le/a/d/c/a/m;

    goto :goto_0

    .line 20
    :cond_6
    iget-boolean p0, v0, Lcom/truecaller/voip/VoipUserBadge;->b:Z

    if-eqz p0, :cond_7

    .line 21
    sget-object v0, Le/a/d/c/a/i;->a:Le/a/d/c/a/i;

    goto :goto_0

    .line 22
    :cond_7
    sget-object v0, Le/a/d/c/a/d;->a:Le/a/d/c/a/d;

    :goto_0
    return-object v0
.end method

.method public static final H1(Landroid/widget/TextView;Ls1/z/b/p;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ls1/z/b/p<",
            "-",
            "Landroid/text/style/CharacterStyle;",
            "-",
            "Ljava/lang/Integer;",
            "+",
            "Landroid/text/style/CharacterStyle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$swapSpans"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "spanProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result v1

    const-class v2, Landroid/text/style/CharacterStyle;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/CharacterStyle;

    if-eqz v1, :cond_1

    .line 3
    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v5, v1, v3

    add-int/lit8 v6, v4, 0x1

    const-string v7, "span"

    .line 4
    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p1, v5, v4}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/text/style/CharacterStyle;

    if-eqz v4, :cond_0

    .line 5
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 6
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanEnd(Ljava/lang/Object;)I

    move-result v8

    .line 7
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->getSpanFlags(Ljava/lang/Object;)I

    move-result v9

    .line 8
    invoke-virtual {v0, v5}, Landroid/text/SpannableString;->removeSpan(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {v0, v4, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static final I(Le/a/d/d/c/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 3

    const-string v0, "$this$getAvatarConfig"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/d/d/c/a;->f:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/d/d/c/a;->b:Lcom/truecaller/data/entity/Number;

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/data/entity/Contact;->v()Lcom/truecaller/data/entity/Number;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 6
    :goto_0
    iget-object p0, p0, Le/a/d/d/c/a;->a:Lcom/truecaller/data/entity/Contact;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7
    invoke-static {p0, v2, v2, v0, v1}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object p0

    return-object p0
.end method

.method public static final I0(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$normalizeAsRtmChannelKey"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final I1(Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem;)Le/a/d/c0/x1/a;
    .locals 3

    const-string v0, "$this$toAudioRoute"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Phone;

    if-eqz v0, :cond_0

    sget-object p0, Le/a/d/c0/x1/a$b;->a:Le/a/d/c0/x1/a$b;

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Speaker;

    if-eqz v0, :cond_1

    sget-object p0, Le/a/d/c0/x1/a$c;->a:Le/a/d/c0/x1/a$c;

    goto :goto_0

    .line 3
    :cond_1
    instance-of v0, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;

    if-eqz v0, :cond_2

    new-instance v0, Le/a/d/c0/x1/a$a;

    new-instance v1, Le/a/p5/r0/a;

    check-cast p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;

    .line 4
    iget-object v2, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;->c:Ljava/lang/String;

    .line 5
    iget-object p0, p0, Lcom/truecaller/voip/ui/incoming/audioroutepicker/AudioRouteViewItem$Bluetooth;->d:Ljava/lang/String;

    .line 6
    invoke-direct {v1, v2, p0}, Le/a/p5/r0/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Le/a/d/c0/x1/a$a;-><init>(Le/a/p5/r0/a;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :cond_2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static final J(Le/a/d/b0/a;)Lcom/truecaller/common/ui/avatar/AvatarXConfig;
    .locals 20

    move-object/from16 v0, p0

    const-string v1, "$this$getAvatarXConfig"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    .line 2
    iget-object v4, v0, Le/a/d/b0/a;->d:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Le/a/d/b0/a;->e:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    :goto_0
    move-object v3, v2

    const/4 v5, 0x0

    .line 5
    iget-object v2, v0, Le/a/d/b0/a;->c:Ljava/lang/String;

    .line 6
    invoke-static {v2}, Le/a/p5/s0/f;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 7
    iget-object v2, v0, Le/a/d/b0/a;->f:Lcom/truecaller/voip/VoipUserBadge;

    .line 8
    iget-boolean v7, v2, Lcom/truecaller/voip/VoipUserBadge;->a:Z

    if-nez v7, :cond_2

    .line 9
    iget-boolean v0, v0, Le/a/d/b0/a;->g:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    move v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10
    iget-boolean v12, v2, Lcom/truecaller/voip/VoipUserBadge;->c:Z

    .line 11
    iget-boolean v11, v2, Lcom/truecaller/voip/VoipUserBadge;->b:Z

    .line 12
    iget-boolean v15, v2, Lcom/truecaller/voip/VoipUserBadge;->d:Z

    .line 13
    iget-boolean v13, v2, Lcom/truecaller/voip/VoipUserBadge;->f:Z

    .line 14
    iget-boolean v14, v2, Lcom/truecaller/voip/VoipUserBadge;->e:Z

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const v19, 0xe0e4

    move-object v2, v1

    .line 15
    invoke-direct/range {v2 .. v19}, Lcom/truecaller/common/ui/avatar/AvatarXConfig;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZZZZZZLjava/lang/Integer;ZI)V

    return-object v1
.end method

.method public static final J0(Le/a/d/c0/z1/d;Le/a/p5/c0;I)Lq3/a/x2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/z1/d;",
            "Le/a/p5/c0;",
            "I)",
            "Lq3/a/x2/f<",
            "Le/a/d/c0/b;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$notificationUserInfo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Le/a/d/c0/z1/d;->a()Lq3/a/x2/i1;

    move-result-object p0

    .line 2
    new-instance v0, Le/a/d/c0/a;

    invoke-direct {v0, p0}, Le/a/d/c0/a;-><init>(Lq3/a/x2/f;)V

    .line 3
    invoke-static {v0, p1, p2}, Le/a/p5/s0/g;->K0(Lq3/a/x2/f;Le/a/p5/c0;I)Lq3/a/x2/f;

    move-result-object p0

    return-object p0
.end method

.method public static final J1(Ljava/util/Map;)Landroid/os/Bundle;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    const-string v0, "$this$toBundle"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 3
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static synthetic K(Le/a/k/c/i1;Ljava/lang/String;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/k/c/i1;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final K0(Lq3/a/x2/f;Le/a/p5/c0;I)Lq3/a/x2/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/f<",
            "+",
            "Ljava/util/Set<",
            "+",
            "Lq3/a/x2/i1<",
            "+",
            "Le/a/d/c0/j;",
            ">;>;>;",
            "Le/a/p5/c0;",
            "I)",
            "Lq3/a/x2/f<",
            "Le/a/d/c0/b;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$notificationUserInfo"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/d/c0/z;

    invoke-direct {v0, p0}, Le/a/d/c0/z;-><init>(Lq3/a/x2/f;)V

    .line 2
    new-instance v1, Le/a/d/c0/a0;

    invoke-direct {v1, v0}, Le/a/d/c0/a0;-><init>(Lq3/a/x2/f;)V

    .line 3
    new-instance v0, Le/a/d/c0/y;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Le/a/d/c0/y;-><init>(Ls1/w/d;)V

    invoke-static {v1, v0}, Ls1/a/a/a/v0/f/d;->P3(Lq3/a/x2/f;Ls1/z/b/q;)Lq3/a/x2/f;

    move-result-object v0

    .line 4
    new-instance v1, Le/a/d/c0/x;

    invoke-direct {v1, v0}, Le/a/d/c0/x;-><init>(Lq3/a/x2/f;)V

    .line 5
    invoke-static {v1}, Ls1/a/a/a/v0/f/d;->F0(Lq3/a/x2/f;)Lq3/a/x2/f;

    move-result-object v0

    .line 6
    new-instance v1, Le/a/d/c0/b0;

    invoke-direct {v1, v0, p0, p2, p1}, Le/a/d/c0/b0;-><init>(Lq3/a/x2/f;Lq3/a/x2/f;ILe/a/p5/c0;)V

    return-object v1
.end method

.method public static final K1(Le/a/d/c0/x1/a;)I
    .locals 1

    const-string v0, "$this$toIcon"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Le/a/d/c0/x1/a$b;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p0, Le/a/d/c0/x1/a$d;

    if-eqz v0, :cond_1

    :goto_0
    sget p0, Lcom/truecaller/voip/R$drawable;->tcx_selector_voip_toggle_phone:I

    goto :goto_1

    .line 3
    :cond_1
    instance-of v0, p0, Le/a/d/c0/x1/a$c;

    if-eqz v0, :cond_2

    sget p0, Lcom/truecaller/voip/R$drawable;->tcx_selector_voip_toggle_speaker:I

    goto :goto_1

    .line 4
    :cond_2
    instance-of p0, p0, Le/a/d/c0/x1/a$a;

    if-eqz p0, :cond_3

    sget p0, Lcom/truecaller/voip/R$drawable;->tcx_selector_voip_toggle_bluetooth:I

    :goto_1
    return p0

    :cond_3
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0
.end method

.method public static L(Landroid/content/Context;I)I
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    .line 4
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    return p0
.end method

.method public static synthetic L0(Le/a/r/z/r;Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    const/4 p3, 0x0

    .line 1
    check-cast p0, Le/a/r/z/s;

    invoke-virtual {p0, p1, p2, p3}, Le/a/r/z/s;->Pj(Lcom/truecaller/wizard/verification/CallState;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final L1(Ljava/lang/Long;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p0}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    .line 4
    iget p0, v0, Landroid/util/TypedValue;->data:I

    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 6
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public static M0([Ljava/lang/String;[I)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 3
    aget-object v3, p0, v2

    invoke-static {v3, v1}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p1, v2

    if-nez v3, :cond_0

    .line 4
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_0
    aget-object v3, p0, v2

    aget v4, p1, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    move v4, v1

    .line 6
    :goto_1
    invoke-static {v3, v4}, Le/a/n/g0;->v0(Ljava/lang/String;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 8
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.truecaller.ACTION_PERMISSIONS_CHANGED"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "granted"

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 10
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object p1

    invoke-static {p1}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p1

    invoke-virtual {p1, p0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    :cond_3
    return-void
.end method

.method public static final M1(Le/a/d/v/h$b;)I
    .locals 1

    const-string v0, "$this$toStatusStringRes"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Le/a/d/v/h$b$c;->b:Le/a/d/v/h$b$c;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Le/a/d/v/h$b$b;->b:Le/a/d/v/h$b$b;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Le/a/d/v/h$b$e;->b:Le/a/d/v/h$b$e;

    invoke-static {p0, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :goto_0
    sget p0, Lcom/truecaller/voip/R$string;->voip_status_call_failed:I

    goto :goto_1

    .line 4
    :cond_2
    sget p0, Lcom/truecaller/voip/R$string;->voip_contact_tile_status_ended:I

    :goto_1
    return p0
.end method

.method public static final N(Landroid/content/Context;)Landroid/net/ConnectivityManager;
    .locals 3

    const-string v0, "$this$connectivityManager"

    const-string v1, "connectivity"

    const-string v2, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static N0(Le/a/r/z/d0/d;Lcom/truecaller/wizard/verification/analytics/CallAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V
    .locals 13

    and-int/lit8 v0, p8, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v8, v1

    goto :goto_0

    :cond_0
    move-object/from16 v8, p6

    :goto_0
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_1

    move-object v10, v1

    goto :goto_1

    :cond_1
    move-object/from16 v10, p7

    .line 1
    :goto_1
    move-object v0, p0

    check-cast v0, Le/a/r/z/d0/e;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "action"

    move-object v3, p1

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enteredPhoneNumber"

    move-object v4, p2

    invoke-static {p2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "enteredCountryCode"

    move-object/from16 v5, p3

    invoke-static {v5, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callPhoneNumber"

    move-object/from16 v6, p4

    invoke-static {v6, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, v0, Le/a/r/z/d0/e;->a:Le/a/q2/a;

    .line 4
    new-instance v12, Le/a/r/z/d0/f;

    .line 5
    iget-object v9, v0, Le/a/r/z/d0/e;->b:Lcom/truecaller/wizard/WizardVerificationMode;

    .line 6
    iget-object v0, v0, Le/a/r/z/d0/e;->c:Le/a/u3/g;

    .line 7
    iget-object v2, v0, Le/a/u3/g;->m4:Le/a/u3/g$a;

    sget-object v7, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v11, 0x114

    aget-object v7, v7, v11

    invoke-virtual {v2, v0, v7}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 8
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v11

    move-object v2, v12

    move/from16 v7, p5

    .line 9
    invoke-direct/range {v2 .. v11}, Le/a/r/z/d0/f;-><init>(Lcom/truecaller/wizard/verification/analytics/CallAction;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Long;Lcom/truecaller/wizard/WizardVerificationMode;Ljava/lang/Boolean;Z)V

    .line 10
    invoke-interface {v1, v12}, Le/a/q2/a;->b(Le/a/q2/v;)V

    return-void
.end method

.method public static final N1(Landroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "$this$toStringMap"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "keySet()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-static {v2}, Le/q/f/a/d/a;->Y1(I)I

    move-result v2

    const/16 v3, 0x10

    if-ge v2, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    move-object v3, v2

    check-cast v3, Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public static final O(I)I
    .locals 2

    int-to-float p0, p0

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Resources.getSystem()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static final O0(Landroid/content/Context;)V
    .locals 4

    const-string v0, "$this$openAppSettings"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(Settings.ACTION_A\u2026age\", packageName, null))"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final O1(Lx3/a0;Le/m/e/k;)Le/a/r/r/a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/a0<",
            "Lcom/truecaller/account/network/TokenResponseDto;",
            ">;",
            "Le/m/e/k;",
            ")",
            "Le/a/r/r/a;"
        }
    .end annotation

    const-string v0, "gson"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    iget-object v1, p0, Lx3/a0;->b:Ljava/lang/Object;

    .line 2
    check-cast v1, Lcom/truecaller/account/network/TokenResponseDto;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 3
    iget-object p0, p0, Lx3/a0;->c:Lu3/l0;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0}, Lu3/l0;->j()Ljava/io/Reader;

    move-result-object p0

    :try_start_0
    const-class v2, Lcom/truecaller/account/network/TokenErrorResponseDto;

    invoke-virtual {p1, p0, v2}, Le/m/e/k;->d(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/account/network/TokenErrorResponseDto;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p0, v0}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object v0, p1

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0

    .line 5
    :cond_1
    :goto_1
    new-instance p0, Le/a/r/r/a;

    invoke-direct {p0, v1, v0}, Le/a/r/r/a;-><init>(Lcom/truecaller/account/network/TokenResponseDto;Lcom/truecaller/account/network/TokenErrorResponseDto;)V

    return-object p0
.end method

.method public static P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 4
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    iget p1, v0, Landroid/util/TypedValue;->data:I

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    .line 5
    :cond_0
    invoke-static {p0, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static final P0(Lq3/a/i0;Lq3/a/w2/h;Ls1/z/b/p;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/i0;",
            "Lq3/a/w2/h<",
            "TT;>;",
            "Ls1/z/b/p<",
            "-TT;-",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$openSubscription"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object p1

    .line 2
    new-instance v3, Le/a/p5/s0/k;

    const/4 v0, 0x0

    invoke-direct {v3, p1, p2, v0}, Le/a/p5/s0/k;-><init>(Lq3/a/w2/z;Ls1/z/b/p;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p0

    .line 3
    new-instance p2, Le/a/p5/s0/l;

    invoke-direct {p2, p1}, Le/a/p5/s0/l;-><init>(Lq3/a/w2/z;)V

    check-cast p0, Lq3/a/u1;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0, p2}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    return-void
.end method

.method public static final P1(Le/a/d/b0/c;Le/a/d/c0/j1;Ls1/w/d;)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/b0/c;",
            "Le/a/d/c0/j1;",
            "Ls1/w/d<",
            "-",
            "Le/a/d/c0/p0;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/d/c0/u0;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d/c0/u0;

    iget v3, v2, Le/a/d/c0/u0;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/c0/u0;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/c0/u0;

    invoke-direct {v2, v1}, Le/a/d/c0/u0;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d/c0/u0;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/c0/u0;->e:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_1

    iget v0, v2, Le/a/d/c0/u0;->h:I

    iget v3, v2, Le/a/d/c0/u0;->g:I

    iget v4, v2, Le/a/d/c0/u0;->f:I

    iget-object v5, v2, Le/a/d/c0/u0;->j:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v2, v2, Le/a/d/c0/u0;->i:Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/data/entity/Contact;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move/from16 v21, v0

    move-object v12, v5

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object v1, v0, Le/a/d/b0/c;->c:Ljava/lang/String;

    const-string v4, "-1"

    .line 5
    invoke-static {v1, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    new-instance v1, Le/a/d/c0/p0;

    .line 7
    iget v2, v0, Le/a/d/b0/c;->e:I

    .line 8
    iget v0, v0, Le/a/d/b0/c;->d:I

    .line 9
    new-instance v3, Le/a/d/b0/b$a;

    invoke-static {v0}, Le/a/p5/s0/g;->T(I)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    move-result-object v0

    invoke-direct {v3, v2, v0}, Le/a/d/b0/b$a;-><init>(ILcom/truecaller/voip/user/PeerHistoryPeerStatus;)V

    .line 10
    invoke-direct {v1, v2, v3}, Le/a/d/c0/p0;-><init>(ILe/a/d/b0/b;)V

    goto/16 :goto_2

    .line 11
    :cond_3
    iget v1, v0, Le/a/d/b0/c;->e:I

    .line 12
    iget-object v4, v0, Le/a/d/b0/c;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v4, :cond_5

    .line 13
    iget v7, v0, Le/a/d/b0/c;->d:I

    .line 14
    iget-object v8, v0, Le/a/d/b0/c;->c:Ljava/lang/String;

    .line 15
    new-instance v9, Lcom/truecaller/data/entity/Number;

    .line 16
    iget-object v0, v0, Le/a/d/b0/c;->c:Ljava/lang/String;

    .line 17
    invoke-direct {v9, v0, v5}, Lcom/truecaller/data/entity/Number;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {v9}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v4, v2, Le/a/d/c0/u0;->i:Ljava/lang/Object;

    iput-object v8, v2, Le/a/d/c0/u0;->j:Ljava/lang/Object;

    iput v1, v2, Le/a/d/c0/u0;->f:I

    iput v7, v2, Le/a/d/c0/u0;->g:I

    iput v1, v2, Le/a/d/c0/u0;->h:I

    iput v6, v2, Le/a/d/c0/u0;->e:I

    move-object/from16 v5, p1

    invoke-interface {v5, v0, v2}, Le/a/d/c0/j1;->B(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    move/from16 v21, v1

    move-object v2, v4

    move v3, v7

    move-object v12, v8

    move-object v1, v0

    move/from16 v4, v21

    :goto_1
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    const-string v0, "$this$mapToPeerSupportContact"

    .line 19
    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v17, Lcom/truecaller/voip/VoipUserBadge;

    .line 21
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v6

    .line 22
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->u0()Z

    move-result v7

    .line 23
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->v0()Z

    move-result v9

    .line 24
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->r0()Z

    move-result v8

    .line 25
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->m0()Z

    move-result v10

    .line 26
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->G0()Z

    move-result v11

    move-object/from16 v5, v17

    .line 27
    invoke-direct/range {v5 .. v11}, Lcom/truecaller/voip/VoipUserBadge;-><init>(ZZZZZZ)V

    .line 28
    new-instance v5, Le/a/d/b0/b$b;

    .line 29
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object v10

    .line 30
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v11

    .line 31
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->G()Ljava/lang/String;

    move-result-object v13

    .line 32
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->B()Ljava/lang/String;

    move-result-object v14

    .line 33
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v15

    .line 34
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->C0()Z

    move-result v16

    .line 35
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->a0()I

    move-result v18

    .line 36
    invoke-static {v3}, Le/a/p5/s0/g;->T(I)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    move-result-object v20

    move-object v9, v5

    .line 37
    invoke-direct/range {v9 .. v21}, Le/a/d/b0/b$b;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/truecaller/voip/VoipUserBadge;IZLcom/truecaller/voip/user/PeerHistoryPeerStatus;I)V

    move v1, v4

    .line 38
    :cond_5
    new-instance v0, Le/a/d/c0/p0;

    invoke-direct {v0, v1, v5}, Le/a/d/c0/p0;-><init>(ILe/a/d/b0/b;)V

    move-object v1, v0

    :goto_2
    return-object v1
.end method

.method public static final Q(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const-string v0, "$this$getDrawableCompat"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ln3/k/b/d/h;->a:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resource not found!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final Q0(Ljava/lang/String;Landroid/content/Context;)V
    .locals 7

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_5

    const-string v2, "http://"

    .line 2
    invoke-static {p0, v2, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    const-string v3, "https://"

    .line 3
    invoke-static {p0, v3, v1}, Ls1/f0/r;->w(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    .line 4
    :cond_3
    invoke-static {v2, p0}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5
    :goto_2
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 6
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v3, 0x106000b

    .line 7
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {p1, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    const/high16 v4, -0x1000000

    or-int/2addr v3, v4

    .line 9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android.support.customtabs.extra.SESSION"

    .line 10
    invoke-virtual {v2, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    .line 11
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 12
    invoke-virtual {v5, v4, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 13
    invoke-virtual {v2, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_4
    const-string v4, "android.support.customtabs.extra.EXTRA_ENABLE_INSTANT_APPS"

    .line 14
    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 15
    new-instance v1, Ln3/d/a/a;

    invoke-direct {v1, v3, v6, v6, v6}, Ln3/d/a/a;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 16
    invoke-virtual {v1}, Ln3/d/a/a;->a()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, "androidx.browser.customtabs.extra.SHARE_STATE"

    .line 17
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android-app://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "android.intent.extra.REFERRER"

    .line 19
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 20
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    :try_start_0
    invoke-virtual {v2, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 22
    invoke-static {p1, v2, v6}, Ln3/k/b/a$a;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method public static final Q1(Le/a/d/c0/f1;Ljava/lang/String;)Lcom/truecaller/voip/VoipUser;
    .locals 12

    const-string v0, "$this$toVoipUser"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "voipId"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/truecaller/voip/VoipUser;

    .line 2
    iget-object v3, p0, Le/a/d/c0/f1;->e:Ljava/lang/String;

    .line 3
    iget-object v4, p0, Le/a/d/c0/f1;->c:Ljava/lang/String;

    .line 4
    iget-object v5, p0, Le/a/d/c0/f1;->d:Ljava/lang/String;

    .line 5
    iget-boolean v6, p0, Le/a/d/c0/f1;->f:Z

    .line 6
    iget-object v7, p0, Le/a/d/c0/f1;->g:Ljava/lang/Integer;

    .line 7
    iget-object v8, p0, Le/a/d/c0/f1;->j:Lcom/truecaller/voip/VoipUserBadge;

    .line 8
    iget-boolean v10, p0, Le/a/d/c0/f1;->h:Z

    .line 9
    iget-boolean v11, p0, Le/a/d/c0/f1;->i:Z

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    .line 10
    invoke-direct/range {v1 .. v11}, Lcom/truecaller/voip/VoipUser;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Integer;Lcom/truecaller/voip/VoipUserBadge;Ljava/lang/Integer;ZZ)V

    return-object v0
.end method

.method public static synthetic R(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;I)Landroid/graphics/drawable/Drawable;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    const/4 p2, 0x0

    .line 1
    invoke-static {p0, p1, p2}, Le/a/p5/s0/g;->Q(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method public static final R0(Lq3/a/w2/h;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/w2/h<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$pollAndCancel"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lq3/a/w2/h;->p2()Lq3/a/w2/z;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    :try_start_0
    invoke-interface {p0}, Lq3/a/w2/z;->poll()Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-static {p0, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-object v2

    :catchall_0
    move-exception v2

    invoke-static {p0, v1, v0, v1}, Ls1/a/a/a/v0/f/d;->U(Lq3/a/w2/z;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    throw v2
.end method

.method public static final R1(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;
    .locals 1

    const-string v0, "$this$toast"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string p1, "this.getString(stringRes)"

    invoke-static {p2, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p1, "Toast.makeText(this, mes\u2026        .apply { show() }"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic S(Le/a/k/c/c2;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 7

    and-int/lit8 p7, p7, 0x10

    if-eqz p7, :cond_0

    const/4 p5, 0x0

    :cond_0
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p6

    .line 1
    invoke-interface/range {v0 .. v6}, Le/a/k/c/c2;->i(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static S0()Le/a/d/p/a;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/common/network/util/KnownEndpoints;->VOIP:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v1, Le/a/d/p/a;

    invoke-static {v0, v1}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/p/a;

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-object v0
.end method

.method public static synthetic S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;
    .locals 2

    and-int/lit8 v0, p4, 0x1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move p1, v1

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    move p3, v1

    .line 1
    :cond_2
    invoke-static {p0, p1, p2, p3}, Le/a/p5/s0/g;->R1(Landroid/content/Context;ILjava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    return-object p0
.end method

.method public static final T(I)Lcom/truecaller/voip/user/PeerHistoryPeerStatus;
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_NO_ANSWER:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    invoke-virtual {v0}, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget-object v0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_ACCEPTED:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    invoke-virtual {v0}, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->getValue()I

    move-result v1

    if-ne p0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Lcom/truecaller/voip/user/PeerHistoryPeerStatus;->STATUS_ERROR:Lcom/truecaller/voip/user/PeerHistoryPeerStatus;

    :goto_0
    return-object v0
.end method

.method public static final T0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9

    const-string v0, "$this$queryInt"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "table"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "column"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object p1, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static synthetic T1(Le/a/d/c/l;ZJILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-wide/16 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Le/a/d/c/l;->u3(ZJ)V

    return-void
.end method

.method public static synthetic U(Le/a/r5/j;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p4, 0x2

    const/4 p3, 0x0

    .line 1
    check-cast p0, Le/a/r5/n;

    invoke-virtual {p0, p1, p2, p3}, Le/a/r5/n;->a(JLcom/truecaller/whoviewedme/ProfileViewSource;)I

    move-result p0

    return p0
.end method

.method public static final U0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/Long;
    .locals 9

    const-string v0, "$this$queryLong"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "table"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "column"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object p1, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static U1(Landroid/widget/TextView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    and-int/lit8 p2, p5, 0x1

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 p2, 0x0

    aget-object p1, p1, p2

    :cond_0
    and-int/lit8 p2, p5, 0x2

    const/4 p4, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    const/4 v0, 0x1

    aget-object p2, p2, v0

    goto :goto_0

    :cond_1
    move-object p2, p4

    :goto_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p3

    const/4 v0, 0x2

    aget-object p3, p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p4

    const/4 p5, 0x3

    aget-object p4, p4, p5

    :cond_3
    const-string p5, "$this$updateCompoundDrawablesRelativeWithIntrinsicBounds"

    .line 5
    invoke-static {p0, p5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic V(Le/a/r5/i0;JLcom/truecaller/whoviewedme/ProfileViewSource;ILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p3, p4, 0x2

    const/4 p3, 0x0

    .line 1
    invoke-interface {p0, p1, p2, p3}, Le/a/r5/i0;->l(JLcom/truecaller/whoviewedme/ProfileViewSource;)I

    move-result p0

    return p0
.end method

.method public static final V0(Le/a/d/p/a;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/d/p/a;",
            "Ls1/z/b/p<",
            "-",
            "Le/a/d/p/a;",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/e1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/e1;

    iget v1, v0, Le/a/d/c0/e1;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/e1;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/e1;

    invoke-direct {v0, p2}, Le/a/d/c0/e1;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/e1;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/e1;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iput v3, v0, Le/a/d/c0/e1;->e:I

    invoke-interface {p1, p0, v0}, Ls1/z/b/p;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p2, v1, :cond_3

    return-object v1

    :catch_0
    const/4 p2, 0x0

    :cond_3
    :goto_1
    return-object p2
.end method

.method public static final synthetic V1(Le/a/d/c0/r;Ljava/util/Map;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/r<",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Le/a/d/v/k/z;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "+",
            "Le/a/d/v/k/z;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/v/k/c0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/v/k/c0;

    iget v1, v0, Le/a/d/v/k/c0;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/v/k/c0;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/v/k/c0;

    invoke-direct {v0, p2}, Le/a/d/v/k/c0;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/v/k/c0;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/v/k/c0;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Le/a/d/v/k/c0;->i:Ljava/lang/Object;

    check-cast p0, Lq3/a/b3/c;

    iget-object p1, v0, Le/a/d/v/k/c0;->h:Ljava/lang/Object;

    check-cast p1, Le/a/d/c0/r;

    iget-object v1, v0, Le/a/d/v/k/c0;->g:Ljava/lang/Object;

    check-cast v1, Ljava/util/Map;

    iget-object v0, v0, Le/a/d/v/k/c0;->f:Ljava/lang/Object;

    check-cast v0, Le/a/d/c0/r;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object p2, p0

    move-object p0, p1

    move-object p1, v1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    .line 5
    iput-object p0, v0, Le/a/d/v/k/c0;->f:Ljava/lang/Object;

    iput-object p1, v0, Le/a/d/v/k/c0;->g:Ljava/lang/Object;

    iput-object p0, v0, Le/a/d/v/k/c0;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/d/v/k/c0;->i:Ljava/lang/Object;

    iput v4, v0, Le/a/d/v/k/c0;->e:I

    invoke-interface {p2, v3, v0}, Lq3/a/b3/c;->b(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Le/a/d/c0/r;->h()Le/a/d/c0/r$a;

    move-result-object p0

    .line 7
    invoke-virtual {v0}, Le/a/d/c0/r;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-static {v0, p1}, Ls1/u/i;->o0(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p0, p1}, Le/a/d/c0/d0;->a(Ljava/lang/Object;)V

    .line 8
    sget-object p0, Ls1/s;->a:Ls1/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {p2, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {p2, v3}, Lq3/a/b3/c;->c(Ljava/lang/Object;)V

    throw p0
.end method

.method public static final W(Le/a/d/x/r/i;JLjava/util/Set;)Ljava/lang/Long;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/x/r/i;",
            "J",
            "Ljava/util/Set<",
            "Le/a/d/x/r/l;",
            ">;)",
            "Ljava/lang/Long;"
        }
    .end annotation

    const-string v0, "$this$getInvitationTimeout"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rtmMembers"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/d/x/r/i;->b:Ljava/lang/String;

    .line 2
    sget-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Invited:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v1}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    sget-wide v0, Le/a/d/c0/d;->a:J

    .line 4
    invoke-static {p0, p1, p2, v0, v1}, Le/a/p5/s0/g;->p(Le/a/d/x/r/i;JJ)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    sget-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Ringing:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v1}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    sget-wide v6, Le/a/d/c0/d;->b:J

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    .line 7
    invoke-static/range {v2 .. v7}, Le/a/p5/s0/g;->q(Le/a/d/x/r/i;JLjava/util/Set;J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    .line 8
    :cond_1
    sget-object v1, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->Joined:Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;

    invoke-virtual {v1}, Lcom/truecaller/voip/manager/rtm/RtmChannelAttributeState;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    sget-wide v5, Le/a/d/c0/d;->c:J

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    .line 10
    invoke-static/range {v1 .. v6}, Le/a/p5/s0/g;->q(Le/a/d/x/r/i;JLjava/util/Set;J)Ljava/lang/Long;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final W0(Le/a/d/t/a;Ls1/z/b/l;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/a/d/t/a;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/d/t/a;",
            "+TT;>;)TT;"
        }
    .end annotation

    const-string v0, "$this$querySafe"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "block"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-interface {p1, p0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final W1(Lcom/truecaller/voip/util/VoipEventType;)I
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-eqz p0, :cond_2

    if-eq p0, v1, :cond_3

    if-eq p0, v0, :cond_1

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_1
    :goto_0
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v1

    :cond_3
    :goto_1
    return v0
.end method

.method public static synthetic X(Le/a/k/h;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/k/h;->h(ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final X0(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "$this$queryString"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "table"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "column"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p4

    .line 1
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 2
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    move-object p1, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p2

    invoke-static {p0, p1}, Le/q/f/a/d/a;->G(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_1
    return-object p1
.end method

.method public static final X1(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "$this$writeFully"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputStream"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, p1, v0, v1}, Le/q/f/a/d/a;->U(Ljava/io/InputStream;Ljava/io/OutputStream;II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final Y(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 3

    const-string v0, "$this$notificationManager"

    const-string v1, "notification"

    const-string v2, "null cannot be cast to non-null type android.app.NotificationManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public static final varargs Y0(Landroid/content/Context;Landroid/content/BroadcastReceiver;[Ljava/lang/String;)V
    .locals 4

    const-string v0, "$this$registerBroadcastReceiver"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "broadcastReceiver"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p0

    const-string v0, "LocalBroadcastManager.getInstance(this)"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 4
    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, v0}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public static final Z(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

    const-string v0, "$this$getOrDefaultValue"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p2, p0

    :cond_0
    return-object p2
.end method

.method public static Z0(Landroid/content/Context;)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Le/a/p5/s0/g;->v(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "App settings page couldn\'t be opened"

    .line 2
    invoke-static {p0, v0}, Le/a/c/p/a;->J1(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a()Le/a/d/b0/a;
    .locals 14

    .line 1
    new-instance v11, Le/a/d/b0/a;

    const-wide/16 v0, 0x4d2

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 3
    new-instance v10, Lcom/truecaller/voip/VoipUserBadge;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v12, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3f

    const/4 v7, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Lcom/truecaller/voip/VoipUserBadge;-><init>(ZZZZZZI)V

    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v13, 0x0

    const-string v2, "1234"

    const-string v3, "Unknown"

    const-string v4, "123"

    move-object v0, v11

    move-object v6, v10

    move v7, v12

    move v10, v13

    .line 4
    invoke-direct/range {v0 .. v10}, Le/a/d/b0/a;-><init>(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/voip/VoipUserBadge;ZLjava/lang/Integer;ZZ)V

    return-object v11
.end method

.method public static a0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object p1

    .line 3
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p1, Landroid/content/pm/PermissionInfo;->group:Ljava/lang/String;

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroid/content/pm/PermissionGroupInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/pm/PermissionInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return-object p0

    :catch_0
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a1(Landroid/content/Context;ZI)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    const-string p2, "$this$requestDisableBatteryOptimizations"

    .line 1
    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-static {p0, p1}, Le/a/p5/s0/g;->b1(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final b(Le/a/b0/o/a;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    const-string v1, "profileFirstName"

    .line 1
    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "profileLastName"

    invoke-interface {p0, v1}, Le/a/b0/o/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, " "

    invoke-static {p0, v0}, Le/a/p5/g0;->D(Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "StringUtils.combine(\" \",\u2026ttings.PROFILE_LASTNAME))"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static final b0(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 3

    const-string v0, "$this$powerManager"

    const-string v1, "power"

    const-string v2, "null cannot be cast to non-null type android.os.PowerManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public static final b1(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "$this$requestDisableBatteryOptimizationsIntent"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    const-string p1, "package:"

    .line 4
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final c(Lcom/truecaller/data/entity/Number;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object p0

    const-string v0, "normalizedNumber"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Le/a/p5/s0/f;->z(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c0(Landroid/os/PowerManager;)Landroid/os/PowerManager$WakeLock;
    .locals 2

    const-string v0, "$this$getProximityLockCompat"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x20

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "truecaller:proximityLock"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static c1(Landroid/app/Activity;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    instance-of v0, p0, Lcom/truecaller/wizard/AccessContactsActivity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Le/a/p5/s0/g;->w1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p0}, Le/a/p5/s0/g;->Z0(Landroid/content/Context;)V

    return v1

    :cond_1
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    aput-object p1, v2, v1

    .line 5
    invoke-static {p0, v2, p2}, Ln3/k/a/b;->g(Landroid/app/Activity;[Ljava/lang/String;I)V

    return v0
.end method

.method public static final d(Lq3/a/n;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static d0(Landroid/content/Context;I)I
    .locals 2

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p0, v0, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method public static d1(Landroidx/fragment/app/Fragment;Ljava/lang/String;IZ)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p3

    invoke-static {p3, p1}, Le/a/p5/s0/g;->w1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p3

    invoke-static {p3, p1}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Le/a/p5/s0/g;->Z0(Landroid/content/Context;)V

    return v0

    :cond_1
    const/4 p3, 0x1

    new-array v1, p3, [Ljava/lang/String;

    aput-object p1, v1, v0

    .line 4
    invoke-virtual {p0, v1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    return p3
.end method

.method public static final e(J)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final e0(Le/a/r/r/a;)Ljava/lang/Integer;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object v1, p0, Le/a/r/r/a;->a:Lcom/truecaller/account/network/TokenResponseDto;

    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {v1}, Lcom/truecaller/account/network/TokenResponseDto;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_1
    iget-object p0, p0, Le/a/r/r/a;->b:Lcom/truecaller/account/network/TokenErrorResponseDto;

    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/account/network/TokenErrorResponseDto;->getStatus()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static e1(Landroidx/fragment/app/Fragment;[Ljava/lang/String;I)Z
    .locals 5

    .line 1
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    invoke-static {v4, v3}, Le/a/p5/s0/g;->w1(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3
    :cond_1
    array-length v0, p1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_3

    aget-object v3, p1, v2

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object v4

    invoke-static {v4, v3}, Le/a/p5/s0/g;->w0(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p0

    invoke-static {p0}, Le/a/p5/s0/g;->Z0(Landroid/content/Context;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/Fragment;->requestPermissions([Ljava/lang/String;I)V

    const/4 v1, 0x1

    :goto_2
    return v1
.end method

.method public static final f(ILjava/lang/Integer;Ljava/lang/String;)Le/a/p5/v0/a;
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p0, Le/a/p5/v0/a$b;

    invoke-direct {p0, p1, p2}, Le/a/p5/v0/a$b;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_1
    new-instance p0, Le/a/p5/v0/a$c;

    invoke-direct {p0, p1, p2}, Le/a/p5/v0/a$c;-><init>(Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_2
    new-instance p0, Le/a/p5/v0/a$a;

    invoke-direct {p0, p1}, Le/a/p5/v0/a$a;-><init>(Ljava/lang/Integer;)V

    :goto_0
    return-object p0
.end method

.method public static final f0(Landroid/content/Context;)I
    .locals 4

    const-string v0, "$this$getStatusBarHeight"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 v0, 0x18

    int-to-float v0, v0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "resources"

    invoke-static {p0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p0, v0

    float-to-int p0, p0

    :goto_0
    return p0
.end method

.method public static final f1(Lq3/a/n;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/n<",
            "-TT;>;TT;)V"
        }
    .end annotation

    const-string v0, "$this$resumeSafe"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lq3/a/n;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0, p1}, Ls1/w/d;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static g(Le/a/k/n/g/c;Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/k/n/g/c;",
            "Le/a/k/n/g/a;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/k/n/g/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/k/n/g/b;

    iget v1, v0, Le/a/k/n/g/b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/k/n/g/b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/k/n/g/b;

    invoke-direct {v0, p0, p2}, Le/a/k/n/g/b;-><init>(Le/a/k/n/g/c;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/k/n/g/b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/k/n/g/b;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Le/a/k/n/g/b;->h:Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Le/a/k/n/g/a;

    iget-object p0, v0, Le/a/k/n/g/b;->g:Ljava/lang/Object;

    check-cast p0, Le/a/k/n/g/c;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/k/n/g/b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/k/n/g/b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/k/n/g/b;->e:I

    move-object p2, p0

    check-cast p2, Le/a/k/n/g/d;

    .line 5
    iget-object v2, p2, Le/a/k/n/g/d;->a:Ln3/c0/q;

    new-instance v5, Le/a/k/n/g/d$h;

    invoke-direct {v5, p2}, Le/a/k/n/g/d$h;-><init>(Le/a/k/n/g/d;)V

    invoke-static {v2, v4, v5, v0}, Ln3/c0/g;->c(Ln3/c0/q;ZLjava/util/concurrent/Callable;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    const/4 p2, 0x0

    .line 6
    iput-object p2, v0, Le/a/k/n/g/b;->g:Ljava/lang/Object;

    iput-object p2, v0, Le/a/k/n/g/b;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/k/n/g/b;->e:I

    invoke-interface {p0, p1, v0}, Le/a/k/n/g/c;->e(Le/a/k/n/g/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    .line 7
    :cond_5
    :goto_2
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static synthetic g0(Le/a/k/c/i1;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p3, 0x2

    if-eqz p2, :cond_0

    const-string p2, ""

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1
    :goto_0
    invoke-interface {p0, p1, p2}, Le/a/k/c/i1;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g1(DII)D
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x2

    .line 1
    :cond_0
    new-instance p3, Ljava/math/BigDecimal;

    invoke-direct {p3, p0, p1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x4

    invoke-virtual {p3, p2, p0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public static final h(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;Z)V
    .locals 3

    const-string v0, "$this$addToStringBuilder"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "builder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 1
    iget v1, p3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iget p3, p3, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    sub-int v2, p3, v1

    invoke-virtual {p0, v0, v1, v2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p3

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v0, v0, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_0
    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 4
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    :cond_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    const-string p3, "  "

    .line 6
    invoke-virtual {p1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/4 p3, 0x1

    if-ne p4, p3, :cond_2

    .line 7
    new-instance p3, Le/a/p5/s0/c;

    invoke-direct {p3, p0}, Le/a/p5/s0/c;-><init>(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 8
    :cond_2
    new-instance p3, Landroid/text/style/ImageSpan;

    invoke-direct {p3, p0, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    :goto_1
    add-int/lit8 p0, p2, 0x2

    const/16 p4, 0x21

    .line 9
    invoke-virtual {p1, p3, p2, p0, p4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p0, " "

    .line 10
    invoke-virtual {p1, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public static final h0(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;
    .locals 3

    const-string v0, "$this$subscriptionManager"

    const-string v1, "telephony_subscription_service"

    const-string v2, "null cannot be cast to non-null type android.telephony.SubscriptionManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method public static final h1(Ls1/w/f;Ls1/z/b/l;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/w/f;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/w/d<",
            "-TT;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/k/n/a;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Le/a/k/n/a;-><init>(Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p0, v0, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;ZI)V
    .locals 2

    and-int/lit8 v0, p5, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object p2, v1

    :cond_0
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_1

    move-object p3, v1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    const/4 p4, 0x0

    .line 1
    :cond_2
    invoke-static {p0, p1, p2, p3, p4}, Le/a/p5/s0/g;->h(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;Z)V

    return-void
.end method

.method public static final i0(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .locals 3

    const-string v0, "$this$telecomManager"

    const-string v1, "telecom"

    const-string v2, "null cannot be cast to non-null type android.telecom.TelecomManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/telecom/TelecomManager;

    return-object p0
.end method

.method public static final i1(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final j(Landroid/widget/TextView;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ls1/z/b/l<",
            "-",
            "Landroid/text/Editable;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$afterTextChanged"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onTextChangedImpl"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/p5/s0/q;

    invoke-direct {v0, p1}, Le/a/p5/s0/q;-><init>(Ls1/z/b/l;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public static final j0(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 3

    const-string v0, "$this$telephonyManager"

    const-string v1, "phone"

    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public static final j1(Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Ls1/y/h;->b(Ljava/io/File;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public static final k(Lq3/a/x2/f;Ljava/util/Set;)Lq3/a/x2/f;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/x2/f<",
            "+",
            "Ljava/util/Set<",
            "+TT;>;>;",
            "Ljava/util/Set<",
            "+TT;>;)",
            "Lq3/a/x2/f<",
            "Le/a/d/c0/c0<",
            "TT;>;>;"
        }
    .end annotation

    const-string v0, "$this$asSetUpdateFlow"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "initialSet"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/d/c0/l;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/d/c0/l;-><init>(Lq3/a/x2/f;Ljava/util/Set;Ls1/w/d;)V

    .line 2
    new-instance p0, Lq3/a/x2/d1;

    invoke-direct {p0, v0}, Lq3/a/x2/d1;-><init>(Ls1/z/b/p;)V

    return-object p0
.end method

.method public static final k0(Landroid/content/Context;I)I
    .locals 3

    const-string v0, "$this$getThemeColor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-nez p1, :cond_0

    .line 4
    iget p0, v0, Landroid/util/TypedValue;->data:I

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 6
    invoke-static {p0, p1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public static final k1(Ljava/io/File;)J
    .locals 2

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-wide v0
.end method

.method public static synthetic l(Lq3/a/x2/f;Ljava/util/Set;I)Lq3/a/x2/f;
    .locals 0

    and-int/lit8 p1, p2, 0x1

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Le/a/p5/s0/g;->k(Lq3/a/x2/f;Ljava/util/Set;)Lq3/a/x2/f;

    move-result-object p0

    return-object p0
.end method

.method public static l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 2
    invoke-static {p0, p1}, Ln3/b/b/a/a;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 3
    invoke-static {p0, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p0

    .line 4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    return-object p1
.end method

.method public static final l1(Lq3/a/w2/d0;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lq3/a/w2/d0<",
            "-TE;>;TE;)V"
        }
    .end annotation

    const-string v0, "$this$sendBlockingSafe"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    invoke-static {p0, p1}, Ls1/a/a/a/v0/f/d;->j3(Lq3/a/w2/d0;Ljava/lang/Object;)V
    :try_end_0
    .catch Lq3/a/w2/q; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final m(Landroid/content/Context;Ls1/z/b/l;)Ln3/b/a/g$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Ls1/s;",
            ">;)",
            "Ln3/b/a/g$a;"
        }
    .end annotation

    const-string v0, "$this$buildRegionCDialog"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isRegionCListener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/r/c/n;

    invoke-direct {v0, p1}, Le/a/r/c/n;-><init>(Ls1/z/b/l;)V

    .line 2
    new-instance p1, Ln3/b/a/g$a;

    invoke-direct {p1, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 3
    sget p0, Lcom/truecaller/wizard/R$string;->RegionC_dialog_title:I

    invoke-virtual {p1, p0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 4
    sget p0, Lcom/truecaller/wizard/R$string;->RegionC_dialog_message:I

    invoke-virtual {p1, p0}, Ln3/b/a/g$a;->e(I)Ln3/b/a/g$a;

    .line 5
    sget p0, Lcom/truecaller/wizard/R$string;->RegionC_dialog_button_positive:I

    invoke-virtual {p1, p0, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 6
    sget p0, Lcom/truecaller/wizard/R$string;->RegionC_dialog_button_negative:I

    invoke-virtual {p1, p0, v0}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const-string p0, "AlertDialog.Builder(this\u2026utton_negative, listener)"

    invoke-static {p1, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic m0(Le/a/k/c/c2;Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZZLs1/z/b/l;Ls1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    and-int/lit8 v0, p9, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_0
    move v6, p5

    :goto_0
    and-int/lit8 v0, p9, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    move/from16 v7, p6

    :goto_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    .line 1
    invoke-interface/range {v1 .. v9}, Le/a/k/c/c2;->f(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/videoplayer/playing/PlayingBehaviour;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;ZZLs1/z/b/l;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final m1(Landroid/content/Context;Lcom/truecaller/wizard/framework/WizardCompletionType;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "wizardCompletionType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.wizard.ACTION_WIZARD_COMPLETED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcom/truecaller/wizard/framework/WizardCompletionType;->getType()I

    move-result p1

    const-string v1, "extraCompletionType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p0

    invoke-virtual {p0, v0}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static final n(J)D
    .locals 2

    long-to-double p0, p0

    const/high16 v0, 0x44800000    # 1024.0f

    float-to-double v0, v0

    div-double/2addr p0, v0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static final n0(Landroid/content/Context;)Landroid/view/WindowManager;
    .locals 3

    const-string v0, "$this$windowManager"

    const-string v1, "window"

    const-string v2, "null cannot be cast to non-null type android.view.WindowManager"

    invoke-static {p0, v0, v1, v2}, Le/d/c/a/a;->A1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1
    check-cast p0, Landroid/view/WindowManager;

    return-object p0
.end method

.method public static final n1(Landroid/widget/ImageView;IZ)V
    .locals 3

    const-string v0, "$this$setAspectRatioPreservedScaledImageResource"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.View"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 4
    new-instance v2, Le/a/p5/s0/n;

    invoke-direct {v2, p0, p1, p2, v0}, Le/a/p5/s0/n;-><init>(Landroid/widget/ImageView;IZLandroid/view/View;)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public static o(JLjava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 p2, 0x1

    long-to-float p0, p0

    const/high16 p1, 0x44800000    # 1024.0f

    div-float/2addr p0, p1

    div-float/2addr p0, p1

    const/4 p1, 0x0

    int-to-float p3, p2

    rem-float p3, p0, p3

    int-to-float v0, p1

    cmpl-float p3, p3, v0

    if-lez p3, :cond_0

    const-string p3, "%.2f"

    goto :goto_0

    :cond_0
    const-string p3, "%.0f"

    :goto_0
    new-array v0, p2, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v0, p1

    const-string p0, "java.lang.String.format(this, *args)"

    invoke-static {v0, p2, p3, p0}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final o0(Landroid/widget/TextView;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/String;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "$this$handleLink"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 2
    new-instance v0, Le/a/p5/s0/s;

    invoke-direct {v0, p1}, Le/a/p5/s0/s;-><init>(Ls1/z/b/l;)V

    invoke-static {p0, v0}, Le/a/p5/s0/g;->H1(Landroid/widget/TextView;Ls1/z/b/p;)V

    return-void
.end method

.method public static o1(Landroid/view/View;ILandroid/graphics/PorterDuff$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static final p(Le/a/d/x/r/i;JJ)Ljava/lang/Long;
    .locals 2

    .line 1
    iget-wide v0, p0, Le/a/d/x/r/i;->d:J

    sub-long/2addr p1, v0

    sub-long p0, p3, p1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, p2

    :goto_1
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    .line 5
    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    .line 6
    invoke-static {p0, p1, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    :cond_2
    return-object p2
.end method

.method public static final p0(Le/a/d/s/k;Le/a/d/a/o;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/s/k;",
            "Le/a/d/a/o;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/a/u;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/a/u;

    iget v1, v0, Le/a/d/a/u;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/a/u;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/a/u;

    invoke-direct {v0, p2}, Le/a/d/a/u;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/a/u;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/a/u;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/d/a/u;->g:Ljava/lang/Object;

    check-cast p0, Lq3/a/x2/a1;

    iget-object p1, v0, Le/a/d/a/u;->f:Ljava/lang/Object;

    check-cast p1, Le/a/d/s/k;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, p0

    move-object p0, p1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p1, Le/a/d/a/o;->g:Le/a/d/a/p;

    .line 5
    iget v2, p1, Le/a/d/a/o;->f:I

    .line 6
    invoke-virtual {p2, v2}, Le/a/d/a/p;->x(I)Lq3/a/x2/a1;

    move-result-object v2

    .line 7
    iget p1, p1, Le/a/d/a/o;->f:I

    .line 8
    iput-object p0, v0, Le/a/d/a/u;->f:Ljava/lang/Object;

    iput-object v2, v0, Le/a/d/a/u;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/d/a/u;->e:I

    invoke-virtual {p2, p1, v0}, Le/a/d/a/p;->v(ILs1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 9
    :cond_3
    :goto_1
    check-cast p2, Le/a/d/b0/a;

    const/4 p1, 0x2

    new-array p1, p1, [Le/a/d/c0/j;

    .line 10
    sget-object v0, Le/a/d/c0/j$c;->a:Le/a/d/c0/j$c;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    new-instance v0, Le/a/d/c0/j$b;

    .line 11
    invoke-direct {v0, p2, v1}, Le/a/d/c0/j$b;-><init>(Le/a/d/b0/a;Z)V

    aput-object v0, p1, v3

    .line 12
    invoke-static {p1}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "Searching"

    const-string v0, "Ready"

    .line 13
    filled-new-array {p2, v0}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 14
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 15
    iget-object v4, p0, Le/a/d/s/k;->a:Landroidx/cardview/widget/CardView;

    const-string v5, "root"

    .line 16
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/voip/R$layout;->voip_debug_spinner_item:I

    invoke-direct {v0, v4, v5, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 17
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 18
    iget-object p0, p0, Le/a/d/s/k;->d:Landroid/widget/Spinner;

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 20
    invoke-interface {v2}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p2

    .line 21
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    .line 22
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-ltz p2, :cond_4

    goto :goto_2

    :cond_4
    move v3, v1

    .line 23
    :goto_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 25
    :cond_6
    invoke-virtual {p0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 26
    new-instance p2, Le/a/d/a/t;

    invoke-direct {p2, v0, p1, v2}, Le/a/d/a/t;-><init>(Landroid/widget/ArrayAdapter;Ljava/util/List;Lq3/a/x2/a1;)V

    invoke-virtual {p0, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 27
    sget-object p0, Ls1/s;->a:Ls1/s;

    return-object p0
.end method

.method public static p1(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p0

    .line 2
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-void
.end method

.method public static final q(Le/a/d/x/r/i;JLjava/util/Set;J)Ljava/lang/Long;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/x/r/i;",
            "J",
            "Ljava/util/Set<",
            "Le/a/d/x/r/l;",
            ">;J)",
            "Ljava/lang/Long;"
        }
    .end annotation

    .line 1
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Le/a/d/x/r/l;

    .line 2
    iget-object v2, v2, Le/a/d/x/r/l;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v2}, Le/a/d/x/r/i;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    if-eqz p3, :cond_3

    .line 4
    invoke-static {p0, p1, p2, p4, p5}, Le/a/p5/s0/g;->p(Le/a/d/x/r/i;JJ)Ljava/lang/Long;

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method public static final q0(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    const-string v0, "$this$intValue"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static final q1(Landroid/widget/TextView;I)V
    .locals 4

    const-string v0, "$this$setDrawablesColor"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p0

    const-string v0, "compoundDrawablesRelative"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p0, v1

    .line 3
    instance-of v3, v2, Landroid/graphics/drawable/GradientDrawable;

    if-eqz v3, :cond_0

    .line 4
    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_1

    .line 5
    :cond_0
    instance-of v3, v2, Landroid/graphics/drawable/VectorDrawable;

    if-eqz v3, :cond_1

    .line 6
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final r(Ljava/io/Closeable;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/io/Closeable;",
            ">(TT;",
            "Ls1/w/d<",
            "-TT;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/p5/s0/i;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/p5/s0/i;

    iget v1, v0, Le/a/p5/s0/i;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/p5/s0/i;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/p5/s0/i;

    invoke-direct {v0, p1}, Le/a/p5/s0/i;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/p5/s0/i;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/p5/s0/i;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Le/a/p5/s0/i;->f:Ljava/lang/Object;

    check-cast p0, Ljava/io/Closeable;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iput-object p0, v0, Le/a/p5/s0/i;->f:Ljava/lang/Object;

    iput v3, v0, Le/a/p5/s0/i;->e:I

    .line 5
    new-instance p1, Lq3/a/o;

    invoke-static {v0}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {p1, v2, v3}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 6
    invoke-virtual {p1}, Lq3/a/o;->z()V

    .line 7
    invoke-static {p1, p0}, Le/a/p5/s0/g;->f1(Lq3/a/n;Ljava/lang/Object;)V

    .line 8
    new-instance v2, Le/a/p5/s0/h;

    invoke-direct {v2, p0}, Le/a/p5/s0/h;-><init>(Ljava/io/Closeable;)V

    invoke-virtual {p1, v2}, Lq3/a/o;->r(Ls1/z/b/l;)V

    .line 9
    invoke-virtual {p1}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    const-string v2, "frame"

    .line 10
    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_3
    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    return-object p0
.end method

.method public static final r0(Landroid/database/Cursor;Ljava/lang/String;)I
    .locals 1

    const-string v0, "$this$intValueOrThrow"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "columnName"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    return p0
.end method

.method public static r1(Landroid/widget/ImageView;I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public static final s(Landroid/content/Context;)V
    .locals 2

    const-string v0, "$this$closeSystemDialogsCompat"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static s0(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic s1(Le/a/r/z/y;ZZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2}, Le/a/r/z/y;->p9(ZZ)V

    return-void
.end method

.method public static final t(Le/a/r/z/h;Landroid/content/Context;)Z
    .locals 5

    const-string v0, "$this$composeVerificationErrorEmail"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mailto:"

    .line 2
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    .line 3
    iget-object v3, p0, Le/a/r/z/h;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "android.intent.extra.EMAIL"

    .line 4
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    iget-object v2, p0, Le/a/r/z/h;->b:Ljava/lang/String;

    const-string v3, "android.intent.extra.SUBJECT"

    .line 6
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    iget-object p0, p0, Le/a/r/z/h;->c:Ljava/lang/String;

    const-string v2, "android.intent.extra.TEXT"

    .line 8
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    return v1
.end method

.method public static final t0(Lcom/truecaller/profile/data/dto/MediaCallerIDs;)Z
    .locals 4

    const-string v0, "$this$isExpired"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/profile/data/dto/MediaCallerIDs;->getTtl()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final t1(Landroid/view/View;I)V
    .locals 1

    const-string v0, "$this$setStatAppearance"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/stats/R$id;->icon:I

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public static u(Ljava/lang/String;)F
    .locals 5

    const-string v0, " "

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 2
    aget-object v1, p0, v0

    const/4 v2, 0x1

    .line 3
    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, -0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v0, v4

    goto :goto_1

    :sswitch_0
    const-string v0, "weeks"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "hours"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "mins"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "days"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :sswitch_4
    const-string v2, "months"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    :goto_1
    const/high16 p0, 0x41c00000    # 24.0f

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    .line 4
    :pswitch_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x40e00000    # 7.0f

    :goto_2
    mul-float/2addr v0, p0

    return v0

    .line 5
    :pswitch_1
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    return p0

    .line 6
    :pswitch_2
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v0, 0x42700000    # 60.0f

    div-float/2addr p0, v0

    return p0

    .line 7
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_2

    .line 8
    :pswitch_4
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    mul-float/2addr v0, p0

    const/high16 p0, 0x41f00000    # 30.0f

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        -0x3fafd20d -> :sswitch_4
        0x2ef057 -> :sswitch_3
        0x332461 -> :sswitch_2
        0x5edc70f -> :sswitch_1
        0x6bc5eff -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic u0(Le/a/d/c0/m1;Ljava/lang/String;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p1, p2, 0x1

    const/4 p1, 0x0

    .line 1
    invoke-interface {p0, p1}, Le/a/d/c0/m1;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final varargs u1(Landroid/widget/TextView;I[Ljava/lang/Object;)Landroid/widget/TextView;
    .locals 2

    const-string v0, "$this$setTextWithFormatFromHtml"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    array-length v1, p2

    invoke-static {p2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p0
.end method

.method public static v(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "package"

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static v0(Le/a/d/c0/y1/b;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/c0/y1/b;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/d/c0/y1/a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/d/c0/y1/a;

    iget v1, v0, Le/a/d/c0/y1/a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/d/c0/y1/a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/d/c0/y1/a;

    invoke-direct {v0, p0, p2}, Le/a/d/c0/y1/a;-><init>(Le/a/d/c0/y1/b;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/d/c0/y1/a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/d/c0/y1/a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput v3, v0, Le/a/d/c0/y1/a;->e:I

    check-cast p0, Le/a/d/c0/y1/c;

    .line 2
    iget-object p2, p0, Le/a/d/c0/y1/c;->a:Ls1/w/f;

    new-instance v2, Le/a/d/c0/y1/c$a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Le/a/d/c0/y1/c$a;-><init>(Le/a/d/c0/y1/c;Ljava/util/List;Ls1/w/d;)V

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    .line 3
    :cond_3
    :goto_1
    check-cast p2, Ljava/util/Collection;

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v3

    .line 4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic v1(Le/a/k/c/c2;ZLjava/lang/String;ZLs1/w/d;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-interface {p0, p1, p2, p3, p4}, Le/a/k/c/c2;->k(ZLjava/lang/String;ZLs1/w/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final w(Le/a/d/a/o;Landroid/widget/LinearLayout;Ls1/w/d;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/d/a/o;",
            "Landroid/widget/LinearLayout;",
            "Ls1/w/d<",
            "-",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Le/a/d/a/q;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Le/a/d/a/q;

    iget v3, v2, Le/a/d/a/q;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Le/a/d/a/q;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Le/a/d/a/q;

    invoke-direct {v2, v1}, Le/a/d/a/q;-><init>(Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Le/a/d/a/q;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Le/a/d/a/q;->e:I

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v5, :cond_1

    iget-object v0, v2, Le/a/d/a/q;->i:Ljava/lang/Object;

    check-cast v0, Landroidx/cardview/widget/CardView;

    iget-object v0, v2, Le/a/d/a/q;->h:Ljava/lang/Object;

    check-cast v0, Le/a/d/s/k;

    iget-object v3, v2, Le/a/d/a/q;->g:Ljava/lang/Object;

    check-cast v3, Le/a/d/a/o;

    iget-object v2, v2, Le/a/d/a/q;->f:Ljava/lang/Object;

    check-cast v2, Le/a/d/s/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v0, v2, Le/a/d/a/q;->k:Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    iget-object v4, v2, Le/a/d/a/q;->j:Ljava/lang/Object;

    check-cast v4, Ljava/lang/StringBuilder;

    iget-object v7, v2, Le/a/d/a/q;->i:Ljava/lang/Object;

    check-cast v7, Landroidx/cardview/widget/CardView;

    iget-object v8, v2, Le/a/d/a/q;->h:Ljava/lang/Object;

    check-cast v8, Le/a/d/s/k;

    iget-object v9, v2, Le/a/d/a/q;->g:Ljava/lang/Object;

    check-cast v9, Le/a/d/a/o;

    iget-object v10, v2, Le/a/d/a/q;->f:Ljava/lang/Object;

    check-cast v10, Le/a/d/s/k;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v17, v9

    move-object v9, v0

    move-object/from16 v0, v17

    move-object/from16 v18, v7

    move-object v7, v4

    move-object v4, v8

    move-object/from16 v8, v18

    goto/16 :goto_1

    :cond_3
    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 5
    sget v4, Lcom/truecaller/voip/R$layout;->voip_debug_view_call:I

    move-object/from16 v8, p1

    invoke-virtual {v1, v4, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 6
    sget v4, Lcom/truecaller/voip/R$id;->name:I

    .line 7
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v11, v8

    check-cast v11, Landroid/widget/TextView;

    if-eqz v11, :cond_a

    .line 8
    sget v4, Lcom/truecaller/voip/R$id;->spinner_state:I

    .line 9
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v12, v8

    check-cast v12, Landroid/widget/Spinner;

    if-eqz v12, :cond_a

    .line 10
    sget v4, Lcom/truecaller/voip/R$id;->spinner_user_state:I

    .line 11
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v13, v8

    check-cast v13, Landroid/widget/Spinner;

    if-eqz v13, :cond_a

    .line 12
    sget v4, Lcom/truecaller/voip/R$id;->switch_hold:I

    .line 13
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v14, v8

    check-cast v14, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v14, :cond_a

    .line 14
    sget v4, Lcom/truecaller/voip/R$id;->switch_invite_owner:I

    .line 15
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object v15, v8

    check-cast v15, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v15, :cond_a

    .line 16
    sget v4, Lcom/truecaller/voip/R$id;->switch_muted:I

    .line 17
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    move-object/from16 v16, v8

    check-cast v16, Lcom/google/android/material/switchmaterial/SwitchMaterial;

    if-eqz v16, :cond_a

    .line 18
    new-instance v4, Le/a/d/s/k;

    move-object v10, v1

    check-cast v10, Landroidx/cardview/widget/CardView;

    move-object v9, v4

    invoke-direct/range {v9 .. v16}, Le/a/d/s/k;-><init>(Landroidx/cardview/widget/CardView;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/Spinner;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;Lcom/google/android/material/switchmaterial/SwitchMaterial;)V

    const-string v1, "VoipDebugViewCallBinding\u2026flater, container, false)"

    .line 19
    invoke-static {v4, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v1, v0, Le/a/d/a/o;->g:Le/a/d/a/p;

    .line 21
    iget-object v8, v4, Le/a/d/s/k;->a:Landroidx/cardview/widget/CardView;

    .line 22
    iget-object v9, v4, Le/a/d/s/k;->b:Landroid/widget/TextView;

    const-string v10, "name"

    const-string v11, "Call: "

    invoke-static {v9, v10, v11}, Le/d/c/a/a;->B(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 23
    iget v11, v0, Le/a/d/a/o;->f:I

    .line 24
    iput-object v4, v2, Le/a/d/a/q;->f:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/a/q;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/a/q;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/d/a/q;->i:Ljava/lang/Object;

    iput-object v10, v2, Le/a/d/a/q;->j:Ljava/lang/Object;

    iput-object v9, v2, Le/a/d/a/q;->k:Ljava/lang/Object;

    iput v7, v2, Le/a/d/a/q;->e:I

    invoke-virtual {v1, v11, v2}, Le/a/d/a/p;->v(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_4

    return-object v3

    :cond_4
    move-object v7, v10

    move-object v10, v4

    :goto_1
    check-cast v1, Le/a/d/b0/a;

    .line 25
    iget-object v1, v1, Le/a/d/b0/a;->c:Ljava/lang/String;

    .line 26
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-static {}, Le/a/d/a/d;->values()[Le/a/d/a/d;

    move-result-object v1

    .line 28
    new-instance v7, Ljava/util/ArrayList;

    const/16 v9, 0x9

    invoke-direct {v7, v9}, Ljava/util/ArrayList;-><init>(I)V

    move v11, v6

    :goto_2
    if-ge v11, v9, :cond_5

    .line 29
    aget-object v12, v1, v11

    .line 30
    invoke-virtual {v12}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 31
    :cond_5
    new-instance v1, Landroid/widget/ArrayAdapter;

    .line 32
    iget-object v11, v4, Le/a/d/s/k;->a:Landroidx/cardview/widget/CardView;

    const-string v12, "root"

    .line 33
    invoke-static {v11, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    sget v12, Lcom/truecaller/voip/R$layout;->voip_debug_spinner_item:I

    invoke-direct {v1, v11, v12, v7}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 34
    invoke-virtual {v1, v12}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 35
    iget-object v7, v4, Le/a/d/s/k;->c:Landroid/widget/Spinner;

    .line 36
    invoke-virtual {v7, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 37
    sget-object v11, Le/a/d/a/d;->c:Le/a/d/a/d$a;

    .line 38
    iget-object v11, v0, Le/a/d/a/o;->b:Lq3/a/x2/a1;

    .line 39
    invoke-interface {v11}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/d/v/l/c;

    const-string v12, "state"

    .line 40
    invoke-static {v11, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-static {}, Le/a/d/a/d;->values()[Le/a/d/a/d;

    move-result-object v12

    move v13, v6

    :goto_3
    const/4 v14, 0x0

    if-ge v13, v9, :cond_7

    aget-object v9, v12, v13

    .line 42
    iget-object v15, v9, Le/a/d/a/d;->a:Le/a/d/v/l/c;

    .line 43
    invoke-static {v15, v11}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v13, v13, 0x1

    const/16 v9, 0x9

    goto :goto_3

    :cond_7
    move-object v9, v14

    :goto_4
    if-eqz v9, :cond_8

    .line 44
    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    goto :goto_5

    :cond_8
    move v9, v6

    .line 45
    :goto_5
    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setSelection(I)V

    .line 46
    new-instance v9, Le/a/d/a/s;

    invoke-direct {v9, v1, v0}, Le/a/d/a/s;-><init>(Landroid/widget/ArrayAdapter;Le/a/d/a/o;)V

    invoke-virtual {v7, v9}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 47
    iput-object v10, v2, Le/a/d/a/q;->f:Ljava/lang/Object;

    iput-object v0, v2, Le/a/d/a/q;->g:Ljava/lang/Object;

    iput-object v4, v2, Le/a/d/a/q;->h:Ljava/lang/Object;

    iput-object v8, v2, Le/a/d/a/q;->i:Ljava/lang/Object;

    iput-object v14, v2, Le/a/d/a/q;->j:Ljava/lang/Object;

    iput-object v14, v2, Le/a/d/a/q;->k:Ljava/lang/Object;

    iput v5, v2, Le/a/d/a/q;->e:I

    invoke-static {v4, v0, v2}, Le/a/p5/s0/g;->p0(Le/a/d/s/k;Le/a/d/a/o;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v3, :cond_9

    return-object v3

    :cond_9
    move-object v3, v0

    move-object v0, v4

    move-object v2, v10

    .line 48
    :goto_6
    iget-object v1, v0, Le/a/d/s/k;->g:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 49
    iget-object v4, v3, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    .line 50
    invoke-interface {v4}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/a;

    .line 51
    iget-boolean v4, v4, Le/a/d/v/a;->a:Z

    .line 52
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 53
    new-instance v4, Lk0;

    invoke-direct {v4, v6, v3}, Lk0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 54
    iget-object v1, v0, Le/a/d/s/k;->e:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 55
    iget-object v4, v3, Le/a/d/a/o;->c:Lq3/a/x2/a1;

    .line 56
    invoke-interface {v4}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/d/v/a;

    .line 57
    iget-boolean v4, v4, Le/a/d/v/a;->b:Z

    .line 58
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 59
    new-instance v4, Lk0;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v3}, Lk0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 60
    iget-object v0, v0, Le/a/d/s/k;->f:Lcom/google/android/material/switchmaterial/SwitchMaterial;

    .line 61
    iget-boolean v1, v3, Le/a/d/a/o;->a:Z

    .line 62
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    .line 63
    new-instance v1, Le/a/d/a/r;

    invoke-direct {v1, v3}, Le/a/d/a/r;-><init>(Le/a/d/a/o;)V

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 64
    iget-object v0, v2, Le/a/d/s/k;->a:Landroidx/cardview/widget/CardView;

    const-string v1, "peerViewBinding.root"

    .line 65
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 66
    :cond_a
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 67
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static w0(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget v1, Ln3/k/a/b;->c:I

    .line 3
    invoke-virtual {p0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static w1(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 1
    sget v0, Le/a/r/g;->g:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    sget v2, Le/a/n5/b;->b:I

    const-string v2, "context"

    .line 3
    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Le/a/n5/b;

    invoke-static {v2, v3}, Le/q/f/a/d/a;->x0(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "EntryPointAccessors.from\u2026GCEntryPoint::class.java)"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Le/a/n5/b;

    .line 5
    invoke-interface {v2}, Le/a/n5/b;->R()Le/a/n5/c;

    move-result-object v2

    .line 6
    invoke-interface {v2}, Le/a/n5/c;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-interface {v2}, Le/a/n5/c;->c()Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    if-nez v2, :cond_2

    return v1

    :cond_2
    const-string v2, "android.permission.READ_CONTACTS"

    .line 8
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    new-instance p1, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/wizard/AccessContactsActivity;

    invoke-direct {p1, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 10
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v0

    :cond_3
    return v1
.end method

.method public static final x(Landroid/widget/EditText;)V
    .locals 1

    const-string v0, "$this$disableCopyPaste"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 2
    new-instance v0, Le/a/p5/s0/m;

    invoke-direct {v0}, Le/a/p5/s0/m;-><init>()V

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public static x0(C)Z
    .locals 1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static final x1(Landroid/content/Context;Le/a/p5/a0;)V
    .locals 4

    const-string v0, "$this$showCallPermissionDeniedToast"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissionUtil"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "android.permission.RECORD_AUDIO"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x1

    const/16 v3, 0x1f

    if-lt v1, v3, :cond_0

    const-string v1, "android.permission.BLUETOOTH_SCAN"

    const-string v3, "android.permission.BLUETOOTH_CONNECT"

    .line 3
    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {p1, v1}, Le/a/p5/a0;->h([Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    .line 5
    sget p1, Lcom/truecaller/voip/R$string;->voip_permissions_denied_explanation_mic_and_bluetooth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 6
    sget p1, Lcom/truecaller/voip/R$string;->voip_permissions_denied_explanation:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    .line 7
    sget p1, Lcom/truecaller/voip/R$string;->voip_permissions_denied_explanation_bluetooth:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 8
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    const/4 v0, 0x2

    .line 9
    invoke-static {p0, p1, v1, v2, v0}, Le/a/p5/s0/g;->S1(Landroid/content/Context;ILjava/lang/CharSequence;II)Landroid/widget/Toast;

    :cond_4
    return-void
.end method

.method public static final y(Landroid/content/res/Resources;F)F
    .locals 1

    const-string v0, "$this$dpToPx"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static final y0(Lcom/truecaller/data/entity/Address;)Ljava/lang/String;
    .locals 2

    const-string v0, "$this$location"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCityOrArea()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCityOrArea()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "countryName"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/truecaller/data/entity/Address;->getCountryName()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static y1(Landroid/app/Activity;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 2
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 3
    invoke-static {p0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static final z(Landroid/content/Context;F)I
    .locals 1

    const-string v0, "$this$dpToPx"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "resources"

    invoke-static {p0, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {v0, p1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static z0(Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERROR] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static z1(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p0, p1}, Le/a/p5/s0/g;->a0(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 2
    sget v1, Lcom/truecaller/wizard/R$attr;->colorAccent:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-virtual {p0, v0}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 3
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 4
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 6
    :cond_0
    new-instance v0, Ln3/b/a/g$a;

    invoke-direct {v0, p0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iput-object p1, v1, Landroidx/appcompat/app/AlertController$b;->c:Landroid/graphics/drawable/Drawable;

    .line 8
    sget p1, Lcom/truecaller/wizard/R$string;->PermissionDenied:I

    .line 9
    invoke-virtual {v0, p1}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 10
    iget-object p1, v0, Ln3/b/a/g$a;->a:Landroidx/appcompat/app/AlertController$b;

    iget-object v1, p1, Landroidx/appcompat/app/AlertController$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p1, Landroidx/appcompat/app/AlertController$b;->f:Ljava/lang/CharSequence;

    .line 11
    sget p1, Lcom/truecaller/wizard/R$string;->Draw_GoToSettings:I

    new-instance p2, Le/a/r/c/b;

    invoke-direct {p2, p0}, Le/a/r/c/b;-><init>(Landroid/content/Context;)V

    .line 12
    invoke-virtual {v0, p1, p2}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 13
    invoke-virtual {v0}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return-void
.end method
