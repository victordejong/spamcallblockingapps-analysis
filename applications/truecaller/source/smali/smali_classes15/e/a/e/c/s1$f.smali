.class public Le/a/e/c/s1$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/e/c/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "f"
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Le/a/q2/a;

.field public c:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/details_view/analytics/SourceType;Le/a/q2/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/e/c/s1$f;->c:Z

    .line 3
    iput-object p2, p0, Le/a/e/c/s1$f;->b:Le/a/q2/a;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_1
    const-string p1, "governmentServices"

    .line 6
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    const-string p1, "imGroupInfo"

    .line 7
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    const-string p1, "inbox"

    .line 8
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    const-string p1, "conversation"

    .line 9
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_5
    const-string p1, "whoViewedMe"

    .line 10
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_6
    const-string p1, "truecallerContacts"

    .line 11
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_7
    const-string p1, "blockView"

    .line 12
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_8
    const-string p1, "notificationMissedCallReminder"

    .line 13
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_9
    const-string p1, "outsideTC"

    .line 14
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_a
    const-string p1, "blockViewList"

    .line 15
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_b
    const-string p1, "clipboard"

    .line 16
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_c
    const-string p1, "notification"

    .line 17
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_d
    const-string p1, "searchHistory"

    .line 18
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_e
    const-string p1, "contacts"

    .line 19
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_f
    const-string p1, "callLog"

    .line 20
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_10
    const-string p1, "afterCall"

    .line 21
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    goto :goto_0

    :pswitch_11
    const-string p1, "searchResults"

    .line 22
    iput-object p1, p0, Le/a/e/c/s1$f;->a:Ljava/lang/String;

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
