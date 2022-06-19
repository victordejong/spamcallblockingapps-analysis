.class public final synthetic Le/a/a/y0/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/i4/q$a;


# instance fields
.field public final synthetic a:Le/a/a/y0/t;

.field public final synthetic b:Lcom/truecaller/data/entity/messaging/Participant;


# direct methods
.method public synthetic constructor <init>(Le/a/a/y0/t;Lcom/truecaller/data/entity/messaging/Participant;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/y0/i;->a:Le/a/a/y0/t;

    iput-object p2, p0, Le/a/a/y0/i;->b:Lcom/truecaller/data/entity/messaging/Participant;

    return-void
.end method


# virtual methods
.method public final create()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Le/a/a/y0/i;->a:Le/a/a/y0/t;

    iget-object v1, p0, Le/a/a/y0/i;->b:Lcom/truecaller/data/entity/messaging/Participant;

    .line 1
    iget-object v2, v0, Le/a/a/y0/t;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0, v1}, Le/a/a/y0/t;->a(Lcom/truecaller/data/entity/messaging/Participant;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f080792

    goto :goto_0

    :cond_0
    const v0, 0x7f0806f4

    .line 3
    :goto_0
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 4
    invoke-static {v2, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 5
    invoke-static {v0}, Le/a/b0/q/o;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
