.class public abstract enum Lcom/truecaller/service/AlarmReceiver$AlarmType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/service/AlarmReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AlarmType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/service/AlarmReceiver$AlarmType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_15DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_20DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_2DAYS_UPGRADED:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_5DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_DISMISS_NOTIFICATION:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_DO_NOT_DISTURB_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_NOTIFICATION_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_RESCHEDULE:Lcom/truecaller/service/AlarmReceiver$AlarmType;

.field public static final enum TYPE_UPDATE_SPAM:Lcom/truecaller/service/AlarmReceiver$AlarmType;


# instance fields
.field private final mAnalyticsSubtype:Ljava/lang/String;

.field private final mFirstDelay:J

.field private final mNotificationId:I

.field private final mNotificationType:Ljava/lang/String;

.field private final mRecurringPeriod:J


# direct methods
.method public static constructor <clinit>()V
    .locals 35

    .line 1
    new-instance v8, Lcom/truecaller/service/AlarmReceiver$AlarmType$a;

    const-string v1, "TYPE_5DAYS"

    const/4 v2, 0x0

    const-wide/32 v3, 0x19bfcc00

    const v5, 0x7f0a0e2e

    const-string v6, "add_photo"

    const-string v7, "addPhoto"

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/truecaller/service/AlarmReceiver$AlarmType$a;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_5DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 2
    new-instance v0, Lcom/truecaller/service/AlarmReceiver$AlarmType$b;

    invoke-virtual {v8}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getAnalyticsSubtype()Ljava/lang/String;

    move-result-object v16

    const-string v10, "TYPE_15DAYS"

    const/4 v11, 0x1

    const-wide/32 v12, 0x4d3f6400

    const v14, 0x7f0a0e2b

    move-object v9, v0

    invoke-direct/range {v9 .. v16}, Lcom/truecaller/service/AlarmReceiver$AlarmType$b;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_15DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 3
    new-instance v1, Lcom/truecaller/service/AlarmReceiver$AlarmType$c;

    const-string v18, "TYPE_20DAYS"

    const/16 v19, 0x2

    const-wide/32 v20, 0x66ff3000

    const v22, 0x7f0a0e2c

    const-string v23, "share"

    const-string v24, "shareTc"

    move-object/from16 v17, v1

    invoke-direct/range {v17 .. v24}, Lcom/truecaller/service/AlarmReceiver$AlarmType$c;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_20DAYS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 4
    new-instance v2, Lcom/truecaller/service/AlarmReceiver$AlarmType$d;

    invoke-virtual {v1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationType()Ljava/lang/String;

    move-result-object v15

    .line 5
    invoke-virtual {v1}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getAnalyticsSubtype()Ljava/lang/String;

    move-result-object v16

    const-string v10, "TYPE_2DAYS_UPGRADED"

    const/4 v11, 0x3

    const-wide/32 v12, 0xa4cb800

    const v14, 0x7f0a0e2d

    move-object v9, v2

    invoke-direct/range {v9 .. v16}, Lcom/truecaller/service/AlarmReceiver$AlarmType$d;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_2DAYS_UPGRADED:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 6
    new-instance v3, Lcom/truecaller/service/AlarmReceiver$AlarmType$e;

    const-string v18, "TYPE_RESCHEDULE"

    const/16 v19, 0x4

    const-wide v20, 0x80befc00L

    const v22, 0x7f0a0e39

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v17, v3

    invoke-direct/range {v17 .. v24}, Lcom/truecaller/service/AlarmReceiver$AlarmType$e;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_RESCHEDULE:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 7
    new-instance v4, Lcom/truecaller/service/AlarmReceiver$AlarmType$f;

    const-string v26, "TYPE_UPDATE_SPAM"

    const/16 v27, 0x5

    const-wide/32 v28, 0x48190800

    const-wide/32 v30, 0x48190800

    const v32, 0x7f0a0e3a

    const-string v33, "update_spam"

    const-string v34, "openBlock"

    move-object/from16 v25, v4

    invoke-direct/range {v25 .. v34}, Lcom/truecaller/service/AlarmReceiver$AlarmType$f;-><init>(Ljava/lang/String;IJJILjava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_UPDATE_SPAM:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 8
    new-instance v5, Lcom/truecaller/service/AlarmReceiver$AlarmType$g;

    const-string v10, "TYPE_DO_NOT_DISTURB_ACCESS"

    const/4 v11, 0x6

    const-wide/32 v12, 0xea60

    const v14, 0x7f0a0e2f

    const-string v15, "do_not_disturb"

    const-string v16, "muteCalls"

    move-object v9, v5

    invoke-direct/range {v9 .. v16}, Lcom/truecaller/service/AlarmReceiver$AlarmType$g;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_DO_NOT_DISTURB_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 9
    new-instance v6, Lcom/truecaller/service/AlarmReceiver$AlarmType$h;

    const-string v18, "TYPE_NOTIFICATION_ACCESS"

    const/16 v19, 0x7

    const-wide/32 v20, 0xf731400

    const v22, 0x7f0a0e30

    const-string v23, "notification_access"

    const-string v24, "messagingApps"

    move-object/from16 v17, v6

    invoke-direct/range {v17 .. v24}, Lcom/truecaller/service/AlarmReceiver$AlarmType$h;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_NOTIFICATION_ACCESS:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    .line 10
    new-instance v7, Lcom/truecaller/service/AlarmReceiver$AlarmType$i;

    const-string v10, "TYPE_DISMISS_NOTIFICATION"

    const/16 v11, 0x8

    const-wide/32 v12, 0x337f9800

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Lcom/truecaller/service/AlarmReceiver$AlarmType$i;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/truecaller/service/AlarmReceiver$AlarmType;->TYPE_DISMISS_NOTIFICATION:Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/16 v9, 0x9

    new-array v9, v9, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    const/4 v10, 0x0

    aput-object v8, v9, v10

    const/4 v8, 0x1

    aput-object v0, v9, v8

    const/4 v0, 0x2

    aput-object v1, v9, v0

    const/4 v0, 0x3

    aput-object v2, v9, v0

    const/4 v0, 0x4

    aput-object v3, v9, v0

    const/4 v0, 0x5

    aput-object v4, v9, v0

    const/4 v0, 0x6

    aput-object v5, v9, v0

    const/4 v0, 0x7

    aput-object v6, v9, v0

    const/16 v0, 0x8

    aput-object v7, v9, v0

    .line 11
    sput-object v9, Lcom/truecaller/service/AlarmReceiver$AlarmType;->$VALUES:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    .line 3
    invoke-direct/range {v0 .. v9}, Lcom/truecaller/service/AlarmReceiver$AlarmType;-><init>(Ljava/lang/String;IJJILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;Lcom/truecaller/service/AlarmReceiver$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lcom/truecaller/service/AlarmReceiver$AlarmType;-><init>(Ljava/lang/String;IJILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IJJILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5
    iput-wide p3, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mFirstDelay:J

    .line 6
    iput-wide p5, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mRecurringPeriod:J

    .line 7
    iput p7, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mNotificationId:I

    .line 8
    iput-object p8, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mNotificationType:Ljava/lang/String;

    .line 9
    iput-object p9, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mAnalyticsSubtype:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IJJILjava/lang/String;Ljava/lang/String;Lcom/truecaller/service/AlarmReceiver$a;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p9}, Lcom/truecaller/service/AlarmReceiver$AlarmType;-><init>(Ljava/lang/String;IJJILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$400(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static createNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Landroid/app/Notification;
    .locals 3

    .line 1
    new-instance v0, Ln3/k/a/q;

    invoke-static {p0}, Lcom/truecaller/service/AlarmReceiver$AlarmType;->getNotificationChannelId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v1, v0, Ln3/k/a/q;->R:Landroid/app/Notification;

    const v2, 0x7f0816fb

    iput v2, v1, Landroid/app/Notification;->icon:I

    const v1, 0x7f06068b

    .line 3
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {p0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 5
    iput v1, v0, Ln3/k/a/q;->D:I

    const v1, 0x7f12001b

    .line 6
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ln3/k/a/q;->z(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 7
    invoke-virtual {v0, p1}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    new-instance p0, Ln3/k/a/o;

    invoke-direct {p0}, Ln3/k/a/o;-><init>()V

    .line 8
    invoke-virtual {p0, p2}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v0, p0}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 9
    invoke-virtual {v0, p2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const/4 p0, 0x1

    .line 10
    invoke-virtual {v0, p0}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    .line 11
    iput-object p3, v0, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const/16 p1, 0x10

    .line 12
    invoke-virtual {v0, p1, p0}, Ln3/k/a/q;->p(IZ)V

    .line 13
    invoke-virtual {v0}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method private static getNotificationChannelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Le/a/w1;

    invoke-interface {p0}, Le/a/w1;->s()Le/a/j2;

    move-result-object p0

    invoke-interface {p0}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object p0

    invoke-interface {p0}, Le/a/h4/n;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/service/AlarmReceiver$AlarmType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/service/AlarmReceiver$AlarmType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->$VALUES:[Lcom/truecaller/service/AlarmReceiver$AlarmType;

    invoke-virtual {v0}, [Lcom/truecaller/service/AlarmReceiver$AlarmType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/service/AlarmReceiver$AlarmType;

    return-object v0
.end method


# virtual methods
.method public getAnalyticsSubtype()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mAnalyticsSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstDelay()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mFirstDelay:J

    return-wide v0
.end method

.method public abstract getNotification(Landroid/content/Context;)Landroid/app/Notification;
.end method

.method public getNotificationId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mNotificationId:I

    return v0
.end method

.method public getNotificationType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mNotificationType:Ljava/lang/String;

    return-object v0
.end method

.method public getRecurringPeriod()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/service/AlarmReceiver$AlarmType;->mRecurringPeriod:J

    return-wide v0
.end method

.method public shouldShow(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
