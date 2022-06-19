.class public Le/a/a/y0/t;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/i4/q;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/i4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/a/a/y0/t;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Le/a/a/y0/t;->b:Le/a/i4/q;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/data/entity/messaging/Participant;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/data/entity/messaging/Participant;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p1, Lcom/truecaller/data/entity/messaging/Participant;->p:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
