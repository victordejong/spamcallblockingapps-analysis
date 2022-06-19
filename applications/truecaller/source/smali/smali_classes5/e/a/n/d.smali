.class public final Le/a/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/a/n/v<",
            "*>;>;"
        }
    .end annotation
.end field

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Ls1/w/f;Landroid/content/Context;Le/m/e/k;Le/a/p5/g;Le/a/b0/o/a;Le/a/b0/e/f;Lcom/truecaller/settings/CallingSettings;Le/a/h0/m;Le/a/a/i0;Le/a/e4/p;Le/a/p5/a0;Le/a/b0/n/g;Le/a/n5/c;Le/a/c3/a;Le/a/b0/k/f;Le/a/f/b;)V
    .locals 16
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move-object/from16 v12, p13

    move-object/from16 v13, p15

    move-object/from16 v14, p16

    const-string v15, "uiContext"

    invoke-static {v1, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "context"

    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "gson"

    invoke-static {v3, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "deviceInfoUtils"

    invoke-static {v4, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "coreSettings"

    invoke-static {v5, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v15, "regionUtils"

    move-object/from16 v2, p6

    invoke-static {v2, v15}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callingSettings"

    invoke-static {v6, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "filterSettings"

    invoke-static {v7, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "messagingSettings"

    invoke-static {v8, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "multiSimManager"

    invoke-static {v9, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "permissionUtil"

    invoke-static {v10, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "profileRepository"

    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ugcManager"

    invoke-static {v12, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "buildHelper"

    move-object/from16 v15, p14

    invoke-static {v15, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "languageUtil"

    invoke-static {v13, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "inCallUI"

    invoke-static {v14, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Le/a/n/d;->g:Ls1/w/f;

    .line 2
    new-instance v1, Le/a/n/d$a;

    const/4 v2, 0x3

    invoke-direct {v1, v2, v10}, Le/a/n/d$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/n/d;->a:Ls1/g;

    .line 3
    new-instance v1, Le/a/n/d$a;

    const/4 v15, 0x1

    invoke-direct {v1, v15, v9}, Le/a/n/d$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/n/d;->b:Ls1/g;

    .line 4
    new-instance v1, Le/a/n/d$a;

    const/4 v2, 0x2

    invoke-direct {v1, v2, v9}, Le/a/n/d$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/n/d;->c:Ls1/g;

    .line 5
    new-instance v1, Le/a/n/d$b;

    invoke-direct {v1, v4, v10}, Le/a/n/d$b;-><init>(Le/a/p5/g;Le/a/p5/a0;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/n/d;->d:Ls1/g;

    .line 6
    new-instance v1, Le/a/n/d$a;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v10}, Le/a/n/d$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v1

    iput-object v1, v0, Le/a/n/d;->e:Ls1/g;

    const/16 v1, 0x2d

    new-array v9, v1, [Le/a/n/v;

    .line 7
    new-instance v10, Le/a/n/d$m;

    const-string v1, "availability_disabled"

    invoke-direct {v10, v5, v1, v5}, Le/a/n/d$m;-><init>(Le/a/b0/o/a;Ljava/lang/String;Le/a/b0/o/a;)V

    aput-object v10, v9, v4

    .line 8
    new-instance v1, Le/a/n/d$r;

    const-string v10, "flash_disabled"

    invoke-direct {v1, v5, v10, v5}, Le/a/n/d$r;-><init>(Le/a/b0/o/a;Ljava/lang/String;Le/a/b0/o/a;)V

    aput-object v1, v9, v15

    .line 9
    new-instance v1, Le/a/n/i2;

    const-string v10, "callLogTapBehavior"

    invoke-direct {v1, v10}, Le/a/n/i2;-><init>(Ljava/lang/String;)V

    aput-object v1, v9, v2

    .line 10
    new-instance v1, Le/a/n/h2;

    const-string v2, "profileAcceptAuto"

    invoke-direct {v1, v2, v5}, Le/a/n/h2;-><init>(Ljava/lang/String;Le/a/b0/o/a;)V

    const/4 v10, 0x3

    aput-object v1, v9, v10

    .line 11
    new-instance v1, Le/a/n/d$s;

    invoke-direct {v1, v11, v5, v2, v5}, Le/a/n/d$s;-><init>(Le/a/b0/n/g;Le/a/b0/o/a;Ljava/lang/String;Le/a/b0/o/a;)V

    const/4 v2, 0x4

    aput-object v1, v9, v2

    .line 12
    new-instance v1, Le/a/n/o0;

    const-string v2, "clipboardSearchEnabled"

    invoke-direct {v1, v2}, Le/a/n/o0;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x5

    aput-object v1, v9, v2

    .line 13
    new-instance v1, Le/a/n/o0;

    const-string v2, "enhancedNotificationsEnabled"

    invoke-direct {v1, v2}, Le/a/n/o0;-><init>(Ljava/lang/String;)V

    const/4 v10, 0x6

    aput-object v1, v9, v10

    .line 14
    new-instance v1, Le/a/n/d$t;

    invoke-direct {v1, v0, v2}, Le/a/n/d$t;-><init>(Le/a/n/d;Ljava/lang/String;)V

    const/4 v2, 0x7

    aput-object v1, v9, v2

    .line 15
    new-instance v1, Le/a/n/i2;

    const-string v2, "dialpad_feedback_index_str"

    invoke-direct {v1, v2}, Le/a/n/i2;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x8

    aput-object v1, v9, v2

    .line 16
    new-instance v1, Le/a/n/d$u;

    const-string v2, "showMissedCallsNotifications"

    invoke-direct {v1, v0, v6, v2, v6}, Le/a/n/d$u;-><init>(Le/a/n/d;Lcom/truecaller/settings/CallingSettings;Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x9

    aput-object v1, v9, v2

    .line 17
    new-instance v1, Le/a/n/o0;

    const-string v2, "showMissedCallReminders"

    invoke-direct {v1, v2}, Le/a/n/o0;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xa

    aput-object v1, v9, v2

    .line 18
    new-instance v1, Le/a/n/d$v;

    const-string v2, "t9_lang"

    invoke-direct {v1, v2}, Le/a/n/d$v;-><init>(Ljava/lang/String;)V

    const/16 v2, 0xb

    aput-object v1, v9, v2

    .line 19
    new-instance v1, Le/a/n/m0;

    const-string v2, "enabledCallerIDforPB"

    invoke-direct {v1, v2, v6}, Le/a/n/m0;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0xc

    aput-object v1, v9, v2

    .line 20
    new-instance v1, Le/a/n/m0;

    const-string v2, "afterCall"

    invoke-direct {v1, v2, v6}, Le/a/n/m0;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0xd

    aput-object v1, v9, v2

    .line 21
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_2"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0xe

    aput-object v1, v9, v2

    .line 22
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_3"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0xf

    aput-object v1, v9, v2

    .line 23
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_4"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x10

    aput-object v1, v9, v2

    .line 24
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_5"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x11

    aput-object v1, v9, v2

    .line 25
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_6"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x12

    aput-object v1, v9, v2

    .line 26
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_7"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x13

    aput-object v1, v9, v2

    .line 27
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_8"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x14

    aput-object v1, v9, v2

    .line 28
    new-instance v1, Le/a/n/g2;

    const-string v2, "speed_dial_9"

    invoke-direct {v1, v2, v6}, Le/a/n/g2;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x15

    aput-object v1, v9, v2

    .line 29
    new-instance v1, Le/a/n/d$w;

    invoke-direct {v1, v7}, Le/a/n/d$w;-><init>(Le/a/h0/m;)V

    const/16 v2, 0x16

    aput-object v1, v9, v2

    .line 30
    new-instance v1, Le/a/n/d$x;

    invoke-direct {v1, v7}, Le/a/n/d$x;-><init>(Le/a/h0/m;)V

    const/16 v2, 0x17

    aput-object v1, v9, v2

    .line 31
    new-instance v1, Le/a/n/d$y;

    const-string v2, "blockCallMethod"

    invoke-direct {v1, v0, v6, v2, v6}, Le/a/n/d$y;-><init>(Le/a/n/d;Lcom/truecaller/settings/CallingSettings;Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x18

    aput-object v1, v9, v2

    .line 32
    new-instance v1, Le/a/n/m0;

    const-string v2, "blockCallNotification"

    invoke-direct {v1, v2, v6}, Le/a/n/m0;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v2, 0x19

    aput-object v1, v9, v2

    .line 33
    new-instance v1, Le/a/n/d$c;

    invoke-direct {v1, v8}, Le/a/n/d$c;-><init>(Le/a/a/i0;)V

    const/16 v2, 0x1a

    aput-object v1, v9, v2

    .line 34
    new-instance v1, Le/a/n/d$d;

    invoke-direct {v1, v12}, Le/a/n/d$d;-><init>(Le/a/n5/c;)V

    const/16 v2, 0x1b

    aput-object v1, v9, v2

    .line 35
    new-instance v1, Le/a/n/d$e;

    invoke-direct {v1, v0, v8}, Le/a/n/d$e;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x1c

    aput-object v1, v9, v2

    .line 36
    new-instance v1, Le/a/n/d$f;

    invoke-direct {v1, v0, v8}, Le/a/n/d$f;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x1d

    aput-object v1, v9, v2

    .line 37
    new-instance v1, Le/a/n/d$g;

    invoke-direct {v1, v0, v8}, Le/a/n/d$g;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x1e

    aput-object v1, v9, v2

    .line 38
    new-instance v1, Le/a/n/d$h;

    invoke-direct {v1, v0, v8}, Le/a/n/d$h;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x1f

    aput-object v1, v9, v2

    .line 39
    new-instance v1, Le/a/n/d$i;

    invoke-direct {v1, v0, v8}, Le/a/n/d$i;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x20

    aput-object v1, v9, v2

    .line 40
    new-instance v1, Le/a/n/d$j;

    invoke-direct {v1, v0, v8}, Le/a/n/d$j;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x21

    aput-object v1, v9, v2

    .line 41
    new-instance v1, Le/a/n/d$k;

    invoke-direct {v1, v0, v8}, Le/a/n/d$k;-><init>(Le/a/n/d;Le/a/a/i0;)V

    const/16 v2, 0x22

    aput-object v1, v9, v2

    .line 42
    new-instance v1, Le/a/n/d$l;

    invoke-direct {v1}, Le/a/n/d$l;-><init>()V

    const/16 v2, 0x23

    aput-object v1, v9, v2

    .line 43
    new-instance v1, Le/a/n/j1;

    const-string v2, "merge_by"

    invoke-direct {v1, v2}, Le/a/n/j1;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x24

    aput-object v1, v9, v2

    .line 44
    new-instance v1, Le/a/n/o0;

    const-string v2, "showFrequentlyCalledContacts"

    invoke-direct {v1, v2}, Le/a/n/o0;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x25

    aput-object v1, v9, v2

    .line 45
    new-instance v1, Le/a/n/d$n;

    move-object/from16 v2, p2

    invoke-direct {v1, v0, v3, v2, v13}, Le/a/n/d$n;-><init>(Le/a/n/d;Le/m/e/k;Landroid/content/Context;Le/a/b0/k/f;)V

    const/16 v3, 0x26

    aput-object v1, v9, v3

    .line 46
    new-instance v1, Le/a/n/k1;

    const-string v3, "key_backup_frequency_hours"

    invoke-direct {v1, v3, v5}, Le/a/n/k1;-><init>(Ljava/lang/String;Le/a/b0/o/a;)V

    const/16 v3, 0x27

    aput-object v1, v9, v3

    .line 47
    new-instance v1, Le/a/n/d$o;

    const-string v3, "backup_enabled"

    invoke-direct {v1, v5, v3, v5}, Le/a/n/d$o;-><init>(Le/a/b0/o/a;Ljava/lang/String;Le/a/b0/o/a;)V

    const/16 v3, 0x28

    aput-object v1, v9, v3

    .line 48
    new-instance v1, Le/a/n/n0;

    const-string v3, "backup_videos_enabled"

    invoke-direct {v1, v3, v5}, Le/a/n/n0;-><init>(Ljava/lang/String;Le/a/b0/o/a;)V

    const/16 v3, 0x29

    aput-object v1, v9, v3

    .line 49
    new-instance v1, Le/a/n/m0;

    const-string v3, "madeCallsFromCallLog"

    invoke-direct {v1, v3, v6}, Le/a/n/m0;-><init>(Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v3, 0x2a

    aput-object v1, v9, v3

    .line 50
    new-instance v1, Le/a/n/d$p;

    const-string v3, "whatsAppCallsEnabled"

    invoke-direct {v1, v0, v6, v3, v6}, Le/a/n/d$p;-><init>(Le/a/n/d;Lcom/truecaller/settings/CallingSettings;Ljava/lang/String;Lcom/truecaller/settings/CallingSettings;)V

    const/16 v3, 0x2b

    aput-object v1, v9, v3

    .line 51
    new-instance v1, Le/a/n/d$q;

    invoke-direct {v1, v14, v2}, Le/a/n/d$q;-><init>(Le/a/f/b;Landroid/content/Context;)V

    const/16 v2, 0x2c

    aput-object v1, v9, v2

    .line 52
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const/16 v2, 0x2d

    :goto_0
    if-ge v4, v2, :cond_0

    .line 53
    aget-object v3, v9, v4

    .line 54
    invoke-interface {v3}, Le/a/n/v;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iput-object v1, v0, Le/a/n/d;->f:Ljava/util/Map;

    return-void
.end method

.method public static final a(Le/a/n/d;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/n/d;->b:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final b(Le/a/n/d;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/n/d;->c:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final c(Le/a/n/d;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/n/d;->d:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final d(Le/a/n/d;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/n/d;->a:Ls1/g;

    invoke-interface {p0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static final e(Le/a/n/d;Le/a/n/v;Ljava/lang/Object;Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    instance-of p0, p2, Ljava/lang/Boolean;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Le/a/n/v;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {p2, p0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    move-object p0, p2

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez p3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1, p2}, Le/a/n/v;->setValue(Ljava/lang/Object;)V

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
