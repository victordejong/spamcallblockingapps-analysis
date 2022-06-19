.class public final Le/a/a/y0/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/q$a;


# instance fields
.field public final synthetic a:Lcom/truecaller/data/entity/messaging/Participant;

.field public final synthetic b:Le/a/a/y0/x;

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lcom/truecaller/data/entity/messaging/Participant;Le/a/a/y0/x;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Le/a/a/y0/w;->a:Lcom/truecaller/data/entity/messaging/Participant;

    iput-object p2, p0, Le/a/a/y0/w;->b:Le/a/a/y0/x;

    iput-object p3, p0, Le/a/a/y0/w;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final create()Landroid/graphics/Bitmap;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/a/y0/w;->b:Le/a/a/y0/x;

    iget-object v1, p0, Le/a/a/y0/w;->a:Lcom/truecaller/data/entity/messaging/Participant;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-wide v2, v1, Lcom/truecaller/data/entity/messaging/Participant;->o:J

    .line 4
    iget-object v4, v0, Le/a/a/y0/x;->d:Le/a/o5/f0;

    iget-object v5, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    const/4 v6, 0x1

    invoke-interface {v4, v2, v3, v5, v6}, Le/a/o5/f0;->k(JLjava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v2, v1, Lcom/truecaller/data/entity/messaging/Participant;->m:Ljava/lang/String;

    :goto_1
    const/4 v1, 0x0

    const/4 v3, 0x2

    .line 6
    invoke-static {v2, v1, v3}, Le/a/f4/i/a;->a(Ljava/lang/String;II)Le/a/z3/i/a;

    move-result-object v1

    const v2, 0x7f0806f4

    .line 7
    iget-object v0, v0, Le/a/a/y0/x;->a:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Le/a/m0/a1$k;->P0(Le/a/z3/i/a;ILandroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
