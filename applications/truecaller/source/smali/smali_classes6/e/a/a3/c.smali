.class public final Le/a/a3/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/blocking/ActionSource;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/blocking/ActionSource;

    .line 1
    sget-object v1, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    sget-object v1, Lcom/truecaller/blocking/ActionSource;->CUSTOM_WHITELIST:Lcom/truecaller/blocking/ActionSource;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3
    sget-object v1, Lcom/truecaller/blocking/ActionSource;->SPAMMER_FROM_SEARCH:Lcom/truecaller/blocking/ActionSource;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 4
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Le/a/a3/c;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Ljava/lang/String;)Lcom/truecaller/blocking/ActionSource;
    .locals 4

    .line 1
    invoke-static {}, Lcom/truecaller/blocking/ActionSource;->values()[Lcom/truecaller/blocking/ActionSource;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0xc

    if-ge v1, v2, :cond_1

    .line 2
    aget-object v2, v0, v1

    .line 3
    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/truecaller/blocking/ActionSource;->NONE:Lcom/truecaller/blocking/ActionSource;

    :goto_2
    return-object v2
.end method

.method public static final b(Lcom/truecaller/blocking/ActionSource;)I
    .locals 1

    const-string v0, "$this$title"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ls1/i;

    invoke-direct {p0}, Ls1/i;-><init>()V

    throw p0

    :pswitch_0
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_blacklisted_wildcard:I

    goto :goto_0

    .line 3
    :pswitch_1
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_blacklisted_country:I

    goto :goto_0

    .line 4
    :pswitch_2
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_blacklisted_number:I

    goto :goto_0

    .line 5
    :pswitch_3
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_top_spammer:I

    goto :goto_0

    .line 6
    :pswitch_4
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_indian_registered_telemarketer:I

    goto :goto_0

    .line 7
    :pswitch_5
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_neighbour_spoofing:I

    goto :goto_0

    .line 8
    :pswitch_6
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_foreign:I

    goto :goto_0

    .line 9
    :pswitch_7
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_non_phonebook:I

    goto :goto_0

    .line 10
    :pswitch_8
    sget p0, Lcom/truecaller/blocking/R$string;->blocking_action_src_unknown:I

    :goto_0
    return p0

    .line 11
    :pswitch_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "There is no string for SPAMMER_FROM_SEARCH. You must check this above in the callstack"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12
    :pswitch_a
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "There is no string for CUSTOM_WHITELIST. You must check this above in the callstack"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :pswitch_b
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "There is no string for NONE. You must check this above in the callstack"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method
