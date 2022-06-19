.class public final Le/h/a/b/k/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0008\u0000\u0018\u0000 \u00032\u00020\u0001:\u0001\u0003B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/clevertap/android/pushtemplates/validators/ValidatorFactory;",
        "",
        "()V",
        "Companion",
        "clevertap-pushtemplates_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Le/h/a/b/h/a<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static final a(Le/h/a/b/e;Le/h/a/b/d;)Le/h/a/b/k/k;
    .locals 7

    const-string v0, "templateType"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "templateRenderer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v1, Le/h/a/b/h/g;

    .line 4
    iget-object v2, p1, Le/h/a/b/d;->c:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "Title is missing or empty"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_TITLE"

    .line 6
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Le/h/a/b/h/g;

    .line 8
    iget-object v2, p1, Le/h/a/b/d;->d:Ljava/lang/String;

    const-string v4, "Message is missing or empty"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_MSG"

    .line 10
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance v1, Le/h/a/b/h/g;

    .line 12
    iget-object v2, p1, Le/h/a/b/d;->r:Ljava/lang/String;

    const-string v4, "Background colour is missing or empty"

    .line 13
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_BG"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Le/h/a/b/h/e;

    .line 15
    iget-object v2, p1, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    const/4 v4, 0x1

    const-string v5, "Deeplink is missing or empty"

    .line 16
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/e;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_DEEPLINK_LIST"

    .line 17
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Le/h/a/b/h/e;

    .line 19
    iget-object v2, p1, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    const/4 v4, 0x3

    const-string v5, "Three required images not present"

    .line 20
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/e;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_IMAGE_LIST"

    .line 21
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    new-instance v1, Le/h/a/b/h/g;

    .line 23
    iget-object v2, p1, Le/h/a/b/d;->s:Ljava/lang/String;

    const-string v6, "Default deeplink is missing or empty"

    .line 24
    invoke-direct {v1, v2, v3, v6}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_RATING_DEFAULT_DL"

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v1, Le/h/a/b/h/e;

    .line 27
    iget-object v2, p1, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    const-string v6, "Three required deeplinks not present"

    .line 28
    invoke-direct {v1, v2, v4, v6}, Le/h/a/b/h/e;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_FIVE_DEEPLINK_LIST"

    .line 29
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Le/h/a/b/h/e;

    .line 31
    iget-object v2, p1, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    .line 32
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/e;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_FIVE_IMAGE_LIST"

    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Le/h/a/b/h/d;

    .line 35
    iget-object v2, p1, Le/h/a/b/d;->k:Ljava/util/ArrayList;

    const-string v5, "Only three images are required"

    .line 36
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/d;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_PRODUCT_THREE_IMAGE_LIST"

    .line 37
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Le/h/a/b/h/d;

    .line 39
    iget-object v2, p1, Le/h/a/b/d;->l:Ljava/util/ArrayList;

    .line 40
    invoke-direct {v1, v2, v4, v6}, Le/h/a/b/h/d;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_THREE_DEEPLINK_LIST"

    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Le/h/a/b/h/d;

    .line 43
    iget-object v2, p1, Le/h/a/b/d;->m:Ljava/util/ArrayList;

    const-string v5, "Three required product titles not present"

    .line 44
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/d;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_BIG_TEXT_LIST"

    .line 45
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Le/h/a/b/h/d;

    .line 47
    iget-object v2, p1, Le/h/a/b/d;->n:Ljava/util/ArrayList;

    const-string v5, "Three required product descriptions not present"

    .line 48
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/d;-><init>(Ljava/util/List;ILjava/lang/String;)V

    const-string v2, "PT_SMALL_TEXT_LIST"

    .line 49
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v1, Le/h/a/b/h/g;

    .line 51
    iget-object v2, p1, Le/h/a/b/d;->p:Ljava/lang/String;

    const-string v4, "Button label is missing or empty"

    .line 52
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_PRODUCT_DISPLAY_ACTION"

    .line 53
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    new-instance v1, Le/h/a/b/h/g;

    .line 55
    iget-object v2, p1, Le/h/a/b/d;->q:Ljava/lang/String;

    const-string v4, "Button colour is missing or empty"

    .line 56
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_PRODUCT_DISPLAY_ACTION_CLR"

    .line 57
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance v1, Le/h/a/b/h/g;

    .line 59
    iget-object v2, p1, Le/h/a/b/d;->g:Ljava/lang/String;

    const-string v4, "Display Image is missing or empty"

    .line 60
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_BIG_IMG"

    .line 61
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    new-instance v1, Le/h/a/b/h/b;

    .line 63
    iget v2, p1, Le/h/a/b/d;->w:I

    const/4 v4, -0x1

    const-string v5, "Timer Threshold or End time not defined"

    .line 64
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/b;-><init>(IILjava/lang/String;)V

    const-string v2, "PT_TIMER_THRESHOLD"

    .line 65
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v1, Le/h/a/b/h/b;

    .line 67
    iget v2, p1, Le/h/a/b/d;->B:I

    .line 68
    invoke-direct {v1, v2, v4, v5}, Le/h/a/b/h/b;-><init>(IILjava/lang/String;)V

    const-string v2, "PT_TIMER_END"

    .line 69
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v1, Le/h/a/b/h/g;

    .line 71
    iget-object v2, p1, Le/h/a/b/d;->y:Ljava/lang/String;

    const-string v4, "Feedback Text or Actions is missing or empty"

    .line 72
    invoke-direct {v1, v2, v3, v4}, Le/h/a/b/h/g;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "PT_INPUT_FEEDBACK"

    .line 73
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    new-instance v1, Le/h/a/b/h/c;

    .line 75
    iget-object p1, p1, Le/h/a/b/d;->N:Lorg/json/JSONArray;

    .line 76
    invoke-direct {v1, p1, v3, v4}, Le/h/a/b/h/c;-><init>(Lorg/json/JSONArray;ILjava/lang/String;)V

    const-string p1, "PT_ACTIONS"

    .line 77
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sput-object v0, Le/h/a/b/k/l;->a:Ljava/util/Map;

    .line 79
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 p1, 0x0

    const-string v0, "keys"

    packed-switch p0, :pswitch_data_0

    goto/16 :goto_1

    .line 80
    :pswitch_0
    new-instance p0, Le/h/a/b/k/f;

    new-instance v1, Le/h/a/b/k/d;

    .line 81
    sget-object v2, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 82
    invoke-direct {v1, v2}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Le/h/a/b/k/f;-><init>(Le/h/a/b/k/k;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 83
    :pswitch_1
    new-instance p0, Le/h/a/b/k/j;

    new-instance v1, Le/h/a/b/k/b;

    new-instance v2, Le/h/a/b/k/d;

    .line 84
    sget-object v3, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v3, :cond_1

    .line 85
    invoke-direct {v2, v3}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Le/h/a/b/k/b;-><init>(Le/h/a/b/k/k;)V

    invoke-direct {p0, v1}, Le/h/a/b/k/j;-><init>(Le/h/a/b/k/k;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 86
    :pswitch_2
    new-instance p0, Le/h/a/b/k/m;

    new-instance v1, Le/h/a/b/k/d;

    .line 87
    sget-object v2, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 88
    invoke-direct {v1, v2}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Le/h/a/b/k/m;-><init>(Le/h/a/b/k/k;)V

    goto :goto_0

    :cond_2
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 89
    :pswitch_3
    new-instance p0, Le/h/a/b/k/g;

    .line 90
    new-instance v1, Le/h/a/b/k/b;

    .line 91
    new-instance v2, Le/h/a/b/k/d;

    .line 92
    sget-object v3, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 93
    invoke-direct {v2, v3}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    .line 94
    invoke-direct {v1, v2}, Le/h/a/b/k/b;-><init>(Le/h/a/b/k/k;)V

    .line 95
    invoke-direct {p0, v1}, Le/h/a/b/k/g;-><init>(Le/h/a/b/k/k;)V

    goto :goto_0

    .line 96
    :cond_3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 97
    :pswitch_4
    new-instance p0, Le/h/a/b/k/e;

    new-instance v1, Le/h/a/b/k/a;

    .line 98
    sget-object v2, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v2, :cond_4

    .line 99
    invoke-direct {v1, v2}, Le/h/a/b/k/a;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Le/h/a/b/k/e;-><init>(Le/h/a/b/k/k;)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 100
    :pswitch_5
    new-instance p0, Le/h/a/b/k/h;

    new-instance v1, Le/h/a/b/k/b;

    new-instance v2, Le/h/a/b/k/d;

    .line 101
    sget-object v3, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 102
    invoke-direct {v2, v3}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    invoke-direct {v1, v2}, Le/h/a/b/k/b;-><init>(Le/h/a/b/k/k;)V

    invoke-direct {p0, v1}, Le/h/a/b/k/h;-><init>(Le/h/a/b/k/k;)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 103
    :pswitch_6
    new-instance p0, Le/h/a/b/k/c;

    .line 104
    new-instance v1, Le/h/a/b/k/b;

    .line 105
    new-instance v2, Le/h/a/b/k/d;

    .line 106
    sget-object v3, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v3, :cond_6

    .line 107
    invoke-direct {v2, v3}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    .line 108
    invoke-direct {v1, v2}, Le/h/a/b/k/b;-><init>(Le/h/a/b/k/k;)V

    .line 109
    invoke-direct {p0, v1}, Le/h/a/b/k/c;-><init>(Le/h/a/b/k/k;)V

    goto :goto_0

    .line 110
    :cond_6
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    .line 111
    :pswitch_7
    new-instance p0, Le/h/a/b/k/b;

    new-instance v1, Le/h/a/b/k/d;

    .line 112
    sget-object v2, Le/h/a/b/k/l;->a:Ljava/util/Map;

    if-eqz v2, :cond_7

    .line 113
    invoke-direct {v1, v2}, Le/h/a/b/k/d;-><init>(Ljava/util/Map;)V

    invoke-direct {p0, v1}, Le/h/a/b/k/b;-><init>(Le/h/a/b/k/k;)V

    :goto_0
    move-object p1, p0

    goto :goto_1

    :cond_7
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p1

    :goto_1
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
