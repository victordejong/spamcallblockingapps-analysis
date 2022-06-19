.class public final Le/a/g/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/g/f/a;


# instance fields
.field public a:Lcom/truecaller/acs/analytics/AnalyticsContext;

.field public final b:Ls1/w/f;

.field public final c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/a/q2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/r2/f;Le/a/q2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/f;",
            "Le/a/r2/f<",
            "Le/a/q2/a0;",
            ">;",
            "Le/a/q2/a;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventsTracker"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g/f/d;->b:Ls1/w/f;

    iput-object p2, p0, Le/a/g/f/d;->c:Le/a/r2/f;

    iput-object p3, p0, Le/a/g/f/d;->d:Le/a/q2/a;

    return-void
.end method

.method public static final a(Le/a/g/f/d;Ljava/lang/String;Lcom/truecaller/acs/analytics/ClickEvent;)Ljava/util/Set;
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent;->d:Lcom/truecaller/analytics/common/event/ViewActionEvent$a;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const-string v0, "businessSuggestion"

    const-string v1, "details"

    const-string v2, "subAction"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const-string v5, "context"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "action"

    packed-switch p2, :pswitch_data_0

    .line 3
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;->NO:Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;

    .line 5
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {v0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, v0, p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    .line 10
    :pswitch_1
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;->YES:Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;

    .line 11
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {v0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, v0, p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    .line 16
    :pswitch_2
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object p2, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->WARNED_FRIENDS:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, p2}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    .line 17
    invoke-static {p0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    .line 18
    :pswitch_3
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object p2, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->NEGATIVE_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, p2}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    .line 19
    invoke-static {p0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    .line 20
    :pswitch_4
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object p2, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->POSITIVE_BUTTON:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, p2}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    .line 21
    invoke-static {p0}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_5
    new-array p2, v4, [Le/a/q2/v;

    .line 22
    invoke-virtual {p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->n(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    aput-object p0, p2, v3

    .line 23
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SUGGESTED_NAME:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    aput-object p0, p2, v6

    .line 24
    invoke-static {p2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_6
    new-array p2, v4, [Le/a/q2/v;

    .line 25
    invoke-virtual {p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->n(Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    aput-object p0, p2, v3

    .line 26
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SUGGESTED_NAME:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    aput-object p0, p2, v6

    .line 27
    invoke-static {p2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_7
    new-array p0, v4, [Le/a/q2/v;

    const-string p2, "unblockQuery"

    .line 28
    invoke-static {p2, v8, p2, v7, p1}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p2

    aput-object p2, p0, v3

    .line 29
    new-instance p2, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->UNBLOCKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p2, p1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    aput-object p2, p0, v6

    .line 30
    invoke-static {p0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_8
    new-array p0, v4, [Le/a/q2/v;

    const-string p2, "blockQuery"

    .line 31
    invoke-static {p2, v8, p2, v7, p1}, Le/d/c/a/a;->p1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p2

    aput-object p2, p0, v3

    .line 32
    new-instance p2, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->BLOCKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p2, p1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    aput-object p2, p0, v6

    .line 33
    invoke-static {p0}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_9
    new-array p2, v4, [Le/a/q2/v;

    .line 34
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->EDIT:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    aput-object p0, p2, v3

    .line 35
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->EDITED_CONTACT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    aput-object p0, p2, v6

    .line 36
    invoke-static {p2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto/16 :goto_0

    :pswitch_a
    new-array p2, v4, [Le/a/q2/v;

    .line 37
    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;->SAVE:Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;

    invoke-virtual {p0, p1, v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$a;->e(Ljava/lang/String;Lcom/truecaller/analytics/common/event/ViewActionEvent$ContactAction;)Lcom/truecaller/analytics/common/event/ViewActionEvent;

    move-result-object p0

    aput-object p0, p2, v3

    .line 38
    new-instance p0, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->SAVED_CONTACT:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p0, p1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    aput-object p0, p2, v6

    .line 39
    invoke-static {p2}, Ls1/u/i;->z0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 40
    :pswitch_b
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "message"

    .line 41
    invoke-static {p0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, p0, v7, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 44
    :pswitch_c
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "call"

    .line 45
    invoke-static {p0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, p0, v7, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 48
    :pswitch_d
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$TagSubAction;->BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$TagSubAction;

    .line 49
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$TagSubAction;->getValue()Ljava/lang/String;

    move-result-object v7

    :cond_0
    const-string p0, "tag"

    .line 51
    invoke-static {p0, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, p0, v7, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 54
    :pswitch_e
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->HEADER:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    .line 55
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 57
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, v1, p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    goto :goto_0

    .line 60
    :pswitch_f
    sget-object p0, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->BUTTON:Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;

    .line 61
    invoke-static {p1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$DetailsSubAction;->getValue()Ljava/lang/String;

    move-result-object p0

    .line 63
    invoke-static {v1, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    new-instance p2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {p2, v1, p0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {p2}, Ls1/u/i;->y0(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Le/a/g/f/d;Le/a/g/f/f;)V
    .locals 9

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Le/a/g/f/f$d;->a:Le/a/g/f/f$d;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "widget"

    if-eqz v0, :cond_0

    .line 3
    new-instance p1, Lcom/truecaller/analytics/common/event/UserInteractionEvent;

    sget-object v0, Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;->LIST_ITEM_CLICKED:Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;

    invoke-direct {p1, v1, v0}, Lcom/truecaller/analytics/common/event/UserInteractionEvent;-><init>(Ljava/lang/String;Lcom/truecaller/analytics/common/event/UserInteractionEvent$Action;)V

    iget-object p0, p0, Le/a/g/f/d;->d:Le/a/q2/a;

    invoke-static {p1, p0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto/16 :goto_4

    .line 4
    :cond_0
    sget-object v0, Le/a/g/f/f$a;->a:Le/a/g/f/f$a;

    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "analyticsContext"

    const/4 v6, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget-object p1, p0, Le/a/g/f/d;->a:Lcom/truecaller/acs/analytics/AnalyticsContext;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;->SHOWN:Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;

    const-string v1, "context"

    .line 6
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "subAction"

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/analytics/common/event/ViewActionEvent$BusinessSuggestionSubAction;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "businessSuggestion"

    const-string v2, "action"

    .line 8
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/truecaller/analytics/common/event/ViewActionEvent;

    invoke-direct {v2, v1, v0, p1}, Lcom/truecaller/analytics/common/event/ViewActionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Le/a/g/f/d;->d:Le/a/q2/a;

    invoke-static {v2, p0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto/16 :goto_4

    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 11
    :cond_2
    instance-of v0, p1, Le/a/g/f/f$b;

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v7, 0x1

    if-eqz v0, :cond_a

    .line 12
    check-cast p1, Le/a/g/f/f$b;

    .line 13
    iget-object p1, p1, Le/a/g/f/f$b;->a:Lcom/truecaller/acs/analytics/DismissReason;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v7, :cond_7

    if-eq p1, v5, :cond_6

    if-eq p1, v4, :cond_5

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    if-ne p1, v3, :cond_3

    const-string p1, "ForcedUpdate"

    goto :goto_0

    .line 15
    :cond_3
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :cond_4
    const-string p1, "Minimized"

    goto :goto_0

    :cond_5
    const-string p1, "SwipeToDismiss"

    goto :goto_0

    :cond_6
    const-string p1, "CloseButton"

    goto :goto_0

    :cond_7
    const-string p1, "NativeBackButton"

    goto :goto_0

    :cond_8
    const-string p1, "EmptySpace"

    .line 16
    :goto_0
    iget-object v0, p0, Le/a/g/f/d;->a:Lcom/truecaller/acs/analytics/AnalyticsContext;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Context"

    const-string v2, "Dismiss_Type"

    .line 17
    invoke-static {v1, v0, v2, p1}, Le/d/c/a/a;->V(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v5

    .line 18
    iget-object v8, p0, Le/a/g/f/d;->d:Le/a/q2/a;

    const-string v3, "AFTERCALL_Dismissed"

    const-string v7, "it.build()"

    move-object v4, v6

    .line 19
    invoke-static/range {v3 .. v8}, Le/d/c/a/a;->G0(Ljava/lang/String;Ljava/lang/Double;Ljava/util/HashMap;Le/a/q2/g$a;Ljava/lang/String;Le/a/q2/a;)V

    goto/16 :goto_4

    .line 20
    :cond_9
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    .line 21
    :cond_a
    instance-of v0, p1, Le/a/g/f/f$c;

    if-eqz v0, :cond_14

    .line 22
    check-cast p1, Le/a/g/f/f$c;

    .line 23
    iget-object v0, p1, Le/a/g/f/f$c;->a:Le/a/g/f/e;

    .line 24
    sget-object v8, Le/a/g/f/e$b;->a:Le/a/g/f/e$b;

    invoke-static {v0, v8}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    goto :goto_3

    .line 25
    :cond_b
    instance-of v0, v0, Le/a/g/f/e$a;

    if-eqz v0, :cond_12

    .line 26
    iget-object p1, p1, Le/a/g/f/f$c;->a:Le/a/g/f/e;

    const-string v0, "null cannot be cast to non-null type com.truecaller.acs.analytics.Source.Other"

    .line 27
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Le/a/g/f/e$a;

    .line 28
    iget p1, p1, Le/a/g/f/e$a;->a:I

    const/4 v0, 0x6

    if-eq p1, v7, :cond_e

    if-eq p1, v5, :cond_d

    if-eq p1, v4, :cond_c

    if-eq p1, v3, :cond_c

    if-eq p1, v0, :cond_c

    const/16 v1, 0xa

    if-eq p1, v1, :cond_c

    const/16 p1, 0x3e7

    goto :goto_1

    :cond_c
    move p1, v0

    goto :goto_1

    :cond_d
    move p1, v7

    goto :goto_1

    :cond_e
    move p1, v5

    :goto_1
    if-eq p1, v7, :cond_11

    if-eq p1, v5, :cond_10

    if-eq p1, v0, :cond_f

    goto :goto_2

    :cond_f
    const-string v1, "missedCallNotification"

    goto :goto_3

    :cond_10
    const-string v1, "incomingCall"

    goto :goto_3

    :cond_11
    const-string v1, "outgoingCall"

    goto :goto_3

    :cond_12
    :goto_2
    move-object v1, v6

    .line 29
    :goto_3
    iget-object p1, p0, Le/a/g/f/d;->a:Lcom/truecaller/acs/analytics/AnalyticsContext;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/truecaller/acs/analytics/AnalyticsContext;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "viewId"

    .line 30
    invoke-static {p1, v0, p1, v1, v6}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object p1

    .line 31
    iget-object p0, p0, Le/a/g/f/d;->d:Le/a/q2/a;

    invoke-static {p1, p0}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    goto :goto_4

    :cond_13
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v6

    :cond_14
    :goto_4
    return-void
.end method
