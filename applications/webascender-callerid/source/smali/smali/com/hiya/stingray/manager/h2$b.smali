.class synthetic Lcom/hiya/stingray/manager/h2$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic a:[I

.field static final synthetic b:[I

.field static final synthetic c:[I

.field static final synthetic d:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/hiya/stingray/t/z0;->values()[Lcom/hiya/stingray/t/z0;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/hiya/stingray/manager/h2$b;->d:[I

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Lcom/hiya/stingray/t/z0;->SPAM:Lcom/hiya/stingray/t/z0;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v1, v0, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x2

    :try_start_1
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->d:[I

    sget-object v3, Lcom/hiya/stingray/t/z0;->FRAUD:Lcom/hiya/stingray/t/z0;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    .line 2
    :catch_1
    invoke-static {}, Lcom/hiya/stingray/q/c/h/a;->values()[Lcom/hiya/stingray/q/c/h/a;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hiya/stingray/manager/h2$b;->c:[I

    :try_start_2
    sget-object v3, Lcom/hiya/stingray/q/c/h/a;->NEUTRAL:Lcom/hiya/stingray/q/c/h/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->c:[I

    sget-object v3, Lcom/hiya/stingray/q/c/h/a;->SPAM:Lcom/hiya/stingray/q/c/h/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v0, v2, v3
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    const/4 v2, 0x3

    :try_start_4
    sget-object v3, Lcom/hiya/stingray/manager/h2$b;->c:[I

    sget-object v4, Lcom/hiya/stingray/q/c/h/a;->FRAUD:Lcom/hiya/stingray/q/c/h/a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    .line 3
    :catch_4
    invoke-static {}, Lcom/hiya/stingray/service/a/a;->values()[Lcom/hiya/stingray/service/a/a;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [I

    sput-object v3, Lcom/hiya/stingray/manager/h2$b;->b:[I

    :try_start_5
    sget-object v4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_PASS:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v1, v3, v4
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    :try_start_6
    sget-object v3, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v4, Lcom/hiya/stingray/service/a/a;->AUTO_BLOCK_BLOCK:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v0, v3, v4
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :catch_6
    :try_start_7
    sget-object v3, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v4, Lcom/hiya/stingray/service/a/a;->BLOCKED_STARTS_WITH:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aput v2, v3, v4
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :catch_7
    :try_start_8
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v3, Lcom/hiya/stingray/service/a/a;->BLOCKED_BLACK_LIST:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x4

    aput v4, v2, v3
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    :try_start_9
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v3, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_SPAM:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x5

    aput v4, v2, v3
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :catch_9
    :try_start_a
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v3, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_FRAUD:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x6

    aput v4, v2, v3
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :catch_a
    :try_start_b
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v3, Lcom/hiya/stingray/service/a/a;->BLOCKED_AUTO_PRIVATE:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/4 v4, 0x7

    aput v4, v2, v3
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :catch_b
    :try_start_c
    sget-object v2, Lcom/hiya/stingray/manager/h2$b;->b:[I

    sget-object v3, Lcom/hiya/stingray/service/a/a;->BLOCKED_CALL_SCREENER:Lcom/hiya/stingray/service/a/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    const/16 v4, 0x8

    aput v4, v2, v3
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    .line 4
    :catch_c
    invoke-static {}, Lcom/hiya/stingray/q/c/h/b;->values()[Lcom/hiya/stingray/q/c/h/b;

    move-result-object v2

    array-length v2, v2

    new-array v2, v2, [I

    sput-object v2, Lcom/hiya/stingray/manager/h2$b;->a:[I

    :try_start_d
    sget-object v3, Lcom/hiya/stingray/q/c/h/b;->ADD_BLACKLIST:Lcom/hiya/stingray/q/c/h/b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aput v1, v2, v3
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :catch_d
    :try_start_e
    sget-object v1, Lcom/hiya/stingray/manager/h2$b;->a:[I

    sget-object v2, Lcom/hiya/stingray/q/c/h/b;->REMOVE_BLACKLIST:Lcom/hiya/stingray/q/c/h/b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aput v0, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :catch_e
    return-void
.end method
