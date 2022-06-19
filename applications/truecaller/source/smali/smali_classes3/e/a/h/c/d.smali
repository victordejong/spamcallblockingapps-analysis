.class public final Le/a/h/c/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/c/t;


# instance fields
.field public final a:Lcom/truecaller/settings/CallingSettings;


# direct methods
.method public constructor <init>(Lcom/truecaller/settings/CallingSettings;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/c/d;->a:Lcom/truecaller/settings/CallingSettings;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/c/d;->a:Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {p0, p1}, Le/a/h/c/d;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lcom/truecaller/settings/CallingSettings;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    .line 1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :pswitch_0
    const-string p1, "speed_dial_9"

    goto :goto_0

    :pswitch_1
    const-string p1, "speed_dial_8"

    goto :goto_0

    :pswitch_2
    const-string p1, "speed_dial_7"

    goto :goto_0

    :pswitch_3
    const-string p1, "speed_dial_6"

    goto :goto_0

    :pswitch_4
    const-string p1, "speed_dial_5"

    goto :goto_0

    :pswitch_5
    const-string p1, "speed_dial_4"

    goto :goto_0

    :pswitch_6
    const-string p1, "speed_dial_3"

    goto :goto_0

    :pswitch_7
    const-string p1, "speed_dial_2"

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
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

.method public get(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/c/d;->a:Lcom/truecaller/settings/CallingSettings;

    invoke-virtual {p0, p1}, Le/a/h/c/d;->b(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/truecaller/settings/CallingSettings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
