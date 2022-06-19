.class public final Le/a/g4/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/w/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/u3/g;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/p5/g;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/u3/g;Landroid/content/Context;Le/a/p5/g;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cpuContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/g4/a/b;->a:Ls1/w/f;

    iput-object p2, p0, Le/a/g4/a/b;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/g4/a/b;->c:Le/a/u3/g;

    iput-object p4, p0, Le/a/g4/a/b;->d:Landroid/content/Context;

    iput-object p5, p0, Le/a/g4/a/b;->e:Le/a/p5/g;

    return-void
.end method

.method public static synthetic c(Le/a/g4/a/b;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;I)Le/a/g4/a/d/b;
    .locals 7

    and-int/lit8 p6, p7, 0x20

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Le/a/g4/a/b;->b(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;)Le/a/g4/a/d/b;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Le/a/g4/a/c/a;
    .locals 11

    const-string v0, "channelId"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "answerIntent"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declineIntent"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/g4/a/c/a;

    .line 2
    iget-object v3, p0, Le/a/g4/a/b;->a:Ls1/w/f;

    .line 3
    iget-object v4, p0, Le/a/g4/a/b;->b:Ls1/w/f;

    .line 4
    iget-object v2, p0, Le/a/g4/a/b;->d:Landroid/content/Context;

    .line 5
    iget-object v5, p0, Le/a/g4/a/b;->c:Le/a/u3/g;

    .line 6
    iget-object v6, p0, Le/a/g4/a/b;->e:Le/a/p5/g;

    move-object v1, v0

    move v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object v10, p4

    .line 7
    invoke-direct/range {v1 .. v10}, Le/a/g4/a/c/a;-><init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-object v0
.end method

.method public final b(ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;)Le/a/g4/a/d/b;
    .locals 14

    move-object v0, p0

    const-string v1, "channelId"

    move-object/from16 v9, p2

    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "muteIntent"

    move-object/from16 v10, p3

    invoke-static {v10, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "speakerIntent"

    move-object/from16 v11, p4

    invoke-static {v11, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "hangupIntent"

    move-object/from16 v12, p5

    invoke-static {v12, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Le/a/g4/a/d/b;

    .line 2
    iget-object v4, v0, Le/a/g4/a/b;->a:Ls1/w/f;

    .line 3
    iget-object v5, v0, Le/a/g4/a/b;->b:Ls1/w/f;

    .line 4
    iget-object v3, v0, Le/a/g4/a/b;->d:Landroid/content/Context;

    .line 5
    iget-object v6, v0, Le/a/g4/a/b;->c:Le/a/u3/g;

    .line 6
    iget-object v7, v0, Le/a/g4/a/b;->e:Le/a/p5/g;

    move-object v2, v1

    move v8, p1

    move-object/from16 v13, p6

    .line 7
    invoke-direct/range {v2 .. v13}, Le/a/g4/a/d/b;-><init>(Landroid/content/Context;Ls1/w/f;Ls1/w/f;Le/a/u3/g;Le/a/p5/g;ILjava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Le/a/g4/a/d/a;)V

    return-object v1
.end method
