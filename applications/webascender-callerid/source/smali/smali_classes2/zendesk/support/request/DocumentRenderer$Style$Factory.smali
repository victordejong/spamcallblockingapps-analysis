.class public Lzendesk/support/request/DocumentRenderer$Style$Factory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/request/DocumentRenderer$Style;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lzendesk/support/request/DocumentRenderer$Style$Factory;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method getStyleForType(Lzendesk/support/request/DocumentRenderer$Node$Type;)Lzendesk/support/request/DocumentRenderer$Style;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/request/DocumentRenderer$1;->$SwitchMap$zendesk$support$request$DocumentRenderer$Node$Type:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Unknown;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Unknown;-><init>()V

    return-object p1

    .line 3
    :pswitch_0
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Li;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Li;-><init>()V

    return-object p1

    .line 4
    :pswitch_1
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Image;

    iget-object v0, p0, Lzendesk/support/request/DocumentRenderer$Style$Factory;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, Lzendesk/support/request/DocumentRenderer$Style$Image;-><init>(Landroid/content/res/Resources;)V

    return-object p1

    .line 5
    :pswitch_2
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Br;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Br;-><init>()V

    return-object p1

    .line 6
    :pswitch_3
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Link;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Link;-><init>()V

    return-object p1

    .line 7
    :pswitch_4
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$CodeSpan;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$CodeSpan;-><init>()V

    return-object p1

    .line 8
    :pswitch_5
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Italic;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Italic;-><init>()V

    return-object p1

    .line 9
    :pswitch_6
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Header;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Header;-><init>()V

    return-object p1

    .line 10
    :pswitch_7
    new-instance p1, Lzendesk/support/request/DocumentRenderer$Style$Bold;

    invoke-direct {p1}, Lzendesk/support/request/DocumentRenderer$Style$Bold;-><init>()V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method getStyledText(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method
